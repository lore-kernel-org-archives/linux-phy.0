Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7D1C61DD3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 05:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vJ4tQJtb3ntRIAj9OMqF2I5AYCuqKq/eBSlA/LqVELI=; b=oPigQA3nFzPfv5
	3yR3rGhHS7sGTUtPQ/osepHZGR8u1f89Fjm7Zf30uguL4VoCzt2aWXLnOkF7arIq6zxQbwcC6u6vA
	0ztHAdaV5ne1tc9Y8c0aMSxV1QMDiX5uOEtPZAT97vCc5KBZDm1vdPYf2Mus7qEToH7LmvOewmo1q
	rLVBdeIRyaPFewf7V+2thdIl9Pig23SAnyo8w1K7oR4KwFIDMkUQ+SiHy7o9hcitWoHMUsF0+bnQz
	vU8aSdH1hK/bSo4eH8r33qy6Mvd3O9sdkD0rrug4HuUVFb76sDh7IWA2aRaDKG6g84ue24MJaUvbc
	djoRl8vrsXpre5NoA+tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x20JZ-0000000GQc7-0t4K;
	Thu, 03 Sep 2026 05:48:45 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x20JV-0000000GQbV-3QbR
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 05:48:43 +0000
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1D9E63FC14
	for <linux-phy@lists.infradead.org>; Thu,  3 Sep 2026 05:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20251003; t=1788414517;
	bh=HSTdOF4JkwWaIEqcAJaXFfNGVdCez5AeJ6hkT0u40HA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version;
	b=tGlHYdtjZpdr/fi6vuJAKA4CYXo9KURES/RY3/gPNPEqfWMCp16JFC5yuMh/hzYlt
	 QL9oL+w+O/0163PTGqhMOrS6/o3HrLUTazLZnfZ2Tgui35L0OsN+lmRtr+ZRNffrGH
	 v/30cF+6NhMZc6l4TcDHQlzctmiEe8Tvl5SIBY3oiTiH7KNCPMDZYf+lGVv1HrRTRs
	 +rI+I5l90L7gieirqwzJedCNQ48i8q/UvL/2xLtEq842fQO2KgvT4Fdy7Q/GDjkU+1
	 M5EsKT2Ymr2F6QFfYGoPxuO2sxxaG3ilPpFZ67SFddY8wacoCYjiQzi7ER3J4Jaukm
	 yZ5FlmhqDrujRe7u7yGu/2Q+VylyiJGIXO9p1secRk2OWFnHLSLHLkcFDZwtC01PxG
	 jI8gOAj2IPPHg4MLRE9dgQAWbKRQng1fks/BM8m8G4QpD4G+7oX1LhKxwSDtkIgC2o
	 oCUlfP/cbnfZ8RR35GrRUBW+tVWPn6s9l6tcOw/v2nDduenrGCoySuu0zQhTE0Uc34
	 z0DC83sQiMhgSEcnO6E1cW4XxRRGObfns3jZ8WOJfk3ptVW2RWJMJHCzNN1CauEVoJ
	 DZQe2F+9sU4FbXUrBISIzUQgesvKT5JqOXfBktdnqVoIAQrO3W+pt7/3RTg3vmcHbP
	 8YaJiVGiUImoxAu8TnqHHuME=
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38f97b3f853so3540368a91.3
        for <linux-phy@lists.infradead.org>; Wed, 02 Sep 2026 22:48:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788414515; x=1789019315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HSTdOF4JkwWaIEqcAJaXFfNGVdCez5AeJ6hkT0u40HA=;
        b=KX5GXCZuoO/3mVsUNmXVqgpfoxEmBEq45l82D9avpZdlUzUHUGghHO73YwA2Bxnm1a
         CY6z0WmqtYP3YkHG+ID2WKQIDsCc8ZZPo9Um1zv5cy1mOGirG5F2CBFZwVnHWIvbQd4t
         j1PnkfRK//gJ/v3EOch6o2LI9lc4PkovQBWFcciLbfhfQcI+k0lS/PpuQRWDxJgxRdJg
         dll97JG4MP9Ty0YhazgC4p156L2U2USXMlhy+qbiNpNNhnwdGcdlJkVJVBSE4lep33BI
         SX6d7OUTNtY7rBBbSAGWrk5o2+C7jrPPOCETQNjIIXdE2acrAg8jpQ16ifH6B40HiI6w
         BBsw==
