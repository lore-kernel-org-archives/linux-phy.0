Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83552C83F01
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 11:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XCaxbBzTnrhEKgD+ZZWQ3QhHi++6vF7fIFiEINJz6Q=; b=dKLEL/MpzoL8km
	cKZ8K1oJBVQ6Qm6/eg6D2J+PSd9m3gl7KgEBqfzASHvRPO3Nj95uISSWnDY3JhtlNGZbdWhWJLU93
	LBRXzNpfqGTc7EsU6AAjISttLqISBBbZmH9g8XB7mi58bcOy3jFm1dCo1YKC5emYkfOOV/jObBxyI
	77cWDpgRD79Cxj/EBuoX3CHmr7nhz3uas3VU/dUAPIikYFMXWEfgGg2vdI6NZaE7bUdwRrhSoFrkS
	ua6G+0UIbJZo9ANRo6C5Rzv/NSHaVsDlhjhbWS8gdwMUG3qZTtDK7/bhzpzgsoVs7n0b17RCSKIQD
	9wxKZBjoLfd7CnuZFuPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJD4-00DNGU-0q;
	Wed, 30 Aug 2023 11:18:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJD1-00DNFq-1X
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 11:18:04 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U7xKhP014991;
	Wed, 30 Aug 2023 11:17:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=k6QLoHlj8WinEN6FqEZMCt5GHhCWBgjz+opIPw8+8Uo=;
 b=UxaCSFpmpJ8lsXHkLWSGZkqcEAdBOUIUqEphbPb4L3iYo9lUmoJWAMX8/xm1xtPEFeq6
 AgSyE20AJIC4qDf5Cnudxgphm6T7/LBwWjbPvaL6mAjFD43LPXHGNUKw0SoCPGxZzB6R
 Ejr0yQqoBIF0/rXXOO3wO39BYGsbMSdEejtkmi6070i4VSXtfehG073LN6f7EovfBTk2
 BSVyHhz15xDzF9wVDHeiAgbTV7F7kQ4cPu4rwvsBaleGlRneo4TGea95XfUH6MnMAhKe
 r38nFGRrE1Lt/DIOLD/+88IngBMJ9vQsKtc04BkfYlWHJFhAqRYa7IBpGrMFks81aRMr ag== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ssmcv9nk9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:17:59 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37UBHw9f026574
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:17:58 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 30 Aug 2023 04:17:53 -0700
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
Subject: [PATCH V2 2/4] phy: qcom-m31: Add compatible, phy init sequence for IPQ5018
Date: Wed, 30 Aug 2023 16:47:20 +0530
Message-ID: <20230830111722.19380-3-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230830111722.19380-1-quic_nsekar@quicinc.com>
References: <20230830111722.19380-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: WP8-f6kHTwWo8zsZBI7wV17gMv4pHl7V
X-Proofpoint-GUID: WP8-f6kHTwWo8zsZBI7wV17gMv4pHl7V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=902 spamscore=0 malwarescore=0 mlxscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308300105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_041803_631903_7A82DF68 
X-CRM114-Status: GOOD (  19.35  )
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
V2:
	Updated the commit message.
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 60 +++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index ed08072ca032..81b72ebde305 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -82,6 +82,59 @@ struct m31_priv_data {
 	unsigned int			nregs;
 };
 
+struct m31_phy_regs m31_ipq5018_regs[] = {
+	{
+		USB_PHY_CFG0,
+		UTMI_PHY_OVERRIDE_EN,
+		0
+	},
+	{
+		USB_PHY_UTMI_CTRL5,
+		POR_EN,
+		15
+	},
+	{
+		USB_PHY_FSEL_SEL,
+		FREQ_SEL,
+		0
+	},
+	{
+		USB_PHY_HS_PHY_CTRL_COMMON0,
+		COMMONONN | FSEL | RETENABLEN,
+		0
+	},
+	{
+		USB_PHY_REFCLK_CTRL,
+		CLKCORE,
+		0
+	},
+	{
+		USB_PHY_UTMI_CTRL5,
+		POR_EN,
+		0
+	},
+	{
+		USB_PHY_HS_PHY_CTRL2,
+		USB2_SUSPEND_N_SEL | USB2_SUSPEND_N | USB2_UTMI_CLK_EN,
+		0
+	},
+	{
+		USB_PHY_UTMI_CTRL5,
+		0x0,
+		0
+	},
+	{
+		USB_PHY_HS_PHY_CTRL2,
+		USB2_SUSPEND_N | USB2_UTMI_CLK_EN,
+		0
+	},
+	{
+		USB_PHY_CFG0,
+		0x0,
+		0
+	},
+};
+
 struct m31_phy_regs m31_ipq5332_regs[] = {
 	{
 		USB_PHY_CFG0,
@@ -268,6 +321,12 @@ static int m31usb_phy_probe(struct platform_device *pdev)
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
@@ -275,6 +334,7 @@ static const struct m31_priv_data m31_ipq5332_data = {
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
