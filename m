Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B312C46CD8
	for <linux-phy@archiver.kernel.org>; Fri, 22 Dec 2023 13:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sa3oXG30bYTpScRS7i669i6+o4uqWwvQEugok30Wyts=; b=iusMPCSPVpTA5N
	HbWl/DchvsPgLkkx0auVZiYuqYbt4oudSTjBA2V991+80EN0xnYxLNUzIx2/jtRRN6tapykJVdRsA
	hf9I5E43OVTHdNVjskdEfbQSy5yS+wUhGxwCdkIFGUN/CO3nakCFnbakQ5/rZ4pSDroFyVU8BEyhU
	EZkfIlbExu10PbdfGRKPmVrSsNnDfVThZzTLo/yaUZIrjNRnhzzBxp+JO9N/lCPEuPrfghbqwmM6R
	qL7pWdfcc98WEoCPxeK0z40M0F82wJWYmSeU01FvMUZWR1yywKP2+1poJgtAszeysU5/waaW8Qd7A
	Wz7Unzgviw3F7zrqs5Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGfA2-005zgk-2x;
	Fri, 22 Dec 2023 13:01:54 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGf9z-005zfh-1h
	for linux-phy@lists.infradead.org;
	Fri, 22 Dec 2023 13:01:53 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40d4a7f0d17so1410665e9.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Dec 2023 05:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703250109; x=1703854909; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CqbFZz3hsXKJBg+/SMvXs8iGHpndp+nQR5TPesdii0c=;
        b=bbMOfkrmrt6RQPfsJnFR1gyvXrCjR7aHbA6/MM5YkXcww87taWl1alJNBf7ISQhavx
         znWUlvNlBGPBboJzWYhkBvyFAxwVuE5fYrZXdqcDkaX2nwqwJ4WXckK/rWr2710mDRQG
         YUXi+oM9IC3rKiLAbb734bWLWhJNZBWHDVz+T+dFs8Bc/ARVfzE0VTCTpNvVQdpSgRsW
         07+cx8Gu2shofRinwJdhDEnizLWq1iaUsRRW96NZNoV87xaivcO9mLVKqc0z0/LZpA4s
         o8a21YcnNhhOFLEoudry9KT15Zw1FxQVxz5rVpWJy4EoVBHTGXwvY33Gso9ARZtGYaIl
         2FEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703250109; x=1703854909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CqbFZz3hsXKJBg+/SMvXs8iGHpndp+nQR5TPesdii0c=;
        b=DYG8DtVZ1ye04Js/CuxjYy4/xGXH0CXgbQZdGyi7n34zNH4WcodecsnxSamPAAE6ac
         7yIu8Mm+YGs85MWQSc+SdQ4L01Mz59pOmiPCzKRPzrImEOuuC+cmfFDBe+JD5Q8rKJjw
         Aihs52cmdeT9qMzjrGOygOYfpW6UR3ieRezDMhkuQ2oOHIl3yBxPtSJOUQpwTrFrCd/E
         NSI+vV+Jrs3zwToa5E7WnH0P5M/FTVnm1DN9V+NcKJE8x5GV8lM0DW6o6EwfGUXog9Tw
         jMNs/7d7Rsj9YjW83QQ6nxfJUiEzdDpcliOQ66BWRY8LItdNbZXJa3ocMUaCknJZPvq/
         5qYQ==
X-Gm-Message-State: AOJu0Yy8TGOO/5r9Rbgt2UOVPugzRtr7B3EPpfNWc7QqsYIEL5ZgBYGc
	TPic6W/lsKvMwdsuZV3HKnsc3OCElx3EcQ==
X-Google-Smtp-Source: AGHT+IGnsqXTQytNJthBLKx+l8q5BtskDlJLgQ56z0YK3z4fn/9qS74TuvA4pDGMq3aAs+he2QQ6/g==
X-Received: by 2002:a7b:c408:0:b0:40c:3742:59b with SMTP id k8-20020a7bc408000000b0040c3742059bmr785553wmi.114.1703250109440;
        Fri, 22 Dec 2023 05:01:49 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h1-20020a05600c350100b0040d3f4b1c8esm5375631wmq.36.2023.12.22.05.01.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 05:01:49 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 22 Dec 2023 15:01:32 +0200
