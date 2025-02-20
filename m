Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F1BDC021B5
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 09:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FO6JTkwVDxItfGIKpOdsD5tTULtNy4IYDF+1xsAyVrA=; b=q3cLoLYrGipv9C
	JqkUtVo930Hw8oVO66I242e5R6wA7rE91DLYORgMWspyg5uDwf6zZVAzvKzQgI8LcvV+6q890k2fw
	3p2DAqG5sQcKy13sk1hd+wVcC7qHx6Z04tX/b7/0PLBHKeFqiWCv1jeU8qS/bQ2WRDMrWmd2I6/i9
	vtU2SvrqVyQWNNvLARWuuUW+xB6+Gd93293ZBXjN9TEDV13fBaKfYfq7Lq8USF5CDVu74l2GYl9dS
	oruCWPkKeN56Ct6LrpHQ4K396JzZTqCp0m7/wEih/LcRwHGjcmL0kF3owOV/xXnO4VWtsR6Q0AaLA
	chHoNd/4t1pCW53Jv3ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl3DB-000000008lz-1LZt;
	Thu, 20 Feb 2025 09:51:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl35h-000000005qT-2zTq
	for linux-phy@lists.infradead.org;
	Thu, 20 Feb 2025 09:43:34 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51K6i1Yj012255;
	Thu, 20 Feb 2025 09:43:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t+pP+baOZ8mfWdgz074acarKmR/zPSmyk4mio/3Iv48=; b=IgPdnECvpDh7Uic8
	2OSnmyqpZGAmiPSW6GJ3RkPwwlZmUvZk1fi2Xnw9h9uvSA6AXig4VV+GYy9VM739
	/Q1ZMEKNIVyoZ+OJM7lhS4m5KXRbP+maoXWgVbMnBXeiNtucaQsZsHl328A5bYyn
	zS9qoT7yCtv0x3gZI5CDOpO3t9e9/wYm/JJhu3BSOMSDYbXhdsgVzLbmI4aEKr9B
	bT5fjnJTovgvHIMG6+FKSSFN+RlihqyRTFrytEl1vzg6InN7EAv2XmRgJPQnEQra
	mIHIETw3slwmZHdW8urCNs/FPtY+xKMo7Zw4NbLXbyR5GGSqjkARIFJQ5Eb0rzSz
	wn8mPQ==
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy1nnxv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 09:43:27 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51K9hRWo010734
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Feb 2025 09:43:27 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 20 Feb 2025 01:43:20 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <quic_varada@quicinc.com>,
        <quic_nsekar@quicinc.com>, <dmitry.baryshkov@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pci@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 3/7] dt-bindings: PCI: qcom: Use sdx55 reg description for ipq9574
Date: Thu, 20 Feb 2025 15:12:47 +0530
Message-ID: <20250220094251.230936-4-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250220094251.230936-1-quic_varada@quicinc.com>
References: <20250220094251.230936-1-quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: rlYAULJgP18fEPE7eN3ObpsEuZOD6B82
X-Proofpoint-ORIG-GUID: rlYAULJgP18fEPE7eN3ObpsEuZOD6B82
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-20_04,2025-02-20_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=808 suspectscore=0 phishscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502200071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_014333_760906_DE46C103 
X-CRM114-Status: GOOD (  11.07  )
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

All DT entries except "reg" is similar between ipq5332 and ipq9574. ipq9574
has 5 registers while ipq5332 has 6. MHI is the additional (i.e. sixth
entry). Since this matches with the sdx55's "reg" definition which allows
for 5 or 6 registers, combine ipq9574 with sdx55.

This change is to prepare ipq9574 to be used as ipq5332's fallback
compatible.

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v8: Add 'Reviewed-by: Krzysztof Kozlowski'
---
 Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 7235d6554cfb..4b4927178abc 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -169,7 +169,6 @@ allOf:
             enum:
               - qcom,pcie-ipq6018
               - qcom,pcie-ipq8074-gen3
-              - qcom,pcie-ipq9574
     then:
       properties:
         reg:
@@ -210,6 +209,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,pcie-ipq9574
               - qcom,pcie-sdx55
     then:
       properties:
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
