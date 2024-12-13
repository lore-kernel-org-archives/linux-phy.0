Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC83EE77182
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 13:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzfPllBCNNRIoyZK1w0PzulRYgBJ+dEGMBibQn2Faqk=; b=jf4FowFFsoaspf
	Yygh1SgeT6XNI14MUO+3BP7HQSwXs/5FfTXJZXoO4Yl4cr9yxyLIkIm91QwDDI4pCVawWTrcrxZ86
	gS+MT6/HQLhgtkXJ2XhP4CeTriSavRxY8CzUhy83aXEp97oLZm/pkkU059Ak2SyJGUlt2jZbvSAVN
	s//JEPpzjot5WmQ9Djqjw3RDPuKNaPx987cnTjGLGGNMg8aIdxsn4ggSi4T4AyPUv2Uvn4zsCdkix
	NY4w8Yd2EOiHXgc71bR1n3w6knm7IssmuhZPOC3s8Ne6xNQDT80O5R5CHxd3ub9azoBHKKjIG281E
	Naojqw0ScUHfMN3gOd6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM66y-00000003u6N-0lkr;
	Fri, 13 Dec 2024 13:53:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM64L-00000003tDf-2h8t
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 13:51:02 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD9YOST030103;
	Fri, 13 Dec 2024 13:50:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QwfHL709hjYvebFXtvJZRCl1+T2RDth2+zGbAUeKvUI=; b=M8pBhzFwYjsGmmdH
	25AC5Ntf+iK9SzZv3cZ0toabhkQgFjiKZlK5Li9mdSZoFUENvXEg/Ylp2HYCYLY8
	J2gfbgv/RyFfg/QDTnVRzbbx//qTL5gy0ZvRT52U3hGpa6SDnBB39cHtobJ7zBKf
	xutLlCLZ90bwKnOtoA1mJ1st4Mpqiagq7bac3c8bTn3Othu4SrznI89oAVsmcCtJ
	QVDKyK6Dp4aZRvgEtQ+iXPQo2FX5ch1Yx49vLPXE/YnKVLahwWfxGF9Ge9sEV0Eu
	89qK/RN6v3rQW1fbBKlrnZPF4B3XxjagtH7frLoS/sXsate/VMM1HjgvTy1hC4DP
	ypvLhw==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fwgem19r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Dec 2024 13:50:55 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BDDotDR003148
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 13 Dec 2024 13:50:55 GMT
Received: from hu-mmanikan-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 13 Dec 2024 05:50:49 -0800
From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
CC: <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>
Subject: [PATCH 1/4] dt-bindings: PCI: qcom: Document the IPQ5424 PCIe controller
Date: Fri, 13 Dec 2024 19:19:47 +0530
Message-ID: <20241213134950.234946-2-quic_mmanikan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
References: <20241213134950.234946-1-quic_mmanikan@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: vw-LJath-oUZpfF83NX0gr8rJiJEH_q9
X-Proofpoint-ORIG-GUID: vw-LJath-oUZpfF83NX0gr8rJiJEH_q9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_055101_686823_CEDC4EFB 
X-CRM114-Status: UNSURE (   9.95  )
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

Document the PCIe controller on the IPQ5424 platform using the
IPQ9574 bindings as a fallback, since the PCIe on the IPQ5424
is similar to IPQ9574.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index bd87f6b49d68..7235d6554cfb 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -31,6 +31,10 @@ properties:
           - qcom,pcie-qcs404
           - qcom,pcie-sdm845
           - qcom,pcie-sdx55
+      - items:
+          - enum:
+              - qcom,pcie-ipq5424
+          - const: qcom,pcie-ipq9574
       - items:
           - const: qcom,pcie-msm8998
           - const: qcom,pcie-msm8996
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
