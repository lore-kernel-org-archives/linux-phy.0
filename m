Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 195FFD3C919
	for <linux-phy@archiver.kernel.org>; Sat, 19 Oct 2024 15:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u1JK1uEjVeRzf+Jn7ocdw7f8OoV6EGrtwpNUPvlvdg=; b=vcObr2Uj1bRPP3
	tJsODW3o5QhkRL+1FSVeubkcVJjDCjSXu2pIC2lhxgppoiAVIuvonOzYLR3Ce7qcHXHl/1dJa8pzu
	w3UK/AfvQmfj3pa4LKjg5dWfp0stIPDgab+nshkCN0bKdlAl/dqSXEbF+4aw8+pffwafhz/EqT6Uh
	zcl2Bzdf+jo7vzWPBM2hBB8a3d1I9S03XtHc6HrXi+S82+Nqr1yRp+paB5Mkv09FoNUj4f7nPo+g5
	c7pL4CmZe4zrg+6o5EIzwH5MbIF6GFX1oFu6gc14ssnBGHs71CWg0pyGi/au7EKOVpW2a1RILJMOF
	fDGaAkoJ/CKXl072p26w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Bdd-00000003XO0-1sjO;
	Sat, 19 Oct 2024 15:45:09 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Bda-00000003XM0-0JYM
	for linux-phy@lists.infradead.org;
	Sat, 19 Oct 2024 15:45:07 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-539e8607c2aso3406573e87.3
        for <linux-phy@lists.infradead.org>; Sat, 19 Oct 2024 08:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729352704; x=1729957504; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LdncSAoP0KhDyf2xplN8lueVHyRZUHitLAgflAowdNI=;
        b=LyI6xgAml39DcNYglcfI7Ie4NkG8nCiQhc/QqhSLncpY9E9sx+zSibwuYq9YYpP0U8
         35Ktr/4qH5t2fhu66R+qzRkmTI8pzzY7stNn1i1BNhhXTcjIozf2oqzIEjq6xRlMrMkT
         XfqkZRdcamUjJgG7HuYmbn9RNQyr0Uu2zDf3GmtPU3fZE1bigqJ44RG2a8Ce0rucKT5/
         Yb+xNsyQs+EqYdhmV31SBx5eSnzxCxvavZoMX7PClzt96BxVG0rlwCljb3+iKhC4pTcb
         piCWxsGABTdGl308pEpvNN7MQKVPnxTa/s8iwGwRSA/12FwnmMQG7b5IOrmwj/ZkUDXo
         zNuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729352704; x=1729957504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LdncSAoP0KhDyf2xplN8lueVHyRZUHitLAgflAowdNI=;
        b=HR9JSxsGKz4sP1haKAEFPWfUuU/Jri1gHwN/F4Mcu38Z23ES+uwtXr6eQwkYaUTKYh
         ZV0ZW/nlGrtda6ulQ6dx1MKaSJWAhT1zEGEVaBtjARYkA/QW4AtI20+LTuBDfWe7T0SQ
         DUdv7mpy39+R4pivYtAvr6PqwuhGyBbOOrjGeo08+y4deduMudmvlihlAGfxaOcKJYYg
         RNCnrXlRuVHX0g/XgB1e/OoTLlqG0K2zxkqgr+b9Q4oFnIdYFh888QnBx8TLomELxyG1
         OiHhf9ghv2VSZlxZR/wjbobQNdLcHsssfWnvFrlVvNEEPelqpWH4nD6VKjqWgvfEDjnr
         t46w==
X-Forwarded-Encrypted: i=1; AJvYcCX98A7SR7dzUkCYGJ/fxNfeIO7C7bwJqom6uqtgnpZRao8S24ASzx0nUzSgWJgd0peFw9meqIZgZ30=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy6rAft9w6/+57NGEoCqAaYeJNIBA6bZwOgvDAmxBqY8ho/mOkH
	B+TeByEnvv/pwGoZOTBdClFI4aFuY1gqJNJ5HOafW/zT99O6ALVZ1MZaQmU8pzc=
X-Google-Smtp-Source: AGHT+IFDuzM/ITc9x3ovHNfzWJuYKY8GTb8AGalLQx5ZBp9XUv98xwhqTD/8UUandbEIa8oszVrgKQ==
X-Received: by 2002:a05:6512:3ca4:b0:52f:d0f0:e37e with SMTP id 2adb3069b0e04-53a154b2c8amr3526130e87.42.1729352704272;
        Sat, 19 Oct 2024 08:45:04 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a15211401sm562854e87.249.2024.10.19.08.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 08:45:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 19 Oct 2024 18:44:53 +0300
