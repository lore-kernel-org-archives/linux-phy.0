Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9083BC00A5A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 22:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=07tZeb5dsPpC/kVaS5Bn99335PN+e1ZsjnSWpBGZT5s=; b=sgCh5bh3YEVX3c
	gp8wnhuP03A+UJOHV0G7Tjzjv1anpQQv4oi/YxhDvtZ1imx/vq+OrjB37DYiakUEEu0TEs5JeMhgH
	e6sde/LjR1hahcnIlt3Xpg1fLGnNdzsZfP0ySBSrZPtMnxw1F2PNy5XlGicHD+rj5FU3Znz8biBgi
	alfHNYyRIBKlEyLfe6yHATQhbls69zACU3P0Xrr3GrVAtUV/rcZJguzGSiFxIKXzCfnYPg8iwwDju
	qY+50yBllE0LHIRWTY9e1dc8D4Uk2b28F75/cyhC4dmY2LmZEQf7tZSfvQj/5sgjSphled7fgf7hz
	ZdiDyQS9NlwVQCfPfKXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHuee-00G8rY-Un; Tue, 17 Jan 2023 22:42:08 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHueZ-00G8oV-Vd
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 22:42:05 +0000
Received: by mail-wr1-x42d.google.com with SMTP id k8so17676800wrc.9
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 14:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7hruPC9W5ehB6/tJZ6aRaTWsYXYVZIaFu7P2x1VdPuQ=;
        b=xJOPh0qrdfh+kFofoDAa322UYucNvaZWgeYgGaVL0n44rxee/k+YjUWOdTOpaH+q4D
         YE6GTi9s9NGcu4CtwpdywrcZXKuSj5k7HqQsfHuyRjaqtyKIV5DuqUOy66lTe/Rfez8g
         H+FAm98wTueexbZOEWqvqwsm/9NCNZ/v/p0JUwxjh7mK12i5U8J2u+p/TwvXQ2So0yCv
         wfY1AJI1XjgGIzblMXuyRtU1pYrHbXio4IXVtCS6ZYGYN5MjCOgexbKGJx+mi/HQsTJZ
         YK91HarAJnuYv5s0IVtvMkyop5iGfYSD8ZPlhjoMH3wHDeTylM9mptzBthLGnYNbqbPx
         E30A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7hruPC9W5ehB6/tJZ6aRaTWsYXYVZIaFu7P2x1VdPuQ=;
        b=kWG6XOUmsuq7hWWaQTIv92S37yZmrPGqXw68crlauWDEeQ1fjytlZ4W29Bs96kHrBW
         IHnsPvR2B5OR57iY31/ux0pyatBzj3xYI6ZEhhjATxAQQGrHgmsNMl0bROiPj2lT81il
         PnuJ7pAwBCdxx/SC940UhkygK9rsPGnkIalEE81Ic49ENXcM8Vh1UF+lvkqytRjwo0J0
         llk3fPVCfpa1DHyvZSrT4ADGLUWv3dfMdQYlIYAtCp7e1HpRIkUhM06B/rZjuzCKtVYn
         Uu3RPxVtw76+KZbBJ7J467iUP24yh8Apmif9LAlGk4kLFG4BgCxdYW/sk8sYcXVOzf7i
         8QjQ==
X-Gm-Message-State: AFqh2krMB/eXMucBQ3yJUadKGadVXth0G7qGSmz/YZtqKnLevqtmoV2o
	7QBdjX+/EqZONEt6sjiO6gADcg==
X-Google-Smtp-Source: AMrXdXuMleSu0q3d0i05Str5Gs/LkCCtwxzcoYNQPlWkEd2QlO41RqwVBteOmmyoJbcdMSpZLi3cMQ==
X-Received: by 2002:a05:6000:812:b0:2bd:dc41:5714 with SMTP id bt18-20020a056000081200b002bddc415714mr5008776wrb.68.1673995322782;
        Tue, 17 Jan 2023 14:42:02 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m1-20020a5d6241000000b002bbdaf21744sm27024916wrv.113.2023.01.17.14.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 14:42:01 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v5 6/6] phy: qcom-qmp-ufs: Add SM8550 support
