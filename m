Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1EDC4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 15:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv7bnEV89jCVEgcOxTvN7yaK8qWBaI7Zk6dhSZi3x3Y=; b=3iD8erORve6nws
	XljsrNLVFZ5NsWYmRzXr6cG/Qvg2afR95OQ9qZe097iKG3uV9iRoK2ye/AP2TsnwpR4YDxLwfFBDt
	/8lzqRKrZ9iMErM9IRXQsHZ8uL/JTHOnR1V+QgCZHG3zoon3aZdPhn+jg7UIUSvfzA+T8NkFMsIHL
	5524VFkA1gQflF3Us0wChYtbtjt76X6gQZyyvvUO83fFv95EsfocMTcFw8KwAW51d5i2yConJ2Vc9
	G0UbCHfrX+rXWNQuBsHTG4aszgm4tuM+3Wmrv52HfOkQqfm8R3wcLPxiq07jhFTHlDgmXOh0SBnnb
	E51mV6SfJvUNlwae672w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAASP-004teR-0z;
	Mon, 04 Dec 2023 15:02:01 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAASL-004tbN-0s
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 15:01:59 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40c09d0b045so15389515e9.0
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 07:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701702112; x=1702306912; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YyQjwB41P2sJ7VB94p2BF38IdSB862nJMYo7d9Whe6g=;
        b=dnecU1b+H2WOxznTIhcwaTOm9kwQijiYsm8U8+FoHC1cBOFOQMerNMyjCPU4hpzva+
         IdiLZd7ntNEmThn4r2mS9YCZM94TMuxrelw5uz3LT/FfPOWrXUhrcClJsDiD3MxKFXgQ
         GguGXM5zWL2Jm0+qJ2sUGk0xU+eFfoMZbPynD3Gmse2JGa4Q/OnCQRpNMPMmyj74Y134
         JwQZzCpBFtV07ZGgcRsr5a8OMtILaC6vRgaylzMpBs/RKi0Udox7CAdPRuSUTvvWnEeC
         8TX+2krIJvq570Q9M+UfXKONVUvF2YtyJA45VxPppHgI5E5cEK3/YzGNbGCs0jhbYwLI
         5kBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701702112; x=1702306912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YyQjwB41P2sJ7VB94p2BF38IdSB862nJMYo7d9Whe6g=;
        b=sveVrLNdghtQQLGxOkWvhiKMVDrY0Qn2XwYqGrK/M/4BaASG4ft6j7v8ouVB13PqN8
         z0zlf/I5OoeCYLUYOCLSCmY/BlhU1K78VqRw1Peta8mj2pHUaIrNpyhkdlOou3ddhOCQ
         9s258oHHsROwLGK0ifi4MGB5f9P1QO3Q81kPTGojSiulQV0AIkhU74nI6VB6rT8WuJgA
         NeJe7Pl6rPD7/mvKBhGw2IoSLQ6zaFjdgiN2+js0bZ0hQS15kk7vo8WkVD0DrFpJyIPP
         7Q7BOPKWwZXM8T2roUs3+ZMmtF/ysR/Wj8l3s5gP74J5Oa1Hqc5o6tB3JAv9cpS4ggQy
         Wo2A==
X-Gm-Message-State: AOJu0Yyi7+O7zKP5ShLSzP3/ZaLdThgrSzu2hTN0Uzsu5kcY9JZ/Lvj0
	6BaOvpxjYn7TvrPp9jBM8SRGNQ==
X-Google-Smtp-Source: AGHT+IHyo0t7T20wG/OQ34j1hymKytxT/IaT7sIbgz5CI0YAHaZEY7q/nVfZhDLlk0coFUE4WfhfCg==
X-Received: by 2002:a7b:cb10:0:b0:40b:5e21:c5ca with SMTP id u16-20020a7bcb10000000b0040b5e21c5camr1836083wmj.152.1701702112501;
        Mon, 04 Dec 2023 07:01:52 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n16-20020a05600c501000b00407b93d8085sm19041661wmr.27.2023.12.04.07.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:01:50 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 17:01:37 +0200
