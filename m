Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70FBAC54798
	for <linux-phy@archiver.kernel.org>; Tue,  5 Mar 2024 16:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFFmddnQv+YGahn30v0RDKQGHjjaAvstCstVyp/I9UQ=; b=egQXOeZ6UnWCRD
	dG+Ta5gJN0SVqx3Ka2dVBOY4mpRDLW1veYwOYmqzTM6E25rUX+fNpu5yZqaAuh3cWhL4kFA9w8VDs
	4+WtjBaAKfhUkmFCrsNGyr65/JB0UJa1lPF5jLYke5qVHFQ+cXAz+M/drfCe6ordt5zHedXad0zEk
	cVlHBzkKIZGoFKUKlwZFXXXgeRLV70dIZkw5KYVhp8I+8Yrxg81G4rpoOzasUaJK2WkCiwM+BOMlj
	s/X/JGbFgH05f5N2caPKvUxux3bMlOvQQtMHZ2Qv3ha2gTpYN9a+RWuy4A/jimVjUJAFkEKzt+rYo
	MVhNLNWrA2kNIgljt3Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhY7j-0000000Eaf6-0JQT;
	Tue, 05 Mar 2024 16:58:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhY7g-0000000Eadi-1JAv
	for linux-phy@lists.infradead.org;
	Tue, 05 Mar 2024 16:58:37 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 425CZdsb016430;
	Tue, 5 Mar 2024 16:58:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:subject:date:message-id:in-reply-to:references
	:mime-version:content-type; s=qcppdkim1; bh=G2pHKm3CYRwftnWlnCzZ
	QoVdTQVzwW6oS8xpp4Rnbrs=; b=T3a5B1pnIUNjkYb2WY5CQ2NBSjnJwNqQOQy9
	TpuAG9K9GrG1kxdl+ngN7WLmwNEGT+fAlgFTYK3q5xM7HYtkz3u55+prYTIRJRAI
	xV7e6mFnJslk0RHc7sLTcuA4dSI8QBEMhKRZvcQOj7DNbt/WzqJdKgWw4GBohUW2
	9wnGGLMLeoadxpL92oOcKAn5L4cyvTqziYbsCb08Pq1zBZP15GTazDce7Wq/UstK
	vEzsfA2Fx2qT62ekFgwfgC+omlUmSvTPZrpV97MdouYiKp3XR0ENzdLfUlcUFh+e
	R7ZlbhhjCLewP47yrFVGzCsV8D8qNmdm0IxDPFdtvFIY9sThgQ==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wnpxhj3ht-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 Mar 2024 16:58:11 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 425GwAOb002612
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 5 Mar 2024 16:58:10 GMT
Received: from sriramd-linux.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 5 Mar 2024 08:58:04 -0800
From: Sriram Dash <quic_sriramd@quicinc.com>
To: <andersson@kernel.org>, <konrad.dybcio@linaro.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <robh@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_wcheng@quicinc.com>,
        <Thinh.Nguyen@synopsys.com>, <p.zabel@pengutronix.de>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <quic_psodagud@quicinc.com>,
        <quic_nkela@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <ulf.hansson@linaro.org>, <sudeep.holla@arm.com>,
        <quic_shazhuss@quicinc.com>
Subject: [RFC 1/3] dt-bindings: usb: qcom,dwc3: Add support for multiple power-domains
Date: Tue, 5 Mar 2024 22:27:36 +0530
Message-ID: <1709657858-8563-2-git-send-email-quic_sriramd@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
References: <1709657858-8563-1-git-send-email-quic_sriramd@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: AYZBRZ9_c9lMlF-k_iXZBXK_7GOBinLi
X-Proofpoint-GUID: AYZBRZ9_c9lMlF-k_iXZBXK_7GOBinLi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-05_14,2024-03-05_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 malwarescore=0 spamscore=0 adultscore=0 phishscore=0 clxscore=1015
 mlxscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2402120000 definitions=main-2403050136
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_085836_474225_1574701B 
X-CRM114-Status: GOOD (  13.66  )
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

Some target systems allow multiple resources to be managed by firmware.
On these targets, tasks related to clocks, regulators, resets, and
interconnects can be delegated to the firmware, while the remaining
responsibilities are handled by Linux.

To support the management of partial resources in Linux and leave the rest
to firmware, multiple power domains are introduced. Each power domain can
manage one or more resources, depending on the specific use case.

These power domains handle SCMI calls to the firmware, enabling the
activation and deactivation of firmware-managed resources.

Signed-off-by: Sriram Dash <quic_sriramd@quicinc.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 74 ++++++++++++++++------
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 49 ++++++++++++--
 .../devicetree/bindings/usb/qcom,dwc3.yaml         | 37 ++++++++++-
 3 files changed, 130 insertions(+), 30 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 1e2d4dd..53b9ba9 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -44,7 +44,32 @@ properties:
     maxItems: 5
 
   power-domains:
