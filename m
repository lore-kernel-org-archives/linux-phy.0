Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B63EC6FD1F
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 10:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dW2asu4N2j//OONh21BVorKY8pN32R3/rE7OCaDKguI=; b=CNRJZCiJoIctIM
	S0d33EvsrIEd0yDTmImi9tVhOQfj+wG0HP/u59b9S+8c9toXyuQ8du3dPXMdADkQwoEvyda4QSh3c
	zyGl9pTbwZjryzL951QealltJ/PQlj+ZAMYSAcjIXtSHE5xYkcUdCzB9kNxeVBFNezI1KAw4kZQBI
	N9GN33j4Mvs1QvaEkI67U59+R0F2l9CqDkr3StrT2g18vuxpQPyRVmZkUGfVv4F6+Ox04Vfusi3Oc
	qyvmMUTqBxAg5Yhee1g0qq9M2x6BR79v9Usw5YIdFXsR+s23tp8cX8RWI7dYWTH10qdFSubdkYEGI
	Hbj3QRs4p9haXc0+eI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pevyW-00Fgc9-2f;
	Wed, 22 Mar 2023 10:45:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pevyS-00FgaH-0X
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 10:45:45 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32M6fKKw018927;
	Wed, 22 Mar 2023 10:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=JoR4ofFBD5SydjryKLgZQztpIpJNYifQktMYUmFlUZM=;
 b=NjqVYkx0NUMn4FKhHY1A8PRwtAKktXNOOSdq6qkG2rgvbvOlo94tVhv16MBvJsL0l6dC
 uop6yzo6cj0dlAcbgSTSfiPWyCECvUirnLalIWcvg0EY+T6UrGraAYs1/MOMy2uHvCv8
 H4QHOscIEVw8UjPahnbXRqzPM69RO4zc0qY223VtmR+S6Fwkkf6gbbar0cJqVEatOTxF
 guC6zVuQg95NnxYwhUNZ9xQIbu9kcrQq/DutveE0SKtrjv+Z8f1HwwjlA2fAMqDrOYt9
 UwAcONEMA+VOo3cQq1tMusUy0F5pCXeGEW2M64MtrrwUES9I9KKgQ9bq65IGLRkcGPa5 tg== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pfhnthweg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Mar 2023 10:45:39 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32MAjdQL012454
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 22 Mar 2023 10:45:39 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Wed, 22 Mar 2023 03:45:33 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v3 8/8] arm64: dts: qcom: ipq9574: Enable USB
Date: Wed, 22 Mar 2023 16:14:12 +0530
Message-ID: <fa56426067bf5c3677c0359abf1fd7492d7bb985.1679479634.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1679479634.git.quic_varada@quicinc.com>
References: <cover.1679479634.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YiVRwbdMuhUQ0wDFsAot5xLKxjbXmeq3
X-Proofpoint-ORIG-GUID: YiVRwbdMuhUQ0wDFsAot5xLKxjbXmeq3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-22_08,2023-03-22_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 suspectscore=0 phishscore=0 mlxlogscore=952 bulkscore=0 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303220077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_034544_535268_1DFEB1F3 
X-CRM114-Status: GOOD (  14.80  )
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

Turn on USB related nodes

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 Changes in v2:
	- Fix node placement and coding style
	- "ok" -> "okay"
---
 arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts b/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
index 8a6caae..d0d18e5 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
+++ b/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
@@ -57,6 +57,10 @@
 	status = "okay";
 };
 
+&qusb_phy_0 {
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators {
 		compatible = "qcom,rpm-mp5496-regulators";
@@ -84,6 +88,10 @@
 	clock-frequency = <32000>;
 };
 
+&ssphy_0 {
+	status = "okay";
+};
+
 &tlmm {
 	sdc_default_state: sdc-default-state {
 		clk-pins {
@@ -118,6 +126,10 @@
 	};
 };
 
+&usb3 {
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <24000000>;
 };
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
