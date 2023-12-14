Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9605FC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 06:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdIlFVgruQcGWclbMXMwUWRiDO6H6VTyBZ2xDPHUsWQ=; b=qa+8TAWq6X1dQW
	rOJmCZtlTXlOb+zOTtzHyfzL9hzXqz1XGOZZXk/0G90avuZrvDXW/tsRJMvTDCxYDOK9yb0ReyixC
	rERnipaYFXuitm9HRz9h6AGSWS6o3v0eZrSBnCCoQMU+zUrNMbaaSjBEOEv2h2LjbkjLGMgs7PZap
	/7lj9DUTYho/fLoK/myunt5p7sJH3WDe98OjyRYjbvfAMOoU1basGzN4DfBt5NIxt20XqVuEyKk9W
	uw4RkPG6foNVp0EuRoiX2GvTSO0Q1IzSFN/kUamIVxhEaQKiS2FxwZrc2YgEY+TXk0oFxI2ncMLop
	aZb0LOdM+9BEigW9+E9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfEY-00Gyu5-14;
	Thu, 14 Dec 2023 06:30:10 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDfEW-00Gyta-0S
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 06:30:09 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BE5rRvC013098;
	Thu, 14 Dec 2023 06:30:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=RIzgw5CtNpODSCQg6WtMkxWQgree7bxQt0OylqoVt58=; b=NH
	gT5H80RYY40t1jwtV1O/eq+hGeq4dsGHI07q+KL0bS0Wbps/1TpdVnl3J6SSDd9P
	VNSoGuwT17ZsbkWGLeM1JUMHLXpZ4mJvPIQiMQp9pmKwaKIGXtn74ePeZBJC98ZX
	2p2FS2O17jsYQkaL0D//PPfVK9nJ97olE1XXqGfAl1uPgA4ANReyrOxkRgZ+Pt6q
	I2fej2YHHBLiGipOID3yu/PbAcniDYZeJYtswFpA9/bcrA4liMYDPsjLDd+8AsnZ
	Nf21QYoMcwRn2HPhehZKd0fbKymbxQJWvp6OS7vIywqyWYCbdK/ym/mzyHIsTn4T
	MXmaQ+2kJP1rC97uBpJQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3uyp4xgqhg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 06:30:01 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3BE6U0aU005544
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 06:30:00 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Wed, 13 Dec 2023 22:29:53 -0800
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <mani@kernel.org>,
        <quic_nsekar@quicinc.com>, <quic_srichara@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <quic_varada@quicinc.com>, <quic_devipriy@quicinc.com>,
        <quic_kathirav@quicinc.com>, <quic_anusha@quicinc.com>
Subject: [PATCH 07/10] dt-bindings: PCI: qcom: Add IPQ5332 SoC
Date: Thu, 14 Dec 2023 11:58:44 +0530
Message-ID: <20231214062847.2215542-8-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: -Aa4TgoKNCEn7SIisZ3c2z9pAp_XeBZl
X-Proofpoint-ORIG-GUID: -Aa4TgoKNCEn7SIisZ3c2z9pAp_XeBZl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-09_02,2023-12-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312140039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_223008_304257_5337F6AB 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

Add support for the PCIe controller on the Qualcomm
IPQ5332 SoC to the bindings.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index eadba38171e1..af5e67d2a984 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -21,6 +21,7 @@ properties:
           - qcom,pcie-apq8064
           - qcom,pcie-apq8084
           - qcom,pcie-ipq4019
+          - qcom,pcie-ipq5332
           - qcom,pcie-ipq6018
           - qcom,pcie-ipq8064
           - qcom,pcie-ipq8064-v2
@@ -170,6 +171,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pcie-ipq5332
               - qcom,pcie-ipq6018
               - qcom,pcie-ipq8074-gen3
     then:
@@ -332,6 +334,39 @@ allOf:
             - const: ahb # AHB reset
             - const: phy_ahb # PHY AHB reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,pcie-ipq5332
+    then:
+      properties:
+        clocks:
+          minItems: 6
+          maxItems: 6
+        clock-names:
+          items:
+            - const: ahb # AHB clock
+            - const: aux # Auxiliary clock
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
+            - const: sticky # Core sticky reset
+            - const: axi_m_sticky # AXI master sticky reset
+            - const: axi_m # AXI master reset
+            - const: axi_s_sticky # AXI slave sticky reset
+            - const: axi_s # AXI slave reset
+            - const: ahb # AHB reset
+            - const: aux # AUX reset
+
   - if:
       properties:
         compatible:
@@ -790,6 +825,7 @@ allOf:
               enum:
                 - qcom,pcie-apq8064
                 - qcom,pcie-ipq4019
+                - qcom,pcie-ipq5332
                 - qcom,pcie-ipq8064
                 - qcom,pcie-ipq8064v2
                 - qcom,pcie-ipq8074
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