Subject: [PATCH v2 2/2] phy: qcom: edp: Add X1E80100 eDP and DP PHYs
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-edp-x1e80100-v2-2-114e789f0195@linaro.org>
References: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-edp-x1e80100-v2-0-114e789f0195@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=13105; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=yzAR56f2Lp3eXFOZtLKu0fCRHwuWB9D2QAmcoaCDeTo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbenYhIxrAHpVDG9QakDhCebS72UbLgrjJAVIN
 rlr0MuvtXuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3p2AAKCRAbX0TJAJUV
 Vo7VD/0fIPGe8wCw3bUIFKYNteS3np8AqfTrU/IlayI5VLA3R0pcFKImOWUIK6ALI4wmeC9bv72
 jHTQuzQzS7BQwOUfF9BpMuYRuEC5NjexYHYcmhfVhyluy1ErnIIMxD9lgpXiP4JKT6IezklKVmt
 9qRSt880HNLUKf+1+V/RMtKMr22JK6VMWMBaOivbWae4RyeWm/GLOn+RGvxaDWY5O6tqStwiaV2
 4mIK8TkxCxHLZLkhClqKn/Uh0uuhk09A6tOwjuEw9XkjiOmmWBgsO+yy9JUMRLV5yF2qTTcRq3M
 RyNVTQjrJDXBUSyQQTdHsdtjNqfb3Vm+C/PCdn7uy4ogXXe4t8RtY3FcARfMqSaO40Rphkn9BRG
 DfnLrIPZGtedqT2WQ4Uk48iFgqejb/kN6Kc9jQQ9K+pwzUW1SnTdgGfC1L08s4uBLLGb3Sca5W7
 5bnx5J7eTDNcOGR5x/Bka/vQN3smTEXq8Yd5dPkCdgc/3CQTyZG4UdxBsVR2w1eid4xFqqXePn/
 Fd2fk+Rv+AJV1ipEshsujvkj4/pHTCbGZx7ddV4gpVujfGuI45BLfaZnSUIdpH7TjLbCv/32cTQ
 /mGv9xZQLSyeTdmz6vefuDDmCxe4Pzmou3LlNxjlUEqxVq5lAh8OywjlDJe5Z7QACwkH/kpISMy
 YVuZB1pS8kRWbkA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_070157_317461_534DDDCE 
X-CRM114-Status: GOOD (  17.42  )
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

The Qualcomm X1E80100 platform has a number of eDP and DP PHY instances,
add support for these.

Co-developed-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++---
 1 file changed, 212 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 8e5078304646..702d49c18044 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -23,6 +23,11 @@
 
 #include "phy-qcom-qmp.h"
 
+enum {
+	QSERDES_V4,
+	QSERDES_V6,
+};
+
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
 #define DP_PHY_CFG_1                            0x0014
@@ -70,6 +75,7 @@
 
 struct qcom_edp_cfg {
 	bool is_dp;
+	int qserdes_version;
 
 	/* DP PHY swing and pre_emphasis tables */
 	const u8 (*swing_hbr_rbr)[4][4];
@@ -94,7 +100,7 @@ struct qcom_edp {
 
 	struct phy_configure_opts_dp dp_opts;
 
-	struct clk_bulk_data clks[2];
+	struct clk_bulk_data clks[3];
 	struct regulator_bulk_data supplies[2];
 };
 
@@ -126,8 +132,18 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
 	{ 0x04, 0xff, 0xff, 0xff }
 };
 
