Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD3EC47DDB
	for <linux-phy@archiver.kernel.org>; Mon, 29 Jan 2024 00:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHlxHohb59QQXT5Ku9yInQO6sNA6nDVk+bZLc/b4jro=; b=x2g4FwiUjXO7IO
	kXNuHHp37teusixuGQOqTu/euTUQAQsg5hWnks/JXiE0VK4vtvEWgVcJwQnJQ9hplwN/j/w5fc0Dx
	qVUR1wmkV/uvlXjSEHBKMqDtg2oFdpQ73EnTZZmoED8ke19QQksArIe/6xdzpqUfyjd757W/aCpZJ
	ivN31zQM2TQq8hSCCsJSY/rb7HFNDPdKcnN8gjMUwQfN34buRc38SI9HEnD8v/CbzSIQTAdA531ig
	Nt5cwe/nYNsyr6/novwNGEDfIrdi7jOcOkX40K5a1BgKdNwC5SpfsTgVMOj3PFs5cc25l+zAnRRaI
	8Fbu2lIpp/nkHqqPuRyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUFTa-0000000Aone-0Cvl;
	Mon, 29 Jan 2024 00:26:14 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUFTT-0000000Aom0-1uaF
	for linux-phy@lists.infradead.org;
	Mon, 29 Jan 2024 00:26:11 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-55790581457so2156598a12.3
        for <linux-phy@lists.infradead.org>; Sun, 28 Jan 2024 16:26:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706487964; x=1707092764; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G+F65PytcQ8bRw7rSmz8tj7JMLr040VbpgsehDx14EU=;
        b=WCdRflG32++k7V1lZL1z+5XjtBxxC2MdZe8tOy0b3C45ptt05Abcd7oKBmGVmWxAoQ
         QR0ZIevTMCzzEFfubmMv43vv/L1bciCpouaWL+1dMXoaVIk/vFvawkQXrj5qzvJ9Q0ot
         NYZN+Fvlyllc6OUC26kchU2SAk5BbodTLcrFRfjOfzY7rKY3+236v+rW/QwlOFwfPKQb
         Icho/kiIHw0nVJOqK2n5ME1/8bw1e00PBnHJNjYI7yjRd8xBcYBtc6WitNCOtrALdLkm
         RrA7jFn6iDfEK1Ny4zc8DFaDPFuPNOKK4f96uRPJRjG1llMlFwgkHbexYGU1wVCV/yRV
         WHRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706487964; x=1707092764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G+F65PytcQ8bRw7rSmz8tj7JMLr040VbpgsehDx14EU=;
        b=KeiZr+Gxhdx/+JEy/I05e7k+sXgo3rB3Ql3YkHkeJBmD3qn5sNbDWPjmrPdmPSRb6U
         nJSN7VXz2PplHNh5ZWu/pQidWhN4ZGIxtwa0EZ0ZZrasZUVAMIeZ+cVcQKjEMV9jbQ/5
         mNIrsXEiXC2X0udqpLbGtQkolSQX4VEwfe+ZlizdB2WYuq9M4FuIK5mcocYviZaZbIB+
         oKfFP5w2SY6VSDG4UX0gD69upbddkMAqz/fNcsHZmv8ULzUt/o4Fp+Hmwn7F8GuoICkR
         T+6xHP/hZVFNr/X3TaS2yNLG/q0TxTDN5SC+xilxQ68DcrXG2JdikeBSqCBMAfDvFNAc
         gErA==
X-Gm-Message-State: AOJu0Yxq1GsgAInIwbAAEJJxCrdqDl5qMS8WD9HnD2rS5jbQBQkIVj1H
	YkposdDq28WQNSoXZXZctCprpPlIxeQMDocWJt5nQZZ8rPB5GQJqwydR/ItOL6s=
X-Google-Smtp-Source: AGHT+IFyUWqmlpnke6uDNFyKcCEQzDpvi2OmpUheL+tQmlsCZedhqTKqkQKEgSUx5CrdYc+q84z6Xw==
X-Received: by 2002:a05:6402:22d9:b0:55e:da7c:607a with SMTP id dm25-20020a05640222d900b0055eda7c607amr1549330edb.15.1706487963793;
        Sun, 28 Jan 2024 16:26:03 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h29-20020a0564020e9d00b0055cfb3f948fsm3208193eda.76.2024.01.28.16.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 16:26:03 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 29 Jan 2024 02:25:46 +0200