Subject: [PATCH v2 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
MIME-Version: 1.0
Message-Id: <20231222-x1e80100-phy-edp-compatible-refactor-v2-2-ab5786c2359f@linaro.org>
References: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
In-Reply-To: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7628; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Yy8po8S7UfT0b9H39UhoawyVmxe9S+KeEZLGKSP3gkk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhYi4zgzoF0Ee2njQg0hLVlddklhpAbXbztHJP
 RrW2AQPcN6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYWIuAAKCRAbX0TJAJUV
 Vs3NEACpXFqaSog4sqWjj5ntrB+TrYtVPArsO8culmiCgAOWt0EW9z1Ty8k7d/aIgBooQlPPAFl
 2nkP7rdClB4mE6kKEDWOyWdco84VwvsIZCeF7L9ZOJH5pKupMfKofpeUVbN1mPVGlisjrqv3nRg
 M86xumYf4/C6bZ7k+ElsBa3PI9DdxKOc21F8xJn/MPdB1GAkuqDBcPiPl5/ZmQezCn1PWSXdO0u
 4REF4YkPfOJNuHRgqQNgiVzobiVRUhwvuCJ4b9vP3pS7bSkxPhkyuYDckAcrrmorhfmJ3zXRSac
 i0pYUPnMcT+PAoiYdzGZRmJiVqlIw+iOE6hahSLRbtTY6MCTxjSHCCUGA32hXk8kkJaZK7CFEob
 UDzKdx6VAoIbiFUjx513y3Z7avFYn1gPkXEpvpf/bLuTerpH9fKsF4/kZ60Ywy7zrbvF+WGfE4M
 UDsBgvgHV6wZ0Vl2wMaw8M/cgRN9bqw1MI6ZUlq1M0SvvIC2iku5TOM6Cf8eMbgjY82mvBBnXrh
 B5dI8+FAlZ01LtjgyYkg5gXsJWx4sPG39jqTObrcuUE8KDmiZqOTtIbtLG1iuj/FRiC2Hvru5K9
 7yGpzB/VCeOiTDXT4gZ33+D13wAFLmeXLcBMCvZTuJPRCnb/ty9X+41Heux8V/5c/MBW2h0fylu
 BEcf1QeFCPzUwSQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_050151_565902_4A130BB2 
X-CRM114-Status: GOOD (  20.08  )
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
between eDP and DP mode. Instead, they should use a single compatible as the
IP block is the same. It will be the job of the controller to set the submode
of the PHY accordingly. Rework the device match config data so that it only
keeps the different knobs rather than swing and pre-emphasis tables.

The existing platforms will remain with separate compatibles for each mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 90 ++++++++++++++++++++++++++++---------
 1 file changed, 69 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 8e5078304646..efd7015c73ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
+#include <linux/phy/phy-dp.h>
 #include <linux/platform_device.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -68,19 +69,21 @@
 
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
+	bool is_edp;
+	bool needs_swing_pre_emph_cfg;
+};
+
 struct qcom_edp {
 	struct device *dev;
-	const struct qcom_edp_cfg *cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 
 	struct phy *phy;
 
@@ -96,6 +99,8 @@ struct qcom_edp {
 
 	struct clk_bulk_data clks[2];
 	struct regulator_bulk_data supplies[2];
+
+	bool is_edp;
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
@@ -162,18 +166,29 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
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
+};
+
+static struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.needs_swing_pre_emph_cfg = true,
+};
+
+static struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
+	.is_edp = true,
+	.needs_swing_pre_emph_cfg = true,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
 	int ret;
 	u8 cfg8;
 
@@ -200,7 +215,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	if (cfg && cfg->is_dp)
+	if (cfg && !edp->is_edp)
 		cfg8 = 0xb7;
 	else
 		cfg8 = 0x37;
@@ -234,7 +249,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_cfg *cfg = edp->cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	u8 ldo_config;
@@ -261,7 +276,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	ldo_config = edp->is_edp ? 0x0 : 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
@@ -447,10 +462,10 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
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
+	if (cfg && !edp->is_edp)
+		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
@@ -589,6 +605,31 @@ static int qcom_edp_phy_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qcom_edp *edp = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_DP)
+		return -EINVAL;
+
+	switch (submode) {
+	case PHY_SUBMODE_DP:
+		edp->swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg;
+		edp->is_edp = false;
+		break;
+
+	case PHY_SUBMODE_EDP:
+		edp->swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg;
+		edp->is_edp = true;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -604,6 +645,7 @@ static const struct phy_ops qcom_edp_ops = {
 	.configure	= qcom_edp_phy_configure,
 	.power_on	= qcom_edp_phy_power_on,
 	.power_off	= qcom_edp_phy_power_off,
+	.set_mode	= qcom_edp_phy_set_mode,
 	.exit		= qcom_edp_phy_exit,
 	.owner		= THIS_MODULE,
 };
@@ -770,6 +812,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 
 static int qcom_edp_phy_probe(struct platform_device *pdev)
 {
+	const struct qcom_edp_phy_cfg *cfg = of_device_get_match_data(&pdev->dev);
 	struct phy_provider *phy_provider;
 	struct device *dev = &pdev->dev;
 	struct qcom_edp *edp;
@@ -780,7 +823,12 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	edp->dev = dev;
-	edp->cfg = of_device_get_match_data(&pdev->dev);
+	edp->is_edp = cfg->is_edp;
+
+	if (cfg->needs_swing_pre_emph_cfg)
+		edp->swing_pre_emph_cfg = edp->is_edp ?
+						&edp_phy_swing_pre_emph_cfg :
+						&dp_phy_swing_pre_emph_cfg;
 
 	edp->edp = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(edp->edp))
@@ -839,10 +887,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
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
