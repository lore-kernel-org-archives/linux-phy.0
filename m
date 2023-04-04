Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 850A6C761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 16:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PSLXTHqbdwg0sUI/I5NWgrpIWpa/NNQXLm+M4Qcu04I=; b=K6f5Gazrccmt3d
	nD9mxh5iLXaSI41UbpeMKejrFtP65oGzByNelpI68QlcD0xmQY3QoCbp5dc1O3HzkDbcot3sAAJlI
	zq3dtE0DoKc7LbY75TFSSVBWVkDxNL4j1wiskolNCyImHhAWS0ipwErfaCdR4LBRFZXcglqaSgzUy
	VL00+3IPs3zhy5WeXDzYMEyXz647y+amyL9aLKZb086Z8uxB3rQh21aZ+yt/DifH11ye0ubiXPEQe
	nOEHOPu3+3rc9DuQUnaozWH8nVAPNuqg+NbVNxd7HIrv6qGUSX+zSYy+uuVx4Z2XL31lBDLqwoT3D
	PTCZGDjRTMYHHmaeB3Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqb-002Gl0-0G;
	Tue, 04 Apr 2023 16:49:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqY-002Gk7-0A
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 16:49:27 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 334Eddav016917;
	Tue, 4 Apr 2023 16:49:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=e0fSuuA73GGlcGHFB9Zwl/wxWwihDnVzwLdYbIQgd3c=;
 b=pKGwbVMm+VxLJvFyWBEZEq945a/SGeg25AfCmSmQGh/jssU6R2WHvkhl5vtvJmiQzcNF
 yDvXxI/e4vPVuOc/ulj7HUmMUmBo7zRK+Kp5vF+9J5RsGKkhuZ/Q8ju2+5mt/trdHebS
 f2NLDtcgrvwJdplGHnQcvbAislSvP4/r9C95H8eAKxW96/aFaNsQB3NLGbJfmL0zRbyz
 3s/29DXE6xNQND1hXeoOqxMhtDAxuRkIVffK18WZFY81zUNYg19HEeeNJVwBKt5tdpED
 gGO5N5a7vNn+mTn91qzBMNl6W3NhStYeC9wq7nZJF7mlV8CGOCtecRk90MbAp7HlPQT7 Qg== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prnusgdcp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Apr 2023 16:49:19 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 334GnInP014886
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Apr 2023 16:49:18 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 4 Apr 2023 09:49:09 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <linus.walleij@linaro.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>, <linux-gpio@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>,
        <quic_ipkumar@quicinc.com>
Subject: [PATCH V2 3/9] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574 bindings
Date: Tue, 4 Apr 2023 22:18:22 +0530
Message-ID: <20230404164828.8031-4-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230404164828.8031-1-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: YCQ2KFB693c5E8m78CmuUYIWgXlHJad-
X-Proofpoint-ORIG-GUID: YCQ2KFB693c5E8m78CmuUYIWgXlHJad-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-04_08,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 clxscore=1015 malwarescore=0 mlxlogscore=999 adultscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304040155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_094926_212887_F67942C2 
X-CRM114-Status: GOOD (  13.25  )
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

Add bindings for the PCIe QMP PHYs found on IPQ9574

Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 Changes in V2:
	- Added the ipq9574 bindings here as the phy nodes in the DT
	  are modified to follow the latest style (without child node)

 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 103 ++++++++++++++----
 1 file changed, 84 insertions(+), 19 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index a0407fc79563..6ea442c1378b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,8 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq9574-qmp-gen3x1-pcie-phy
+      - qcom,ipq9574-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x1-pcie-phy
       - qcom,sc8280xp-qmp-gen3x2-pcie-phy
       - qcom,sc8280xp-qmp-gen3x4-pcie-phy
@@ -34,13 +36,7 @@ properties:
 
   clock-names:
     minItems: 5
-    items:
-      - const: aux
-      - const: cfg_ahb
-      - const: ref
-      - const: rchng
-      - const: pipe
-      - const: pipediv2
+    maxItems: 6
 
   power-domains:
     maxItems: 1
@@ -51,9 +47,7 @@ properties:
 
   reset-names:
     minItems: 1
-    items:
-      - const: phy
-      - const: phy_nocsr
+    maxItems: 2
 
   vdda-phy-supply: true
 
@@ -84,11 +78,8 @@ required:
   - reg
   - clocks
   - clock-names
-  - power-domains
   - resets
   - reset-names
-  - vdda-phy-supply
-  - vdda-pll-supply
   - "#clock-cells"
   - clock-output-names
   - "#phy-cells"
@@ -128,13 +119,58 @@ allOf:
         clocks:
           maxItems: 5
         clock-names:
-          maxItems: 5
-    else:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+    then:
       properties:
         clocks:
           minItems: 6
         clock-names:
-          minItems: 6
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: pipediv2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9574-qmp-gen3x1-pcie-phy
+              - qcom,ipq9574-qmp-gen3x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: anoc_lane
+            - const: snoc_lane
+            - const: pipe
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
 
   - if:
       properties:
@@ -147,13 +183,42 @@ allOf:
         resets:
           minItems: 2
         reset-names:
-          minItems: 2
-    else:
+          items:
+            - const: phy
+            - const: phy_nocsr
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,sm8350-qmp-gen3x1-pcie-phy
+              - qcom,sm8550-qmp-gen3x2-pcie-phy
+
+    then:
       properties:
         resets:
           maxItems: 1
         reset-names:
-          maxItems: 1
+          items:
+            - const: phy
+
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,ipq9574-qmp-gen3x1-pcie-phy
+                - qcom,ipq9574-qmp-gen3x2-pcie-phy
+    then:
+      required:
+        - power-domains
+        - vdda-phy-supply
+        - vdda-pll-supply
 
 examples:
   - |
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
