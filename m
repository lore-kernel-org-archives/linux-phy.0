Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD1AC43219
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUQVvDljcZQ/VLz+pYYWbq6ywq3c+siGHgKVsdAd4ds=; b=GcKahJmN3byZNQ
	sbyeiW2r7qe0FqQn4/S17jPJXfxKMkWlMlHloUkrRPIfUMQqBFcsQ/5mxpLVtvnaO4u4xCufK4L9L
	MbpJe2JhKlZbVCCeYKwF9b6EEc5zq5yoWYO00cet96w+6GiJhVWfvhgA5SHiSeDn8pezOMUDQvzT/
	RqKGYP4Xt8vkQhfMU6TLjh4o/I2mI0bcyHf7YyBi3ImKOPFteH9X/vf3zAaPEmvcV8FCwjIc7b7HL
	5OXCdJMHs3JJu8aW73jjfCGd6Cw/PISqQKMIq/RJBeCUzdVpzIRr0S3PhRZIMYY/Ic647404VcuGu
	0cJdxGQ8/J+3C41jTbTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ne8ud-00BlfN-7x; Tue, 12 Apr 2022 05:17:59 +0000
Received: from alexa-out.qualcomm.com ([129.46.98.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ne8ua-00Bldt-TU
 for linux-phy@lists.infradead.org; Tue, 12 Apr 2022 05:17:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1649740676; x=1681276676;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=OYO6T+O5K84ufnM+2SY6l3FdqX2YGGYVcfSsHw6XiMU=;
 b=kSYehbUDgQWrgk9ktKGstFw6OoS0k7X1hAtRz9sOGNmJpbqNkNsI1YZt
 gt3YNIYuZbEk3QlQFx2KuuHvMEkDCLX702TRmZ4i32mFqBwuBo4ByeHwi
 dhRfbW9c7NNLSnYeovZTANPRifcxDg41wlkt7pHJRzUKioMhWMYEYZgC8 c=;
Received: from ironmsg09-lv.qualcomm.com ([10.47.202.153])
 by alexa-out.qualcomm.com with ESMTP; 11 Apr 2022 22:17:55 -0700
X-QCInternal: smtphost
Received: from ironmsg02-blr.qualcomm.com ([10.86.208.131])
 by ironmsg09-lv.qualcomm.com with ESMTP/TLS/AES256-SHA;
 11 Apr 2022 22:17:54 -0700
X-QCInternal: smtphost
Received: from hu-rohiagar-hyd.qualcomm.com (HELO
 hu-sgudaval-hyd.qualcomm.com) ([10.213.106.138])
 by ironmsg02-blr.qualcomm.com with ESMTP; 12 Apr 2022 10:47:39 +0530
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
 id 94E913AA2; Tue, 12 Apr 2022 10:47:38 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc: manivannan.sadhasivam@linaro.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH 2/2] phy: qcom-qmp: Add support for SDX65 QMP PHY
Date: Tue, 12 Apr 2022 10:47:32 +0530
Message-Id: <1649740652-17515-3-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1649740652-17515-1-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_221757_043011_EAEB99BD 
X-CRM114-Status: UNSURE (   9.50  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add support for USB3 QMP PHY found in SDX65 platform. SDX65 uses
version 5.0.0 of the QMP PHY IP.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 76 +++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 8ea87c6..58506b8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -2535,6 +2535,50 @@ static const struct qmp_phy_init_tbl sdx55_qmp_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V4_20_PCS_LANE1_INSIG_MX_CTRL2, 0x00),
 };
 
+static const struct qmp_phy_init_tbl sdx65_usb3_uniphy_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_1, 0xa5),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_2, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_3, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_LANE_MODE_4, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_PI_QEC_CTRL, 0x21),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_TX_RES_CODE_LANE_OFFSET_RX, 0x0b),
+};
+
+static const struct qmp_phy_init_tbl sdx65_usb3_uniphy_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH4, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH3, 0xbd),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH2, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_HIGH, 0x7f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_00_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH4, 0xa9),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH3, 0x7b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH2, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_HIGH, 0x24),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_MODE_01_LOW, 0x64),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_PI_CONTROLS, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH1, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_THRESH2, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_GAIN1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SB2_GAIN2, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FASTLOCK_FO_GAIN, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_LOW, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FASTLOCK_COUNT_HIGH, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_FO_GAIN, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL1, 0x54),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_VGA_CAL_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL2, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x47),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_CNTRL, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_DEGLITCH_CNTRL, 0x0e),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_UCDR_SO_GAIN, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_GM_CAL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_RX_SIGDET_ENABLES, 0x00),
+};
+
 static const struct qmp_phy_init_tbl sm8350_ufsphy_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_SYSCLK_EN_SEL, 0xd9),
 	QMP_PHY_INIT_CFG(QSERDES_V5_COM_HSCLK_SEL, 0x11),
@@ -4217,6 +4261,35 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
 	.pwrdn_delay_max	= 1005,		/* us */
 };
 
+static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
+	.type			= PHY_TYPE_USB3,
+	.nlanes			= 1,
+
+	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
+	.tx_tbl			= sdx65_usb3_uniphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sdx65_usb3_uniphy_tx_tbl),
+	.rx_tbl			= sdx65_usb3_uniphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sdx65_usb3_uniphy_rx_tbl),
+	.pcs_tbl		= sm8350_usb3_uniphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
+	.clk_list		= qmp_v4_sdx55_usbphy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v4_sdx55_usbphy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8350_usb3_uniphy_regs_layout,
+
+	.start_ctrl		= SERDES_START | PCS_START,
+	.pwrdn_ctrl		= SW_PWRDN,
+	.phy_status		= PHYSTATUS,
+
+	.has_pwrdn_delay	= true,
+	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
+	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
+};
+
 static const struct qmp_phy_cfg sm8350_ufsphy_cfg = {
 	.type			= PHY_TYPE_UFS,
 	.nlanes			= 2,
@@ -6044,6 +6117,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 		.compatible = "qcom,sdx55-qmp-usb3-uni-phy",
 		.data = &sdx55_usb3_uniphy_cfg,
 	}, {
+		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
+		.data = &sdx65_usb3_uniphy_cfg,
+	}, {
 		.compatible = "qcom,sm8350-qmp-usb3-phy",
 		.data = &sm8350_usb3phy_cfg,
 	}, {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