Subject: [PATCH 4/6] phy: qualcomm: qmp-pcie: split PCS_LANE1 region
MIME-Version: 1.0
Message-Id: <20241019-sar2130p-phys-v1-4-bf06fcea2421@linaro.org>
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
In-Reply-To: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7955;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=UXDmPJ/23z2ls62ryM86x4tjZRAeCfpbFyCc69y6OPU=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnE9P1qY1h1AOxKKBEm0O74ADM+dBq1qmX6rzRp
 np5nfdjlS2JAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxPT9QAKCRAU23LtvoBl
 uNe7D/49mcsIppX3ofS6BCffYDKaPjm6GlPF+t3IzWGGSpsEugPUAkdRUySh7kOLSH/viWaCBuR
 wiiKg0EQc18fgXHj+ZiMQlBHq67wRvjbPiTK/KRdLJPjSmyRzdaO4D1+GThr8UcBDcmeB3e91hG
 MLLZ0EZ1+AJebvijywzvNYHBPbZ47qwa0ehVrvmBf+mRkOfzBQYa8ZsoViA/QLZoowy4g8W1RP1
 gTcpuxfcgyFLLVRRuGu53e52InObpAdipHxPdQ+n1CxhOgv5nPksMGms2gT31lLyEUHQqi3tK+w
 4GO2ZlGzagpdaMItnZsCm1kiaA+z+v3r83C4fV/XqSuj6NqKDOVBjpY7qUlTxepxQO/difIMv01
 0sbUKK1K1jAyPXT1t7QqWhxfS+MXy/ZTyGB4laRpEBMIwVOLtXV/FX0r+2l3uUN3/04z0FJmei8
 MztM1dSJVf5W1JAAeAHO3Zanvz5oMTU4AoPjtyrONucPz5XiO8FCOpqx3aeMvVwgJynBR6q+lTU
 +bGP3HZKPEbcgQPj70KtojbymF0KvqKjzhIUA5h+sE9hmi4E++OwiLs0sYm0CnpwU2GF6W7DuKW
 1l+JVbuTDIrFD9CqH1KWBxhyMRcfD7r2iFg25gYFaEcfxLrakuAfnqXUrCB0ctx8j4KhzNcONbu
 +ONEftQvj1Gklsw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_084506_188609_A7676E2A 
X-CRM114-Status: GOOD (  15.08  )
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

The PCS_LANE1 region isn't a part of the PCS_PCIE region. It was handled
this way as it simplified handled of devices with the old bindings.
Nowadays it can be handled as is, without hacks.

Split the PCS_LANE1 region from the PCS_PCIE / PCS_MISC region space.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 32 ++++++++++++++++++----
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h |  5 ++--
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  5 ++--
 3 files changed, 33 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 873f2f9844c66d7bd0b3bb3ab4bbd8be9a37cebd..1ca1f21b1cc225f435da9c775c97dfa142117f95 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1773,7 +1773,7 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_rc_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
 };
 
-static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_misc_tbl[] = {
+static const struct qmp_phy_init_tbl sdx55_qmp_pcie_ep_pcs_lane1_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
@@ -1907,6 +1907,9 @@ static const struct qmp_phy_init_tbl sdx65_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG2, 0x0d),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
+};
+
+static const struct qmp_phy_init_tbl sdx65_qmp_pcie_pcs_lane1_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
@@ -2582,8 +2585,6 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl[] = {
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG4, 0x16),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG5, 0x22),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2, 0x00),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_G3S2_PRE_GAIN, 0x2e),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_RX_SIGDET_LVL, 0x66),
 };
@@ -2728,6 +2729,7 @@ struct qmp_pcie_offsets {
 	u16 serdes;
 	u16 pcs;
 	u16 pcs_misc;
+	u16 pcs_lane1;
 	u16 tx;
 	u16 rx;
 	u16 tx2;
@@ -2752,6 +2754,8 @@ struct qmp_phy_cfg_tbls {
 	int pcs_num;
 	const struct qmp_phy_init_tbl *pcs_misc;
 	int pcs_misc_num;
+	const struct qmp_phy_init_tbl *pcs_lane1;
+	int pcs_lane1_num;
 	const struct qmp_phy_init_tbl *ln_shrd;
 	int ln_shrd_num;
 };
@@ -2811,6 +2815,7 @@ struct qmp_pcie {
 	void __iomem *serdes;
 	void __iomem *pcs;
 	void __iomem *pcs_misc;
+	void __iomem *pcs_lane1;
 	void __iomem *tx;
 	void __iomem *rx;
 	void __iomem *tx2;
@@ -2927,6 +2932,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v4_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
 	.pcs_misc	= 0x1600,
+	.pcs_lane1	= 0x1e00,
 	.tx		= 0x0000,
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
@@ -2957,6 +2963,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
 	.serdes		= 0x1000,
 	.pcs		= 0x1200,
 	.pcs_misc	= 0x1400,
+	.pcs_lane1	= 0x1e00,
 	.tx		= 0x0000,
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
@@ -3440,8 +3447,8 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.tbls_ep = &(const struct qmp_phy_cfg_tbls) {
 		.serdes		= sdx55_qmp_pcie_ep_serdes_tbl,
 		.serdes_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_serdes_tbl),
-		.pcs_misc	= sdx55_qmp_pcie_ep_pcs_misc_tbl,
-		.pcs_misc_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_misc_tbl),
+		.pcs_lane1	= sdx55_qmp_pcie_ep_pcs_lane1_tbl,
+		.pcs_lane1_num	= ARRAY_SIZE(sdx55_qmp_pcie_ep_pcs_lane1_tbl),
 	},
 
 	.reset_list		= sdm845_pciephy_reset_l,
