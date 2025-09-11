Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBA7CCAC587
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWSRT39pKD9noM10VqND4PhkNPZBzn1+UMrre9EdXEs=; b=qXpFYLBxWI1G0T
	9M3IljSlVXBHa0zepPF7dNiqBt1YE1hN2wr5ylDr7ynurc1Ih8fhf31UQXTugRAsVxN9SSZlAXb42
	KtGcUUtAIKz/8aHc3OxgRTo6Vv+Bf8hWCPxj5DnXK4uJpEil/UHMoG8n+4ISKIQytwEIrYf7Z3FdF
	Hh3Do9q6k/kZUk9Z8nU1FwQLMigXkl9+Wklo6vRPPqkIdJM8b5NY6YehfHzehC9/LJ9ojSfNOm5Iu
	5eyvgoK22rG2MTI/kz3XqSS03HWHyKZvfgSCK7CB9PSJBoWTj0VqwJfFQ7nOi68snzK5JBO+Qee9y
	tqEcUfM/iXPr1nvxn9jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYc-00000003eFR-2ysg;
	Thu, 11 Sep 2025 14:45:54 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiYZ-00000003eDq-2itQ
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:45:53 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-b0472bd218bso140061566b.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757601949; x=1758206749; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2BmPUUCDGq3HURRo4amy/KcHcJEGjVxLMGBoZTJb2NI=;
        b=yC1h5Oo4Gsgej5WuxfJCXBqcKX4QPuAU66bSqrySIB3CoZXe93eQiWdVgB82h1G/Gm
         WGrsjLDUwm8mdNSZttGYr2vdxSnOf93JXTCU1Kgo8Yg/LNLfWZxCbhhH3RaGoVbbk+Gy
         goWyyuU+oCXM61jhIJm77w34uECtkNESozXWQCTWuIOAwogq0KgRUiS5tpAdlK+hC7gu
         NO9g15eZr+ZO9W6Smq9dNzp75bUmVj4uzPDnb6p1xO1AXo4iBgU7EAkqQsHehsgZioiA
         H+NXWg5g1vEvSKsHn3p5Aw070wCDERm08HSFgR1O/R6tcXR+9tXvD0ZXUNQoSLIpccJR
         6ifg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757601949; x=1758206749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2BmPUUCDGq3HURRo4amy/KcHcJEGjVxLMGBoZTJb2NI=;
        b=D1SdFDSzj7RgeTEn6EaxpFoFbR9uisS5sE0PLMBg7OnNQKtApSYS/bJC34xGcvdRWZ
         QUtl8ihVZ+y1pZ7aV77FaHH0gZ4E9p0EzzNaj7+oTa9Lpzc8kXU8QyPTZpKtiqlHqgkD
         lbtFYhVKEPSS1XrmtlnAIKEpoJSSjsgBPDulaiWUIGbbXNKCN/3h4HCxMzz9f1+B4V/6
         E+B1xVrBWrg9WVLBpR3Y2RS7OG+6IC9+04SEodFwsCARhwXM3bJY4Xm3z/uSHwff6roM
         sUlCNhv+WqbfD6ML+nA+8latK6lOjwL/+aeKYwpac/tmh6Zu/JzWPQn/YmlWV5uCCZuG
         +2bw==
X-Forwarded-Encrypted: i=1; AJvYcCX9Uj5Yd7Gi7rKYwroc9fubU6yZF18Gn4lKz389ldFw59gyADsnvfhGTzCwGrEY0oBbz+jdHhGfl0E=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzaoy2rrhOvQGFpicl98xyg0aTvvdd2vNOoZpc+ijbRdprbfKkc
	nlY3EGmCrx+/4OAjP28WpZAB85K2bNhWCG9AvZfKr31++/VpKvA5OxzoBKeYIzYI6SBnYkOptnW
	1eV2N
