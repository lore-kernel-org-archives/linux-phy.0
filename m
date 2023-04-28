Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F36C77B60
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 13:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjTfeyojWvKstNhXWJKf8iHNhb1LANHlHpgpf2/pPMI=; b=yRWxUiTKcapxWN
	5/cmWTorxqE+/dp75DFGGTqkIcMj7b3OOqdhNluXBHH/PnwDl+UIInMys7EpfpoJFdRgKk4y7+CqB
	fDOP6R8ya/noA3mX8DZMxRtGam64BcV9z8bdTrkWTsVGWON2UmgdpY7c7UkeJ/8R78vou7iy1dDHv
	K6e3YbGTGv1z4HdjsNu6OsNXeNizB7gnQ6Nj61eww0oZ5uzcudpjZ5qagqljOwcREC60W2fEoyGsW
	QgiIa+IKV8VRyQbVLsjp/k18RgGA7Gx+ZA9LGoAQlRCj10x5Le8biDYKnk6jut5tRqudYj4OZG9BP
	IBNDvhY8Uq1bVEOLoiVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psNqV-00ADXv-2C;
	Fri, 28 Apr 2023 13:09:07 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psNqU-00ADWS-05
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 13:09:07 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33S7GIwn002744;
	Fri, 28 Apr 2023 13:09:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=wd/navJ7KT21T2aIrcw9LU5B+UH8U3Um8S1mTxjTOE8=;
 b=MbrB2j/eRZ4eTM/UwmswDr8JtFEYWf+ddiXiNxkb0L1TBM4ChGkkfKlWN5znAtptafEO
 XPyJ3ylDpBWsUJx9+WWFBcQAuRF/y33lTVsyGqygRHsc4Pewdi1M09abPbx2CNeEc5bj
 iAEWG8CRCt15hPPSMd4UfBj9K1WkCIB0pt+jFLris3FUJg4fDJ/vXyRwtleFCvuQX3E+
 8uTCR11Znv0EVIB5HSy7HUxJTUSFwt0X3C5qnpa0vRSzr/rNQ7a6fykgI2MlQrdLmnll
 GGWNdJ9aUMsR2wx3ZSpQEl0+0rsTd5A/cR3GSXjd85c4AKqSD9r2H0O237Qb6KaWwPHr 2g== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q89kss51m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 13:09:02 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33SD91E3003448
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 13:09:01 GMT
Received: from hu-shazhuss-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 28 Apr 2023 06:08:55 -0700
From: Shazad Hussain <quic_shazhuss@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <dmitry.baryshkov@linaro.org>, <athierry@redhat.com>, <robh@kernel.org>,
        <konrad.dybcio@linaro.org>, Shazad Hussain <quic_shazhuss@quicinc.com>,
        "Vinod Koul" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v2 1/6] dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
Date: Fri, 28 Apr 2023 18:38:19 +0530
Message-ID: <20230428130824.23803-2-quic_shazhuss@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
References: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JHi5ns7rPUtDqr6VFKHWqUYButyIY9rd
X-Proofpoint-ORIG-GUID: JHi5ns7rPUtDqr6VFKHWqUYButyIY9rd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0 mlxlogscore=741
 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_060906_073243_7908EE87 
X-CRM114-Status: GOOD (  12.04  )
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

Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
---
 .../devicetree/bindings/usb/qcom,dwc3.yaml    | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index d84281926f10..4a36e2b6c8fb 100644
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
@@ -455,6 +457,25 @@ allOf:
             - const: dm_hs_phy_irq
             - const: ss_phy_irq
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-dwc3
+    then:
+      properties:
+        interrupts:
+          minItems: 3
+          maxItems: 4
+        interrupt-names:
+          minItems: 3
+          items:
+            - const: pwr_event
+            - const: dp_hs_phy_irq
+            - const: dm_hs_phy_irq
+            - const: ss_phy_irq
+
 additionalProperties: false
 
 examples:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