Subject: [PATCH v3 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
MIME-Version: 1.0
Message-Id: <20240129-x1e80100-phy-edp-compatible-refactor-v3-2-e71f3359c535@linaro.org>
References: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
In-Reply-To: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7035; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=yM1HmbxAWSUJwXV+g2TEaMJpy6Jb8p7jALfobB13IKc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBltvCW9TNARm3SS4noZQ5mY3dhee2QdRN1DRyTm
 guXBvIlmcSJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbbwlgAKCRAbX0TJAJUV
 VrjSEADBSV/ePjnpJojvR5Bn7TxeeIZ7zL/FVXA7KsnHrtifKS+SxSU7ohYYmRImrHIfyCT1KYD
 9r1SpeKEKjk8uRnqYx899n0MxDcNK/l/Uub50Xz3RGsuc+2l4tnG0MyMnXkXpu7mVSsoDBxkbSw
 0aLeQWb57pduXWOa3O3eyhsdsRmWUMpAwmrP0PXLHX3fmvyZljALWtDxvNIAhbXuOTWAp1bOUoS
 AcR+xxMqmLvFSr76hu0u8kUqtDP+ygb+JNR5iTiW6ubIzLtB4AecYvAtyT5eVHg7sFuAFP1YrVh
 q5mI9LPIE1Tvmzhv99FoHOmeUwFMDKqR8q5WhbI7/5WBSb9ZQml0Y6PohnQ6t45VrUmis7nQDkj
 CzeQKMxzJqKaHFZyY0aKXB7NmBqsd16VR4UPI8xKGmPXobmHwnu9er1reEXcdcknCANQVqd/4uG
 HJEeH5ZnFTTzxo440Fsr8zVCs6NUp6Li4wic2qNxKsJB5KOdVIP/YaE/Gv6x0dqwd4i8v6JopV5
 DgsJktl6kr769gfnMCHMAee+HkrF8TyAMdlD+4UV/Dj/uKVMg7BdjTbdCd29C2RHB6ZG4fHXByO
 dpk5lroqj+jZP9Qfs2884A6sABODt1+DA7h9maM4HFw7MFd2PYk7qHfOfnSHjYQt98jq+3y07A8
 gRXR89NRHj+25qg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_162607_555517_22C52AF6 
X-CRM114-Status: GOOD (  20.28  )
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
of the PHY accordingly.

The existing platforms will remain with separate compatibles for each mode.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
 1 file changed, 51 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 8e5078304646..af941d6c5588 100644
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
+	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
+};
+
 struct qcom_edp {
 	struct device *dev;
-	const struct qcom_edp_cfg *cfg;
+	const struct qcom_edp_phy_cfg *cfg;
 
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
@@ -162,18 +166,28 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
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
 
+static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
+};
+
+static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
+};
+
+static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
+	.is_edp = true,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
-	const struct qcom_edp_cfg *cfg = edp->cfg;
 	int ret;
 	u8 cfg8;
 
@@ -200,7 +214,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
 
-	if (cfg && cfg->is_dp)
+	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
 		cfg8 = 0xb7;
 	else
 		cfg8 = 0x37;
@@ -234,7 +248,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
 {
-	const struct qcom_edp_cfg *cfg = edp->cfg;
+	const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
 	u8 ldo_config;
@@ -245,6 +259,9 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (!cfg)
 		return 0;
 
+	if (edp->is_edp)
+		cfg = &edp_phy_swing_pre_emph_cfg;
+
 	for (i = 0; i < dp_opts->lanes; i++) {
 		v_level = max(v_level, dp_opts->voltage[i]);
 		p_level = max(p_level, dp_opts->pre[i]);
@@ -261,7 +278,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	ldo_config = edp->is_edp ? 0x0 : 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
@@ -447,10 +464,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
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
@@ -468,7 +484,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 		return timeout;
 
 
-	ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
+	if (edp->cfg->swing_pre_emph_cfg && !edp->cfg->is_edp)
+		ldo_config = 0x1;
 
 	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
@@ -589,6 +606,18 @@ static int qcom_edp_phy_power_off(struct phy *phy)
 	return 0;
 }
 
+static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct qcom_edp *edp = phy_get_drvdata(phy);
+
+	if (mode != PHY_MODE_DP)
+		return -EINVAL;
+
+	edp->is_edp = submode == PHY_SUBMODE_EDP ? true : false;
+
+	return 0;
+}
+
 static int qcom_edp_phy_exit(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -604,6 +633,7 @@ static const struct phy_ops qcom_edp_ops = {
 	.configure	= qcom_edp_phy_configure,
 	.power_on	= qcom_edp_phy_power_on,
 	.power_off	= qcom_edp_phy_power_off,
+	.set_mode	= qcom_edp_phy_set_mode,
 	.exit		= qcom_edp_phy_exit,
 	.owner		= THIS_MODULE,
 };
@@ -781,6 +811,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 
 	edp->dev = dev;
 	edp->cfg = of_device_get_match_data(&pdev->dev);
+	edp->is_edp = edp->cfg->is_edp;
 
 	edp->edp = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(edp->edp))
@@ -839,10 +870,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
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
