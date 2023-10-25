Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E825C27C48
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 07:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3wv4QMRqJ1cjE00BQarcsWlskvu7D5jlivR2fBiV58=; b=Sn7+k6QimdV+Ej
	NIS/gGulCTv6G9nzIkX4y11DIwqBubDoRLMO/yOyNSXN/VPcwMBWBziswuXFWx84pkzBoan26FoRj
	zpHatVr+bihLFDcjetT7ld82uZU+L7Hq7erXlsau1jf8UEjB1Pz89B0wyD1N856YAdjxuwl83RGf+
	6GgaEpwPiccZJCXAW0Y1neqP8h8F5IC80biU03TqAJgqwBDGvyAvJzuhqIxgihQJdDXsdoCcuZG4u
	O6W5BCOAJ1mE+z3f4Ljx0h2AzlpPjdYALCaYeBx0KCqGrSp4GlHd8tiaEaiuCgQnavTBA7jrQzRyz
	l4iGKa+7MKzEuXJKipUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPY-00Baaf-2O;
	Wed, 25 Oct 2023 07:34:40 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvYPV-00BaXc-2g
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 07:34:39 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32dd70c5401so3565163f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Oct 2023 00:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219275; x=1698824075; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=toDAK10JFSwHPkulesZe8HTy28t6EZTKIHYym2YrLGE=;
        b=n0fs9ytmyDuruJkb+6JAEgLahP/a86IDCh7+kqNS0Q61rVKybt6kFRYvAUTGa+G1I/
         UJAKVktplO8LGMzOzxPyQ+RyqZ+8q5VgKUs7jeY6JRItESc2h0YA03ovmKQR8+KiWOEC
         9DNaUE3a8XcR4cW7miOklb/FCksGN62M49nSIH+BmlGBNm9d67X276DXFszNjXlfjZWd
         o4NkGwrdb4bBjNcVmWHdBbzt2mnSUKJjyc/UQU/smejJhHWdQm4W2QwXHHHxsMZJg/JO
         Jl2GdeB46YlPdeSFSEz3wVSe7ghdSmfF7Qy4MtzlbJYFRUQhmlKGIkr45LeB7Nkk7Qiw
         /QMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219275; x=1698824075;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=toDAK10JFSwHPkulesZe8HTy28t6EZTKIHYym2YrLGE=;
        b=s0kHEhlaaMXgvTd83JE6/JxhiwIOQkR1PBEyzD6zFkOCg0Cznbltn7hztRt5hv5Y7j
         HKDimkeKx7e2UZmI9+h5uqrjerNJ1cSgSX+b+5HpRLJsJbyjkznO5n32gEVa8rSfXmns
         AI5jK50lxNOO8uuCgctLeMOF0gq7LOb6JDC8siHBGF1vf6Znr7O3CfHgk6ncHztRRsJ/
         jm6Nypyjy4XJ5VSHKwug1Ld1rrAVASWmhub8fet1Be6HgqWDAoSnYyQ70GdnEBxC4/I0
         etxlHTbK7t+/yehNXOD5FE36w5NuXYlG2O3T2+r2/W/aNL6ImxPPHcc6fZ2+bi9xe0rO
         u9Zg==
X-Gm-Message-State: AOJu0Yxw0NSgLWREVMVUsVOWCH+3KfU2TVPRnj1mWwdWKbajXMAwVO6Y
	U7DA7O4jUycvEKE8aKbMlOAPGw==
X-Google-Smtp-Source: AGHT+IG4JJPR0NVKvViSjXPwupCEOZkaWWtKLYCtu/+s59YBq76D1GEVXviCNNAR8F9dlm6E4JcvzA==
X-Received: by 2002:adf:e40e:0:b0:32d:a310:cc2a with SMTP id g14-20020adfe40e000000b0032da310cc2amr9688667wrm.23.1698219275657;
        Wed, 25 Oct 2023 00:34:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d4ac7000000b0032dde679398sm11431392wrs.8.2023.10.25.00.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:34:35 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:34:28 +0200
