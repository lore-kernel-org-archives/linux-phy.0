Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19BBAC61DA4
	for <linux-phy@archiver.kernel.org>; Tue, 14 Feb 2023 16:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWLQATN4RHxFgovx3zMpNyLAld0ajJG2bX/sbHLzwH4=; b=DYfQtc07c6W04a
	G5SubcIyMJe3mv8toJkHKYExqYOGW+exoWUli3zMNQuSozPvMTaeZz19aaFzrWJrfJ5qfynh+t2eo
	VHfjv/UvzavHCrj790Y6uTCe/jidBEpSWEpCbjH2q6OVJH9DVInANkpzlVxOYqlntedUpQpkmphl+
	XeTbzsABBB8TReO7XOUunAx3gBNqLHixmZ4BPdMdcL9DmCwKewiHJowXWQGEOy3SpJ5LsVpc9sqZY
	TufG1sdnVZe/+TLHoXdCJDTiuQmA8ZrDSWM6DpvIP/FAd1yiSCNx8MlNPfVmOrUsJc/8vEVeqXG45
	BKiem0nEzGamVVGa/zDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRyNs-002sQ7-I4; Tue, 14 Feb 2023 16:42:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRyNq-002sPS-CJ
	for linux-phy@lists.infradead.org; Tue, 14 Feb 2023 16:42:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 31EG5pc8028832;
	Tue, 14 Feb 2023 16:42:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=vlofixXEAaYTWm3a/LVD1SGKZGtLMVOrJfivEK4BB4A=;
 b=GlT7DnbHqXtJrNf3xsDrhaJpqX0JPRGgQQEpgYeSfgeOPPMstfkdUa5TmwsdS01GdYpb
 QWY3wlqufCL/5wDIZiBcHeRahInaH4rvWyYrwHPlW5K4XdycfNCnLpbX1UdRqtJ4JxFu
 8YjFJRgm4nsjU5Hc2eXlP7U/1Y/Belh2MgSiHAsSdX3B13OrQQ+LrfV1LagnHyDap9ip
 2Q71OP59qK2n8i+4I232Zy3RhLVhjceFPePOwTumihOgCB4EO8eBhypyyER0U8hrjuCO
 hjre00p7kp9QDLdlKHJiKly3nXZ1CPusry3CsMFuh1NHeMTEyBc1QI5iORRNC3cWVMg4 +A== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3nr6ps17uh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 Feb 2023 16:42:16 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 31EGgF5b003546
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 Feb 2023 16:42:15 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.36; Tue, 14 Feb 2023 08:42:07 -0800
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <mani@kernel.org>, <p.zabel@pengutronix.de>,
        <svarbanov@mm-sol.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: <quic_srichara@quicinc.com>, <quic_gokulsri@quicinc.com>,
        <quic_sjaganat@quicinc.com>, <quic_kathirav@quicinc.com>,
        <quic_arajkuma@quicinc.com>, <quic_anusha@quicinc.com>
Subject: [PATCH 1/7] dt-bindings: PCI: qcom: Add IPQ9574 specific compatible
Date: Tue, 14 Feb 2023 22:11:29 +0530
Message-ID: <20230214164135.17039-2-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230214164135.17039-1-quic_devipriy@quicinc.com>
References: <20230214164135.17039-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: zfj7fQTMm17HILr31r_RwDC8Hg3nmepj
X-Proofpoint-GUID: zfj7fQTMm17HILr31r_RwDC8Hg3nmepj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.170.22
 definitions=2023-02-14_11,2023-02-14_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 clxscore=1015
 impostorscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 lowpriorityscore=0
 mlxscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2302140142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_084222_446197_FC624CF2 
X-CRM114-Status: GOOD (  13.74  )
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

Document the compatible for IPQ9574

Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 72 ++++++++++++++++++-
 1 file changed, 70 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 872817d6d2bd..dabdf2684e2d 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,pcie-ipq8064-v2
           - qcom,pcie-ipq8074
           - qcom,pcie-ipq8074-gen3
+          - qcom,pcie-ipq9574
           - qcom,pcie-msm8996
           - qcom,pcie-qcs404
           - qcom,pcie-sa8540p
@@ -44,11 +45,11 @@ properties:
 
   reg:
     minItems: 4
-    maxItems: 5
+    maxItems: 6
 
   reg-names:
     minItems: 4
-    maxItems: 5
+    maxItems: 6
 
   interrupts:
     minItems: 1
@@ -105,6 +106,8 @@ properties:
     items:
       - const: pciephy
 
+  msi-parent: true
+
   power-domains:
     maxItems: 1
 
@@ -173,6 +176,27 @@ allOf:
             - const: parf # Qualcomm specific registers
             - const: config # PCIe configuration space
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-ipq9574
+    then:
+      properties:
+        reg:
+          minItems: 5
+          maxItems: 6
+        reg-names:
+          minItems: 5
+          items:
+            - const: dbi # DesignWare PCIe registers
+            - const: elbi # External local bus interface registers
+            - const: atu # ATU address space
+            - const: parf # Qualcomm specific registers
+            - const: config # PCIe configuration space
+            - const: aggr_noc #PCIe aggr_noc
+
   - if:
       properties:
         compatible:
@@ -365,6 +389,39 @@ allOf:
             - const: ahb # AHB Reset
             - const: axi_m_sticky # AXI Master Sticky reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-ipq9574
+    then:
+      properties:
+        clocks:
+          minItems: 6
+          maxItems: 6
+        clock-names:
+          items:
+            - const: ahb  # AHB clock
+            - const: aux  # Auxiliary clock
+            - const: axi_m # AXI Master clock
+            - const: axi_s # AXI Slave clock
+            - const: axi_bridge # AXI bridge clock
+            - const: rchng
+        resets:
+          minItems: 8
+          maxItems: 8
+        reset-names:
+          items:
+            - const: pipe # PIPE reset
+            - const: sticky # Core Sticky reset
+            - const: axi_s_sticky # AXI Slave Sticky reset
+            - const: axi_s # AXI Slave reset
+            - const: axi_m_sticky # AXI Master Sticky reset
+            - const: axi_m # AXI Master reset
+            - const: aux # AUX Reset
+            - const: ahb # AHB Reset
+
   - if:
       properties:
         compatible:
@@ -681,6 +738,16 @@ allOf:
         - interconnects
         - interconnect-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-ipq9574
+    then:
+      required:
+        - msi-parent
+
   - if:
       not:
         properties:
@@ -693,6 +760,7 @@ allOf:
                 - qcom,pcie-ipq8064v2
                 - qcom,pcie-ipq8074
                 - qcom,pcie-ipq8074-gen3
+                - qcom,pcie-ipq9574
                 - qcom,pcie-qcs404
     then:
       required:
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
