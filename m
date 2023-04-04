Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71295C761A6
	for <linux-phy@archiver.kernel.org>; Tue,  4 Apr 2023 16:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yboSlnMDKsFUXXLBLezUt/TlNJH3D6y990cqsTlnB4Q=; b=2lPQYvcJcuJbuT
	na2blNA5YCZboFooujTv7U9BNYj6MzAECSXVf1tSeoH1Y2FiBYyy1mlBslv/Stv2KkWv61dc0p088
	9hxr9mA6MQtcYnN64I9fCIaNaGiTmuiGLJegITJ860dnZOHr43WPkhIcwCIDGYuknzAxnTV4R7w1a
	CfcGinEpd7D10XHDhGwtMLgxMBOFSVTtzQCumgxybTHeWkGfN0LLR1g0EVzhSumg8+lF3HIdl9h3d
	mPLZ/SlRtaorVB22YFSCFLmokdTMZuM6BxVZvxKl/wc90b/W5rVO560byqj5beQEOHeuPCjoYhYX5
	tp7yi4M3QjzeNgROwF8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqt-002GoD-0N;
	Tue, 04 Apr 2023 16:49:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjjqp-002GnS-2x
	for linux-phy@lists.infradead.org;
	Tue, 04 Apr 2023 16:49:45 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 334DuwvU021575;
	Tue, 4 Apr 2023 16:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=kUJpggEwCNXjZH9AVi+pfQL01TOarDuuJO2kkIc/vtA=;
 b=lpG/oLZ7t3iYv1Mc4HB1Vd7CkKAmXIzgIhvA2n9Iln+B7nUI2zZCdxh3bYqXG06saC3o
 qb5NRjQSOPNt57hzr8wSXm+8ng8HNyhbzPZ+fzUCmjCQ7Kf8EdPlR3e4Z8HwJwD3jbYz
 YhdOx0e5Xi6flXR7EQ0vx3bpbKTJBl/giD899/Bduu7663OZ3Zw38GwiQjs+A9IUIl/+
 mLAfj+xuntPfnAmxo2FpaE02Mo/+EhBpIdMUKTDyS1PxZ1bktCaCL8N7vBll6oQ1ycIY
 S1hi9/xmHP6v6QcF1FBjr/xEtM4D4Cf7dsfrbZ42a+h30iZpKLqN1X2Ae0p8TpO3o3yv NA== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prn7qggnm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 Apr 2023 16:49:37 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 334GnaJ0015021
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 4 Apr 2023 16:49:36 GMT
Received: from devipriy-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Tue, 4 Apr 2023 09:49:27 -0700
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
Subject: [PATCH V2 5/9] dt-bindings: PCI: qcom: Add IPQ9574
Date: Tue, 4 Apr 2023 22:18:24 +0530
Message-ID: <20230404164828.8031-6-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230404164828.8031-1-quic_devipriy@quicinc.com>
References: <20230404164828.8031-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: xeGtsSIzsRPsHvoZISu2dYOVDPj6bNq2
X-Proofpoint-GUID: xeGtsSIzsRPsHvoZISu2dYOVDPj6bNq2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-04_08,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=999 suspectscore=0 adultscore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2303200000
 definitions=main-2304040155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_094944_077355_17C9EFAB 
X-CRM114-Status: GOOD (  13.30  )
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

Add bindings for PCIe hosts on IPQ9574 platform and allow
msi-parent property

Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
 Changes in V2:
	- Updated the commit message and dropped the aggr_noc entries
	  as it will be handled via interconnect driver

 .../devicetree/bindings/pci/qcom,pcie.yaml    | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index fb32c43dd12d..8657ab65008c 100644
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
@@ -105,6 +106,8 @@ properties:
     items:
       - const: pciephy
 
+  msi-parent: true
+
   power-domains:
     maxItems: 1
 
@@ -160,6 +163,7 @@ allOf:
             enum:
               - qcom,pcie-ipq6018
               - qcom,pcie-ipq8074-gen3
+              - qcom,pcie-ipq9574
     then:
       properties:
         reg:
@@ -365,6 +369,39 @@ allOf:
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
@@ -681,6 +718,16 @@ allOf:
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
@@ -693,6 +740,7 @@ allOf:
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
