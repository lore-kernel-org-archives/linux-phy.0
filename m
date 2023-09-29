Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94EBAE743FC
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 08:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QHIr+fi1OX7J/GLo/sns82/+tIyBIc7ft9dxGnOGRcI=; b=ir7Xit5WD7SXXN
	5Ax0syByS4J7s9CSZ+IRMfUzTrL4/pDH9HMXhQm4LU7Kp+N31s6VYyCk5FiA1S/b5qhg80gKHlMKN
	lMudnM52Ho6ezpgDz7HIEZFi6l4yW1uFg+k9eiYK+P+ClwAnXPYsyCqzT21PPsgQV4FYOX4YeHg+G
	9uY8k7viD2AUTVlRaMCS1PFBDJVN44291k8jTi+t6YKnXlTaW8eeuAaZB/dBeVyhrskl06BtINwxw
	P3oLZkcldzIs3BwAraMXHx/mddHa8jkq8xe0N1MNh6Lm2DV3FXuqldXqkyuF+SofktapHJP6jqWhi
	r/F6J7rKL8QfItpe9ivw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm96B-007OdF-12;
	Fri, 29 Sep 2023 08:43:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm966-007OZl-2w;
	Fri, 29 Sep 2023 08:43:44 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38T7rQop001201;
	Fri, 29 Sep 2023 08:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=HusXIEVAr7kVQVL5wbvM38WphrwhI8AOSMhhv/PasUI=;
 b=J4uYqfrUREfoWpFbk9C2bFggRmPAcKgIXL3kMvjgxLcHKpIoGK1pBpHFX50AqDI7qfih
 EGlncJTwTDMWwfcfnIUqUIj1PSbRfKvW1mr+Bc+gAG29BlIq9mYjq1okSgU0JG5vpWrx
 Z8TXGEKKIsppuQhrjA9JxI+nZxsn5bJVFST1Dv80i5tyIISniBSonAWjOllTa7nmXDVH
 iwte1P7MU1BKNwQsMCpS1bpS8tPmlOya3tQTdykudKFuLTAcUVP270PNtCkJv56uHP86
 KDy0uWq9BkdjxUYeTkQak3sdnHDA0CDz7H0c7VXgb3OBF+Y0jDWntTj/XxEC+sATTb3f WA== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3td24uaw1r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:43:32 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38T8hVdQ027987
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:43:31 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Fri, 29 Sep 2023 01:43:21 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
Subject: [PATCH 6/8] arm64: dts: qcom: ipq5332: Add Super-Speed UNIPHY in USB node
Date: Fri, 29 Sep 2023 14:12:07 +0530
Message-ID: <20230929084209.3033093-7-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: eX1_OL9dx0rVcDQxRkNa4-JyfQ0snj8_
X-Proofpoint-ORIG-GUID: eX1_OL9dx0rVcDQxRkNa4-JyfQ0snj8_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_07,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 malwarescore=0
 suspectscore=0 impostorscore=0 lowpriorityscore=0 spamscore=0
 priorityscore=1501 mlxscore=0 mlxlogscore=697 adultscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_014343_069887_631694BC 
X-CRM114-Status: GOOD (  15.02  )
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

Add UNIPHY node in USB to support Super-speed. As the SS PHY has
pipe clock, removed "qcom,select-utmi-as-pipe-clk" flag.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 1813b9fa4bb5..8fe4e45bfc18 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -349,8 +349,6 @@ usb: usb@8af8800 {
 
 			resets = <&gcc GCC_USB_BCR>;
 
-			qcom,select-utmi-as-pipe-clk;
-
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -363,8 +361,8 @@ usb_dwc: usb@8a00000 {
 				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
 				clock-names = "ref";
 				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
-				phy-names = "usb2-phy";
-				phys = <&usbphy0>;
+				phy-names = "usb2-phy", "usb3-phy";
+				phys = <&usbphy0>, <&usbphy1>;
 				tx-fifo-resize;
 				snps,is-utmi-l1-suspend;
 				snps,hird-threshold = /bits/ 8 <0x0>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
