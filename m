Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99276C3DA66
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 09:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sW42JKdSzYbdM2dz1pfMGTYQ3vEVcZtBf33pNF4K/wA=; b=U07xV+aXIcyUrA
	D6hOrxm2qRK3EHJ8a3KPVErKchvzVgK46MRRxALm9eLl9AzR3l4H058hg6m1S3b35CGRADIVQskIj
	xFe8xp+ilztgaLYRErjKaNFBlVlfmNU2w0Di71hzlJHBoNlcXNmXR0DOYoU4ksO8Iw7h2ufQCMsjT
	tUvWYtMgdcGUXoLf/6euynivydpUfGESojNmtcOYbXqRXHjfuW523sTX/Of6YUFW5n9nslD3a9xhl
	K5DcoeXiwKntSZ6V+2cjBQAE/CPx0nyojAlLnY+d8iIlVjZn2hIkjXHYwSwg7qoyqnvfgdRjBV6hQ
	qi6V9zYglKGrJtudbhuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTFI-004kYk-0W;
	Fri, 25 Aug 2023 09:36:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTF8-004kVr-1A
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 09:36:39 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37P8SU2h031515;
	Fri, 25 Aug 2023 09:36:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=nue2U5L1tj5a9kq0e6WM2XsCEX/yNvGELlOjaZjsFO0=;
 b=esblytu47o1e+k0HSSmOG3HEWQJNGAIYw6m9LMDXiBaGOZms8EvbD/Y0NJ7nkgzH1CT3
 H3OZkH0Gd1D1iXW+kjug/H3IXoy2CMHXJjAZlWXlH1JIwb8x1yyBr0Ix2edy06wqgHbt
 qeordp29yBk+Y7Tnkj7I6yCu7F5U/Bu2ectAYIC54kND+kTDodq30r4F7lvCJtOBklzQ
 saEjlqgk6RHBOK6kzU/XsrZdpU6YZFpm54Dl/E2cSgTs+dZqbzpifA1I/pnszRtYLf/9
 vQLwMifk5FCCXY4L3lQxqPcNLRgXjoqyIh47oHVDs5y5t6KzSofE7S0WkWo6PwNZjGaB gg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3spmrhgk9m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 09:36:34 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37P9aNnn008353
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 09:36:23 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Fri, 25 Aug 2023 02:36:18 -0700
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
Subject: [PATCH 3/5] phy: qcom-m31: Add compatible, phy init sequence for IPQ5018
Date: Fri, 25 Aug 2023 15:05:29 +0530
Message-ID: <20230825093531.7399-4-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230825093531.7399-1-quic_nsekar@quicinc.com>
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: pdKw_F4uJoItcVKgzgFGlIy5GU1FbBWN
X-Proofpoint-ORIG-GUID: pdKw_F4uJoItcVKgzgFGlIy5GU1FbBWN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-25_07,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 phishscore=0 clxscore=1015 bulkscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0
 mlxlogscore=798 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308250082
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_023638_532001_C5575D91 
X-CRM114-Status: GOOD (  20.31  )
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

This patch adds the phy init sequence for IPQ5018 chipset
and the compatible string needed.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
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
