Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E008EB64C8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Sep 2024 15:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AHCLA6I+TFTlzL2sdjgNKsu6jumxqtxjOUAwvD58fZM=; b=1lqZ5ZC7HnIjaf
	ciEElI+c9uABACE+sfpLnmJWAxsY6glPGzjhFizwiFYGDP4z0DxtX4R5UzkFm5aCK+s7J4XZL4pbg
	bWGzfjzeK4a5xpf6Yk7H46PAX4EFgfrns/BHmw9bIDKv4OpwQGauAJEwkMVleHv4/Ycri8co/aH12
	2UxBqf83kuv8Crm1CzSQIKdKEcWewicTPj7VfPCFbx1wohtGrqkf7gSJvIM3BkTHgKP1pB8YE2Ozb
	qTPnJkx+YMddOrHEIZWfXr6Tsy10mH7FQOT1iOgwJvsBN6KzSNQxaOCsXegimXgtKJRQLUh+vFXVK
	I5L9rapI+n8XRCIVCiPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smxJd-0000000FDcf-3UNg;
	Sat, 07 Sep 2024 15:25:33 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smxJb-0000000FDc3-0gqe
	for linux-phy@lists.infradead.org;
	Sat, 07 Sep 2024 15:25:32 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a8a7596b7dfso471693766b.0
        for <linux-phy@lists.infradead.org>; Sat, 07 Sep 2024 08:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725722729; x=1726327529; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1fvAf3Zi7afb3hAttKi9iQz055LSe8tePyulwLorJok=;
        b=wzv9ID6yz6ArkCf0JwgcoipYf3PudXJ8ZEjRxcUQZXtTtcw7s9kcPvVshw5BfaVSKR
         x6qVXcNY7hj83Y4XyO+qrP/KKFXFOiWirR5/jZcktGaXaBlya7PskGNzJKjC0N+xJ5co
         32gOnlu8vZCqqv6IYdIV5YA5VKSDlJIxa3IUXIrUtxpVaziDoTbxye3CLhTjnc+kgqIE
         t76PKx6Zb5fEpLKqEKLcpjeuY2OqkaMRvphTjYvMTRbO6xv48borqMb1oYgSP6WgKR+F
         1iuI4E86H90vBo9QByE8jyLjO5fqAp1ZFtbmk+cNgfbgB2dRzq3L3xYdeYwg++zUnw95
         ikTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725722729; x=1726327529;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1fvAf3Zi7afb3hAttKi9iQz055LSe8tePyulwLorJok=;
        b=Vt3TZteji+NuwG20kSgLqlhOuW0zhn/Dmj9QkrCfvY1Joi+egeZXAHnIkka3Y+S9s8
         GQfIlMHkpvGHHu9ZPtSPrmucsGUCLvWILO5oyQKdEDu93XtjT358oYLOVinlwMrg3Umi
         jyQatjOWsUHS+PjNGmBpngcbjJL3zEjt5Kwa439krR3IPV5gXhK7aBbVgtimiyEck8d2
         OHW41J5Nz1TF78jxIBCb+t9259YzW3Uw9y74Ucb80CPz6CUa5m5QhbzCLzECO8QyEj1S
         07Wb9m+CVkwdjdreG7UyqsqOfAVmro6vcIkMp/D1Uq/m8uIzd8U70byEuhiKFj381E9y
         EDQw==
X-Forwarded-Encrypted: i=1; AJvYcCVLTMe6QZg4qtdMge9Yq+Scjeq/kjlDFZzXnIZ0DX7z/eTMnXnqb+7FjMcbA7z5t0B5jpXFy4H+V+A=@lists.infradead.org
X-Gm-Message-State: AOJu0YxTl65Vom8UuYRS0z7+XXqpd92A7t3dVMHo5idAKeeBgV9CrX54
	MKxWuStPOZSP5iURqtBE9ibcoRgWcQjpiKMHJ/tW6Hy0wTRbF7BTQIQrIeVYwC0=
