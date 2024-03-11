Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C623EC5475B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Mar 2024 12:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wjmf+d2+akJ8XKR07RAys2AsD4lwz15rIbTwQP9JyME=; b=AF4dLZJwbn3m+g
	9tCypGic2HEpQyCP3ubwc4G+2GoIjkD8DydCc6TQOl93cLedMuAiLHbmiyVvz6BkQWNF0DwZ8x0Zx
	bmuSZdG+B7WQqGUqq556JTLFeu/PM1pH2PBsKjFTSQN4w1nNRY+nxGJ23UTTckfLFV9D+VnkBn+e8
	1hf4dowQTSwA204gABHf++tSU4X+BpaX+Ygg0AgmhxfluZzC4KvGQtfsE43WGiILI+OuCxPg+EVBF
	sDcC5RFzmonq4VtYmW3Px50uj9GaWF+264O0Tx0e4aCatIOhLVtHU3vN0iJN2SaLfUb/O23QGbRMz
	GmnyfyEe1GclrbHMHttA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjeNT-00000001O6w-24Kf;
	Mon, 11 Mar 2024 12:03:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjeNO-00000001O5e-3Uj7
	for linux-phy@lists.infradead.org;
	Mon, 11 Mar 2024 12:03:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42B7dfg0029395;
	Mon, 11 Mar 2024 12:03:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=qN2LYBqNqYo/WOmJkpszc7fUOLXRVicK9CAnnbqJPlA=; b=Bp
	cD1Sp8mCNg8Vzec07gViFnRRFaX4Ml1nSIxklnHQjZdtYw48WtJ7eyGpT61FyC3e
	OUlfqJXuJrvzVLD6mZoWkvEFyIauq3YYwcRwYlvIkIX1tgd9qizCI6qixx3u2epg
	GsyQdeAsAgaDwgNtXSJgQ53nehgRAN0nQ3lNZWiVrSQjuYbeXzMsiLSqyfARt/i9
	C1aXY0FqJ8LB49Og0/aO/IrYBLURdY8Frp7mGP6/s3/cT0Jae2bldDGA6MEJsdJD
	FZ9wcke9G/RtOPQxybe6I3BOpd+8Ci7ETQWSxFXQOBtmtxUzwvnuQX1IcJgYR2IJ
	7yBA09tIYBE/bEsS+MFQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wswrsrnm4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Mar 2024 12:03:26 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42BC3Pd0015165
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Mar 2024 12:03:25 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Mon, 11 Mar 2024 05:03:20 -0700
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, Komal Bajaj <quic_kbajaj@quicinc.com>,
        "Amrit
 Anand" <quic_amrianan@quicinc.com>
Subject: [PATCH 4/4] phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
Date: Mon, 11 Mar 2024 17:32:15 +0530
Message-ID: <20240311120215.16845-5-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240311120215.16845-1-quic_kbajaj@quicinc.com>
References: <20240311120215.16845-1-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: KzL1r2zOWVE7VhhNreMFTeSvmJH8VY2K
X-Proofpoint-ORIG-GUID: KzL1r2zOWVE7VhhNreMFTeSvmJH8VY2K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-11_08,2024-03-06_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 spamscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2403110091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_050330_954432_B6285E0B 
X-CRM114-Status: GOOD (  11.56  )
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

Add QDU1000/QRU1000 specific register layout and table configs.

Co-developed-by: Amrit Anand <quic_amrianan@quicinc.com>
Signed-off-by: Amrit Anand <quic_amrianan@quicinc.com>
Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 52 +++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 5c003988c35d..e067574bea7a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1441,6 +1441,32 @@ static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
 };

+
+static const struct qmp_phy_init_tbl qdu1000_usb3_uniphy_pcs_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG1, 0xc4),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG3, 0x20),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_LOCK_DETECT_CONFIG6, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_RX_SIGDET_LVL, 0xaa),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_PCS_TX_RX_CONFIG, 0x0c),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_CDR_RESET_TIME, 0x0a),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG1, 0x88),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_ALIGN_DETECT_CONFIG2, 0x13),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG1, 0x4b),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_EQ_CONFIG5, 0x10),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_REFGEN_REQ_CONFIG1, 0x21),
+};
+
+static const struct qmp_phy_init_tbl qdu1000_usb3_uniphy_pcs_usb_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_RXEQTRAINING_DFE_TIME_S2, 0x07),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
+	QMP_PHY_INIT_CFG(QPHY_V4_PCS_USB3_POWER_STATE_CONFIG1, 0x6f),
+};
+
+
+
 struct qmp_usb_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -1693,6 +1719,29 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
 	.regs			= qmp_v2_usb3phy_regs_layout,
 };

+static const struct qmp_phy_cfg qdu1000_usb3_uniphy_cfg = {
+	.lanes			= 1,
+
+	.offsets		= &qmp_usb_offsets_v5,
+
+	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_serdes_tbl),
+	.tx_tbl			= sm8350_usb3_uniphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_tx_tbl),
+	.rx_tbl			= sm8350_usb3_uniphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_rx_tbl),
+	.pcs_tbl		= qdu1000_usb3_uniphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qdu1000_usb3_uniphy_pcs_tbl),
+	.pcs_usb_tbl		= qdu1000_usb3_uniphy_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(qdu1000_usb3_uniphy_pcs_usb_tbl),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v4_usb3phy_regs_layout,
+	.pcs_usb_offset		= 0x1000,
+
+	.has_pwrdn_delay	= true,
+};
+
 static const struct qmp_phy_cfg sa8775p_usb3_uniphy_cfg = {
 	.lanes			= 1,

@@ -2620,6 +2669,9 @@ static const struct of_device_id qmp_usb_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sdx65-qmp-usb3-uni-phy",
 		.data = &sdx65_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,qdu1000-qmp-usb3-uni-phy",
+		.data = &qdu1000_usb3_uniphy_cfg,
 	}, {
 		.compatible = "qcom,sdx75-qmp-usb3-uni-phy",
 		.data = &sdx75_usb3_uniphy_cfg,
--
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
