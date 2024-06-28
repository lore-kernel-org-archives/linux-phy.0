Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A554C2BD09
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jun 2024 20:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x97M9qCIt7E6EH53hEqwXQ3ZQ7AYFEW7VsvLn2KyW6g=; b=2gkHlfx5/7pNMr
	WiugWrfrwLtQ6ecq5f1N/Sr1nhZ6fJXhkEyB0dHvIIOtC6QnptXSa3lLBWLPqoQqb6O/IN7TTiKBe
	llSYOBldtKQFmmLU5t99BZc9t/6F0ph4auGHFEWhzLe+KCpFhBLBPUKvQR3HIFN4DKmH85QlesClV
	3MML7GLir5UjDniFgr7QnaDHvU41O22Dqd01MQOQ3r7rSmauSeJAmxylZkGErh8eGfFS2Dpi/V2p1
	3fqxAEGH2m5emZJiaxjK5JMtZMYQG/5EZ/zcUEyQv5NQNfBd9XUWpkKH/zJWr3yKx2QdbcZ7FRr4T
	b2l+EWvBBBPku6Vke3rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIeS-0000000EwDV-46cV;
	Fri, 28 Jun 2024 20:57:00 +0000
Received: from out-175.mta1.migadu.com ([95.215.58.175])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNIda-0000000Eveq-1oWv
	for linux-phy@lists.infradead.org;
	Fri, 28 Jun 2024 20:56:11 +0000
X-Envelope-To: radhey.shyam.pandey@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1719608162;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VhvHqCXuudFTNwDuA4VjIUrafDHyK4yeQF5CqDZlZYo=;
	b=J8Dot2eRL2Hf3kwUWOGKMagrRlX7BmnSpUlyWTekGmsAkFY3Nj8fnj/ynx7S15N9iDegVI
	EPTHfmDTlq2yAKQmwTePrfa0Hex4kzioby+753sqUZmd9IJ+XIdXQvb6fOAZUVJZQMZaSK
	mueQ6zkItnOi+haWU7fldEg5aqsDvto=
X-Envelope-To: laurent.pinchart@ideasonboard.com
X-Envelope-To: linux-phy@lists.infradead.org
X-Envelope-To: vkoul@kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: kishon@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: michal.simek@amd.com
X-Envelope-To: sean.anderson@linux.dev
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
To: Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	Sean Anderson <sean.anderson@linux.dev>
Subject: [PATCH v3 1/5] phy: zynqmp: Enable reference clock correctly
Date: Fri, 28 Jun 2024 16:55:36 -0400
Message-Id: <20240628205540.3098010-2-sean.anderson@linux.dev>
In-Reply-To: <20240628205540.3098010-1-sean.anderson@linux.dev>
References: <20240628205540.3098010-1-sean.anderson@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_135606_707305_367D2397 
X-CRM114-Status: GOOD (  11.72  )
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

Lanes can use other lanes' reference clocks, as determined by refclk.
Use refclk to determine the clock to enable/disable instead of always
using the lane's own reference clock. This ensures the clock selected in
xpsgtr_configure_pll is the one enabled.

For the other half of the equation, always program REF_CLK_SEL even when
we are selecting the lane's own clock. This ensures that Linux's idea of
the reference clock matches the hardware. We use the "local" clock mux
for this instead of going through the ref clock network.

Fixes: 25d700833513 ("phy: xilinx: phy-zynqmp: dynamic clock support for power-save")
Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
---

Changes in v3:
- Remove inapplicable comments

Changes in v2:
- New

 drivers/phy/xilinx/phy-zynqmp.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
index dc8319bda43d..f2bff7f25f05 100644
--- a/drivers/phy/xilinx/phy-zynqmp.c
+++ b/drivers/phy/xilinx/phy-zynqmp.c
@@ -80,7 +80,8 @@
 
 /* Reference clock selection parameters */
 #define L0_Ln_REF_CLK_SEL(n)		(0x2860 + (n) * 4)
-#define L0_REF_CLK_SEL_MASK		0x8f
+#define L0_REF_CLK_LCL_SEL		BIT(7)
+#define L0_REF_CLK_SEL_MASK		0x9f
 
 /* Calibration digital logic parameters */
 #define L3_TM_CALIB_DIG19		0xec4c
@@ -349,11 +350,12 @@ static void xpsgtr_configure_pll(struct xpsgtr_phy *gtr_phy)
 		       PLL_FREQ_MASK, ssc->pll_ref_clk);
 
 	/* Enable lane clock sharing, if required */
-	if (gtr_phy->refclk != gtr_phy->lane) {
-		/* Lane3 Ref Clock Selection Register */
+	if (gtr_phy->refclk == gtr_phy->lane)
+		xpsgtr_clr_set(gtr_phy->dev, L0_Ln_REF_CLK_SEL(gtr_phy->lane),
+			       L0_REF_CLK_SEL_MASK, L0_REF_CLK_LCL_SEL);
+	else
 		xpsgtr_clr_set(gtr_phy->dev, L0_Ln_REF_CLK_SEL(gtr_phy->lane),
 			       L0_REF_CLK_SEL_MASK, 1 << gtr_phy->refclk);
-	}
 
 	/* SSC step size [7:0] */
 	xpsgtr_clr_set_phy(gtr_phy, L0_PLL_SS_STEP_SIZE_0_LSB,
@@ -573,7 +575,7 @@ static int xpsgtr_phy_init(struct phy *phy)
 	mutex_lock(&gtr_dev->gtr_mutex);
 
 	/* Configure and enable the clock when peripheral phy_init call */
-	if (clk_prepare_enable(gtr_dev->clk[gtr_phy->lane]))
+	if (clk_prepare_enable(gtr_dev->clk[gtr_phy->refclk]))
 		goto out;
 
 	/* Skip initialization if not required. */
@@ -625,7 +627,7 @@ static int xpsgtr_phy_exit(struct phy *phy)
 	gtr_phy->skip_phy_init = false;
 
 	/* Ensure that disable clock only, which configure for lane */
-	clk_disable_unprepare(gtr_dev->clk[gtr_phy->lane]);
+	clk_disable_unprepare(gtr_dev->clk[gtr_phy->refclk]);
 
 	return 0;
 }
-- 
2.35.1.1320.gc452695387.dirty


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
