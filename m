Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09EEBC54787
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 22:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qY2TZieGNPN7T+BwbeP/8nOkwA/Tfy93sN5UBA8Cpw=; b=193xKown0NeA9q
	iNWcWWwVJlDeMU6bYKxPIZ9SC7SF7NElmOykoJF5yGIrTXrwJ9HoxBTLjeZRz8Vl/+rb7Tddhf6ra
	zGN1jooG3Ehc0t+60/unjI2Nh8s4AYWNkDIGG+BTfyqcfISpt0Es5pKGnWAx8YHMNSvLer/5B3IIM
	vGAUx55e0sba2eXwgc2E53oIKmdj3mWxJ5EkKDiaiuiDos+Dw1zzn0sxgcfshbgJ51K5Y9saV5Dyh
	j8fonY5aIGHU2cXnl2iojxpRoCxo9QXnmzccvHHrKaeZjNLy4ea7wmPkfTPmc4/aoXuqF2PeWrWKM
	nnTiD9+HVtiVWLsUss8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFH-0000000GJCq-31CD;
	Tue, 20 Feb 2024 22:05:47 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcYFD-0000000GJBF-3Eaj
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 22:05:45 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a3ee69976c9so238084766b.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 14:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708466742; x=1709071542; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T9zRpY33qAIdmFGHIBJk/pPfEhewGFQ6GNiJNwETb8o=;
        b=BobepYlruMAy3iUYyUV98cztVkh24NUADBwBHWo8YwkDfHIYhyji8NEMu38mVUGTBO
         nzalkc965QT45WlPy1DNzUAQaRlFR4sKFIHe7yDv5AMvIcEYmnp4iKceEUUyLzJczZ2y
         eznwXN7unSmkjXnovK3A4Lun/td9ZiKqdS5BHhC5FJlXroJaG+SEW37Yhl3l/AV7UbkZ
         NQTXRHySXeFNA71V0gCpXMBi1MrA1156EPWEX7Jj/V85FW9mWc32hzI04uPvbXIwrCcC
         C31zWFTQ6hQljO0yLnHg6lDxSjovEgxFiiXG+oK2AWfY7aDGPlY31HW36fK/ciOv7q2c
         57rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708466742; x=1709071542;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9zRpY33qAIdmFGHIBJk/pPfEhewGFQ6GNiJNwETb8o=;
        b=hHq/RAPXmg4mXHm1ITYJMeCx+a3vg1/mIwYuvWiWZlJMoEzIhxVdHi/iLb02uPrSFq
         xFuU39dyBgO0vBYSbyIUUVOSJozP16+MplEvRC3Zlh0B7nepKyjIMi0R6MxMgK6ZkJ7z
         LxCY+A13XOIR8dIdFP6rfwqxTbIq8pPNj3F4dDtfiBV65xQyyUltJ4W2m11y/2fDxq0v
         pvGbOk3H172aUpCpRfWY186z5QhIGgCb+dyETndi0ZU2cwpRYXMDN6XiosY5+OsRbXLG
         Flf9MFV/8qQWWDGp6kW4OWupUpDAdyIAUhHcRObMaqVRdwxX8qY0EsDgLtWRzwaLgFEM
         FBWw==
X-Forwarded-Encrypted: i=1; AJvYcCV8h9WfhQeWJwQeV6/aJspJFjzDhVQooQMBT6SsBcD/xGmseV1++IgTsfJr64WDFJ12BXX3WAmUpW4CI7ttRmjmY+Y9XUL+l0Ua5akC5A==
X-Gm-Message-State: AOJu0YxO1qYYiGpxqxrXoDOBwFkarwjjwssc5XdjHO8rgJUo91rO1utF
	Brh3Bjx6V0N8Uq89U2kNzEIg6XsSixeMaxyIf/YpFCjigQW2JuqNfLWjJXmgSZE=
X-Google-Smtp-Source: AGHT+IEoQNAiK5tOVQR3Wmg39prZ7Wt2vULxskVanvYB09ZOUWSrkAhAWhpUPxO0aGELsOY8C7I5MQ==
X-Received: by 2002:a17:906:4105:b0:a3e:e462:a326 with SMTP id j5-20020a170906410500b00a3ee462a326mr2883393ejk.9.1708466742412;
        Tue, 20 Feb 2024 14:05:42 -0800 (PST)
Received: from [127.0.1.1] ([188.24.162.93])
        by smtp.gmail.com with ESMTPSA id jw15-20020a170906e94f00b00a3e86a9c55asm2716087ejb.146.2024.02.20.14.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Feb 2024 14:05:42 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 21 Feb 2024 00:05:23 +0200
Subject: [PATCH v4 3/3] phy: qcom: edp: Add v6 specific ops and X1E80100
 platform support
