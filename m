Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3EE3C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxWnWHXI2NinDbFehPZyn1zAOjIULVfLzBNpLESeRoc=; b=GQwb1llacSXdWb
	+iS/i0pyDBltsuzTbpdXUtjcUrU45/kZSP3ShvUsg9Y744wQrhFdOAmWxTuMnCelVzoRbgh9vJBIS
	eYP9xQL41ApXouH1hakC9HLAN8ibr1HEqpu/xG3ffiDTXswu1mFWg6vSrXH180FcVT4tugFul6BWm
	mX3SZPn+6YSC1VVt5QVg4d/YTEmgH9zlqKTscSPEBH9FQBdV6zls5H+on3pwMUBG+0LIdLRdRQrRD
	OWcqttvOkYIEuUpEeptmasQs09AswMF6fPjywt/zE3lAwJkk+2HSPr5ghHRy66pl2qvfL7nANsSBv
	BznTqFZhBSIvIAD4yKLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8w-009MQO-6A; Sat, 29 Oct 2022 21:13:26 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oot8s-009MJ1-1z
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:13:24 +0000
Received: by mail-lj1-x230.google.com with SMTP id k19so12077895lji.2
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vhyAiPSD4uUFaHRKAFy1tnHJMbYbW3+WHWNHgLxmNA=;
        b=sP7v5u2PyF1Kc8RODp8A1+7sIUYqokHnvUOQq6E0Wzf6DilMO/YIB4O1V5qIgxjdJ/
         /Lb2r90ZDZSFYG5p5YyF18xWNM+QFdneyA5UiROsstpTnDzKAbgYuY18VtXMH2DjPWrJ
         KsnN5mAeU/EfOi66YG6JwzdCUeWmOQNz2JIc5BwqbTuLjC561OJ3KBt0VlDD3Ga4To7X
         xeinFx1UhAwMEBY4dXtpzynlGqJwFhqPbwvBn3HJrWcRNGCglDczom6SnSN1V0qYG0fC
         quR92366fAdAmvlgVN8bYaihfl92ibt0GpHANygFDGYeBXrOIP/tIthC6aurgIvbo/cL
         e4sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vhyAiPSD4uUFaHRKAFy1tnHJMbYbW3+WHWNHgLxmNA=;
        b=LWYx+jGnA3XTPSRs6FDl9fW0QHzYjBQ2L2BOcf89i1PT9IoNTh9x9oQZPjzBWOiBsI
         YnsUfU1XTXK25aBYi7S2LiSbTT+LgEdDzPW+irnCQSzVY6QE8sVI2W7EznxI9VJSF/NS
         3qkNMEzw7VDJZaGh09ov/FO5CKhfrUEtnpfXwXJJO7FZFZ5O5jIA3/+KLzw2WTxksAIG
         iPmMlvqpME77itb/EMQjaUOoQILtAYBr/tHv/kZjBCtPP+uQs1B/wK6dUz88QOuCepOz
         enpxkjb9SWnv3dUdaXXQyzRGpN0pSDHsk1U8kQonBjlGCbFJstydwgl1Wz3UU5HT8I7e
         wDKA==
X-Gm-Message-State: ACrzQf0sp7GcSmb8f/LKo3RuBk+VjUxmSfT29UuK1TCpuDF1wcbot7/6
	MBrJi3zQA0pCpkYZqdGd793Ctg==
X-Google-Smtp-Source: AMsMyM51jSFnXN3E/y7WByCD1hJDTjyjoM70pWw1HfFsNaxkCaMpwqG8zno67LsU2nYiFPWCgNsMWw==
X-Received: by 2002:a2e:a9a9:0:b0:26c:6ec5:290 with SMTP id x41-20020a2ea9a9000000b0026c6ec50290mr2129320ljq.186.1667077999517;
        Sat, 29 Oct 2022 14:13:19 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id j14-20020a05651231ce00b004a480c8f770sm433508lfe.210.2022.10.29.14.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Oct 2022 14:13:19 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v1 5/7] phy: qcom-qmp-pcie: add support for sm8350 platform
Date: Sun, 30 Oct 2022 00:13:10 +0300
Message-Id: <20221029211312.929862-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_141322_154732_2F1CB23C 
X-CRM114-Status: GOOD (  12.63  )
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

