Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ED22C83F33
	for <linux-phy@archiver.kernel.org>; Mon,  4 Sep 2023 06:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aq498Hp9289qmrKYGLJ6xai4UNDO52Ht/L/TaCgDynU=; b=yeBX0MYWgQXXvX
	ZfVltrNUd7y4pwbWtsepYdSEyford5UIgzzRAHz1dkiY4rRO+d5DHvnwnk2h2U5vAuT+uAH6tQAzX
	aKsQkoqBBjg6oqZQO9OLaC0fImtbzNpiT1kTEhU1yQ5Dp2+hdpF5q9aGTOJCtN9MeoY2C9WeJM/P3
	VRMz8kEG8ajZV6dCanCfdNejUHAeJBnzkBSazuhrlbaU1BmIIXXbN/6kSNatZ6FLw638W6kyrRgO9
	VobzOiIk2r2boxtaibS11a50lDYDSxaSO5zr04Ec1PI+EsJcS54hXETPHLDsZ1NJxNeVENlm0hZ9t
	n5eDmpDua9sex0+i4C+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd3D4-003QEa-0k;
	Mon, 04 Sep 2023 06:37:18 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd3D1-003QDH-0c
	for linux-phy@lists.infradead.org;
	Mon, 04 Sep 2023 06:37:16 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3845SNXD010468;
	Mon, 4 Sep 2023 06:37:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=dS7MFTSFrv7O8YHAktC950xV1FWCi1CkDwBEHB8dUCE=;
 b=VVs/QcSYDJFW8R90NGhLuFSpmPjgsQnwZknBOujJbULNPTV0Xenhm72pHV3xTljXKb8S
 bSe50U7oY1LuXvOw/5BsWRncSh2bYdXikkWyZZjYQ1NJtqzmv+9J5W1zDFkwU3wpdG/b
 BuB3QQ9iJERoFrXW9d7NMG5iYIRze0sKh4hf0I3BIhXzqor8sumQPqp8DOeVST/ckkDh
 fUQMVt/0Ga3LSv0k0qTq7cMU+TeHbOiFukkCf9lAP+P7Nck8DsNCvCn4ePF4L/WIZNQF
 vY2L8/yuMKDmixmL+TwgfIjho7w48oCHpQyfiwZfUGM8Xd/vVu22iuSsaBI2HMuxkmK4 yQ== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sutrnk4xp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 04 Sep 2023 06:37:08 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3846b7oM020924
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 4 Sep 2023 06:37:07 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Sun, 3 Sep 2023 23:37:02 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
CC: Nitheesh Sekar <quic_nsekar@quicinc.com>
Subject: [PATCH V4 2/4] phy: qcom-m31: Add compatible, phy init sequence for IPQ5018
Date: Mon, 4 Sep 2023 12:06:33 +0530
Message-ID: <20230904063635.24975-3-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230904063635.24975-1-quic_nsekar@quicinc.com>
References: <20230904063635.24975-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: pgOkTzHsWRo4tHEUvDs8vvPYm9fBFPs_
X-Proofpoint-ORIG-GUID: pgOkTzHsWRo4tHEUvDs8vvPYm9fBFPs_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-04_03,2023-08-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxlogscore=894
 priorityscore=1501 suspectscore=0 mlxscore=0 spamscore=0 phishscore=0
 clxscore=1015 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2308100000 definitions=main-2309040059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230903_233715_237589_47D27DE9 
X-CRM114-Status: GOOD (  18.65  )
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

Add phy init sequence and compatible string for IPQ5018
chipset.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
---
V4:
	Add C99 initializers.
	Write 0 register values.
V3:
	Dropped 0 delay inits.
	Added static const type for m31_ipq5018_regs.
V2:
	Updated the commit message.
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 51 +++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index ed08072ca032..03b1c56e0f55 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -82,6 +82,50 @@ struct m31_priv_data {
 	unsigned int			nregs;
 };
 
+static const struct m31_phy_regs m31_ipq5018_regs[] = {
+	{
+		.off = USB_PHY_CFG0,
+		.val = UTMI_PHY_OVERRIDE_EN
+	},
+	{
+		.off = USB_PHY_UTMI_CTRL5,
+		.val = POR_EN,
+		.delay = 15
+	},
+	{
+		.off = USB_PHY_FSEL_SEL,
+		.val = FREQ_SEL
+	},
+	{
+		.off = USB_PHY_HS_PHY_CTRL_COMMON0,
+		.val = COMMONONN | FSEL | RETENABLEN
+	},
+	{
+		.off = USB_PHY_REFCLK_CTRL,
+		.val = CLKCORE
+	},
+	{
+		.off = USB_PHY_UTMI_CTRL5,
+		.val = POR_EN
+	},
+	{
+		.off = USB_PHY_HS_PHY_CTRL2,
+		.val = USB2_SUSPEND_N_SEL | USB2_SUSPEND_N | USB2_UTMI_CLK_EN
+	},
+	{
+		.off = USB_PHY_UTMI_CTRL5,
+		.val = 0x0
+	},
+	{
+		.off = USB_PHY_HS_PHY_CTRL2,
+		.val = USB2_SUSPEND_N | USB2_UTMI_CLK_EN
+	},
+	{
+		.off = USB_PHY_CFG0,
+		.val = 0x0
+	},
+};
+
 struct m31_phy_regs m31_ipq5332_regs[] = {
 	{
 		USB_PHY_CFG0,
@@ -268,6 +312,12 @@ static int m31usb_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct m31_priv_data m31_ipq5018_data = {
+	.ulpi_mode = false,
+	.regs = m31_ipq5018_regs,
+	.nregs = ARRAY_SIZE(m31_ipq5018_regs),
+};
+
 static const struct m31_priv_data m31_ipq5332_data = {
 	.ulpi_mode = false,
 	.regs = m31_ipq5332_regs,
@@ -275,6 +325,7 @@ static const struct m31_priv_data m31_ipq5332_data = {
 };
 
 static const struct of_device_id m31usb_phy_id_table[] = {
+	{ .compatible = "qcom,ipq5018-usb-hsphy", .data = &m31_ipq5018_data },
 	{ .compatible = "qcom,ipq5332-usb-hsphy", .data = &m31_ipq5332_data },
 	{ },
 };
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
