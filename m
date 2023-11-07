Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDA4C41535
	for <linux-phy@archiver.kernel.org>; Tue,  7 Nov 2023 12:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3i0BZ/hLZm3Qf+DQu3ZmIyuY8WZghH+ICzQr6nVz4o=; b=Prxgmbyu2jOv9H
	838Kwr5JTMWvsHj9xdy0s/ODtz5Cwcmo5MhaBdv6pv8NoCvVHfPw9ShcUmEhQIubnXoI9a40JCUcz
	RsV1dy8WejcrvBKHvI1MH6dmr1Gb6tAGagNKE9p1RZMPBdhXEUOmoR9SIOHdDekFOdbumj3Yoj1t7
	wbkcw8riIPQrFMz8qUVBYgS2iVmJJaMFCRE9ccWX3+YNam6WmUDq9JhiUffuSCkpOXrzItv1dvS02
	gJSlLh2MYHgB9naVIg9QWcEc3x/Wj2e2DkGO+t5e7TBSUtUQRWqbR1u34t0gSP3HZhEmtcM4u1VcL
	d2mLqK6083165Bsq4Vlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAJ-001TmN-1T;
	Tue, 07 Nov 2023 12:26:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAG-001Tla-2O
	for linux-phy@lists.infradead.org;
	Tue, 07 Nov 2023 12:26:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A75xLkQ024972;
	Tue, 7 Nov 2023 12:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=oMRemMIvwiE2zroFHp2/PLiNZr1IPmhJUQutzi9KI+Y=;
 b=UqPr873pDPF+owub+WrD4+OII30wyD/QxWGz1A6NVUDdmpGVw3qZFyBM8IZtW+lCS+QQ
 /fJ2wnMaqsJQ4U3N7EPaS1dk+0ZuU92xQJ82afRx/pDLHimK1CbkWtjYLHZHjQHfxmjV
 yuA57sU2GXIm+9Qri32ukSdQ6q9Waw2+Rr9H5KRnp1Zeco0avilKkg733dq1fQ3814G5
 3+OTbXhRKwlFJ4ix4jbTU23OqUqmHlFZMDu6dbxLAaVDLyD0JN+GqqdgrAf3U/X4Oj0J
 m/x1k+ugmMzZQnLQNDJ+M6eI6RQyCLaGowCK+rZ/dQcStYZH5aChAbzR4DE56iItzHQd Qw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u6wer3dq3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Nov 2023 12:26:37 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3A7CQaM0016385
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 7 Nov 2023 12:26:36 GMT
Received: from hu-krichai-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 7 Nov 2023 04:26:31 -0800
From: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Date: Tue, 7 Nov 2023 17:56:14 +0530
Subject: [PATCH v2 2/3] phy: qcom-qmp-pcie: Add endpoint refclk control
 register offset
MIME-Version: 1.0
Message-ID: <20231107-refclk_always_on-v2-2-de23962fc4b3@quicinc.com>
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
In-Reply-To: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <quic_vbadigan@quicinc.com>, <quic_ramkri@quicinc.com>,
        <quic_nitegupt@quicinc.com>, <quic_skananth@quicinc.com>,
        <quic_vpernami@quicinc.com>, <quic_parass@quicinc.com>,
        "Krishna chaitanya
 chundru" <quic_krichai@quicinc.com>
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699359980; l=6309;
 i=quic_krichai@quicinc.com; s=20230907; h=from:subject:message-id;
 bh=ZdPM6QISDhv70aPcFpN9ct9I8TPBnav28MgwnTR7tPs=;
 b=purTLvJZKtXB6NKAoaYey0fB4jCChK4BITY0ZK52SYdraTfUNbt8kziz9tq0Tc+pPPTrMBBqo
 awtofObkP6vDiFhQq5EkB+w6+jyRO4c7xRYkLTMVZe+EspJkbFsZcKx
