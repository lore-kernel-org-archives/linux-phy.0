Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB94FC761A6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 09:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pvxOve5IM5Kti83vOttZKeblfcss4Bd1j2BNDjDgYg=; b=MmIB8yFMP6NFv3
	nIgtt1nQ6DJLbvRfdHQyQevMu2MPTncU79zibZib3Upy7eCWAcELOwrnd3GodEZDUM7RvzCRt6cnP
	4tef7dBkN99Ka9yMvfLO3tvfwgp9dQ9d+921ze7+eG/gDM0iVHkhxDfgCU3iurFFExZkWjux2Q9f6
	kxEdBL53EaevP71lHXKKabvJgCF3/pEHVLQ524p4rysIoUqYKuZ/E+kYbCu94fuBa+UbK7pC/3eou
	GwjNtncCH6yvOuBHASmwtWaEeI0Qf2YaJ5QFoSM+coOiAvHviVdJ+GZSk4UhTgrkyXfJbEuVS0+cK
	8xX0C0Cc64Id4HIuNtxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjD1-00AU1t-1Z;
	Mon, 27 Mar 2023 09:32:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjCy-00AU0Q-1y
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 09:32:10 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32R6OJWb014488;
	Mon, 27 Mar 2023 09:32:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=EvNLuHNCsAJ+m69cxVG5VgIza9iyCYAGFE8eoCS1cwQ=;
 b=BSPdpbsB997wwEn3DsCadbfn4cIQXHdqICp5sCpiGWX/Uj+k/2n2adCCa3j1GJZj2sb4
 9x97rXdJmPsJg5pqhAxi6wQi+B25CzMffhN2cSOQJ11EWjTqtHCo70Np9VJb1PeygIBM
 2bRBHqMnRzmTiPyxAGNVX9BSBqBsB84X4gylDhdI3SaAyJy635n0+pPsMg3R1ZXIjBM7
 Hw3poaPRBjkeg2KBvhnty0HVQsRrVpV2fBx05P9Eh9xjFRv1U/I6WQ7xwnqlYm3vgHik
 o1XrJxBZKuFVzoOp2QDdIIWnb00cYPY+fh6a+Iu1yxEDHltOTNY0JIVAAqbrwWJDTsDz rw== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3phssrby74-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:32:04 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32R9W3Js002346
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:32:03 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 27 Mar 2023 02:31:57 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>,
        Praveenkumar I
	<quic_ipkumar@quicinc.com>
Subject: [PATCH v4 6/8] phy: qcom: qmp: Update IPQ9574 USB Phy initialization Sequence
Date: Mon, 27 Mar 2023 15:00:58 +0530
Message-ID: <b4504cbc87e526de92a423dd21c389b30068761b.1679909245.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1679909245.git.quic_varada@quicinc.com>
References: <cover.1679909245.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: f-Xd06362CCApBJ97molJQD2jAyg5Eeq
X-Proofpoint-GUID: f-Xd06362CCApBJ97molJQD2jAyg5Eeq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 mlxlogscore=999
 suspectscore=0 impostorscore=0 mlxscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303270077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_023208_653259_C2484E51 
X-CRM114-Status: GOOD (  16.92  )
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

