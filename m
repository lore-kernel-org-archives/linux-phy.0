Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85D5CC9EC90
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jan 2026 13:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UnneZO0IioNrzBj9fMFvsrds88UxYsr/KPK1UYKWuB0=; b=5HCUYbV8KgHag+
	sH1/LdkA9ACXX/6zzr/IxOfmASU5SV48P1LgXVSFLBueXR3oIiOlc/ARVw1FKScGkE6GfgaVLqFQX
	dC13URTnetOq45FrIBuKEbgLQSwxNhXM7SyY3W2FAY6WL8CBKTQhpUEVv5W9NghusyeGd9SlHxPND
	zxOERYAyQxl6fu9HRTgVlDLmCKLz2QutWouFzGCAx79JBB10AMVbdPkjWRi03pVpjyBL/hjb3mo78
	/PYKRQU20CzFA9iWMFDsbWNiIsoiTExQ+LPV9xHMkEL6x20RB4pjOBQ0kg9G7NM4f3z5vgCQD8rm9
	6eAyH2g22qjDAl8qzhJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIMH-00000005ShV-1FkU;
	Mon, 12 Jan 2026 13:53:25 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfIME-00000005SfS-25tO
	for linux-phy@lists.infradead.org;
	Mon, 12 Jan 2026 13:53:23 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-b8719994ba4so145355066b.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jan 2026 05:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1768226000; x=1768830800; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKl8VFa3Ka3PXOsDL6wBQeU/owbrQtnhkMdPY++AJFQ=;
        b=vtlE+PlmnyEg8UC3M+6sDLDy979AieHXUVN9dhnL04w4y/Jyl1Q50ezIW4nKZOajMq
         og/ZrBDzOH8aUwSiBblfoUHXQFDLeI3Mohkyn6pwu8BcmG6/Knq9jgS8L1t+JyeZZp5B
         LTNt5aX4BMmHKykIMnOjUhxeRLZtO3H4DmvNXE0yBn1uB1cEmO5tcaLLxbS9RC/flSkW
         1HMh4h25TMPxbmFveb7nvT0wtCrkh23x0teAs6BJfdqs6IOMTCFVORnwYPQ0lutI3ciz
         5YC3QwpdmBIx/JsE5szHDjmEta/ujRMpdbY/s710ABfQJXJ5rzHKzYEHZRMhPxIjoKoh
         ZtSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768226000; x=1768830800;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oKl8VFa3Ka3PXOsDL6wBQeU/owbrQtnhkMdPY++AJFQ=;
        b=eTJ2AK9seN7j9FMyZpnDFGy4bBCfKBaX2w8BwJcSP0Hb7S7nCc3Vqlk3q7yze+nvmE
         1ok1psuPFP3tIqYaQFedVfIqV1MQwDPXAkt3ZiP8/ML+H207UTnNL8x7xKt2XzSfYg4R
         sXhIhvKn4LmJp9xtUbG8D/jeVOuhkZLaiRv3MxYPGgp/w2tt5dn4cyrBUv05jed+sRvi
         egNhIJaOI4vR/qRpXjqnLM/dZA+nWC0g8wMJtrSrDhFiF/0VFrnfnAMBS6wHqU/wgnTa
         qEm4n6B40uZUqxFFsKmrHqcSHgOny92ZAxu03p11b+60qP+NkZzoGy6NpbTqRTK5LlFD
         DMHw==
X-Forwarded-Encrypted: i=1; AJvYcCUCvQ/UKHDdKZcXzcvFHfWj/9bJ9XERTXliU7/7vem4HivzTy7gzL85OAOqrlIi82d3agZCmM5ta7Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7U4zdI9GO0RglJCuHLuSA7j2778dOKATiFGQrnxMxNfASbIzu
	sSxzumGwRYHXw6TQ8BRDHTni0zCCOs0GHQQOmDHX3cLYUr7EjaHS0EK6Yu7drN9hgmA=
