Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BC04C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 30 Oct 2023 09:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siBA8bKvHZ67/4umjF3vSI73ThrjIaRdo8EBYbyz2LY=; b=h7yAx0xuxu7PsH
	knBFZvbtgovR6F7lf8GvYuib8AcYw789w+ZSVlt2xy186yKcDlKQXN6rF8VGL7qO3m5EFVzSfep6j
	02mgWNN6/Td3kEIqYh+c1IHn/UC7t2GhgrrT99sOwa+Ieli77kM0s6yVDhOdz2xieOBWg8PiTw34k
	RquzLRZQofAfGkKTWulsZkoCtEEsBO9fpFEEhHThGCLuUcw4iTeMeYturSURMYMbUJzW0GhaUA7rC
	LIXpMUw9ecdTwbnTpuz5B0mIbQG9IG5L1sCIo/RBqN7PJu02hG1Vyr840z7zARevVgiUfFLKT7LtS
	5vXj7STFPPQOjRj7uWog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOsu-002w7z-1v;
	Mon, 30 Oct 2023 09:48:36 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxOso-002vzi-0A
	for linux-phy@lists.infradead.org;
	Mon, 30 Oct 2023 09:48:31 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507a3b8b113so6104056e87.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Oct 2023 02:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659308; x=1699264108; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=glusSme2QQkVLJLZm8t10h7PVVgIoDbE3AU7D+I1dkM=;
        b=HDPH0YvWlXDm2btzoB4CMb56m9VUsTfOgf1bIwBMBdjoOjvlAdbo3GwoYbWNM0CihQ
         Shs8YjJOdn9StlsjB7wBXt++Jd2yq9VF7fDo3MmHVPEcSYqXGLJ98iswf4rnxE2h9zSR
         FLQCTOVGDbF7LXA82PKNiib4d222SpLqGLq0UX34EiiB8+tG+Bw9ZPdnzA78cSuBCy2i
         mqg9jy2EIx0a25oItglFpA81yzlykuTMTiupRCn0rTImGzfWe+1cKI2BANFLvYypuMcz
         6H06euLLNT7NhTtZ/ajr1bJ7NBHAIoHUI71BH3MZO5OIR2Y9TPCDL78TFnSZNeh33HZh
         tPog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659308; x=1699264108;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=glusSme2QQkVLJLZm8t10h7PVVgIoDbE3AU7D+I1dkM=;
        b=wng0itJc4CiWKvA4FIGIJXyn70PRXLtG+3P3six760EAK25PxgfqYaBaUxc8S2hWCF
         DgHJIvTBDEEvEXGAjqqfAjnVo7D2DH2gAVuCyzC6OVja0nSRTQAH+B1s4whZLxqeqn5C
         OsLfWdTDdRo12s0T2Ue8Y0cHeWZyC/2FIZA3euzBemqrFu5A0dqxnaiegAMsUzP5Xzvx
         thp5dAo6zL+Hx/xGUDWuhJ/AKAWuKF37lxpJOqF8FBjLlwOl5oAoswuPnCLbqWNVmyua
         itKY+UDNxzk965FxVz3lD6gGXhrGUijDjy2f9aftrkl7D1QKiV2Vf5DVDFdb38QYVboP
         8hKg==
X-Gm-Message-State: AOJu0YyDzzm8h+fQRmEy7QHDykfL7zvTTgnwdsbRaUypUPyFSOt5cazN
	fWtXmjOnKaMJrwMEHTDjoeF05Q==
X-Google-Smtp-Source: AGHT+IFf732ZWzvZVXr+3wqMwMDfnaLPoiO76VOY7hDwCqBotV48lY1TPCeVdMt/OO41mH4FF9waKQ==
X-Received: by 2002:a05:6512:3f0b:b0:507:c507:c9b6 with SMTP id y11-20020a0565123f0b00b00507c507c9b6mr8876835lfa.41.1698659308250;
        Mon, 30 Oct 2023 02:48:28 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:27 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:22 +0100
Subject: [PATCH v2 6/7] phy: qcom: qmp-pcie: add QMP PCIe PHY tables for
 SM8650
MIME-Version: 1.0
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-6-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4407;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LO+hcrUVHXNOvdQ6DMrprTot+blAORk7xwd+5Mi5jDE=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vkHwM5zd5F0Jx7L3dVqqfnrWdDvR9zpz1s/6JQ
 px5LSB+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT975AAKCRB33NvayMhJ0QXgEA
 C0Hz7DFKGNFE3NXGfHgbK5cnpuW0LZbwYlV9/qpj5bfGWJJidVFJxqgubwEu6gAWtHnLo91CsbTcI+
 L5Tnr2X/oxtodspNgdZ1i7ZcY2nvidiwYcw2x1k+Lf0Pq/QDP7QfK1NOKc6V3JFsy9k6ITxro+sUC+
 NIJw1DXQhKn8/3IGu7Gxpw5lZLY09wMC+/sGuv9up5dkv+Ne1lNu8uAEe5rV4Mfty43hRhA2HlGmS0
 Cbz1FFOXDtC0owOaS3yDIs4iqgr85z9D14RiCpOsBjJ68j+NkxUY9gioGERxytnDGDebD07efe2XsY
 KiF9NDPpLoi5nJjNopDfFvUf7WKfO8Sq06Tgh4Ub74gcPyIJyOTdWX5b/BdQiFM8H9rZI4RUJIeA+z
 CDLGaz6KIHwejJhAHh22yAhLQ66FwaB3iINfN6leinRMDPf0c7cSBVhbAJhuXwpa5OCYeZVSYbnKkL
 nykIWUE4l8hTh72WLch/am8pskcUi8Yf/4XbuL94jWe0wFyer4Jf1BYyDvTXr+NGSYdpWF7l/TVlEO
 rFQk/bpN0oJntrbPg0N1FJUqKPx+C8puFAqorpQOw39L2ntkyNRmF4NuTHnI3kWaTV015MtLQ8qP4l
 lkkwJkjd+rpcMfF+Xa15UWS5uZMb32tn+h5cBo2S0pY/RWbvXNBue1FoDLPw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_024830_121545_12B43328 
X-CRM114-Status: UNSURE (   9.45  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