Add support for a single-lane and two-lane PCIe PHYs found on Qualcomm
SM8350 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 120 ++++++++++++++++++++++-
 1 file changed, 119 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 11be1e31c1e0..b32b72c293a5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1312,6 +1312,40 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
 };
 
+static const struct qmp_phy_init_tbl sm8350_qmp_gen3x1_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PI_QEC_CTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0x75),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_4, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl sm8350_qmp_gen3x1_pcie_rc_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xbf),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x07),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CONTROLS, 0xf0),
+};
+
+static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_rc_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0x34),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x0f),
+};
+
+static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V5_TX_PI_QEC_CTRL, 0x02, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V5_TX_PI_QEC_CTRL, 0x04, 2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0xd5),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_4, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x1d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl sm8350_qmp_gen3x2_pcie_rc_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V5_PCS_EQ_CONFIG2, 0x0f),
+};
+
 static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_PLL_IVCO, 0x0f),
@@ -2015,6 +2049,80 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg sm8350_qmp_gen3x1_pciephy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tables = {
+		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
+		.tx		= sm8350_qmp_gen3x1_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_tx_tbl),
+		.rx		= sm8450_qmp_gen3_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3_pcie_rx_tbl),
+		.pcs		= sm8450_qmp_gen3_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_pcs_tbl),
+		.pcs_misc	= sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
+	},
+
+	.tables_rc = &(const struct qmp_phy_cfg_tables) {
+		.serdes		= sm8450_qmp_gen3x1_pcie_rc_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rc_serdes_tbl),
+		.rx		= sm8350_qmp_gen3x1_pcie_rc_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x1_pcie_rc_rx_tbl),
+	},
+
+	.clk_list		= sc8280xp_pciephy_clk_l,
+	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8250_pcie_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
+static const struct qmp_phy_cfg sm8350_qmp_gen3x2_pciephy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_pcie_offsets_v5,
+
+	.tables = {
+		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
+		.tx		= sm8350_qmp_gen3x2_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_tx_tbl),
+		.rx		= sm8450_qmp_gen3_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3_pcie_rx_tbl),
+		.pcs		= sm8450_qmp_gen3_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_pcs_tbl),
+		.pcs_misc	= sc8280xp_qmp_gen3x2_pcie_pcs_misc_tbl,
+		.pcs_misc_num	= ARRAY_SIZE(sc8280xp_qmp_gen3x2_pcie_pcs_misc_tbl),
+	},
+
+	.tables_rc = &(const struct qmp_phy_cfg_tables) {
+		.rx		= sm8350_qmp_gen3x2_pcie_rc_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_rx_tbl),
+		.pcs		= sm8350_qmp_gen3x2_pcie_rc_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8350_qmp_gen3x2_pcie_rc_pcs_tbl),
+	},
+
+	.clk_list		= sc8280xp_pciephy_clk_l,
+	.num_clks		= ARRAY_SIZE(sc8280xp_pciephy_clk_l),
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8250_pcie_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -2611,7 +2719,11 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 	qmp->pipe_clks[0].id = "pipe";
 	qmp->pipe_clks[1].id = "pipediv2";
 
-	ret = devm_clk_bulk_get(dev, qmp->num_pipe_clks, qmp->pipe_clks);
+	ret = devm_clk_bulk_get(dev, 1, qmp->pipe_clks);
+	if (ret)
+		return ret;
+
+	ret = devm_clk_bulk_get_optional(dev, qmp->num_pipe_clks - 1, qmp->pipe_clks + 1);
 	if (ret)
 		return ret;
 
@@ -2731,6 +2843,12 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8250-qmp-modem-pcie-phy",
 		.data = &sm8250_qmp_gen3x2_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8350-qmp-gen3x1-pcie-phy",
+		.data = &sm8350_qmp_gen3x1_pciephy_cfg,
+	}, {
+		.compatible = "qcom,sm8350-qmp-gen3x2-pcie-phy",
+		.data = &sm8350_qmp_gen3x2_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy",
 		.data = &sm8450_qmp_gen3x1_pciephy_cfg,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