X-Gm-Gg: ASbGncumdb0H2n6pkJGqEzvlM77Chbdq1k8HIf7Wc454zqTrMQ85k7k6ElocTDOC58J
	tigOgKvNYu7u3BFk4t/Z1Sl6tZwNrrFv8KfBgUdHw8y2fcI3QDblMW2aiFTqDqADPsNAMs7+Qqo
	fQcYu7XjCUGV1SBaM9O8XqEhSw7XN3sNDvradFUOksqEZNSFr5CTfU4fwFvDh7Zj0XE4XQ37RoI
	rpnnqB9ecp9fjdtjEF66YZ9Qm+P5r9CIhD0gVAJ6yJj5LhDC8sJcanw+k5ewdXZJoQfSivJxttA
	ypI/Kxpp8f1/0LSzyiIb1+Qn90DAz/tkhwolKKnWL6nxAXjIQabg81UGX03/59AWtfuQYT7Iujo
	5LFtJh2v9zQ+TdVuhrmANf6s=
X-Google-Smtp-Source: AGHT+IF+JeTZ5Eo/VCpQ+ME8qE2+l71Y+Rq4EY90N0nz/IHpIRERlI9hv3j/q/90UI9KladkxSbLMQ==
X-Received: by 2002:a17:907:5cc:b0:afe:fb5a:6428 with SMTP id a640c23a62f3a-b04b140cfdbmr1727788166b.22.1757601948978;
        Thu, 11 Sep 2025 07:45:48 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31282e7sm147196266b.23.2025.09.11.07.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:45:48 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 17:45:25 +0300
Subject: [PATCH v3 4/4] phy: qcom: edp: Add Glymur platform support
MIME-Version: 1.0
Message-Id: <20250911-phy-qcom-edp-add-glymur-support-v3-4-1c8514313a16@linaro.org>
References: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
In-Reply-To: <20250911-phy-qcom-edp-add-glymur-support-v3-0-1c8514313a16@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=12901; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=kXtyy4g/8gPiP3fYH2G8r7yHJzSZWdjq6ysRPfCJzjk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowuCTUEW85MBXJApwsWTlVcVi6jQOWI40g/HrE
 daQpVhW7f2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLgkwAKCRAbX0TJAJUV
 VnFSEACgr265Tgm8SUOLJkdHd67S+42SS3kmmOQ9+B+WHVKCQXXfoZAEBUcX5XqEu5+ZauHKA/m
 14gfmYDQlv7dhJgcNMO0Vn0fTFvvXd/bpjeVR9KmT5vcoXw2jlXNSaO68JiRAfrOqSTaZq9nfLm
 0xuqluMSfe20DA+ovFNKWeBgAiZpNgx2TAyrEB0TrHxOMxvT5SWBVfSLTlhT+4uaI8+dlO2FtGK
 qR+OCykz1NOSErM8oQ1mKgWQC8FQZ06Im97t3lsFVszl40+pBhoJnn0i/8kQrXedT3wmkwKtvYM
 eDC0Q+w0kGLedCMfpbnB4nOn3+PhSaRWjgDgqVb5efkNl4CkrRcDGmL77MNn1mqpsrmi/luAerb
 CUdpsFgryRZVk5ffXHT4zyQhCuLpf8jtlZ1vuZNAMXVkcv/D+mPdSnHkYGy5ew+KlIGg6tsToUE
 4GLZ0sMqxLhj1xinglBFOeXl+ey+FrBbUei3nGcS/uXlilh27aSr4OWLchgz7D1vMYYnbvKFje/
 5feD2BslHxPmvpOR331+s8caapuG8Xulh344RMkbpRmjMK5db8AXbri+MkGXMe/XM3mMG2HCORB
 1rovP4+CqXIhUnSK79FdNM7D4hIQcyH8Ygf1rv0rNYiKJQPHYI8D4WmElnPD/CmS/IqNKxH14TQ
 FjzDfL/+Eb+NU+g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_074551_766269_0EDE0EA3 
X-CRM114-Status: GOOD (  18.47  )
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