X-Gm-Gg: AY/fxX4Hoc/Wptqtzw2N6APjwX0PNj1cpgeuTT5VOUM/FRgKL228Uk3gfkud7IW5TFU
	C+zPARbpmgw8ZmyhTY5/krjMjFMQ6FZqq1rz9pWfHS3IcqxFIv8rSr1aXva/2was+dnpZh/IcSa
	tmXeP2n7k7B+aOWPkjmcqgFkS95xXpkAVw9k8J93RJFSuMq6SkhRGgbklTqEP9ELO/A+NmgWVVh
	aE85f1kxe1aK0mPP2hTwPqFNSTlIKR5ew6TaCN5BYJyH/BWIFMorPe2UBay2fDSFDkXuxENj6+W
	PTymsguuuOuw/D+HU2/pI3NmMlqSK0zJNLQoPL2utbkELD9FhT7RHVlxZZmaIVZj4Qg3AGy2IzX
	5ezH8Fz5iBt5rnU5Pmjd5mYeJ2gTK86FTunsl3hWzswMnHOpJXvbLVhsODoPSPxMO1VlCLdOAU+
	9qBEVil744IVZAYgzUa54GluOkh5cE5Y7LvvusSALfrngLzf9yhnvGylZLONK8s+Uk
X-Google-Smtp-Source: AGHT+IHaSjITLy2O7eu+G75J8lc4nWqpMQgQnwyAHzrISAncBykPJu9r1/tP3EKhmacNiqfMcUpAiA==
X-Received: by 2002:a17:906:4fc9:b0:b73:6d78:9b79 with SMTP id a640c23a62f3a-b8444c6c6e0mr1903327266b.20.1768226000413;
        Mon, 12 Jan 2026 05:53:20 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8731f071e4sm25700466b.66.2026.01.12.05.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 05:53:19 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 12 Jan 2026 14:53:17 +0100
Subject: [PATCH v2 4/6] phy: qcom-qmp-ufs: Add Milos support
MIME-Version: 1.0
Message-Id: <20260112-milos-ufs-v2-4-d3ce4f61f030@fairphone.com>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
In-Reply-To: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
To: Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
 Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768225995; l=6087;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=JQ+Xav1WgiSg4TeVufpYQlYO8+Wa2XeAmvUJ98gRRoI=;
 b=MapvbhI3/OvU9Q1cCN3ulhWmrFrec/l9+WAzBT9Mg3KpPSwgz+fJdYaujXxhks3HHy34ddd2w
 BJBCrxzKU+XChTfKIIDO0wFG6Y2WBip6fv6WUk/LLBYk30ViYPm+aec
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_055322_579313_FA3B3154 
X-CRM114-Status: GOOD (  12.79  )
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

Add the init sequence tables and config for the UFS QMP phy found in the
Milos SoC.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 8a280433a42b..df138a5442eb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -84,6 +84,68 @@ static const unsigned int ufsphy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const struct qmp_phy_init_tbl milos_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IETRIM, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_IPTRIM, 0x17),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_BG_TIMER, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE1, 0x98),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE1, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE1, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE1, 0x32),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE1, 0x0f),
+};
+
+static const struct qmp_phy_init_tbl milos_ufsphy_tx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_FR_DCC_CTRL, 0xcc),
+};
+
+static const struct qmp_phy_init_tbl milos_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x3e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xce),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B2, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_PI_CTRL1, 0x94),
+};
+
+static const struct qmp_phy_init_tbl milos_ufsphy_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x0b),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x68),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x04),
+};
+
 static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
@@ -1165,6 +1227,11 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* Regulator bulk data with load values for specific configurations */
+static const struct regulator_bulk_data milos_ufsphy_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 140120 },
+	{ .supply = "vdda-pll", .init_load_uA = 18340 },
+};
+
 static const struct regulator_bulk_data msm8996_ufsphy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 51400 },
 	{ .supply = "vdda-pll", .init_load_uA = 14600 },
@@ -1258,6 +1325,32 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
 	.rx2		= 0x1a00,
 };
 
+static const struct qmp_phy_cfg milos_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+	.max_supported_gear	= UFS_HS_G4,
+
+	.tbls = {
+		.serdes		= milos_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(milos_ufsphy_serdes),
+		.tx		= milos_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(milos_ufsphy_tx),
+		.rx		= milos_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(milos_ufsphy_rx),
+		.pcs		= milos_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(milos_ufsphy_pcs),
+	},
+	.tbls_hs_b = {
+		.serdes		= sm8550_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_hs_b_serdes),
+	},
+
+	.vreg_list		= milos_ufsphy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(milos_ufsphy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
@@ -2166,6 +2259,9 @@ static int qmp_ufs_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_ufs_of_match_table[] = {
 	{
+		.compatible = "qcom,milos-qmp-ufs-phy",
+		.data = &milos_ufsphy_cfg,
+	}, {
 		.compatible = "qcom,msm8996-qmp-ufs-phy",
 		.data = &msm8996_ufsphy_cfg,
 	}, {

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