X-Google-Smtp-Source: AGHT+IG757vxvbnW/BrUlpvUGVFgD/Evu6QPkcxl7x0Zje8vkZwedRoOZTUwYxuBTWMDpjFXckc0LQ==
X-Received: by 2002:a17:906:ee8e:b0:a75:7a8:d70c with SMTP id a640c23a62f3a-a8a85f330a6mr710509766b.4.1725722727877;
        Sat, 07 Sep 2024 08:25:27 -0700 (PDT)
Received: from [127.0.1.1] ([84.232.173.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25d40cebsm82331766b.200.2024.09.07.08.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2024 08:25:27 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sat, 07 Sep 2024 18:25:21 +0300
Subject: [PATCH] phy: qcom: edp: Add runtime PM support
MIME-Version: 1.0
Message-Id: <20240907-phy-qcom-edp-enable-runtime-pm-v1-1-8b9ee4210e1e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAGBw3GYC/x3NQQ7CIBBG4as0s3YSbJpivYpxgeVHJhGKoKYN6
 d1LXH6b9yoVZEGha1cp4ydFlthwPnU0exOfYLHN1Kt+UJPSnPzG73kJDJsY0Txe4PyNHwngFHh
 0xipt3GUaNLVIynCy/ge3+74fWd+spHAAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6068; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=sDSJzjbe9SwW3XEwzeptHKwpOfM0Wc9XeRpqM4o2J4Y=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBm3HBinTe8PkdY049jgiarPEruDCIrfKJuJmAOg
 z7tdxJToOGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZtxwYgAKCRAbX0TJAJUV
 Vqf3EACe+Uxs/dHAw+SM5tt19Plu+PGlhhWTuCnnbOu8l4lFas5jSI2FZMwHeyh8NUesPMKt9JD
 cdcfk6gKLDTtmru83M4Icbe35X5Eq7zEsopNeMV/Uu6sjRFa4YAlJOuhMBGKjNQegYdiz818s15
 UPJKW8+oD89f1BdBH8gd87lxTPjlJRvks2XwPHbPMNqd84bolGuSOUaOSUmMLpOVlpQQVevBCh7
 3iOCv49BxkG4pU6ukVc0B/+jNnWcHWd7cUbkRhZr5i+Y5QjwyVQviK5WrS3sktVHNYRvlGAPk9k
 cLEK6lA8Z6QPlD3IFy1NjCymka+N147wyBk82xlY0hyBTf9jqiqSghXtV2V4qh0OpNvqob22OM8
 5q1z8TUg/g3K7M2jjOsYqbDJbx+F8aO526Pho5NlNhHXbJXytsFSeKVW4Oog6EB+D5YwJ3HFoW/
 jj3P+D+/D5u45hXRS5u47SyjCNSogc+Zzj0be4SH+7seSWWxNaZ2A2c/rIl4ILigU4gm5MBe5+n
 ORpEi0b4qAUQvar11VoGYRyy9Ou5M0O6XcKGKZdKqh4fwaxHKYFvwUxEevm4AN2KTTbhDdPYJm+
 tWVf1/5vrTiRbGkZTrxL1pmcQ/gNi2ThVadBBRFVcc0BGMaZ+v2OZzmU0HU7VWgmT9RJsVtSDLU
 PolYRo7e+06fdHA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240907_082531_362679_EC1F1DEA 
X-CRM114-Status: GOOD (  15.89  )
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

Enable runtime PM support by adding proper ops which will handle the
clocks and regulators. These resources will now be handled on power_on and
power_off instead of init and exit PHY ops. Also enable these resources on
probe in order to balance out the disabling that is happening right after.
Prevent runtime PM from being ON by default as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 105 ++++++++++++++++++++++++++----------
 1 file changed, 77 insertions(+), 28 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index da2b32fb5b45..3affeef261bf 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -192,14 +192,6 @@ static int qcom_edp_phy_init(struct phy *phy)
 	int ret;
 	u8 cfg8;
 
-	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
-	if (ret)
-		return ret;
-
-	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
-	if (ret)
-		goto out_disable_supplies;
-
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
@@ -246,11 +238,6 @@ static int qcom_edp_phy_init(struct phy *phy)
 	msleep(20);
 
 	return 0;
-
-out_disable_supplies:
-	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
-
-	return ret;
 }
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
@@ -721,6 +708,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	u32 val;
 	u8 cfg1;
 
+	pm_runtime_get_sync(&phy->dev);
+
 	ret = edp->cfg->ver_ops->com_power_on(edp);
 	if (ret)
 		return ret;
@@ -841,6 +830,8 @@ static int qcom_edp_phy_power_off(struct phy *phy)
 
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
 
+	pm_runtime_put(&phy->dev);
+
 	return 0;
 }
 
