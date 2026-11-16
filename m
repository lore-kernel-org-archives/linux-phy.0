Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15D1606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 16:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RLY+LPnC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=dolcini.it header.i=@dolcini.it header.a=rsa-sha256 header.s=default header.b=uHKupJ25
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Py9+agZWDaNcAXNZ+huGvXQkFrqI862IKD6Waow7uqY=; b=RLY+LPnCiSMbWDO6KqGAH5S6f5
	24JwIT7Z2bFTEeG+eLzrg6m6sDQNeW1Doird7NESBpfVFMPJhCcD9byHNYuLTbV7SEUQNwIB/UzD9
	c5CzjBjl6yTjpnElQl7yt4xsDXXYzsWCKWkH/h34idVN5w72XlZ9US/B1m4boAwYQN57UA4CRWrB3
	enMQPeMEWfi27DcAjARO1LroiY5u9X74o5bWGHtGMaD+3w9WpRpbhmFesPm6KJvAJwFy5pkzOARdL
	89CAxTNt18SaBDvdi4AtikD1fFfQX2AjbVRSR4sYJJoZqZvR6YYY2i9b2LcWhuyC2+poPqqDJ/aK8
	MSh+bzsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSzVJ-00000003DCP-1Srh;
	Mon, 16 Nov 2026 16:24:25 +0000
Received: from mail11.truemail.it ([2001:4b7e:0:8::81])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSzVB-00000003D8d-3ToE
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 16:24:23 +0000
Received: from francesco-nb.. (93-45-146-107.ip102.fastwebnet.it [93.45.146.107])
	by mail11.truemail.it (Postfix) with ESMTPA id 67299221F8;
	Mon, 16 Nov 2026 17:24:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1794846255;
	bh=KNMrpE0c4t3yHoCPTNayHPyVehFylomG/8Vd0gBrhoM=; h=From:To:Subject;
	b=uHKupJ25Lyucg3iduvRru64ARqjufAfVMbrCa5ZzLcCA3RSXYoY+vVTi8yM9INd5Q
	 SeMpFTCoe5qxjn6NExt85CjxjJtqM+8HmiDvbKw8A84wI5Milfm4Lt3l1bbPs5jtRd
	 yjtfCC0X3giJ1/Z4TfVq5HChOKm3rO6wbUA4si4wJcPJgdQpZWKAeQAR+yjB+0YOWd
	 6AWc9UCfXeK1XUNujE340vX+09qFa3skdZrDFhQlwCxlmUfhdNqwbRRx7pHYBTi7x2
	 Th0NCNcNqdgdBqx3Dy6gsj3NRQ91GTHzvIXmiElYuhqFpNG43PG/btYREJP7XaP6nR
	 JzeS544h14uyA==
From: Francesco Dolcini <francesco@dolcini.it>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: Francesco Dolcini <francesco.dolcini@toradex.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v1] Revert "phy: freescale: fsl-samsung-hdmi: initialize default rate"
Date: Mon, 16 Nov 2026 17:24:08 +0100
Message-ID: <20261116162409.218059-1-francesco@dolcini.it>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_082418_493710_B900FB5F 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Francesco Dolcini <francesco.dolcini@toradex.com>

This reverts commit c01ccf91b257741e9edc374a465126bae9ae4711.

Programming the 74.25 MHz configuration at probe fails on i.MX8MP boards,
the PHY probe aborts and HDMI is no longer available:

  fsl-samsung-hdmi-phy 32fdff00.phy: PLL failed to lock
  fsl-samsung-hdmi-phy 32fdff00.phy: error -ETIMEDOUT: failed to configure default rate
  fsl-samsung-hdmi-phy 32fdff00.phy: probe with driver fsl-samsung-hdmi-phy failed with error -110

Reported-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Closes: https://lore.kernel.org/all/13219248.O9o76ZdvQC@steina-w/
Fixes: c01ccf91b257 ("phy: freescale: fsl-samsung-hdmi: initialize default rate")
Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 59 +++++---------------
 1 file changed, 15 insertions(+), 44 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index aaa651abcbc6..d7418c2197c9 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -44,8 +44,6 @@
 #define MHZ	(1000UL * 1000UL)
 #endif
 
