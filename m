Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A72C7EE2E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 10:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5TirIAmuBbRnXgDQVPMxKYdBCt9Dn2IgjktA1fKVII=; b=4Zo+tHJ38Vzc+0
	OFY1PaIqbwDBbWIMPbKOExlel/p8iwZnPa5Nsl65hpcXGB28uEK88oh7nxG2dyocDH+B5uvhub/Fx
	Dt7MKou8erLe8qf5nDXxVNjhzDyQqZMX28TUNmQLG9ESUgrIEuqsny6sq/uwW2lQSdysQTmQkzVul
	tbvv3QwCHOw+fHg2vJLzDzVnymh4EraalmkIQv+GiNxWsXMpYvX+afAUH6fLa15AsgFcheNpt0QSr
	NwHSq/mqXELKMKz1pn3aSehYyq2p8bhz6UvpdN2MMpA9bD5/170fegjFqydADHWvQhDdBl/ufwmns
	QeS5kF12wQx977V/ORnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qrA-005ZhF-2E;
	Wed, 07 Jun 2023 10:57:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qr8-005Zfk-2Y;
	Wed, 07 Jun 2023 10:57:36 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 357ArXTn031039;
	Wed, 7 Jun 2023 10:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=qr5+FSWsWWHqskKMY4ScJQ+mQlC5yQIvjNi+EvMTtIw=;
 b=ZPMNb+QRuYtZSTRMs0x6OEaFXaW8+JhC8QtUwXw/xx9qX+AaES3shykRgfjqiccecY+u
 IBOe57JQ+eSLFjsBdxco3rVHdKc2Ts6ii/Sh+gyv4/s9uzvDkdeyhRDncbAqD+BwFe9o
 KHADkOE5w4D4s8uh+/nfI5a7BJSGV41SAmy0Qak70c2EjAd6tWa8mp7mh1wSto/+ON6w
 KnAa0KJgUipPDuF3kNdx+NfI+0tPmYeH620HvGJ3rXjWBtsXWivx8Fk2UTzWK2izY6KI
 iVWEyY3FcwI0J4VZrLZdVgsDGqVJe2hxVC0Y7FfH9HWu/JU6OqiaADVX7vOJCmsyb9q/ 2A== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r2a9t9m5k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 Jun 2023 10:57:14 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 357AvDJa009912
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 Jun 2023 10:57:13 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 7 Jun 2023 03:57:04 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH 5/9] phy: qcom-m31: Introduce qcom,m31 USB phy
Date: Wed, 7 Jun 2023 16:26:09 +0530
Message-ID: <636308462efb579734de829fb6e9cbda81b982f7.1686126439.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1686126439.git.quic_varada@quicinc.com>
References: <cover.1686126439.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: FO1Q6SR5J6gtqdRBcK0ggGdpm43f-fbj
X-Proofpoint-GUID: FO1Q6SR5J6gtqdRBcK0ggGdpm43f-fbj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-07_06,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 phishscore=0 clxscore=1015 impostorscore=0 malwarescore=0 suspectscore=0
 mlxlogscore=695 spamscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306070089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_035734_949014_9CCD1707 
X-CRM114-Status: GOOD (  15.07  )
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

Introduce CONFIG_PHY_QCOM_M31_USB for including the M31 phy driver

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 drivers/phy/qualcomm/Kconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 67a45d9..8a363dd 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -188,3 +188,14 @@ config PHY_QCOM_IPQ806X_USB
 	  This option enables support for the Synopsis PHYs present inside the
 	  Qualcomm USB3.0 DWC3 controller on ipq806x SoC. This driver supports
 	  both HS and SS PHY controllers.
+
+config PHY_QCOM_M31_USB
+	tristate "Qualcomm M31 HS PHY driver support"
+	depends on (USB || USB_GADGET) && ARCH_QCOM
+	select USB_PHY
+	help
+	  Enable this to support M31 HS PHY transceivers on Qualcomm chips
+	  with DWC3 USB core. It handles PHY initialization, clock
+	  management required after resetting the hardware and power
+	  management. This driver is required even for peripheral only or
+	  host only mode configurations.
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
