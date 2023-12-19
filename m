Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A899C46CD7
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 20:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sIUvOH2cHCJdLMuzE9m+740AMI6IWoS6O9XRudVVCbU=; b=DHTQo7S2smr1NC
	r+ptl2n3L96ugysVDV87uUOOrgHAnmNPNeAnmFbKRZ9/GwCl8IydnHf8m02/Uc2qlEBlZIELxNxEb
	6oqMNo8Q83y27DwJENXl8egX2Cvdf6ZCVXoIbpLhbXV/To4jJsb5iVZ94PwaXWfYWV7WmoZ8j31f7
	iFUA2FHzIvwwrePcNPUxwrQQGfpqWN3pV1KprrcJMvyJeCiDbkBitEI27MBivUgvjpbOlj8tz17Qv
	ZZbQ5Z2GG782LztxEDw+SMNm9cuPBbaTYBjQn9GM5z0zv5B1HBIJDENsdQkKLL9FoMp8ddLS/l+h/
	9c1OfCqpri66+hVpLQ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7v-00FRtR-0b;
	Tue, 19 Dec 2023 20:55:43 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFh7r-00FRrn-2h
	for linux-phy@lists.infradead.org;
	Tue, 19 Dec 2023 20:55:41 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40d22d3e751so365315e9.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Dec 2023 12:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703019338; x=1703624138; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dys25wiVmR/dZY2aAxHAJu8B2nMRORXrSQ4unRqdmUU=;
        b=TH5ERgS/a1Eib8Nbvsc3UfkvwESxxQsFefvBqQcWqPp1bV6PjC5zI2YJ9ktBemRALV
         yIgn7K2jBmdd/NTUFt28GqkY5RV5nGFNJ1QrIQdq+IXERR+cK3tQXNB44OVl6DzcLq7J
         b7FPJUsyF/6/8HmIS2j27xFpvDk3AKjk3DYeCoKx6OqC3EgSSJjnyaLRfLsL2dLF0tbT
         D+0zOMz0n0MTU4bMuSBUmGOq3m9OIStCXFqo6bbUNDwgC2xSFJBGfW4a/kfB/t3qlVSN
         +hJ1OaFM5sFWrS5C0fnLbecuTNfCLSxUdh2Hh/5Ce2vljmaUqE7JSYK2y5VLAB8GAvG0
         qJ3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703019338; x=1703624138;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dys25wiVmR/dZY2aAxHAJu8B2nMRORXrSQ4unRqdmUU=;
        b=P7nGXtX18mYW9uT8fWPKJpn1y4hGhTejLDRO+LAfEjlm+2gS3YecRuLUK9GFXZA3hy
         SffN8JIj/Eo2bRisLx2TInk7NysTX6Yo/dt8plert3PEl33/2pXKnAv/HIk8VycyOT0c
         nGoCd3JjnNO701SJcauBceCWS1Ik0GD/ByCC9Qc/CT0PN5F6k//JMKloNaeSEBeQAbsN
         PDAi9oDuLHG7QrINVVTibHNqhgWjr6rYj8lYLj++UJ8HMiaIfwTUs2b/D+vayMK1BRQh
         uhhLYfyUQMAq/03XdWEFAVb8+Rmt4w0Ag/1QYpmVIDsup1tHvchS/I3InpPZWDzY+tik
         Uq/w==
X-Gm-Message-State: AOJu0YylpE4UlkdzH8m9j0Uv4JrO9cHXBEarcp6zQfV95+90c5T7qMay
	bQqtyp/6Z6FpS0ifu/KnE0IDpg==
X-Google-Smtp-Source: AGHT+IGTrHbgUNOzyzyvg7p8SZeLv6qYsTkuih5RFFgC0ycO+NmJEfG1BdWYPA35HClF++i4QzM9Pw==
X-Received: by 2002:a05:600c:3056:b0:40c:6a8f:d1d6 with SMTP id n22-20020a05600c305600b0040c6a8fd1d6mr942264wmh.163.1703019338489;
        Tue, 19 Dec 2023 12:55:38 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id v16-20020a05600c471000b0040c4886f254sm4460701wmo.13.2023.12.19.12.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:55:38 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 19 Dec 2023 22:55:24 +0200