X-Developer-Key: i=quic_krichai@quicinc.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: WEFy6ipp8kuCXrRs8QJIlQFPZNdgJblF
X-Proofpoint-GUID: WEFy6ipp8kuCXrRs8QJIlQFPZNdgJblF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-07_02,2023-11-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 phishscore=0
 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=847 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2311070102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_042640_785512_25661ADB 
X-CRM114-Status: GOOD (  16.64  )
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

Some platforms needs to keep endpoint refclk always on, for this
purpose add this offset for all the applicable phy versions.

And also add reg layout for few controllers as we are adding
endpoint refclk control register which changes based upon phy version.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 26 +++++++++++++++++++---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h    |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h |  1 +
 4 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index a63ca7424974..74d03d217ff2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -77,6 +77,7 @@ enum qphy_reg_layout {
 	QPHY_START_CTRL,
 	QPHY_PCS_STATUS,
 	QPHY_PCS_POWER_DOWN_CONTROL,
+	QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -93,6 +94,7 @@ static const unsigned int pciephy_v3_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V3_PCS_ENDPOINT_REFCLK_CNTRL,
 };
 
 static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -107,6 +109,7 @@ static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
 };
 
 static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -114,6 +117,23 @@ static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
+};
+
+static const unsigned int pciephy_v5_20_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V5_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
+};
+
+static const unsigned int pciephy_v6_20_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_SW_RESET]			= QPHY_V5_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_CNTRL,
 };
 
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
@@ -2956,7 +2976,7 @@ static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= pciephy_v5_regs_layout,
+	.regs			= pciephy_v5_20_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
@@ -3012,7 +3032,7 @@ static const struct qmp_phy_cfg sm8550_qmp_gen4x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= sm8550_qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
-	.regs			= pciephy_v5_regs_layout,
+	.regs			= pciephy_v6_20_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
@@ -3047,7 +3067,7 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
-	.regs			= pciephy_v5_regs_layout,
+	.regs			= pciephy_v5_20_regs_layout,
 
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
 	.phy_status		= PHYSTATUS_4_20,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
index a469ae2a10a1..9b166286afda 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h
@@ -11,6 +11,7 @@
 #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG2		0x0c
 #define QPHY_V5_PCS_PCIE_POWER_STATE_CONFIG4		0x14
 #define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_DRIVE		0x20
+#define QPHY_V5_PCS_PCIE_ENDPOINT_REFCLK_CNTRL		0x24
 #define QPHY_V5_PCS_PCIE_INT_AUX_CLK_CONFIG1		0x54
 #define QPHY_V5_PCS_PCIE_OSC_DTCT_ACTIONS		0x94
 #define QPHY_V5_PCS_PCIE_EQ_CONFIG2			0xa8
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
index cdf8c04ea078..8b114e538a07 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -9,6 +9,7 @@
 /* Only for QMP V5_20 PHY - PCIe PCS registers */
 #define QPHY_V5_20_PCS_PCIE_POWER_STATE_CONFIG2		0x00c
 #define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_V5_20_PCS_PCIE_ENDPOINT_REFCLK_CNTRL	0x020
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5	0x084
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
 #define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1			0x0a0
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
index e3eb08776339..f7abe95c49ad 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
@@ -10,6 +10,7 @@
 #define QPHY_PCIE_V6_20_PCS_POWER_STATE_CONFIG2		0x00c
 #define QPHY_PCIE_V6_20_PCS_TX_RX_CONFIG		0x018
 #define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_DRIVE	0x01c
+#define QPHY_PCIE_V6_20_PCS_ENDPOINT_REFCLK_CNTRL	0x020
 #define QPHY_PCIE_V6_20_PCS_OSC_DTCT_ATCIONS		0x090
 #define QPHY_PCIE_V6_20_PCS_EQ_CONFIG1			0x0a0
 #define QPHY_PCIE_V6_20_PCS_EQ_CONFIG5			0x108

-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
