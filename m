Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F360DE65D17
	for <linux-phy@archiver.kernel.org>; Fri, 22 Nov 2024 02:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YT2bKcLI1tRlFG6XXwzkdGOP96of8cyIY5TdSh3HhWk=; b=GSUUs4ic1vGcn/
	vweFitF1v12Jfgesm3QHvbIiWPpSVKVHnvIb2EDUTyvI1cs3+82WgA2TcU7USiE77PGuypvl99lBX
	pxI7UlRDFjfdMOcdismCgCcStdusg+4grl3HR1RWKFkS7oyI4Ijcy6ogGJXhiMHatNYRfDvtc/x5K
	6LtSQKxypAabqigXL7IdH3H4ypVsAI6JW/WaHB+mo/mySuKQjolLN7ROXmInxyrLCi5nzMaAFp+25
	2LWE2SEpNdcTQ6l8UgWhEITe8EfEn8hszaqS0WUPANZ7btNoqWanT7i6iUWSolWuo8bxDdxoDrfeM
	pEf81YY78IhkelqATVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJ5Y-00000001Qzq-35my;
	Fri, 22 Nov 2024 02:08:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEJ11-00000001Q68-1BEQ
	for linux-phy@lists.infradead.org;
	Fri, 22 Nov 2024 02:03:24 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ALI3dLU003948;
	Fri, 22 Nov 2024 02:03:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mUw6ByvFmPe
	BJQQ8GUe/zmUZF/GnVdNGGr6olBQge2g=; b=TTK33hlxGXCnD4ZPsQmbtgto+5a
	jq27CxeCaSn6kh0PZBC8ujdAD3yCpqXaWgS9wq+1Y4xx/E4j6MyU9mCTI/yPzzRT
	vMZBNOHVt10LCtQZJeGREFIYK32TGg7SyQ9u4cr8o8l30iV2ui6ULPGjI0e2z/eE
	F9iGn8c48+3TaWuze3hpu+j2Wzm6EBOkD70jBQw6pyDIMzOKiVqom9R2jaEQKLSu
	WLPGzuhHUfewDTTNqAOYOjxmp/Eiv6lIaAZyhdtKThGi9on17D9PCr8skgaQ+1z7
	bCkaR2trNa+ARQ/TD0nofc3ugOv3OfMXFNDB/O5/8fbmGtYHyun2n5BiCXw==
Received: from aptaippmta01.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 431ce3duxf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:12 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4AM239LZ029198;
	Fri, 22 Nov 2024 02:03:09 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 42xmfm3rjr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:09 +0000
Received: from APTAIPPMTA01.qualcomm.com (APTAIPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4AM239xB029190;
	Fri, 22 Nov 2024 02:03:09 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA01.qualcomm.com (PPS) with ESMTPS id 4AM238c2029186
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Nov 2024 02:03:09 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id DE3F417F4; Fri, 22 Nov 2024 10:03:07 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Subject: [PATCH v2 2/6] phy: qcom: qmp: Add phy register and clk setting for QCS615 PCIe
Date: Fri, 22 Nov 2024 10:03:01 +0800
Message-Id: <20241122020305.1584577-3-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
References: <20241122020305.1584577-1-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 11fruCM016649i0w4XrEAHZNrg84_Eqm
X-Proofpoint-ORIG-GUID: 11fruCM016649i0w4XrEAHZNrg84_Eqm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 impostorscore=0
 bulkscore=0 mlxscore=0 adultscore=0 spamscore=0 mlxlogscore=999
 suspectscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411220015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_180323_332043_668FFD26 
X-CRM114-Status: GOOD (  11.75  )
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

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Add support for GEN3 x1 PCIe PHY found on Qualcomm QCS615 platform.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c   | 105 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h |   1 +
 2 files changed, 106 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 873f2f9844c6..c8e39c147ba4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -728,6 +728,83 @@ static const struct qmp_phy_init_tbl ipq9574_gen3x2_pcie_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE, 0xc1),
 };
 
+static const struct qmp_phy_init_tbl qcs615_pcie_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x18),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_ENABLE1, 0x10),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_EN, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER1, 0xff),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_TIMER2, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0xf),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORECLK_DIV, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_RESETSM_CNTRL, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x9),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x82),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x3),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0x55),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0xd),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0x04),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x35),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_BUF_ENABLE, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN1_MODE0, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CTRL_BY_PSM, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0xa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x31),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x19),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_EP_DIV, 0x19),
+};
+
+static const struct qmp_phy_init_tbl qcs615_pcie_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x1c),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x14),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x1),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x0),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xdb),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_SATURATION_AND_ENABLE, 0x4b),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN_HALF, 0x4),
+};
+
+static const struct qmp_phy_init_tbl qcs615_pcie_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x6),
+	QMP_PHY_INIT_CFG(QSERDES_TX_RES_CODE_LANE_OFFSET, 0x2),
+	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
+};
+
+static const struct qmp_phy_init_tbl qcs615_pcie_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_ENDPOINT_REFCLK_DRIVE, 0x4),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_OSC_DTCT_ACTIONS, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB, 0x0),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME, 0x73),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_SIGDET_CNTRL, 0x7),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_RX_SIGDET_LVL, 0x99),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M6DB_V0, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_TXDEEMPH_M3P5DB_V0, 0xe),
+};
+
 static const struct qmp_phy_init_tbl sdm845_qmp_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3132,6 +3209,31 @@ static const struct qmp_phy_cfg ipq9574_gen3x2_pciephy_cfg = {
 	.pipe_clock_rate	= 250000000,
 };
 
+static const struct qmp_phy_cfg qcs615_pciephy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_pcie_offsets_v2,
+
+	.tbls = {
+		.serdes		= qcs615_pcie_serdes_tbl,
+		.serdes_num	= ARRAY_SIZE(qcs615_pcie_serdes_tbl),
+		.tx		= qcs615_pcie_tx_tbl,
+		.tx_num		= ARRAY_SIZE(qcs615_pcie_tx_tbl),
+		.rx		= qcs615_pcie_rx_tbl,
+		.rx_num		= ARRAY_SIZE(qcs615_pcie_rx_tbl),
+		.pcs		= qcs615_pcie_pcs_tbl,
+		.pcs_num	= ARRAY_SIZE(qcs615_pcie_pcs_tbl),
+	},
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= pciephy_v2_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
+};
+
 static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4611,6 +4713,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-pcie-phy",
 		.data = &msm8998_pciephy_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-gen3x1-pcie-phy",
+		.data = &qcs615_pciephy_cfg,
 	}, {
 		.compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy",
 		.data = &sa8775p_qmp_gen4x2_pciephy_cfg,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index bf36399d0057..1ecf4b5beba6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -34,6 +34,7 @@
 #define QPHY_V2_PCS_USB_PCS_STATUS			0x17c /* USB */
 #define QPHY_V2_PCS_PLL_LOCK_CHK_DLY_TIME_AUXCLK_LSB	0x1a8
 #define QPHY_V2_PCS_OSC_DTCT_ACTIONS			0x1ac
+#define QPHY_V2_PCS_SIGDET_CNTRL			0x1b0
 #define QPHY_V2_PCS_RX_SIGDET_LVL			0x1d8
 #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_LSB	0x1dc
 #define QPHY_V2_PCS_L1SS_WAKEUP_DLY_TIME_AUXCLK_MSB	0x1e0
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
