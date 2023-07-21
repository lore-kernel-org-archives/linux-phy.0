Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7BBEB64DD
	for <linux-phy@archiver.kernel.org>; Fri, 21 Jul 2023 04:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+GdCuZpKkwZI+lQICI7gkuB4EKH6SxzL73ESxwgNXs=; b=FKGchjUSmb7fSn
	5ep1RhkadRQe+jZz2X8FbQHzihqQH1GOl/J4e4hRTrdbEJW5xkycbup2/ursNs+nmPCXb5pdVS/w4
	fu7YlYEF0RsWcY0E29Ktre6yC0fypp3Ybd7tmJDKdOydeXGcCuG0GICPU7JI5qnOkOMQgtQYJr9AY
	XnLrelnVJIWiiv07xU9V1lafraytQWqRPPudz9eVLuO9t3lpxX5QsVf6aZM6BnKtm1lc1OSKQwd7I
	xxgyzEEN5hygTqZ5x47+YvDwOrrFxlIFVf3ffHdHIwChrjbncdDPyAK1mnBRbX8I4a6BVR1kRbvdd
	zBQBLU/zmb/PmpzIPCjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMhsE-00Cpbo-17;
	Fri, 21 Jul 2023 04:36:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMhsC-00Cpb8-1V;
	Fri, 21 Jul 2023 04:36:13 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36L4TEOT021613;
	Fri, 21 Jul 2023 04:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=bTmGNcDsh1mW0ErfP8g6PmBVdXOdX2WcwWxxrxMk8GY=;
 b=pIxpdtF74ki9xRtfcZRs0sSy5UTuWGyQTgDEkqD+w1wiqSU0z3H5MJqfoFY229oYLwNR
 mDnBX6xfySTq4LRdPjdZhpdRZhmArQ4F59qU7cZcd+/nrnEmg7myFyXieXO85/1fOHVb
 e09Wf3W9fuT9VuhSLS6qRG9ulak2rTxo/euuUO2TPn1QeGBwa5vJezl2gdIktx+hk3pL
 RIuRMprnr8ZWNQzVWnyJBiSfYXkIwep74HCl2pRDXejoC1Xp7Ug1aX8+mwW0LxTdTofO
 guRt8082nIl/h5EbfHRHL1EiIEA7a7TokYhRtdBMFDbrUz1DwqPt0pUeEhX+L/WWBTs1 EQ== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ry6pv1qba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jul 2023 04:35:54 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 36L4ZrTb012845
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jul 2023 04:35:53 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Thu, 20 Jul 2023 21:35:45 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <rafal@milecki.pl>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v5 1/6] dt-bindings: usb: dwc3: Add IPQ5332 compatible
Date: Fri, 21 Jul 2023 10:05:26 +0530
Message-ID: <cb89ff518890117b82d41d29d058de6662753bc8.1689913334.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1689913334.git.quic_varada@quicinc.com>
References: <cover.1689913334.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: hDjGMbNnHL0JqGOvChPqdH3jwT393Vjp
X-Proofpoint-ORIG-GUID: hDjGMbNnHL0JqGOvChPqdH3jwT393Vjp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-21_01,2023-07-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 malwarescore=0 adultscore=0 mlxlogscore=660
 impostorscore=0 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2307210041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_213612_643627_FB87EE19 
X-CRM114-Status: GOOD (  13.36  )
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

Document the IPQ5332 dwc3 compatible.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v1:
	Add ipq5332 to interrupts sections
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index ae24dac..9447b54 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -14,6 +14,7 @@ properties:
     items:
       - enum:
           - qcom,ipq4019-dwc3
+          - qcom,ipq5332-dwc3
           - qcom,ipq6018-dwc3
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
@@ -246,6 +247,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5332-dwc3
               - qcom,msm8994-dwc3
               - qcom,qcs404-dwc3
     then:
@@ -410,6 +412,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,ipq5332-dwc3
               - qcom,sdm660-dwc3
     then:
       properties:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