Updated USB QMP PHY Init sequence based on HPG for IPQ9574.
Reused clock and reset list from existing targets.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 Changes in v4:
	- Use qmp_usb_offsets for register space access
 Changes in v3:
	- Fix hex captitalization
 Changes in v2:
	- Removed unused phy register offsets
	- Moved the clock entries to the correct place
	- Maintain sorted order
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 129 ++++++++++++++++++++++++++++++++
 1 file changed, 129 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index a49711c..ed5f794 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -94,6 +94,7 @@ enum qphy_reg_layout {
 	QPHY_PCS_STATUS,
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
+	QPHY_PCS_LFPS_RXTERM_IRQ_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
@@ -139,6 +140,97 @@ static const unsigned int qmp_v5_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
+static const unsigned int usb3phy_regs_layout[] = {
+	[QPHY_SW_RESET]				= 0x00,
+	[QPHY_START_CTRL]			= 0x08,
+	[QPHY_PCS_STATUS]			= 0x17c,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]		= 0x0d4,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]	= 0x0d8,
+	[QPHY_PCS_POWER_DOWN_CONTROL]		= 0x04,
+};
+
+static const struct qmp_phy_init_tbl ipq9574_usb3_serdes_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CLK_SELECT, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TRIM, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_FASTLOCK_FO_GAIN, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SVS_MODE_CLK_SEL, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_HSCLK_SEL, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CMN_CONFIG, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_IVCO, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SYS_CLK_CTRL, 0x06),
+	/* PLL and Loop filter settings */
+	QMP_PHY_INIT_CFG(QSERDES_COM_DEC_START_MODE0, 0x68),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START1_MODE0, 0xab),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START2_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_DIV_FRAC_START3_MODE0, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CP_CTRL_MODE0, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_RCTRL_MODE0, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_COM_PLL_CCTRL_MODE0, 0x28),
+	QMP_PHY_INIT_CFG(QSERDES_COM_INTEGLOOP_GAIN0_MODE0, 0xa0),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP1_MODE0, 0xaa),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP2_MODE0, 0x29),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP3_MODE0, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_CORE_CLK_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_LOCK_CMP_CFG, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_VCO_TUNE_MAP, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_BG_TIMER, 0x0a),
+	/* SSC settings */
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_EN_CENTER, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER1, 0x7d),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_PER2, 0x01),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER1, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_ADJ_PER2, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE1, 0x0a),
+	QMP_PHY_INIT_CFG(QSERDES_COM_SSC_STEP_SIZE2, 0x05),
+};
+
+static const struct qmp_phy_init_tbl ipq9574_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_TX_HIGHZ_TRANSCEIVEREN_BIAS_DRVR_EN, 0x45),
+	QMP_PHY_INIT_CFG(QSERDES_TX_RCV_DETECT_LVL_2, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_TX_LANE_MODE, 0x06),
+};
+
+static const struct qmp_phy_init_tbl ipq9574_usb3_rx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_RX_UCDR_SO_GAIN, 0x06),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL2, 0x02),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x6c),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL3, 0x4c),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQU_ADAPTOR_CNTRL4, 0xb8),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x77),
+	QMP_PHY_INIT_CFG(QSERDES_RX_RX_OFFSET_ADAPTOR_CNTRL2, 0x80),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_CNTRL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_DEGLITCH_CNTRL, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_RX_SIGDET_ENABLES, 0x0c),
+};
+
+static const struct qmp_phy_init_tbl ipq9574_usb3_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x15),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0e),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL2, 0x83),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_CNT_VAL_H_TOL, 0xa2),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_FLL_MAN_CODE, 0x85),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG1, 0xd1),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG2, 0x1f),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LOCK_DETECT_CONFIG3, 0x47),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_POWER_STATE_CONFIG2, 0x1b),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_WAIT_TIME, 0x75),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RXEQTRAINING_RUN_TIME, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_LFPS_TX_ECSTART_EQTLOCK, 0x86),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_PWRUP_RESET_DLY_TIME_AUXCLK, 0x04),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TSYNC_RSYNC_TIME, 0x44),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_L, 0x40),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RCVR_DTCT_DLY_U3_H, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M6DB_V0, 0x17),
+	QMP_PHY_INIT_CFG(QPHY_V3_PCS_TXDEEMPH_M3P5DB_V0, 0x0f),
+};
+
 static const struct qmp_phy_init_tbl ipq8074_usb3_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_COM_SYSCLK_EN_SEL, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_COM_BIAS_EN_CLKBUFLR_EN, 0x08),
@@ -1510,6 +1602,10 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
+static const char * const ipq9574_phy_clk_l[] = {
+	"aux", "cfg_ahb",
+};
+
 static const char * const msm8996_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref",
 };
@@ -1558,6 +1654,14 @@ static const char * const qmp_phy_vreg_l[] = {
 	"vdda-phy", "vdda-pll",
 };
 
+static const struct qmp_usb_offsets qmp_usb_offsets_ipq9574 = {
+	.serdes		= 0,
+	.pcs		= 0x800,
+	.pcs_usb	= 0x600,
+	.tx		= 0x200,
+	.rx		= 0x400,
+};
+
 static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
 	.serdes		= 0,
 	.pcs		= 0x0200,
@@ -1586,6 +1690,28 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout,
 };
 
+static const struct qmp_phy_cfg ipq9574_usb3phy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_usb_offsets_ipq9574,
+
+	.serdes_tbl		= ipq9574_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(ipq9574_usb3_serdes_tbl),
+	.tx_tbl			= ipq9574_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(ipq9574_usb3_tx_tbl),
+	.rx_tbl			= ipq9574_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(ipq9574_usb3_rx_tbl),
+	.pcs_tbl		= ipq9574_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(ipq9574_usb3_pcs_tbl),
+	.clk_list		= ipq9574_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(ipq9574_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= usb3phy_regs_layout,
+};
+
 static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.lanes			= 1,
 
@@ -2589,6 +2715,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 		.compatible = "qcom,ipq8074-qmp-usb3-phy",
 		.data = &ipq8074_usb3phy_cfg,
 	}, {
+		.compatible = "qcom,ipq9574-qmp-usb3-phy",
+		.data = &ipq9574_usb3phy_cfg,
+	}, {
 		.compatible = "qcom,msm8996-qmp-usb3-phy",
 		.data = &msm8996_usb3phy_cfg,
 	}, {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