Subject: [PATCH 3/3] phy: qcom: edp: Allow PHY mode configuration via
 devicetree
MIME-Version: 1.0
Message-Id: <20231219-x1e80100-phy-edp-compatible-refactor-v1-3-f9e77752953d@linaro.org>
References: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
In-Reply-To: <20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=7095; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=r5Z+IXpqVl7ekhFvsnXNxAtV/air1auWUKPxMS1W7PU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlggNEYwTQ8/WwveIyH9B0ku1VDjBU7SW0H1GU/
 VDA9K30vwSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYIDRAAKCRAbX0TJAJUV
 VkMVEACt3/Enx8c7Fd55U6KqLe+NG08J6437eZPK/IKe/Iueo6v6pwf6IEjWPL9R6PAOmMD875A
 doAkZpOQ+ufoOzDXgwCjKcaYql36Hq/DTCzF8+136w0htXUEBuem5QUqR35FY/xQXyYM5LZUu76
 q1jTvBry2u0c1YQv+qmyEPo97JBpM2PI1rzVXa8hlHCx3cOVJrTw2Ao9XPCJ9fujb2qGhbWaiAz
 +yHY5MDZd/8pJQ8vliHcYAzfwMbBKu9BN1vigwKclNbXEqrttJa4MU42tUCD0+8CGQLZ2OrcKPC
 5pihto7AEPqPpUZf98IFsTYbrp0E0+qWoz86AfOdToeiRF349UTonNJT6rBaOzCCtXp1SU9x4x7
 TfwfU0WalF2iLOHVD54uZ89C1o//1mOoTKPp0CJKAQa46wM41qRswCASjcV61flZiq5+ws8cvpy
 JTw2XeqiHBBxxHrNKYa1R1PipF7TNMxy+6hKfoUp4N/oNFJtCv13HiR+O/kI7M58CIbGe3qsIRZ
 4KZzvSD7r8CEAKSS4u9bUqSJjxM9/nE2GIY6SVuRxGhMW8xoQcWhfPjJAvlOx+mXTro1mxDnqmg
 w3BVS12LKoAQM934oNUkKwkBNMO/uNJ5rvbuLk2jubf5H7H0gKK1qxhFKZVsd9NgVZoaB0LAZSv
 wV9guaYlDJ0ZGBA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_125539_910969_125AAF5D 
X-CRM114-Status: GOOD (  20.74  )
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

Future platforms should not use different compatibles to differentiate
between eDP and DP mode. Instead, they should use a single compatible as
the IP block is the same, and use the 'phys' (controller) DT property
to pass the phy mode. Rework the device match config data so that it
only keeps the different knobs rather than swing and pre-emphasis tables.

The existing platforms will remain with separate compatibles for each mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 89 ++++++++++++++++++++++++++++---------
 1 file changed, 67 insertions(+), 22 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 8e5078304646..c70e6eae16ba 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -68,19 +68,22 @@
 
 #define TXn_TRAN_DRVR_EMP_EN                    0x0078
 