Subject: [PATCH 6/7] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 SM8650
MIME-Version: 1.0
Message-Id: <20231025-topic-sm8650-upstream-phy-v1-6-6137101520c4@linaro.org>
References: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-phy-v1-0-6137101520c4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4346;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=jEiylMQ86A3JRCyG8A6COHqo4G+yx8E7uU5kScEEk/w=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMUDvUJPjVZf06ZspRkDmXm4LKb1auDEcX2i2uem
 Y+NGsdaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjFAwAKCRB33NvayMhJ0bE+D/
 9wwT2fREfhjQd7Wc2H+Np1y7dzjR9he9ZM5IkCUzs3Aly5U8fzLZgUs3bebx+g7cvJ1iKDXSPqMezA
 ABFe1hp3K6u5ZCxJNgRf/Dxkua6n8rbVwp53Eh3gqBSGw/63kuPdoIJTTJPSCoHOf2Eqm2v24KPQfI
 CWhzjQQVTCQnw+CPiniNTfou+AZKnjj7fwyD9MrVqelJMAQWoUoA8JcfuxHf4yUhhZFIDC+CVhsToe
 +tmlG4e0KBH2Yaz/VaSWNq1DXxNTeA2cXs67SbD5/CoaMcdQaQ8WCQIR7R/q4QMCDLmvJQLLp3efr2
 E8m04OB5wzM+8cpwbeBK9eBbzusczxPxnEuG7OWE1UwLJYDfasmHbNfjVb8tFcmttt2G0WOB4EISQx
 5tXoc9Zw4YVot8gUyCYiX0QH2UJ4OpaXj6fjCFYnGOacgnIntUfMMBAfr5sxoD4leHP4sQm3iFc5pT
 XAPFCagrO72PrKVC7c8mSeeQ6YPQcebYK36euulYSCD7aVhYeKbfKMVCld6g/DhpvSnNpo3/gmSKLw
 nA8kHc8qCd9lUcHPuIr2MQCnwOLU/f2I6Vc2/dUV5Z9h6yLjLC/IrIoLDopiNnfjqEQfk3Axbkz4re
 DQ9YIp20qXqr0FWUqMlICOCvEleQauIS32hYZ/50qTgNQyx4ocoVhZgnCklw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_003437_890130_FCC13652 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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

Add QMP PCIe PHY support for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 65 ++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b64598ac59f4..2af7115ef968 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1909,6 +1909,35 @@ static const struct qmp_phy_init_tbl sm8550_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_PCIE_V6_20_PCS_G4_FOM_EQ_CONFIG5, 0xf2),
 };
 
+static const struct qmp_phy_init_tbl sm8650_qmp_gen4x2_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_PI_CONTROLS, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_IVCM_CAL_CTRL2, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_3, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_VGA_CAL_MAN_VAL, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_GM_CAL, 0x0d),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_PHPRE_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B0, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B1, 0xd3),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B3, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B4, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B5, 0xb6),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE2_B6, 0xee),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B0, 0x23),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B1, 0x9b),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B2, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B3, 0xdf),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B4, 0x43),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B5, 0x76),
+	QMP_PHY_INIT_CFG(QSERDES_V6_20_RX_MODE_RATE3_B6, 0xff),
+};
+
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_serdes_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
@@ -3047,6 +3076,36 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.has_nocsr_reset	= true,
 };
 
+static const struct qmp_phy_cfg sm8650_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v6_20,
+
+	.tbls = {
+		.serdes			= sm8550_qmp_gen4x2_pcie_serdes_tbl,
+		.serdes_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_serdes_tbl),
+		.tx			= sm8550_qmp_gen4x2_pcie_tx_tbl,
+		.tx_num			= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_tx_tbl),
+		.rx			= sm8650_qmp_gen4x2_pcie_rx_tbl,
+		.rx_num			= ARRAY_SIZE(sm8650_qmp_gen4x2_pcie_rx_tbl),
+		.pcs			= sm8550_qmp_gen4x2_pcie_pcs_tbl,
+		.pcs_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_tbl),
+		.pcs_misc		= sm8550_qmp_gen4x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_pcs_misc_tbl),
+		.ln_shrd		= sm8550_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(sm8550_qmp_gen4x2_pcie_ln_shrd_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= sm8550_qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+	.regs			= pciephy_v5_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+	.has_nocsr_reset	= true,
+};
+
 static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 	.lanes			= 2,
 	.offsets		= &qmp_pcie_offsets_v5_20,
@@ -3820,6 +3879,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8550-qmp-gen4x2-pcie-phy",
 		.data = &sm8550_qmp_gen4x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8650-qmp-gen3x2-pcie-phy",
+		.data = &sm8550_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8650-qmp-gen4x2-pcie-phy",
+		.data = &sm8650_qmp_gen4x2_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
