Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C26B4C54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 09:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWkD+ecEHp/xemoMFdxCyuUnw7Hjb4QSlWUhIsP4Yec=; b=XlLam39mksrI6j
	uVVZVf+STTwIvAsKaxpXTO0z2T7XqrJKHGv1BwsNHewxD3fjvE0Anhr1ZjUV0c4HgFzpCLsEdOl8L
	7nrP93OgD2EDH0JhPafS6jtnwbupKNq3BWNkJ6GVoJVLvjprD6uMSChbf4LR4UH39wj9QvMXrXd1C
	e08F9iluvHEt8ZU71o9FcxrRPkdoiBlsF3f4kth9MyVbWxCZR+YJugvLLcqyimG7HySn5zTtF1mE3
	07woqyzcPd8kVWtrE0UJGHSp9Ngz7LYpXSbdubVaasTydzvpptap6W+ZUmGHn4loxUx09TzIY+bhf
	x8lHYIvbLavrka4Fvg/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVSL-0000000C2YB-1CHl;
	Tue, 19 Mar 2024 09:08:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVSF-0000000C2Vv-1Vgq
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 09:08:21 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42J6xP5f001102;
	Tue, 19 Mar 2024 09:08:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=9fmatg734/m02D1xI3E9DJW0IjgrgqydRgrxez31dG4=; b=JZ
	7xcwxF5nPvRGOyH7YFBI3cfGKkwX1vLAUTdn3Vk3P8YDf+SjCYw8RZFHdtW6z75S
	YQxDS1+F2dJmslgOyoFOVKESea9rwLeE/TRsmUO6lRtH21HznL06xIplMLoe178k
	xr4vA6t2+zzzMZo5WK3UnwLrudOS+OugU5nd1zu7vMbZG8kYx8KKL/5j9jlZsByR
	pHIVFIBTqT5+RPrP4MhvPihwzs3xrRLmlUiuWeraUUgeEFNLtC06jamABOBbB4gA
	UV96/CkGUYFpl+R8lqGvQ90ie043V7YOSR1st+WhWs8wAiEEMFtuzf2duF7VMPxR
	Y0ijM75U8z+mnmQXsKWQ==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wy5ws092q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Mar 2024 09:08:15 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42J98E79032074
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Mar 2024 09:08:14 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 19 Mar 2024 02:08:08 -0700
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
        "Rob
 Herring" <robh@kernel.org>
Subject: [PATCH 3/4] dt-bindings: usb: dwc3: Add QDU1000 compatible
Date: Tue, 19 Mar 2024 14:37:27 +0530
Message-ID: <20240319090729.14674-4-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
References: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Abw1QYQfcpV-XZ-QoAbbAadDTLMP6yqJ
X-Proofpoint-GUID: Abw1QYQfcpV-XZ-QoAbbAadDTLMP6yqJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-18_12,2024-03-18_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=835 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403140001 definitions=main-2403190069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_020819_435668_A5DC84A7 
X-CRM114-Status: GOOD (  10.17  )
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

Document the QDU1000 dwc3 compatible.

Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 63d150b216c5..2437777c166d 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,msm8998-dwc3
           - qcom,qcm2290-dwc3
           - qcom,qcs404-dwc3
+          - qcom,qdu1000-dwc3
           - qcom,sa8775p-dwc3
           - qcom,sc7180-dwc3
           - qcom,sc7280-dwc3
@@ -245,6 +246,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq8074-dwc3
+              - qcom,qdu1000-dwc3
     then:
       properties:
         clocks:
@@ -440,6 +442,7 @@ allOf:
               - qcom,ipq4019-dwc3
               - qcom,ipq8064-dwc3
               - qcom,msm8994-dwc3
+              - qcom,qdu1000-dwc3
               - qcom,sa8775p-dwc3
               - qcom,sc7180-dwc3
               - qcom,sc7280-dwc3
--
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
