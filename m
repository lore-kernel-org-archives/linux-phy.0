Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44763E7FDFC
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 00:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHK/LQA4NFx17twPqaIwa5Iwca24gVZSPdCfJfpP378=; b=2l3qBhZv61zpMF
	9ZvPvvibkW4fR744kO1lRZVJAS3RRYsCCxYHuZfJkWkkR3gF46H7r3SE+Spo6Al7ta+ykQ+so/70A
	GJOBzCuMdigP2b3p5HsXb/4Z/6/H9+LEagPvrVcNy9ieXma6dqaP2/CVVLARJFahhl9GWZOXeEhE0
	HqxXPB4digBe+9nNiWe+NquBbyyGE76meVnRVQPHFwd3HGvSovTppePl0InMcX4escbfJ6VbOAC6X
	QR6P2yH76Lkhv0pta9eSYaldpvH/Y7MDtouZ8RfuEwtXvwf7LzLy1/YSLV6bfM2Zx6yGk3BU6pBaZ
	dLryiso01SMEbT0kaviA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4B2-00000005mkx-3xVd;
	Tue, 03 Feb 2026 00:21:56 +0000
Received: from out-184.mta0.migadu.com ([2001:41d0:1004:224b::b8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4B0-00000005mgb-2U6q
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 00:21:55 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770078112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BSzBHZdVygKXukk+iQ1E1BqwM0RrqN94x3Zvnkp6Hc8=;
	b=G4Sb+I8kM9gfwkpIfWB6Q9chGzCZDLL4XA7UXqu6mEzNp2obCYBdVFniqPfgV61J8gxLFl
	SwS8Tjh3iOEbVZuhJKic+JCuTd04pT7Et+ubEPZnnzeKiO0V2ywYm3UtmmG/dXUKPZKVSg
	Cn6NV7aXAr8CqQiyitJ5f1DUAqxAO/g=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 3/8] phy: zynqmp: Refactor common phy initialization into a helper
Date: Mon,  2 Feb 2026 19:21:23 -0500
Message-Id: <20260203002128.935842-4-sean.anderson@linux.dev>
In-Reply-To: <20260203002128.935842-1-sean.anderson@linux.dev>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_162154_772292_2AA0854B 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

All lanes undergoing ILL calibration must be initialized. Split off
common phy initialization into a helper so that we can ensure all lanes
are initialized before performing calibration.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 drivers/phy/xilinx/phy-zynqmp.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index 0d3c578d0f3f..152af1702bbd 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -520,6 +520,21 @@ static void xpsgtr_bypass_scrambler_8b10b(struct xpsgtr_phy *gtr_phy)
 	xpsgtr_write_phy(gtr_phy, L0_TX_DIG_61, L0_TM_DISABLE_SCRAMBLE_ENCODER);
 }
 
+static int xpsgtr_common_init(struct xpsgtr_phy *gtr_phy)
+{
+	int ret;
+
+	/* Enable coarse code saturation limiting logic. */
+	xpsgtr_write_phy(gtr_phy, L0_TM_PLL_DIG_37, L0_TM_COARSE_CODE_LIMIT);
+
+	ret = xpsgtr_configure_pll(gtr_phy);
+	if (ret)
+		return ret;
+
+	xpsgtr_lane_set_protocol(gtr_phy);
+	return 0;
+}
+
 /* DP-specific initialization. */
 static void xpsgtr_phy_init_dp(struct xpsgtr_phy *gtr_phy)
 {
@@ -682,19 +697,14 @@ static int xpsgtr_phy_init(struct phy *phy)
 		gtr_dev->tx_term_fix = false;
 	}
 
-	/* Enable coarse code saturation limiting logic. */
-	xpsgtr_write_phy(gtr_phy, L0_TM_PLL_DIG_37, L0_TM_COARSE_CODE_LIMIT);
-
 	/*
 	 * Configure the PLL, the lane protocol, and perform protocol-specific
 	 * initialization.
 	 */
-	ret = xpsgtr_configure_pll(gtr_phy);
+	ret = xpsgtr_common_init(gtr_phy);
 	if (ret)
 		goto out;
 
-	xpsgtr_lane_set_protocol(gtr_phy);
-
 	switch (gtr_phy->protocol) {
 	case ICM_PROTOCOL_DP:
 		xpsgtr_phy_init_dp(gtr_phy);
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
