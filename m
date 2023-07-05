Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70ED7C0015E
	for <linux-phy@archiver.kernel.org>; Wed,  5 Jul 2023 08:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=33VWjMRO5z/CLmNgvNfuN9Z4KbJLOnbizQCytQhRIc0=; b=LKudrSv01yhHDI
	0dvGDH4+tN1FSJkmOLcaQYyx06erchnpqvUmm/MwmB2qqtecxYmUqrTqHCzNG541rhEkLCFMT5CTG
	UZTqEhf93Ip6HUFpNaCugwRTJABeUlwiuVYo9s8L960ZpqYtnROXS2CaHu3CjHGk1mxQnOL/4zEYt
	4QRn/ywB/CfLTDw7UGag4JkoAD2DpLsj1T73zd/xoKmdkOpGAN2Vdl5hq1zsg8JKUqq6AQLamdnuy
	s41mAAfUGGgQrA7UZKsZA3IWcYLSQr00BlEep8dzA775jtslWU368UkDZuJfUWS7fPY/UA/vxUkks
	LlT6E7F73toDobjdvIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhj-00FB9u-08;
	Wed, 05 Jul 2023 08:17:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGxhg-00FB9K-3D
	for linux-phy@lists.infradead.org;
	Wed, 05 Jul 2023 08:17:38 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3657rSZa023285;
	Wed, 5 Jul 2023 08:17:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=BZCOCbcf3tjCgT7VICbftvYbIBdhPLUkBBYxBXdIf6A=;
 b=lPvok6Qt3WgcPf59HchHj/SxoZjtQFAQCVMzfzQKTiwsjhaZcE4ZgNsBTkST4pXvAuSM
 Pf8medstFPdBZ8xpvwJetcfDx0VXqwlxROSAJB3FIEHFGQoU2qZaG4oAuDOa2Yxz4QL2
 P5iZWkQVxmQbCyoU4+0j5iVSkFc4OxcDYWG1bYLrM8nI4eX7D7T+PCEJi43hkr0sLZ1I
 IYTsfFdiw9g7PnTraood2vb+NR2jX5A7T/pLZCjUvILlkXNJo3CvHwgJKcuAtyc4ayyy
 CCFsyfW8Cshp97yQHeX8ZnKItMlgqaIUHNWjSKo+NxgjVzggYV85Ng55dhlZgolePBk8 dw== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3rmnw6h7tx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jul 2023 08:17:30 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3658HRZZ021547;
	Wed, 5 Jul 2023 08:17:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3rjd7krn86-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 05 Jul 2023 08:17:27 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3658HQ7W021540;
	Wed, 5 Jul 2023 08:17:26 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3658HQCe021539;
	Wed, 05 Jul 2023 08:17:26 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id BD350244; Wed,  5 Jul 2023 13:47:25 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: [PATCH v1 1/6] dt-bindings: PCI: qcom: Add sa8775p compatible
Date: Wed,  5 Jul 2023 13:47:06 +0530
Message-Id: <1688545032-17748-2-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
References: <1688545032-17748-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sdJFXv1jqVOY6if6_Ak38XBmYaqWOU1n
X-Proofpoint-ORIG-GUID: sdJFXv1jqVOY6if6_Ak38XBmYaqWOU1n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-04_16,2023-07-04_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 mlxscore=0 phishscore=0 impostorscore=0
 malwarescore=0 bulkscore=0 mlxlogscore=999 adultscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2307050075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_011737_038031_9DE7F599 
X-CRM114-Status: GOOD (  12.90  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add sa8775p platform to the binding.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 .../devicetree/bindings/pci/qcom,pcie.yaml    | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 81971be4e554..2c79585a2d1e 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -40,6 +40,7 @@ properties:
           - qcom,pcie-sm8450-pcie0
           - qcom,pcie-sm8450-pcie1
           - qcom,pcie-sm8550
+          - qcom,pcie-sa8775p
       - items:
           - const: qcom,pcie-msm8998
           - const: qcom,pcie-msm8996
@@ -220,6 +221,7 @@ allOf:
               - qcom,pcie-sm8450-pcie0
               - qcom,pcie-sm8450-pcie1
               - qcom,pcie-sm8550
+              - qcom,pcie-sa8775p
     then:
       properties:
         reg:
@@ -743,6 +745,30 @@ allOf:
           items:
             - const: pci # PCIe core reset
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+                - qcom,pcie-sa8775p
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux # Auxiliary clock
+            - const: cfg # Configuration clock
+            - const: bus_master # Master AXI clock
+            - const: bus_slave # Slave AXI clock
+            - const: slave_q2a # Slave Q2A clock
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: pci # PCIe core reset
+
   - if:
       properties:
         compatible:
@@ -750,6 +776,7 @@ allOf:
             enum:
               - qcom,pcie-sa8540p
               - qcom,pcie-sc8280xp
+              - qcom,pcie-sa8775p
     then:
       required:
         - interconnects
@@ -854,6 +881,7 @@ allOf:
               - qcom,pcie-ipq8074-gen3
               - qcom,pcie-qcs404
               - qcom,pcie-sa8540p
+              - qcom,pcie-sa8775p
     then:
       properties:
         interrupts:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