-static const struct qcom_edp_cfg dp_phy_cfg = {
+static const struct qcom_edp_cfg dp_v4_phy_cfg = {
+	.is_dp = true,
+	.qserdes_version = QSERDES_V4,
+	.swing_hbr_rbr = &dp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &dp_pre_emp_hbr2_hbr3,
+};
+
+static const struct qcom_edp_cfg dp_v6_phy_cfg = {
 	.is_dp = true,
+	.qserdes_version = QSERDES_V6,
 	.swing_hbr_rbr = &dp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
 	.pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
@@ -162,8 +178,18 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
 	{ 0x00, 0xff, 0xff, 0xff }
 };
 
-static const struct qcom_edp_cfg edp_phy_cfg = {
+static const struct qcom_edp_cfg edp_v4_phy_cfg = {
+	.is_dp = false,
+	.qserdes_version = QSERDES_V4,
+	.swing_hbr_rbr = &edp_swing_hbr_rbr,
+	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
+	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
+	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
+};
+
+static const struct qcom_edp_cfg edp_v6_phy_cfg = {
 	.is_dp = false,
+	.qserdes_version = QSERDES_V6,
 	.swing_hbr_rbr = &edp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
 	.pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
@@ -190,7 +216,10 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       edp->edp + DP_PHY_PD_CTL);
 
 	/* Turn on BIAS current for PHY/PLL */
-	writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
+	if (cfg->qserdes_version == QSERDES_V6)
+		writel(0x1f, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
+	else
+		writel(0x17, edp->pll + QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN);
 
 	writel(DP_PHY_PD_CTL_PSR_PWRDN, edp->edp + DP_PHY_PD_CTL);
 	msleep(20);
@@ -261,7 +290,10 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	if (cfg->qserdes_version == QSERDES_V6)
+		ldo_config = 0x91;
+	else
+		ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
@@ -288,7 +320,7 @@ static int qcom_edp_phy_configure(struct phy *phy, union phy_configure_opts *opt
 	return ret;
 }
 
-static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
+static int qcom_edp_configure_ssc_v4(const struct qcom_edp *edp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
 	u32 step1;
@@ -322,7 +354,41 @@ static int qcom_edp_configure_ssc(const struct qcom_edp *edp)
 	return 0;
 }
 
-static int qcom_edp_configure_pll(const struct qcom_edp *edp)
+static int qcom_edp_configure_ssc_v6(const struct qcom_edp *edp)
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
+	writel(0x6b, edp->pll + QSERDES_V6_COM_SSC_PER1);
+	writel(0x02, edp->pll + QSERDES_V6_COM_SSC_PER2);
+	writel(step1, edp->pll + QSERDES_V6_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + QSERDES_V6_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_configure_pll_v4(const struct qcom_edp *edp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
 	u32 div_frac_start2_mode0;
@@ -349,6 +415,7 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 		div_frac_start3_mode0 = 0x07;
 		lock_cmp1_mode0 = 0x0f;
 		lock_cmp2_mode0 = 0x0e;
+
 		break;
 
 	case 5400:
@@ -358,6 +425,7 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 		div_frac_start3_mode0 = 0x0a;
 		lock_cmp1_mode0 = 0x1f;
 		lock_cmp2_mode0 = 0x1c;
+
 		break;
 
 	case 8100:
@@ -367,6 +435,7 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 		div_frac_start3_mode0 = 0x07;
 		lock_cmp1_mode0 = 0x2f;
 		lock_cmp2_mode0 = 0x2a;
+
 		break;
 
 	default:
@@ -408,6 +477,103 @@ static int qcom_edp_configure_pll(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_configure_pll_v6(const struct qcom_edp *edp)
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
+		code2_mode0 = 0x0C;
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
+		code2_mode0 = 0x0C;
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
+		code2_mode0 = 0x0C;
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
+	writel(0x6, edp->pll + QSERDES_V6_COM_CP_CTRL_MODE0);
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
+	writel(0x17, edp->pll + QSERDES_V6_COM_PLL_BIAS_EN_CLK_BUFLR_EN);
+	writel(0x0f, edp->pll + QSERDES_V6_COM_CORE_CLK_EN);
+
+	writel(code1_mode0, edp->pll + QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + QSERDES_V6_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
 static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel_freq)
 {
 	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
@@ -462,13 +628,22 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	       edp->edp + DP_PHY_PD_CTL);
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
-				     val, val & BIT(7), 5, 200);
+	if (cfg->qserdes_version == QSERDES_V6) {
+		timeout = readl_poll_timeout(edp->pll + QSERDES_V6_COM_CMN_STATUS,
+					     val, val & BIT(7), 5, 200);
+	} else {
+		timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_CMN_STATUS,
+					     val, val & BIT(7), 5, 200);
+	}
+
 	if (timeout)
 		return timeout;
 
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	if (cfg->qserdes_version == QSERDES_V6)
+		ldo_config = 0x91;
+	else
+		ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
@@ -476,12 +651,20 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
 
 	if (edp->dp_opts.ssc) {
-		ret = qcom_edp_configure_ssc(edp);
+		if (cfg->qserdes_version == QSERDES_V6)
+			ret = qcom_edp_configure_ssc_v6(edp);
+		else
+			ret = qcom_edp_configure_ssc_v4(edp);
+
 		if (ret)
 			return ret;
 	}
 
-	ret = qcom_edp_configure_pll(edp);
+	if (cfg->qserdes_version == QSERDES_V6)
+		ret = qcom_edp_configure_pll_v6(edp);
+	else
+		ret = qcom_edp_configure_pll_v4(edp);
+
 	if (ret)
 		return ret;
 
@@ -512,10 +695,18 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x01, edp->edp + DP_PHY_CFG);
 	writel(0x09, edp->edp + DP_PHY_CFG);
 
-	writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
+	if (cfg->qserdes_version == QSERDES_V6) {
+		writel(0x20, edp->pll + QSERDES_V6_COM_RESETSM_CNTRL);
+
+		timeout = readl_poll_timeout(edp->pll + QSERDES_V6_COM_C_READY_STATUS,
+					     val, val & BIT(0), 500, 10000);
+	} else {
+		writel(0x20, edp->pll + QSERDES_V4_COM_RESETSM_CNTRL);
+
+		timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
+					     val, val & BIT(0), 500, 10000);
+	}
 
-	timeout = readl_poll_timeout(edp->pll + QSERDES_V4_COM_C_READY_STATUS,
-				     val, val & BIT(0), 500, 10000);
 	if (timeout)
 		return timeout;
 
@@ -744,7 +935,6 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 	data = devm_kzalloc(edp->dev, struct_size(data, hws, 2), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
-	data->num = 2;
 
 	snprintf(name, sizeof(name), "%s::link_clk", dev_name(edp->dev));
 	init.ops = &qcom_edp_dp_link_clk_ops;
@@ -764,6 +954,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
 
 	data->hws[0] = &edp->dp_link_hw;
 	data->hws[1] = &edp->dp_pixel_hw;
+	data->num = 2;
 
 	return devm_of_clk_add_hw_provider(edp->dev, of_clk_hw_onecell_get, data);
 }
@@ -806,6 +997,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 
 	edp->supplies[0].supply = "vdda-phy";
 	edp->supplies[1].supply = "vdda-pll";
+	edp->clks[2].id = "tcsr";
 	ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(edp->supplies), edp->supplies);
 	if (ret)
 		return ret;
@@ -841,8 +1033,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc7280-edp-phy" },
 	{ .compatible = "qcom,sc8180x-edp-phy" },
-	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
-	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
+	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_v4_phy_cfg },
+	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_v4_phy_cfg },
+	{ .compatible = "qcom,x1e80100-dp-phy", .data = &dp_v6_phy_cfg },
+	{ .compatible = "qcom,x1e80100-edp-phy", .data = &edp_v6_phy_cfg },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