@@ -856,23 +847,12 @@ static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submod
 	return 0;
 }
 
-static int qcom_edp_phy_exit(struct phy *phy)
-{
-	struct qcom_edp *edp = phy_get_drvdata(phy);
-
-	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
-	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
-
-	return 0;
-}
-
 static const struct phy_ops qcom_edp_ops = {
 	.init		= qcom_edp_phy_init,
 	.configure	= qcom_edp_phy_configure,
 	.power_on	= qcom_edp_phy_power_on,
 	.power_off	= qcom_edp_phy_power_off,
 	.set_mode	= qcom_edp_phy_set_mode,
-	.exit		= qcom_edp_phy_exit,
 	.owner		= THIS_MODULE,
 };
 
@@ -1036,6 +1016,32 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 	return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
 }
 
+static int __maybe_unused qcom_edp_runtime_suspend(struct device *dev)
+{
+	struct qcom_edp *edp = dev_get_drvdata(dev);
+
+	dev_err(dev, "Suspending DP phy\n");
+
+	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
+	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
+
+	return 0;
+}
+
+static int __maybe_unused qcom_edp_runtime_resume(struct device *dev)
+{
+	struct qcom_edp *edp = dev_get_drvdata(dev);
+	int ret;
+
+	dev_err(dev, "Resuming DP phy\n");
+
+	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
+	if (ret)
+		return ret;
+
+	return clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
+}
+
 static int qcom_edp_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
@@ -1091,20 +1097,57 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
-	if (ret)
+	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
+	if (ret) {
+		dev_err(dev, "failed to enable regulators, err=%d\n", ret);
 		return ret;
+	}
+
+	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
+	if (ret) {
+		dev_err(dev, "failed to enable clocks, err=%d\n", ret);
+		goto err_disable_regulators;
+	}
+
+	ret = qcom_edp_clks_register(edp, pdev->dev.of_node);
+	if (ret) {
+		dev_err(dev, "failed to register PHY clocks, err=%d\n", ret);
+		goto err_disable_clocks;
+	}
 
 	edp->phy = devm_phy_create(dev, pdev->dev.of_node, &qcom_edp_ops);
 	if (IS_ERR(edp->phy)) {
 		dev_err(dev, "failed to register phy\n");
-		return PTR_ERR(edp->phy);
+		ret = PTR_ERR(edp->phy);
+		goto err_disable_clocks;
 	}
 
+	pm_runtime_set_active(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		goto err_disable_clocks;
+	/*
+	 * Prevent runtime pm from being ON by default. Users can enable
+	 * it using power/control in sysfs.
+	 */
+	pm_runtime_forbid(dev);
+
+	dev_set_drvdata(dev, edp);
 	phy_set_drvdata(edp->phy, edp);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	return PTR_ERR_OR_ZERO(phy_provider);
+	if (IS_ERR(phy_provider))
+		goto err_disable_clocks;
+
+	return 0;
+
+err_disable_clocks:
+	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
+
+err_disable_regulators:
+	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
+
+	return ret;
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
@@ -1117,10 +1160,16 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
 
+static const struct dev_pm_ops qcom_edp_pm_ops = {
+	SET_RUNTIME_PM_OPS(qcom_edp_runtime_suspend,
+			   qcom_edp_runtime_resume, NULL)
+};
+
 static struct platform_driver qcom_edp_phy_driver = {
 	.probe		= qcom_edp_phy_probe,
 	.driver = {
 		.name	= "qcom-edp-phy",
+		.pm	= &qcom_edp_pm_ops,
 		.of_match_table = qcom_edp_phy_match_table,
 	},
 };

---
base-commit: 9aaeb87ce1e966169a57f53a02ba05b30880ffb8
change-id: 20240907-phy-qcom-edp-enable-runtime-pm-6fad07af8947

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