X-Forwarded-Encrypted: i=1; AKwUvBwCtgyFHwqao5iLrr3VZW7fHKRRiyH5KL2YKKPcUOwZZbClWJEHlng1OEB+GIGMAH6OV/e14R8rQKc=@lists.infradead.org
X-Gm-Message-State: AFuF++kkHHDQ5M594dgZLGCCCCqw2txfJEsrVFmrpeuy7qU+sdbclFM8
	INvt/KdeuRiXAf6rRLDlFCmEuBcuMe6+uuXn52Y5nr4M224tUXaQb4NcacPjNk2OzgQ5CeLsnfs
	h9XpG3d4AGBJin6REGHdEEXwDLrcQ+rpA/1tdKhy+mipdm3lKp851GxUZb3ngkMOj69JgXNI3lp
	NgLL333Sk=
X-Gm-Gg: AYBFou0VUDTVK3TepF3DGwiMK3QWrYG5HnbSJQ6WWQXZIrGhGXrYXUTT0lqYXKJoSFe
	GUkF6wo0oR7lMJ4XTtKFFeRsbB+9pWayEwbsw5g0NzO4E5/EzJSl430vUjcjYqC3iL0Cm6l9UTM
	TONfssbCbZRvth46kTFxVcKvAvEirsT+DQCIFcIQfwlqTnL85FZ5Av3QowePBlPlEJBmJG68+tA
	lS22jGc+ok4EEPqJ6Za5hl6R/WAIKtOXKiH1xaLOEGPJpDKErZORWyfB4qdZdkLDyTeWidJCLB4
	1iIKzf77Mb+IwYwFrvgYGYtG50N97xdYeWVLEwFGd13BcgpjaekDjqguE5wQ7oaU+S6HvjOPmJr
	pxANwNnmuUfR/qDZuJHbE6FGF5R0nTKwPT4uyERPddtPdD+ZLxoWwgcKmohA5zsS00gNgWb0niy
	A=
X-Received: by 2002:a17:90b:3949:b0:398:9c00:29ee with SMTP id 98e67ed59e1d1-39aee208a63mr16324663a91.22.1788414515438;
        Wed, 02 Sep 2026 22:48:35 -0700 (PDT)
X-Received: by 2002:a17:90b:3949:b0:398:9c00:29ee with SMTP id 98e67ed59e1d1-39aee208a63mr16324592a91.22.1788414514888;
        Wed, 02 Sep 2026 22:48:34 -0700 (PDT)
Received: from resolute-linux.tail872496.ts.net (124-218-37-86.cm.dynamic.apol.com.tw. [124.218.37.86])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b08d086adsm3055228a91.15.2026.09.02.22.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 22:48:34 -0700 (PDT)
From: Aristo Chen <aristo.chen@canonical.com>
To: Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Fabio Estevam <festevam@nabladev.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Adam Ford <aford173@gmail.com>,
	Marco Felsch <m.felsch@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	Aristo Chen <aristo.chen@canonical.com>
Subject: [PATCH 1/1] phy: freescale: fsl-samsung-hdmi: initialize default rate
Date: Thu,  3 Sep 2026 05:47:58 +0000
Message-ID: <20260903054811.9720-1-aristo.chen@canonical.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_224842_130603_AEE53737 
X-CRM114-Status: GOOD (  17.97  )
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

The HDMI PHY clock reports 74.25 MHz when cur_cfg is unset, but does
not establish that rate in hardware. The common clock framework caches
the reported rate when registering the clock and skips a first
clk_set_rate(74250000) request because the rate appears unchanged.

Consequently, a display whose initial mode uses a 74.25 MHz pixel clock
can leave the PHY with its bootloader register state and receive no
TMDS signal. Requesting another rate first avoids the issue because the
set_rate callback configures the PHY.