-#define PHY_DEFAULT_RATE	74250000
-
 #define PHY_PLL_DIV_REGS_NUM 7
 
 struct phy_config {
@@ -491,6 +489,17 @@ static int fsl_samsung_hdmi_phy_configure(struct fsl_samsung_hdmi_phy *phy,
 	return ret;
 }
 
+static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
+					 unsigned long parent_rate)
+{
+	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
+
+	if (!phy->cur_cfg)
+		return 74250000;
+
+	return phy->cur_cfg->pixclk;
+}
+
 /* Helper function to lookup the available fractional-divider rate */
 static const struct phy_config *fsl_samsung_hdmi_phy_lookup_rate(unsigned long rate)
 {
@@ -511,14 +520,6 @@ static const struct phy_config *fsl_samsung_hdmi_phy_lookup_rate(unsigned long r
 		&phy_pll_cfg[i] : &phy_pll_cfg[i+1]);
 }
 
-static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
-					 unsigned long parent_rate)
-{
-	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-
-	return phy->cur_cfg->pixclk;
-}
-
 static void fsl_samsung_hdmi_calculate_phy(struct phy_config *cal_phy, unsigned long rate,
 				    u8 p, u16 m, u8 s)
 {
@@ -639,7 +640,6 @@ static int phy_clk_register(struct fsl_samsung_hdmi_phy *phy)
 
 static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 {
-	const struct phy_config *default_cfg;
 	struct fsl_samsung_hdmi_phy *phy;
 	int ret;
 
@@ -664,23 +664,6 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(phy->dev, PTR_ERR(phy->refclk),
 				     "failed to get ref clk\n");
 
-	/*
-	 * Establish the rate reported by recalc_rate() before registering the
-	 * clock. Otherwise CCF may skip the first set_rate() when it requests
-	 * the assumed default rate, leaving the PHY unconfigured.
-	 */
-	ret = clk_prepare_enable(phy->refclk);
-	if (ret)
-		return dev_err_probe(phy->dev, ret,
-				     "failed to enable ref clk\n");
-
-	default_cfg = fsl_samsung_hdmi_phy_lookup_rate(PHY_DEFAULT_RATE);
-	ret = fsl_samsung_hdmi_phy_configure(phy, default_cfg);
-	clk_disable_unprepare(phy->refclk);
-	if (ret)
-		return dev_err_probe(phy->dev, ret,
-				     "failed to configure default rate\n");
-
 	pm_runtime_get_noresume(phy->dev);
 	pm_runtime_set_active(phy->dev);
 	pm_runtime_enable(phy->dev);
@@ -719,7 +702,7 @@ static int __maybe_unused fsl_samsung_hdmi_phy_suspend(struct device *dev)
 static int __maybe_unused fsl_samsung_hdmi_phy_resume(struct device *dev)
 {
 	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
-	int ret;
+	int ret = 0;
 
 	ret = clk_prepare_enable(phy->apbclk);
 	if (ret) {
@@ -727,23 +710,11 @@ static int __maybe_unused fsl_samsung_hdmi_phy_resume(struct device *dev)
 		return ret;
 	}
 
-	if (!phy->cur_cfg)
-		return 0;
-
-	ret = clk_prepare_enable(phy->refclk);
-	if (ret) {
-		dev_err(phy->dev, "failed to enable ref clk\n");
-		goto disable_apbclk;
-	}
-
-	ret = fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
-	clk_disable_unprepare(phy->refclk);
-	if (!ret)
-		return 0;
+	if (phy->cur_cfg)
+		ret = fsl_samsung_hdmi_phy_configure(phy, phy->cur_cfg);
 
-disable_apbclk:
-	clk_disable_unprepare(phy->apbclk);
 	return ret;
+
 }
 
 static DEFINE_RUNTIME_DEV_PM_OPS(fsl_samsung_hdmi_phy_pm_ops,
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
