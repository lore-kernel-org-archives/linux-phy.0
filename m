Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABFF5C77B7D
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 13:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d27XoTTGveGYhERhhJu7JVM3ORhVMKivGfxsbjPTIkE=; b=XQVtEgtOSk8VZC
	f8yB6GI7m1PD82FbdPgxzwZ2XauGlXiQhtrEkRFs4sdpe34ZsbvYhAV8f+OzFdEzeqM12QnDrb0Gg
	aSdwtwfwK6X/PAuRqf4XODvejffaqKKokO+7tn8rrRUZAZPrd1qLE2z2FGygb56c7gx+G9Tg3en+y
	rX8csRqMltPo7k5Nko70RTLuZqEw89grZ67vZg1rQH/wCRhGT9SsTdgg+YOJndeFKcs8SKmBX9xDX
	K2JfZ4VrjcBEo8c75B/BfB3+TtDGpCQLaWDNW1z4wocuXC6hRE7l25UrTlTC6FkWNFA/grgEyJV1B
	q32NwOLxRisoPF9SdCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppqzn-00B0tS-0P;
	Fri, 21 Apr 2023 13:40:15 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppqzk-00B0ss-1n
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 13:40:13 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33LC7FBe010059;
	Fri, 21 Apr 2023 13:40:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=cMWDrilQuXY13Cwc8mXfvSAytR6jNuLiIsH73U6fgio=;
 b=iQcoDNIQuo4zNlVj8kJmA2/nIQc7rsj/3QPUzvZGugfMS4aXH4N9lolMQCQGMRZEhbpm
 +sHlhmfKrS33ET0tblO/FLiU8II2aZs3McHUg7fxwkqu77X+5R2uPvGRUYP6eAPCJ/4R
 pntsGTTq0CYwXsa+ZWl0UFemIV4FgG1wyehM1QZ4VgVqc8ptR7W4iwcM+w3zEHmDgSND
 AGzevgJ96TPdzlFT3dyLMX7Lx6tDITtElcDSxf1YtlujwpLAsq8pqWuBi3OsJEQZ5iUf
 7I5eVSAYSADQzw39q65ZjF83lDInhBt0OW1OpiNNX3HtiJa0idU5ezy3NyjqunPnPRRG 6w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q3dcmhpy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 13:40:08 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33LDe79C031978
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 13:40:07 GMT
Received: from hu-shazhuss-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 21 Apr 2023 06:40:02 -0700
From: Shazad Hussain <quic_shazhuss@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: Shazad Hussain <quic_shazhuss@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v1 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
Date: Fri, 21 Apr 2023 19:09:16 +0530
Message-ID: <20230421133922.8520-2-quic_shazhuss@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
References: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Ros5LPtWPtWqGFJ62JxwrLRYnNOD09w-
X-Proofpoint-GUID: Ros5LPtWPtWqGFJ62JxwrLRYnNOD09w-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_06,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 phishscore=0 spamscore=0 impostorscore=0
 mlxlogscore=654 malwarescore=0 suspectscore=0 clxscore=1015 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304210119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_064012_712666_E7E10715 
X-CRM114-Status: GOOD (  13.29  )
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

Add the compatible string for SA8775P SoC from Qualcomm.

Set minItems to 3 for interrupts as usb2 i.e third usb port supports
only high speed mode and does not require ss_phy_irq.

Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index d84281926f10..3ae02cffae49 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -23,6 +23,7 @@ properties:
           - qcom,msm8998-dwc3
           - qcom,qcm2290-dwc3
           - qcom,qcs404-dwc3
+          - qcom,sa8775p-dwc3
           - qcom,sc7180-dwc3
           - qcom,sc7280-dwc3
           - qcom,sc8280xp-dwc3
@@ -180,6 +181,7 @@ allOf:
               - qcom,msm8953-dwc3
               - qcom,msm8996-dwc3
               - qcom,msm8998-dwc3
+              - qcom,sa8775p-dwc3
               - qcom,sc7180-dwc3
               - qcom,sc7280-dwc3
               - qcom,sdm670-dwc3
@@ -443,12 +445,15 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sa8775p-dwc3
               - qcom,sc8280xp-dwc3
     then:
       properties:
         interrupts:
+          minItems: 3
           maxItems: 4
         interrupt-names:
+          minItems: 3
           items:
             - const: pwr_event
             - const: dp_hs_phy_irq
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