Program the 74.25 MHz table entry with the reference clock enabled
before registering the clock provider. recalc_rate can then report the
configured rate, and a skipped first rate change is safe. Also enable
the reference clock when restoring that configuration on resume.

Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
Signed-off-by: Aristo Chen <aristo.chen@canonical.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 59 +++++++++++++++-----
 1 file changed, 44 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 0f25d81de61b..41addd4ad414 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -44,6 +44,8 @@
 #define MHZ	(1000UL * 1000UL)
 #endif
 
+#define PHY_DEFAULT_RATE	74250000
+
 #define PHY_PLL_DIV_REGS_NUM 7
 
 struct phy_config {
@@ -489,17 +491,6 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 	return ret;
 }
 
-static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
-					 unsigned long parent_rate)
-{
-	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-
-	if (!phy->cur_cfg)
-		return 74250000;
-
-	return phy->cur_cfg->pixclk;
-}
-
 /* Helper function to lookup the available fractional-divider rate */
 static const struct phy_config *fsl_samsung_hdmi_phy_lookup_rate(unsigned long rate)
 {
@@ -520,6 +511,14 @@ static const struct phy_config *fsl_samsung_hdmi_phy_lookup_rate(unsigned long r
 		&phy_pll_cfg[i] : &phy_pll_cfg[i+1]);
 }
 
+static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
+
+	return phy->cur_cfg->pixclk;
+}
+
 static void fsl_samsung_hdmi_calculate_phy(struct phy_config *cal_phy, unsigned long rate,
 				    u8 p, u16 m, u8 s)
 {
@@ -640,6 +639,7 @@ static int phy_clk_register(struct fsl_samsung_hdmi_phy *phy)
 
 static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 {
+	const struct phy_config *default_cfg;
 	struct fsl_samsung_hdmi_phy *phy;
 	int ret;
 
@@ -664,6 +664,23 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(phy->dev, PTR_ERR(phy->refclk),
 				     "failed to get ref clk\n");
 
+	/*
+	 * Establish the rate reported by recalc_rate() before registering the
+	 * clock. Otherwise CCF may skip the first set_rate() when it requests
+	 * the assumed default rate, leaving the PHY unconfigured.
+	 */
+	ret = clk_prepare_enable(phy->refclk);
+	if (ret)
+		return dev_err_probe(phy->dev, ret,
+				     "failed to enable ref clk\n");
+
+	default_cfg = fsl_samsung_hdmi_phy_lookup_rate(PHY_DEFAULT_RATE);
+	ret = fsl_samsung_hdmi_phy_configure(phy, default_cfg);
+	clk_disable_unprepare(phy->refclk);
+	if (ret)
+		return dev_err_probe(phy->dev, ret,
+				     "failed to configure default rate\n");
+
 	pm_runtime_get_noresume(phy->dev);
 	pm_runtime_set_active(phy->dev);
 	pm_runtime_enable(phy->dev);
@@ -702,7 +719,7 @@ static int __maybe_unused fsl_samsung_hdmi_phy_suspend(struct device *dev)
 static int __maybe_unused fsl_samsung_hdmi_phy_resume(struct device *dev)
 {
 	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
-	int ret = 0;
+	int ret;
 
 	ret = clk_prepare_enable(phy->apbclk);
 	if (ret) {
@@ -710,11 +727,23 @@ static int __maybe_unused fsl_samsung_hdmi_phy_resume(struct device *dev)
 		return ret;
 	}
 
-	if (phy->cur_cfg)
-		ret = fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
+	if (!phy->cur_cfg)
+		return 0;
 
-	return ret;
+	ret = clk_prepare_enable(phy->refclk);
+	if (ret) {
+		dev_err(phy->dev, "failed to enable ref clk\n");
+		goto disable_apbclk;
+	}
+
+	ret = fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
+	clk_disable_unprepare(phy->refclk);
+	if (!ret)
+		return 0;
 
+disable_apbclk:
+	clk_disable_unprepare(phy->apbclk);
+	return ret;
 }
 
 static DEFINE_RUNTIME_DEV_PM_OPS(fsl_samsung_hdmi_phy_pm_ops,
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