@@ -3540,6 +3547,8 @@ static const struct qmp_phy_cfg sdx65_qmp_pciephy_cfg = {
 			.pcs_num        = ARRAY_SIZE(sdx65_qmp_pcie_pcs_tbl),
 			.pcs_misc       = sdx65_qmp_pcie_pcs_misc_tbl,
 			.pcs_misc_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_misc_tbl),
+			.pcs_lane1       = sdx65_qmp_pcie_pcs_lane1_tbl,
+			.pcs_lane1_num   = ARRAY_SIZE(sdx65_qmp_pcie_pcs_lane1_tbl),
 		},
 	.reset_list             = sdm845_pciephy_reset_l,
 	.num_resets             = ARRAY_SIZE(sdm845_pciephy_reset_l),
@@ -3739,6 +3748,8 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
 		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
+		.pcs_lane1	= sdx65_qmp_pcie_pcs_lane1_tbl,
+		.pcs_lane1_num	= ARRAY_SIZE(sdx65_qmp_pcie_pcs_lane1_tbl),
 	},
 
 	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
@@ -3945,6 +3956,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 	void __iomem *rx2 = qmp->rx2;
 	void __iomem *pcs = qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
+	void __iomem *pcs_lane1 = qmp->pcs_lane1;
 	void __iomem *ln_shrd = qmp->ln_shrd;
 
 	if (!tbls)
@@ -3969,6 +3981,7 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
 
 	qmp_configure(qmp->dev, pcs, tbls->pcs, tbls->pcs_num);
 	qmp_configure(qmp->dev, pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
+	qmp_configure(qmp->dev, pcs_lane1, tbls->pcs_lane1, tbls->pcs_lane1_num);
 
 	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
 		qmp_configure(qmp->dev, serdes, cfg->serdes_4ln_tbl,
@@ -4420,6 +4433,14 @@ static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np
 		}
 	}
 
+	/*
+	 * For all platforms where legacy bindings existed, PCS_LANE1 was
+	 * mapped as a part of the PCS_MISC region.
+	 */
+	if (!IS_ERR(qmp->pcs_misc) && cfg->offsets->pcs_lane1 != 0)
+		qmp->pcs_lane1 = qmp->pcs_misc +
+			(cfg->offsets->pcs_lane1 - cfg->offsets->pcs_misc);
+
 	clk = devm_get_clk_from_child(dev, np, NULL);
 	if (IS_ERR(clk)) {
 		return dev_err_probe(dev, PTR_ERR(clk),
@@ -4487,6 +4508,7 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 	qmp->serdes = base + offs->serdes;
 	qmp->pcs = base + offs->pcs;
 	qmp->pcs_misc = base + offs->pcs_misc;
+	qmp->pcs_lane1 = base + offs->pcs_lane1;
 	qmp->tx = base + offs->tx;
 	qmp->rx = base + offs->rx;
 
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
index ac872a9eff9a8fe7fc3307759288aee15d17bd24..ab892d1067c219e8db0ba0591921b38a9cebebe7 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h
@@ -13,7 +13,8 @@
 #define QPHY_V4_20_PCS_PCIE_G4_RXEQEVAL_TIME		0x0f4
 #define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG2		0x0fc
 #define QPHY_V4_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
-#define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x824
-#define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x828
+
+#define QPHY_V4_20_PCS_LANE1_INSIG_SW_CTRL2		0x024
+#define QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2		0x028
 
 #endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
index cdf8c04ea078a985be82d561ad0918dfdece9987..283d63c8159338b57a5026b6c2a86e3cce21097c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -17,7 +17,8 @@
 #define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
 #define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
 #define QPHY_V5_20_PCS_PCIE_RX_MARGINING_CONFIG3	0x184
-#define QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2		0xa24
-#define QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2		0xa28
+
+#define QPHY_V5_20_PCS_LANE1_INSIG_SW_CTRL2		0x024
+#define QPHY_V5_20_PCS_LANE1_INSIG_MX_CTRL2		0x028
 
 #endif

-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
