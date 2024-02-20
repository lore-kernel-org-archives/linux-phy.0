Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEAA3C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 22:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bf2c/C76mrhvkX8GbNeuK0vjelkOOldYj7aejRlyag=; b=qosU0G6X6vo+AB
	BKraeAZEbkOL5eDrlVyLRXO7c4cj5E+grpD2SNWvGqkCQBxISJE1CTl7f/wBPbLuMHE/Bo8q4LzLF
	BK4LjOBbfnXr4DAPpP3DN0+A9+XiG27Y1cWyD8ZycOfyRijUjK6QiYCb+xtPRrVEeRXt+UadBnfLQ
	u2STwPkskD66LNEaEmC0lQNxHKiEUbxeGLtjUnyyuZBim5CUC2FklY6BPWBMZIWZo0plq92E97qoD
	OSLQaw2G8nxTNtmyWwllMePBpUU9cs/Ac61yHU/bIyMf8wjn8KDf4s08CF54aS5MVXRDQHe4V8Z4q
	Rdp5SCf+4aURXEpy9daQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFH-0000000GJCc-1g0B;
	Tue, 20 Feb 2024 22:05:47 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFD-0000000GJAi-3DKz
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 22:05:45 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a3e75e30d36so499185366b.1
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 14:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708466741; x=1709071541; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ajpzIjCQ8AYIm7IW7xD/dLneEWlcVmQkOUQEXdI0mgQ=;
        b=HKY9FdeSmZ4zYWclEzhUVT/KU3CUvfxTRpZofPiwMsD+LEG6nHHw7IKsNeP/38Vzrt
         LiQFlSPWnN3CozzqIcQVTudc8mHU902FAU2HFHfriSp9r5RTQg4gBqMrSQcrqT2OTaCP
         iXKE7iwm9vqvSP2TJkPj1erlD/rob3J2BzoIzT+urmh3YKeFtl1/ZkAIEm78Pm3eIuds
         5FkJwZbTkO52nOBB/3yraTBSGiLkQybklIiUDm6Erkl8Mz3vDlwTEUKtMsR8JpjZhon/
         FuyCdSyj4oeBkfirraEYbBseg27p363f9yWl+7M/4MnU6Lpnogl8qSI1FrUvFN/7rzin
         5XKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708466741; x=1709071541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajpzIjCQ8AYIm7IW7xD/dLneEWlcVmQkOUQEXdI0mgQ=;
        b=YCfoXKFeKHghoJlDRR0VDJuzHwjthoeM9og0QfcZ9y34aEwbdxa8g78eP06NK/pYH0
         GB+8IHX7aXjRyS4EXjfchajO+CVA4qcO9qElvY0YPVx/JUh4wwhja4+zlnkDa4AyjAwR
         yaB8lsNb7oS1lBaECERVvt5us6Y+v36uOawpmsFISZTHYAH9w3TnroQDyyNGyj79KePI
         T+9/VMzQu5MTAtl4h84d8HW+plYyAixFDksGFMobus42SqMXQw6OR446d05ZisQVjgfP
         R2fyGgB5UFyXZN/WtZiC5d1s1mXmyUAEoqEV7l0cf8EXqM/HhiuAyMbBGvpHwBhDINwi
         ieOQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2t4FmQrh4vOcqVcVDwMU5w6PP19q7HlIQPe6RSJWRCdS6MOxlO/RmaOCr4zCWFMxmY2/CCwsOH7ARSqskIBJABU2XgTwOsgUQM/GSyA==
X-Gm-Message-State: AOJu0Yw1kfnNj7tw90n90Zho1gKxFCh/9U1J6IYBueUDgP6hRW19byaj
	SoE9Jl9tTLhEYqA/GuJk2zi9KvXTeqUeu2vQMjCYTYalF7XYf/xzNm9BVtFQwig=
