Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B1E6E77188
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 05:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOra7ALD2/Fqt3FydmGjwZCRq6GMpZOLpL4pbulmg+E=; b=P+7/pX+KO7vUej
	e9FdsHnjBFKw9BUHl3DsRPOB8qDw6qfcQHOBE1YNjGhMt2Gh70tK2WSvE6b8OfnqKm4OSZFTmu2s9
	uRDhuF4Mza5/wtSCSCT2L+PtCoII5W35BgCmE3p6GLadpkSKwqku3CYSDil2gL1KPUJClmG2nM7D7
	NZkjnzT7F/ak0epNZrGyEHxv+jJd284PcBNk5P7KV+S+1guyyShbd2rW4SV2Slbx3ADGPz0djyDYL
	qRd+BR13qIaXTbcK8kmsSmJy8csw0/YRE8/9vfkUefcPcJuR6klhQ+ALkNSHyAGBiw/KwOgQlvgXF
	Ec6Gpnx3rfzNSslNmTGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVP6O-00000007EZC-0W89;
	Wed, 08 Jan 2025 05:59:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVP6K-00000007EWl-3ftA
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 05:59:35 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507J80ds015047;
	Wed, 8 Jan 2025 05:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sMFm5lslL4Ar1365RSudqcwf74eMYACALgLuQhC2PwQ=; b=Wy7iEj89nBfZ5z2L
	cl2mmBCzp5019L5//tnoGFHeIilZ/UxhZMzYu2adN/19FA/S0sTinJedSznEboxa
	+4JFnpPFfVraitEYZ5lHPnBJVV2kgnaSOxBg2up5//egfVoVEGRQi9rHjRsp7lTl
	coCuvUGH5A5uZ12dre8nvFGGBNiwY5Fdhi8qbiFuZV9KnaBqtId7Iyh6xn+VnMT8
	/AzqTW/n+/iV1Fb4oC/bN1KRBWUqSDjOd/Z5PTe+SpklSNYvwbg+JqSiiJLKW4Vq
	Z6VWVTr5lj3hfIS1n8XnFa7ehrYkMbVMs17UARUfGXrSxZZGHc0UFNiKdqhfF3Q7
	5WCqYA==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 441a5dh7f9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 08 Jan 2025 05:59:18 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 5085xHYK005615
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 8 Jan 2025 05:59:18 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 7 Jan 2025 21:59:12 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
Subject: [PATCH v6 3/5] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe controller
Date: Wed, 8 Jan 2025 11:28:40 +0530
Message-ID: <20250108055842.2042876-4-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250108055842.2042876-1-quic_varada@quicinc.com>
References: <20250108055842.2042876-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: iaZ5DIt6MN7AVV3JWKfnx6IWUiAp_X_n
X-Proofpoint-GUID: iaZ5DIt6MN7AVV3JWKfnx6IWUiAp_X_n
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501080046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_215933_035973_25CF1FCA 
X-CRM114-Status: GOOD (  10.75  )
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

Document the PCIe controller on IPQ5332 platform. IPQ5332 will
use IPQ9574 as the fall back compatible.

All DT entries except "reg" is similar between ipq5332 and
ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
additional (i.e. sixth entry). Since this matches with the
sdx55's "reg" definition which allows for 5 or 6 registers,
combine ipq9574 and ipq5332 with sdx55. Without this
dt_binding_check fails.

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v6: Commit message update only. Add info regarding the moving of
    ipq9574 from 5 "reg" definition to 5 or 6 reg definition.

v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts

v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
    * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
      to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
      and dt_binding_check flag errors.
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index bd87f6b49d68..9f37eca1ce0d 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -26,7 +26,6 @@ properties:
           - qcom,pcie-ipq8064-v2
           - qcom,pcie-ipq8074
           - qcom,pcie-ipq8074-gen3
-          - qcom,pcie-ipq9574
           - qcom,pcie-msm8996
           - qcom,pcie-qcs404
           - qcom,pcie-sdm845
@@ -34,6 +33,10 @@ properties:
       - items:
           - const: qcom,pcie-msm8998
           - const: qcom,pcie-msm8996
+      - items:
+          - enum:
+              - qcom,pcie-ipq5332
+          - const: qcom,pcie-ipq9574
 
   reg:
     minItems: 4
@@ -165,7 +168,6 @@ allOf:
             enum:
               - qcom,pcie-ipq6018
               - qcom,pcie-ipq8074-gen3
-              - qcom,pcie-ipq9574
     then:
       properties:
         reg:
@@ -206,6 +208,8 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pcie-ipq5332
+              - qcom,pcie-ipq9574
               - qcom,pcie-sdx55
     then:
       properties:
@@ -407,6 +411,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pcie-ipq5332
               - qcom,pcie-ipq9574
     then:
       properties:
@@ -555,6 +560,7 @@ allOf:
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
