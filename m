Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B074DC4708B
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 10:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jcb6OuYtAICgtwHoNlcefXzYvYShAc3JWA0TMfRDKP4=; b=3o3jHmUSJ7dmFI
	fTsr+DRtrPjOVK/ler8YJXXKE8DZINToV418UXQU1wWvaDUUDVWAPpKpBRoitpdYzuiRISxa/w1i0
	H/zt/gaNmL1MOxKce38LFsNYrGxXsj3u22EWXALaob4UZOn6PjVcU7R7egt9VEV/l+w6Miy7MrfON
	jASMlJi12XNhHj0arUwGdwnp1WVMqqafO0lPO69Z8YmmQK36ZtFRIfglvwmX456rJQUWjxuvNLG4a
	p+jSzyFkuERgfWOzs5Y6XjTw6NgdhTdixIJqvalnm9Sihuudyfl/WxQL2yIH2d3b37RrH4tmqK/td
	rkAVjeTO7Vt25KxPICiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4se-0053eD-P4; Thu, 10 Nov 2022 10:33:56 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot4sc-0053b8-Nz
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 10:33:56 +0000
Received: by mail-lf1-x130.google.com with SMTP id g12so2376620lfh.3
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 02:33:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1xDiE8Bwh4Ikzuy5U7/SCqTlGH/WFHTyDSOulj4Kkk0=;
        b=AjK55TCqWa3JSJf6y21BryCCEWQqyyAUWddWcazFAf6bhIoJZarYDstPU/z/9r7Gec
         dLwsMXmphew6/7krBe84WQFBfnoDvNiipEH05YAVSVAWcKLBl1/Nha45av/yvpWTS3NV
         CMTEshRTtfmqJE1BeGpgk/FS+J9shJqTlMWSysZOsDQE/51WWLMtlLLAuBnBV/TXWBtX
         Eyv2BKFnwu55RQgM9SSO/uW4SE4uxIrtVZYu/ErJ0pH1IMCoeMgpSZU9qtLskt/1Eu0J
         2aqDi2LULFTfWY+izcYQVUHtyHZRcOA1MABzY4zopCJpfCccam75ZWCPueJLqAGwBLPk
         RHfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1xDiE8Bwh4Ikzuy5U7/SCqTlGH/WFHTyDSOulj4Kkk0=;
        b=esHzxyepyi1VQWh5O/jkKznLKfg+5af3a5QOSJ3qxl31X91xqWe++CRDv+rsRACD0w
         EfIb7gEqHye30h5m61QVm+WJvbCyrECpHSLYOTdBkut1h9QPIwpbb9viycWmntLM/eI6
         44YdjEm+4kRzck3K7u3zAZ/CrxfXPSlv6x+YTQ6mSQ0ScawhAQQtKEED0jkmOdsyDu1A
         WbJTzUbmwOSMZ6l8QtYvddpMfYG0hNHtO3wDIwmN3DZw3N6R/2Dzfa+FdyhYtFPmCtGv
         W7nwuLk1FAmmyEgWPBNJwlcTrilA9NEOf/ec5PlQggEMZf5JZ0ETdruNwbUfwo4y54/J
         Wwxw==
X-Gm-Message-State: ACrzQf0LBpq43v+z9TDpHbzqNdsF1Rj2e9S7iEbeoKujsBrlazEwC3Xo
	VhN0DwO2jXZ09IYZwVcieQRbNA==
X-Google-Smtp-Source: AMsMyM7sl+iuNc5PV+mChKZc7gCXcZnRtbMzxcXbMtUCM680RQQn/NRqlJnC7c4WFo1XKYL6zRhz+w==
X-Received: by 2002:a05:6512:3d1d:b0:4ac:7420:5a8 with SMTP id d29-20020a0565123d1d00b004ac742005a8mr1394395lfv.470.1668076432481;
        Thu, 10 Nov 2022 02:33:52 -0800 (PST)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id p22-20020ac246d6000000b00498f32ae907sm2687837lfo.95.2022.11.10.02.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 02:33:52 -0800 (PST)
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
Subject: [PATCH v2 5/8] phy: qcom-qmp-pcie: rename the sm8450 gen3 PHY config tables
Date: Thu, 10 Nov 2022 13:33:42 +0300
Message-Id: <20221110103345.729018-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_023354_794296_A20E9D3A 
X-CRM114-Status: UNSURE (   9.16  )
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

SM8350 PHY config tables are mostly the same as SM8450 gen3 PHY config
tables. Rename generic tables to remove x1 suffix.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d9f8dffbe1da..4a55b2439952 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1218,7 +1218,7 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
 
-static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CLK_SELECT, 0x34),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_CORECLK_DIV_MODE1, 0x08),
@@ -1274,7 +1274,7 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x04),
 };
 
-static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rx_tbl[] = {
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_LOW, 0x7f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH, 0xff),
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xd8),
@@ -1302,7 +1302,7 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_rc_rx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SO_GAIN, 0x05),
 };
 
-static const struct qmp_phy_init_tbl sm8450_qmp_gen3x1_pcie_pcs_tbl[] = {
+static const struct qmp_phy_init_tbl sm8450_qmp_gen3_pcie_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RX_SIGDET_LVL, 0x77),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_RATE_SLEW_CNTRL1, 0x0b),
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_REFGEN_REQ_CONFIG1, 0x05),
@@ -2025,14 +2025,14 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
 	.lanes			= 1,
 
 	.tbls = {
-		.serdes		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
-		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_serdes_tbl),
+		.serdes		= sm8450_qmp_gen3_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_serdes_tbl),
 		.tx		= sm8450_qmp_gen3x1_pcie_tx_tbl,
 		.tx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_tx_tbl),
-		.rx		= sm8450_qmp_gen3x1_pcie_rx_tbl,
-		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_rx_tbl),
-		.pcs		= sm8450_qmp_gen3x1_pcie_pcs_tbl,
-		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_tbl),
+		.rx		= sm8450_qmp_gen3_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(sm8450_qmp_gen3_pcie_rx_tbl),
+		.pcs		= sm8450_qmp_gen3_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(sm8450_qmp_gen3_pcie_pcs_tbl),
 		.pcs_misc	= sm8450_qmp_gen3x1_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sm8450_qmp_gen3x1_pcie_pcs_misc_tbl),
 	},
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