X-Google-Smtp-Source: AGHT+IGok7pe7zhIo3pzFQpo2E4v062dxsr5LQ7daOAjzMofYsNrztdLGI0rMlej7lNVhSiY7n0vaQ==
X-Received: by 2002:a17:906:aac5:b0:a3e:cb4a:6e71 with SMTP id kt5-20020a170906aac500b00a3ecb4a6e71mr5108297ejb.18.1708466741120;
        Tue, 20 Feb 2024 14:05:41 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id jw15-20020a170906e94f00b00a3e86a9c55asm2716087ejb.146.2024.02.20.14.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:05:40 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Feb 2024 00:05:22 +0200
Subject: [PATCH v4 2/3] phy: qcom: edp: Move v4 specific settings to
 version ops
MIME-Version: 1.0
Message-Id: <20240221-phy-qualcomm-edp-x1e80100-v4-2-4e5018877bee@linaro.org>
References: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
In-Reply-To: <20240221-phy-qualcomm-edp-x1e80100-v4-0-4e5018877bee@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>, Rob Herring <robh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7664; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=pPwy32FBEjCTleZajGGK/3s+6ji3LhjnGXxgS6LGqWU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1SIuYvHk3M3ZKpm8ujeB81I2mPf2Qy7mQFJnY
 8bM1O3tIziJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUiLgAKCRAbX0TJAJUV
 Vs8MD/4nJYaeRVV53c2RhV8IGqB/ttsyM6uyaa3I1cRWluzoA3qyCzu6rWTd+oHiXq/1dt8ardR
 8kPhfGzIYas17V3at8fhGYP6bK++tEWk5L2einE7uBbzT65bSChrHiG7r78/AIUYCDp1/NPSamZ
 2udvyAjh9gxz6Yc8zrrWjgxyWyVSjtYGXpyD3qOxKxjvgpD93kEDcAngO+HD91EJ7UPwuPt9oko
 4YWbU89QyXd0oiw8F2pPpxd3MbgCf5/cY/OFonzqn54BB72NFD4fDZh/S5CL/JgTSHdK4+Hwrlc
 rrKC9fUPs4gsa9+iU5SLux/7tclHjC3p8Xt4zQuMeY0Oz4rXISHdWOcj78JVJohjx8rXEFdJZwc
 JVTs4tWDiPCVyg5nTpggIZyqkd7aHXA52eTmqtMkaw0QVsNSDZfB7Z1gx++u+IzEjOYjuhHlb+a
 Um5cBKQZUDyemPEzaOrM8YSa+iWQ1AyD8KFVVWyJK6p7FcFvpTPmRj6aKhEDOKBq7kdYQT2/uA/
 pg1c+1CVYPhvvJO/KVuJhWNVXMKopnUaepPWIoPYDb7NUUDC/mVuOoVSwgq5E9Kvn9U0hncZS8T
 S6kOTUZUXKNolEOPlswjrl8GSizaUtAAnnCMRdVoh6wqGSlN4H5zJCHgrhtHFNEawxxVstCUEOu
 wkndSeWCprWUUlA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_140543_863458_BD050EC9 
X-CRM114-Status: GOOD (  15.38  )
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

In order to support different HW versions move everything specific
to v4 into so-called version ops.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 183 +++++++++++++++++++++++-------------
 1 file changed, 118 insertions(+), 65 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 621d0453bf76..9bbf977c7b4e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -77,9 +77,20 @@ struct qcom_edp_swing_pre_emph_cfg {
 	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
 };
 
+struct qcom_edp;
+
+struct phy_ver_ops {
+	int (*com_power_on)(const struct qcom_edp *edp);
+	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
+	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
+	int (*com_configure_pll)(const struct qcom_edp *edp);
+	int (*com_configure_ssc)(const struct qcom_edp *edp);
+};
+
 struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
+	const struct phy_ver_ops *ver_ops;
 };
 
 struct qcom_edp {
@@ -174,18 +185,6 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
-static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
-};
-
-static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
-	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
-};
-
-static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
-	.is_edp = true,
-	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
-};
-
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -204,8 +203,9 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	/* Turn on BIAS current for PHY/PLL */
-	writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
+	ret = edp->cfg->ver_ops->com_bias_en_clkbuflr(edp);
+	if (ret)
+		return ret;
 
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
 	msleep(20);