The Qualcomm Glymur platform has the new v8 version
of the eDP/DP PHY. So rework the driver to support this
new version and add the platform specific configuration data.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 240 +++++++++++++++++++++++++++++++++++-
 1 file changed, 234 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 7b642742412e63149442e4befeb095307ec38173..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -26,6 +26,8 @@
 #include "phy-qcom-qmp-qserdes-com-v4.h"
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 
+#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
+
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
 #define DP_PHY_CFG_1                            0x0014
@@ -76,6 +78,7 @@ struct phy_ver_ops {
 	int (*com_power_on)(const struct qcom_edp *edp);
 	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
 	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
+	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 };
@@ -83,6 +86,8 @@ struct phy_ver_ops {
 struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
+	int aux_cfg_size;
+	const u8 *vco_div_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -185,6 +190,10 @@ static const u8 edp_phy_aux_cfg_v4[10] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_phy_vco_div_cfg_v4[4] = {
+	0x1, 0x1, 0x2, 0x0,
+};
+
 static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
 	{ 0x05, 0x11, 0x17, 0x1d },
 	{ 0x05, 0x11, 0x18, 0xff },
@@ -210,6 +219,14 @@ static const u8 edp_phy_aux_cfg_v5[10] = {
 	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_phy_aux_cfg_v8[13] = {
+	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x4,
+};
+
+static const u8 edp_phy_vco_div_cfg_v8[4] = {
+	0x1, 0x1, 0x1, 0x1,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -224,7 +241,11 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		goto out_disable_supplies;
 
-	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
+	memcpy(aux_cfg, edp->cfg->aux_cfg, edp->cfg->aux_cfg_size);
+
+	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
+	if (ret)
+		return ret;
 
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -252,7 +273,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	for (int i = 0; i < DP_AUX_CFG_SIZE; i++)
+	for (int i = 0; i < edp->cfg->aux_cfg_size; i++)
 		writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
@@ -345,22 +366,22 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[0];
 		*pixel_freq = 1620000000UL / 2;
 		break;
 
 	case 2700:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[1];
 		*pixel_freq = 2700000000UL / 2;
 		break;
 
 	case 5400:
-		vco_div = 0x2;
+		vco_div = edp->cfg->vco_div_cfg[2];
 		*pixel_freq = 5400000000UL / 4;
 		break;
 
 	case 8100:
-		vco_div = 0x0;
+		vco_div = edp->cfg->vco_div_cfg[3];
 		*pixel_freq = 8100000000UL / 6;
 		break;
 
@@ -398,6 +419,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v4(const struct qcom_edp *edp)
 				     val, val & BIT(0), 500, 10000);
 }
 
+static int qcom_edp_com_clk_fwd_cfg_v4(const struct qcom_edp *edp)
+{
+	return 0;
+}
+
 static int qcom_edp_com_bias_en_clkbuflr_v4(const struct qcom_edp *edp)
 {
 	/* Turn on BIAS current for PHY/PLL */
@@ -530,6 +556,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 };
@@ -537,17 +564,23 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v5),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -555,6 +588,8 @@ static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -734,10 +769,202 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
+static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	case 5400:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
+	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
+	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
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
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	case 8100:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL);
+	writel(0x3b, edp->pll + DP_QSERDES_V8_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + DP_QSERDES_V8_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
+	writel(0x96, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
+
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
+
+	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
+
+static int qcom_edp_phy_com_resetsm_cntrl_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + DP_QSERDES_V8_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_clk_fwd_cfg_v8(const struct qcom_edp *edp)
+{
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1);
+
+	return 0;
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v8(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
+
+static int qcom_edp_phy_power_on_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
+	.com_power_on		= qcom_edp_phy_power_on_v8,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v8,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v8,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+};
+
+static struct qcom_edp_phy_cfg glymur_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v8,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v8),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.ver_ops = &qcom_edp_phy_ops_v8,
+};
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -1133,6 +1360,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
+	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
 	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
