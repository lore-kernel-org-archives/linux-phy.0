Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3681E7FDFB
	for <linux-phy@archiver.kernel.org>; Tue,  3 Feb 2026 00:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cm/XjDfZnWo4Sb0FPp9v4cpu3rxyHCmpYg1D/gLXHi0=; b=c5p3LcdwK7+7Bh
	sMo9W+E3wRcQGTiplJq+4AhlO1FVE2VXC9uYdjduVHcYYmCXBpRV+6o0JsQ8KXOT7opbhc0gc7WKH
	zbyeXNehslK4rQsmiKYVWGqVSGUp3aMWL6pjZ1JxFShRU4+fSKSZch1eVv6KfFzav2efu5UgPYPF9
	zhyMoldYXA9hv6n+d4sMxLics6jhlGvyM0xAl+LbV+f1p0t7TZCMbGmSQv78/MEDPJdCufw1Lix1B
	MDEFDL7JH4IT1uParXfP0x4sx2FHK01H0n3+GyUgrOokfuNjei25g7ygApwcVMcSei1md0oaAFfj8
	LulUHXZZoYusqEpFU9Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4B1-00000005mjC-1dUx;
	Tue, 03 Feb 2026 00:21:55 +0000
Received: from out-177.mta0.migadu.com ([91.218.175.177])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vn4Ay-00000005mez-0rmb
	for linux-phy@lists.infradead.org;
	Tue, 03 Feb 2026 00:21:53 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770078109;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=thJ1sEYwFgH0EvKxYK16kbar1XTDnkSFrt//2tTCrRU=;
	b=F56dhBSkAWENXfvqexDxxPOibf1MniHSlSg6KfR3MGZFA9/oZaLVyAlV1239KOjLP073rC
	dz2ohdPnqZpgUZakeqtU1ySICG7LLFePZbVos+3ZQvWxNIEPXwDBBFMzWqbo8KEuRgaL/F
	p9FMmbWygvHrJYq0b36bpoIQuRwu9m0=
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
Subject: [PATCH 2/8] phy: zynqmp: Refactor bus width configuration into helper
Date: Mon,  2 Feb 2026 19:21:22 -0500
Message-Id: <20260203002128.935842-3-sean.anderson@linux.dev>
In-Reply-To: <20260203002128.935842-1-sean.anderson@linux.dev>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_162152_396976_8C36F2E2 
X-CRM114-Status: UNSURE (   7.73  )
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

Split off the bus width configuration into a helper function for reuse.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

 drivers/phy/xilinx/phy-zynqmp.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index fe6b4925d166..0d3c578d0f3f 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -502,6 +502,17 @@ static void xpsgtr_lane_set_protocol(struct xpsgtr_phy *gtr_phy)
 	}
 }
 
+/* Set the bus width */
+static void xpsgtr_phy_init_bus_width(struct xpsgtr_phy *gtr_phy, u32 width)
+{
+	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
+	u32 mask = PROT_BUS_WIDTH_MASK(gtr_phy->lane);
+	u32 val = width << PROT_BUS_WIDTH_SHIFT(gtr_phy->lane);
+
+	xpsgtr_clr_set(gtr_dev, TX_PROT_BUS_WIDTH, mask, val);
+	xpsgtr_clr_set(gtr_dev, RX_PROT_BUS_WIDTH, mask, val);
+}
+
 /* Bypass (de)scrambler and 8b/10b decoder and encoder. */
 static void xpsgtr_bypass_scrambler_8b10b(struct xpsgtr_phy *gtr_phy)
 {
@@ -535,14 +546,7 @@ static void xpsgtr_phy_init_sata(struct xpsgtr_phy *gtr_phy)
 /* SGMII-specific initialization. */
 static void xpsgtr_phy_init_sgmii(struct xpsgtr_phy *gtr_phy)
 {
-	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
-	u32 mask = PROT_BUS_WIDTH_MASK(gtr_phy->lane);
-	u32 val = PROT_BUS_WIDTH_10 << PROT_BUS_WIDTH_SHIFT(gtr_phy->lane);
-
-	/* Set SGMII protocol TX and RX bus width to 10 bits. */
-	xpsgtr_clr_set(gtr_dev, TX_PROT_BUS_WIDTH, mask, val);
-	xpsgtr_clr_set(gtr_dev, RX_PROT_BUS_WIDTH, mask, val);
-
+	xpsgtr_phy_init_bus_width(gtr_phy, PROT_BUS_WIDTH_10);
 	xpsgtr_bypass_scrambler_8b10b(gtr_phy);
 }
 
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