@@ -312,6 +312,84 @@ static int qcom_edp_phy_configure(struct phy *phy, union phy_configure_opts *opt
 }
 
 static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
+{
+	return edp->cfg->ver_ops->com_configure_ssc(edp);
+}
+
+static int qcom_edp_configure_pll(const struct qcom_edp *edp)
+{
+	return edp->cfg->ver_ops->com_configure_pll(edp);
+}
+
+static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel_freq)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 vco_div;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		vco_div = 0x1;
+		*pixel_freq = 1620000000UL / 2;
+		break;
+
+	case 2700:
+		vco_div = 0x1;
+		*pixel_freq = 2700000000UL / 2;
+		break;
+
+	case 5400:
+		vco_div = 0x2;
+		*pixel_freq = 5400000000UL / 4;
+		break;
+
+	case 8100:
+		vco_div = 0x0;
+		*pixel_freq = 8100000000UL / 6;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(vco_div, edp->edp + DP_PHY_VCO_DIV);
+
+	return 0;
+}
+
+static int qcom_edp_phy_power_on_v4(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static int qcom_edp_phy_com_resetsm_cntrl_v4(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v4(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_ssc_v4(const struct qcom_edp *edp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
 	u32 step1;
@@ -345,7 +423,7 @@ static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
 	return 0;
 }
 
-static int qcom_edp_configure_pll(const struct qcom_edp *edp)
+static int qcom_edp_com_configure_pll_v4(const struct qcom_edp *edp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
 	u32 div_frac_start2_mode0;
@@ -431,41 +509,28 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 	return 0;
 }
 
-static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel_freq)
-{
-	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
-	u32 vco_div;
-
-	switch (dp_opts->link_rate) {
-	case 1620:
-		vco_div = 0x1;
-		*pixel_freq = 1620000000UL / 2;
-		break;
-
-	case 2700:
-		vco_div = 0x1;
-		*pixel_freq = 2700000000UL / 2;
-		break;
-
-	case 5400:
-		vco_div = 0x2;
-		*pixel_freq = 5400000000UL / 4;
-		break;
-
-	case 8100:
-		vco_div = 0x0;
-		*pixel_freq = 8100000000UL / 6;
-		break;
+static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
+	.com_power_on		= qcom_edp_phy_power_on_v4,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+};
 
-	default:
-		/* Other link rates aren't supported */
-		return -EINVAL;
-	}
+static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
+	.ver_ops = &qcom_edp_phy_ops_v4,
+};
 
-	writel(vco_div, edp->edp + DP_PHY_VCO_DIV);
+static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.ver_ops = &qcom_edp_phy_ops_v4,
+};
 
-	return 0;
-}
+static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
+	.is_edp = true,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+	.ver_ops = &qcom_edp_phy_ops_v4,
+};
 
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
@@ -473,22 +538,13 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
 	u8 ldo_config = 0x0;
-	int timeout;
 	int ret;
 	u32 val;
 	u8 cfg1;
 
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       edp->edp + DP_PHY_PD_CTL);
-	writel(0xfc, edp->edp + DP_PHY_MODE);
-
-	timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
-				     val, val & BIT(7), 5, 200);
-	if (timeout)
-		return timeout;
-
+	ret = edp->cfg->ver_ops->com_power_on(edp);
+	if (ret)
+		return ret;
 
 	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
 		ldo_config = 0x1;
@@ -535,12 +591,9 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x01, edp->edp + DP_PHY_CFG);
 	writel(0x09, edp->edp + DP_PHY_CFG);
 
-	writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
-
-	timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
-				     val, val & BIT(0), 500, 10000);
-	if (timeout)
-		return timeout;
+	ret = edp->cfg->ver_ops->com_resetsm_cntrl(edp);
+	if (ret)
+		return ret;
 
 	writel(0x19, edp->edp + DP_PHY_CFG);
 	writel(0x1f, edp->tx0 + TXn_HIGHZ_DRVR_EN);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
