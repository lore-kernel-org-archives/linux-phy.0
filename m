Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FA67C07C79
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 18:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO75dQZPQqlfsmND+MPoanQLBAoGjVnltzOA7+NSsko=; b=cykI9Odn+bX37T
	715Eft2UAka+8zavlqEaBJyT7bLkkGxa55zZK3YXA2xV50FN6SukCgyObwYfl+xuVxR/eL02e4axc
	WcUmmypPR2wn1qHnjzdwMnf+MnxwgEtZJqD2thDm8IGAXjBhWvS9OBC/8+MWQecPyADtdMEvGEdW1
	98sKctSjk5+TK6utKC19q0EYEDvLmgFWrfYgnrSYw4TrwFeCzaqhWvtl1Pd0mnht72Ihqc6ticnF3
	oh2ybtQJjY2tudvN31qUVGyOjeNrm4HcnIK4FV6djcGS2KDr/IjG6d0BhjZ2PgoJoHwowcVWXhmQ7
	Zpn1T3xDZRh9YdIPHX6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrs-0000000Ei9E-0bt9;
	Mon, 22 Apr 2024 18:58:20 +0000
Received: from out-174.mta1.migadu.com ([2001:41d0:203:375::ae])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyrp-0000000Ei4w-0FoN
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 18:58:18 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713812292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l0jxaPV6Y3HOhLaJSxMJEdsj1DNm8Hvs/A17Ws337Lo=;
	b=uCHaCjGqVCKxdnL8akAeXt/gf1cmbM6CrS64Bto5sd6LkQN2GIvy5USUvU579AfNIW39+S
	atFAOlQX2azeVi65ZXVrGEhYy48Y8pdsHHejitjwjmH9SvN+1Au3zc+0j1FJAMkR5otDN5
	7gZIqExtajv0USY/SZMZccTWNjuBx7I=
From: Sean Anderson <sean.anderson@linux.dev>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH 2/3] phy: zynqmp: Don't wait for PLL lock on nonzero PCIe lanes
Date: Mon, 22 Apr 2024 14:58:02 -0400
Message-Id: <20240422185803.3575319-3-sean.anderson@linux.dev>
In-Reply-To: <20240422185803.3575319-1-sean.anderson@linux.dev>
References: <20240422185803.3575319-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_115817_326142_179103CC 
X-CRM114-Status: UNSURE (   8.93  )
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

Similarly to DisplayPort, nonzero PCIe lanes never achieve PLL lock [1].
Don't wait for them.

Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---
Maybe it's actually that only the final lane configured locks? I haven't
tested this out.

 drivers/phy/xilinx/phy-zynqmp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index b507ed4c3053..08c88dcd7799 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -624,11 +624,13 @@ static int xpsgtr_phy_power_on(struct phy *phy)
 	if (!xpsgtr_phy_init_required(gtr_phy))
 		return ret;
 	/*
-	 * Wait for the PLL to lock. For DP, only wait on DP0 to avoid
-	 * cumulating waits for both lanes. The user is expected to initialize
-	 * lane 0 last.
+	 * Wait for the PLL to lock. For DP and PCIe, only wait on instance 0
+	 * to avoid cumulative waits for both lanes. The user is expected to
+	 * initialize lane 0 last.
 	 */
-	if (gtr_phy->protocol != ICM_PROTOCOL_DP || !gtr_phy->instance)
+	if ((gtr_phy->protocol != ICM_PROTOCOL_DP &&
+	     gtr_phy->protocol != ICM_PROTOCOL_PCIE) ||
+	    !gtr_phy->instance)
 		ret = xpsgtr_wait_pll_lock(phy);
 
 	return ret;
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