-struct qcom_edp_cfg {
-	bool is_dp;
-
-	/* DP PHY swing and pre_emphasis tables */
+struct qcom_edp_swing_pre_emph_cfg {
 	const u8 (*swing_hbr_rbr)[4][4];
 	const u8 (*swing_hbr3_hbr2)[4][4];
 	const u8 (*pre_emphasis_hbr_rbr)[4][4];
 	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
 };
 
+struct qcom_edp_phy_cfg {
+	int type;
+	bool needs_swing_pre_emph_cfg;
+};
+
 struct qcom_edp {
 	struct device *dev;
-	const struct qcom_edp_cfg *cfg;
+	const struct qcom_edp_phy_cfg *cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 
 	struct phy *phy;
 
@@ -96,6 +99,8 @@ struct qcom_edp {
 
 	struct clk_bulk_data clks[2];
 	struct regulator_bulk_data supplies[2];
+
+	bool is_dp;
 };
 
 static const u8 dp_swing_hbr_rbr[4][4] = {
@@ -126,8 +131,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
 	{ 0x04, 0xff, 0xff, 0xff }
 };
 
-static const struct qcom_edp_cfg dp_phy_cfg = {
-	.is_dp = true,
+static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
 	.swing_hbr_rbr = &dp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
 	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
@@ -162,18 +166,30 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
 	{ 0x00, 0xff, 0xff, 0xff }
 };
 
-static const struct qcom_edp_cfg edp_phy_cfg = {
-	.is_dp = false,
+static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.swing_hbr_rbr = &edp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
 	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
+static struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
+	.type = PHY_TYPE_DP,
+};
+
+static struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.type = PHY_TYPE_DP,
+	.needs_swing_pre_emph_cfg = true,
+};
+
+static struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
+	.type = PHY_TYPE_EDP,
+	.needs_swing_pre_emph_cfg = true,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
 	int ret;
 	u8 cfg8;
 
@@ -200,7 +216,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	if (cfg && cfg->is_dp)
+	if (edp->cfg->needs_swing_pre_emph_cfg && edp->is_dp)
 		cfg8 = 0xb7;
 	else
 		cfg8 = 0x37;
@@ -234,7 +250,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_cfg *cfg = edp->cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	u8 ldo_config;
@@ -242,7 +258,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	u8 emph;
 	int i;
 
-	if (!cfg)
+	if (!edp->cfg->needs_swing_pre_emph_cfg)
 		return 0;
 
 	for (i = 0; i < dp_opts->lanes; i++) {
@@ -261,7 +277,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	ldo_config = edp->is_dp ? 0x1 : 0x0;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
@@ -447,10 +463,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
-	u8 ldo_config;
+	u8 ldo_config = 0x0;
 	int timeout;
 	int ret;
 	u32 val;
@@ -468,7 +483,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 		return timeout;
 
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	if (edp->cfg->needs_swing_pre_emph_cfg && edp->is_dp)
+		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
@@ -768,6 +784,33 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 	return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
 }
 
+static struct phy *qcom_edp_phy_xlate(struct device *dev,
+				      struct of_phandle_args *args)
+{
+	struct qcom_edp *edp = dev_get_drvdata(dev);
+	int type = edp->cfg->type;
+
+	if (args->args_count == 1)
+		type = args->args[0];
+
+	if (type != PHY_TYPE_DP && type != PHY_TYPE_EDP)
+		return ERR_PTR(-EINVAL);
+
+	if (type == PHY_TYPE_EDP) {
+		edp->phy->attrs.mode = PHY_MODE_EDP;
+	} else {
+		edp->phy->attrs.mode = PHY_MODE_DP;
+		edp->is_dp = true;
+	}
+
+	if (edp->cfg->needs_swing_pre_emph_cfg)
+		edp->swing_pre_emph_cfg = edp->is_dp ?
+						&dp_phy_swing_pre_emph_cfg:
+						&edp_phy_swing_pre_emph_cfg;
+
+	return edp->phy;
+}
+
 static int qcom_edp_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
@@ -832,17 +875,19 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(edp->phy);
 	}
 
+	dev_set_drvdata(edp->dev, edp);
 	phy_set_drvdata(edp->phy, edp);
 
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	phy_provider = devm_of_phy_provider_register(dev, qcom_edp_phy_xlate);
+
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
-	{ .compatible = "qcom,sc7280-edp-phy" },
-	{ .compatible = "qcom,sc8180x-edp-phy" },
-	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
-	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
+	{ .compatible = "qcom,sc7280-edp-phy" , .data = &sc7280_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
+	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