-    maxItems: 1
+    description: specifies a phandle to PM domain provider node
+    minItems: 1
+    maxItems: 2
+
+  power-domain-names:
+    description:
+      A list of power domain name strings sorted in the same order as the
+      power-domains property.
+
+      For platforms where some resource are firmware managed, the name
+      corresponding to the index of an SCMI domain provider can be
+      "usb_core" or "usb_transfer".
+    items:
+      - const: usb_core
+      - const: usb_transfer
+
+  qmp,fw-managed:
+    description:
+      Some targets allow multiple resources to be managed by firmware.
+      On these targets, tasks related to clocks, regulators, resets, and
+      interconnects can be delegated to the firmware, while the remaining
+      responsibilities are handled by Linux.
+
+      Decide if the target resources will be managed by firmware or High level
+      OS.
+    type: boolean
 
   resets:
     maxItems: 2
@@ -70,14 +95,6 @@ properties:
 required:
   - compatible
   - reg
-  - clocks
-  - clock-names
-  - resets
-  - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
-  - "#clock-cells"
-  - clock-output-names
   - "#phy-cells"
 
 allOf:
@@ -86,6 +103,33 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sa8775p-qmp-usb3-uni-phy
+              - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
+    then:
+      required:
+        - power-domains
+
+  - if:
+      not:
+        required:
+          - qmp,fw-managed
+    then:
+      required:
+        - clocks
+        - clock-names
+        - resets
+        - reset-names
+        - vdda-phy-supply
+        - vdda-pll-supply
+        - clock-output-names
+        - "#clock-cells"
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
@@ -144,18 +188,6 @@ allOf:
             - const: com_aux
             - const: pipe
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sa8775p-qmp-usb3-uni-phy
-              - qcom,sc8280xp-qmp-usb3-uni-phy
-              - qcom,x1e80100-qmp-usb3-uni-phy
-    then:
-      required:
-        - power-domains
-
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0f200e3..ad2f08f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -49,6 +49,34 @@ properties:
     items:
       - const: ref
 
+  power-domains:
+    description: specifies a phandle to PM domain provider node
+    minItems: 1
+    maxItems: 2
+
+  power-domain-names:
+    description:
+      A list of power domain name strings sorted in the same order as the
+      power-domains property.
+
+      For platforms where some resource are firmware managed, the name
+      corresponding to the index of an SCMI domain provider can be
+      "usb_core" or "usb_transfer".
+    items:
+      - const: usb_core
+      - const: usb_transfer
+
+  hsphy,fw-managed:
+    description:
+      Some targets allow multiple resources to be managed by firmware.
+      On these targets, tasks related to clocks, regulators, resets, and
+      interconnects can be delegated to the firmware, while the remaining
+      responsibilities are handled by Linux.
+
+      Decide if the target resources will be managed by firmware or High level
+      OS.
+    type: boolean
+
   resets:
     items:
       - description: PHY core reset
@@ -154,12 +182,21 @@ required:
   - compatible
   - reg
   - "#phy-cells"
-  - clocks
-  - clock-names
-  - resets
-  - vdda-pll-supply
-  - vdda18-supply
-  - vdda33-supply
+
+
+allOf:
+  - if:
+      not:
+        required:
+          - hsphy,fw-managed
+    then:
+      required:
+        - clocks
+        - clock-names
+        - resets
+        - vdda-pll-supply
+        - vdda18-supply
+        - vdda33-supply
 
 additionalProperties: false
 
diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index 63d150b..5bf3a29 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -64,7 +64,31 @@ properties:
 
   power-domains:
     description: specifies a phandle to PM domain provider node
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  power-domain-names:
+    description:
+      A list of power domain name strings sorted in the same order as the
+      power-domains property.
+
+      For platforms where some resource are firmware managed, the name
+      corresponding to the index of an SCMI domain provider can be
+      "usb_core" or "usb_transfer".
+    items:
+      - const: usb_core
+      - const: usb_transfer
+
+  qcom,fw-managed:
+    description:
+      Some targets allow multiple resources to be managed by firmware.
+      On these targets, tasks related to clocks, regulators, resets, and
+      interconnects can be delegated to the firmware, while the remaining
+      responsibilities are handled by Linux.
+
+      Decide if the target resources will be managed by firmware or High level
+      OS.
+    type: boolean
 
   required-opps:
     maxItems: 1
@@ -148,13 +172,20 @@ required:
   - "#address-cells"
   - "#size-cells"
   - ranges
-  - clocks
-  - clock-names
   - interrupts
   - interrupt-names
 
 allOf:
   - if:
+      not:
+        required:
+          - qcom,fw-managed
+    then:
+      required:
+        - clocks
+        - clock-names
+
+  - if:
       properties:
         compatible:
           contains:
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