MIME-Version: 1.0
Message-Id: <20240221-phy-qualcomm-edp-x1e80100-v4-3-4e5018877bee@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7149; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=RipjSSNZKUysvlLUgHtGKwmWhC3T7MpgeeiBmI/vAQ8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBl1SIvP7SgTS+2RIWll+viIvJqBvD39GET1VSfT
 S5w/2vdEBSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZdUiLwAKCRAbX0TJAJUV
 VuO5D/0WkNQZv0n1CuspuYbZai6Kc+5hSuIOUOskm14bWB4kPJho3BkxJtRWFymtrSQJJel9Do0
 xrG2Nk7suLKz84oKpiGReZl7AWQ15jsAULKmDAXin7c5Z7n+cbpEuuRTuDAwS1pz5EOrgIRDsJX
 HlLUbzHP/YMH2zwzlWQ8xPPbXu4nxFQsiLMecTWjf8PFeHdW4w7JU4K4KocU+OHkxUZbElRortS
 MbH7MpqC6h9VolE+IWkVYXbrP7JPX1sI+tmLtFYWGoB5q8C4v2xRiRzgu2tIRwQadXxwssjioOb
 RjY/NzXTv95uRfTAvvCskC/+xzOhX51AipJtIHa0Q6m26AHkvAJVhQE37oNj1bRxmM0izBpQLh/
 l6dm/D32qvmj23zxFTtTSWER/J6/l5RBaGLaLAjZPSfRKENgOyWRivAwVz5WQ0kwfLPNv6j8uRD
 r1GzKy2TViCk5iLKpuCy/2CS0cD/he1KDsGDzPctjBrS72uPuFtiGshSxxSdTl9/10IKOj0AIBI
 GZfb2OLfBbMpqawD4jK3d5QOcSTZwsjlCEjWvVa8ZQh6146EbqUHJ7qPudxE5PeEhm3Z9TaqZDM
 IPqcMesYZWWwcaftWHPdaQ3JcxFy+SJrOFwae/OVqBfGnyQdnvS8O9vr7d5ivesIEd0VGcZcFLX
 Nd+BFjK+dHNMv3Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_140543_869783_9BFC53FE 
X-CRM114-Status: GOOD (  14.10  )
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

Add v6 HW support by implementing the version ops. Add the X1E80100
compatible and match config as it is v6.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 180 ++++++++++++++++++++++++++++++++++++
 1 file changed, 180 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 9bbf977c7b4e..da2b32fb5b45 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -24,6 +24,7 @@
 
 #include "phy-qcom-qmp-dp-phy.h"
 #include "phy-qcom-qmp-qserdes-com-v4.h"
+#include "phy-qcom-qmp-qserdes-com-v6.h"
 
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
@@ -532,6 +533,184 @@ static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
+static int qcom_edp_phy_power_on_v6(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V6_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static int qcom_edp_phy_com_resetsm_cntrl_v6(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + QSERDES_V6_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V6_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v6(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x1f, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_ssc_v6(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 8100:
+		step1 = 0x92;
+		step2 = 0x01;
+		break;
+
+	case 5400:
+		step1 = 0x18;
+		step2 = 0x02;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + QSERDES_V6_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + QSERDES_V6_COM_SSC_ADJ_PER1);
+	writel(0x36, edp->pll + QSERDES_V6_COM_SSC_PER1);
+	writel(0x01, edp->pll + QSERDES_V6_COM_SSC_PER2);
+	writel(step1, edp->pll + QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 div_frac_start2_mode0;
+	u32 div_frac_start3_mode0;
+	u32 dec_start_mode0;
+	u32 lock_cmp1_mode0;
+	u32 lock_cmp2_mode0;
+	u32 code1_mode0;
+	u32 code2_mode0;
+	u32 hsclk_sel;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		hsclk_sel = 0x5;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x37;
+		lock_cmp2_mode0 = 0x04;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 2700:
+		hsclk_sel = 0x3;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x07;
+		lock_cmp2_mode0 = 0x07;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 5400:
+		hsclk_sel = 0x1;
+		dec_start_mode0 = 0x46;
+		div_frac_start2_mode0 = 0x00;
+		div_frac_start3_mode0 = 0x05;
+		lock_cmp1_mode0 = 0x0f;
+		lock_cmp2_mode0 = 0x0e;
+		code1_mode0 = 0x97;
+		code2_mode0 = 0x10;
+		break;
+
+	case 8100:
+		hsclk_sel = 0x0;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x17;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + QSERDES_V6_COM_SVS_MODE_CLK_SEL);
+	writel(0x0b, edp->pll + QSERDES_V6_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + QSERDES_V6_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + QSERDES_V6_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + QSERDES_V6_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + QSERDES_V6_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + QSERDES_V6_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + QSERDES_V6_COM_PLL_IVCO);
+	writel(0x08, edp->pll + QSERDES_V6_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + QSERDES_V6_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + QSERDES_V6_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + QSERDES_V6_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + QSERDES_V6_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + QSERDES_V6_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + QSERDES_V6_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + QSERDES_V6_COM_DIV_FRAC_START3_MODE0);
+	writel(0x12, edp->pll + QSERDES_V6_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + QSERDES_V6_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + QSERDES_V6_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + QSERDES_V6_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + QSERDES_V6_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + QSERDES_V6_COM_LOCK_CMP2_MODE0);
+
+	writel(0x0a, edp->pll + QSERDES_V6_COM_BG_TIMER);
+	writel(0x14, edp->pll + QSERDES_V6_COM_PLL_CORE_CLK_DIV_MODE0);
+	writel(0x00, edp->pll + QSERDES_V6_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
+	writel(0x0f, edp->pll + QSERDES_V6_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + QSERDES_V6_COM_VCO_TUNE1_MODE0);
+	writel(0x03, edp->pll + QSERDES_V6_COM_VCO_TUNE2_MODE0);
+
+	writel(code1_mode0, edp->pll + QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
+	.com_power_on		= qcom_edp_phy_power_on_v6,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v6,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
+};
+
+static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
+	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+	.ver_ops = &qcom_edp_phy_ops_v6,
+};
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -933,6 +1112,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
+	{ .compatible = "qcom,x1e80100-dp-phy", .data = &x1e80100_phy_cfg, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