Date: Wed, 18 Jan 2023 00:41:48 +0200
Message-Id: <20230117224148.1914627-7-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230117224148.1914627-1-abel.vesa@linaro.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_144204_050856_F89AB0C3 
X-CRM114-Status: GOOD (  10.81  )
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

Add SM8550 specific register layout and table configs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 96 +++++++++++++++++++++++++
 1 file changed, 96 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index f142235432e1..65b82a0d3fb4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -103,6 +103,13 @@ static const unsigned int ufsphy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_UFS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int ufsphy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V6_PCS_UFS_PHY_START,
+	[QPHY_PCS_READY_STATUS]		= QPHY_V6_PCS_UFS_READY_STATUS,
+	[QPHY_SW_RESET]			= QPHY_V6_PCS_UFS_SW_RESET,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_UFS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8996_ufsphy_serdes[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x0e),
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0xd7),
@@ -607,6 +614,61 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_g4_pcs[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_BIST_FIXED_PAT_CTRL, 0x0a),
 };
 
+static const struct qmp_phy_init_tbl sm8550_ufsphy_serdes[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_SYSCLK_EN_SEL, 0xd9),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CMN_CONFIG_1, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_SEL_1, 0x11),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_HSCLK_HS_SWITCH_SEL_1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP_EN, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_MAP, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_VCO_TUNE_INITVAL2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x41),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_DEC_START_MODE0, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_CP_CTRL_MODE0, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_RCTRL_MODE0, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_PLL_CCTRL_MODE0, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP1_MODE0, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V6_COM_LOCK_CMP2_MODE0, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8550_ufsphy_tx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x07),
+};
+
+static const struct qmp_phy_init_tbl sm8550_ufsphy_rx[] = {
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE2, 0x0c),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE4, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_VGA_CAL_MAN_VAL, 0x0e),
+
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B0, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B1, 0xc2),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B3, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE_0_1_B6, 0x60),
+
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE2_B6, 0x60),
+
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B3, 0x9e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B4, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B5, 0x36),
+	QMP_PHY_INIT_CFG(QSERDES_UFS_V6_RX_MODE_RATE3_B8, 0x02),
+};
+
+static const struct qmp_phy_init_tbl sm8550_ufsphy_pcs[] = {
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_RX_SIGDET_CTRL2, 0x69),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_LARGE_AMP_DRV_LVL, 0x0f),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_PLL_CNTL, 0x2b),
+	QMP_PHY_INIT_CFG(QPHY_V6_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
+};
+
 struct qmp_ufs_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -729,6 +791,15 @@ static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
 	.rx2		= 0xa00,
 };
 
+static const struct qmp_ufs_offsets qmp_ufs_offsets_v6 = {
+	.serdes		= 0,
+	.pcs		= 0x0400,
+	.tx		= 0x1000,
+	.rx		= 0x1200,
+	.tx2		= 0x1800,
+	.rx2		= 0x1a00,
+};
+
 static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.lanes			= 1,
 
@@ -968,6 +1039,28 @@ static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
 	.regs			= ufsphy_v5_regs_layout,
 };
 
+static const struct qmp_phy_cfg sm8550_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets_v6,
+
+	.tbls = {
+		.serdes		= sm8550_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8550_ufsphy_serdes),
+		.tx		= sm8550_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8550_ufsphy_tx),
+		.rx		= sm8550_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8550_ufsphy_rx),
+		.pcs		= sm8550_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8550_ufsphy_pcs),
+	},
+	.clk_list		= sdm845_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sdm845_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= ufsphy_v6_regs_layout,
+};
+
 static void qmp_ufs_configure_lane(void __iomem *base,
 					const struct qmp_phy_init_tbl tbl[],
 					int num,
@@ -1479,6 +1572,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8450-qmp-ufs-phy",
 		.data = &sm8450_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sm8550-qmp-ufs-phy",
+		.data = &sm8550_ufsphy_cfg,
 	},
 	{ },
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
