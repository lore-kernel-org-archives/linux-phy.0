Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 755DBD2F7E5
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 04:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0x3/LqMDkTKWYFI7waZ+nA73gzjzCfLEgoYHA1oxUz4=; b=ThybxFs/7uB/hI
	4v7cddCFqraptCW4j1p2PCUvVZ/BwkOsw6mBdDb9UUGdHQ1G5/75U9183kCInen+kRfLmchrEidK5
	Vk2+BJuGWruAqNMMsyoMiM2djmDsi9xJFqe4OZKKJaOcjhCOsm5QMU4hs3KdxcZyFHiO8/H7sVWay
	FRLorDh9hyKpRq/s3dkZPGnK/eaQAMnlviGKbOnANdMkTzd3QtXDyKhhatBg2wDhRmPoGvg1p4naR
	WdLS8yQRv62XRE8W3W0gEOjXkoHpWOblO+hN6cU9frqKzsISDxfdk5dmcdfac8gXrun+/YDLbhhe3
	6Z58OwY3RZwdP7Ot9CBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1I3H-0000000DiNY-0mo5;
	Thu, 17 Oct 2024 04:23:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1I3B-0000000DiMT-1xOY
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 04:23:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49H0N3dV010214;
	Thu, 17 Oct 2024 04:23:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	e4c32fQp7Wu/Z1fc/bRbz2Q464s66jmr/8HvvG1+SBQ=; b=MbSYk/gAHx02BW61
	0n6SsB3gvpzIyKS8pkkQBUAI8jT2VSCYVzFbqjYFLMJynSEMfWc0CqVGqPIAyfIt
	qcNv1hGU+ZMvFnIe6rdCCl6+sPXxHMYnWbLaN8bm/qTkkl6+EFjlFSWky8ttN0/u
	8Gt2RnTlfib8jSPNRRUuNxBWlvrF3yHxwaOloCcsSyCGkfuNIrao0FD1WvUdiJBC
	RFSD9j7/5b8+wmPlq6YuYg173ZVYlvuYPR4Fv68U07uOn2uwNwptD1+txvHlJeHn
	Xyc+RkLRd8mzix/q+W0yUT78x5iXzLfjUdEh24bVGXydrTBwEtkxbx5HAp3IsgH+
	S/3syg==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ar050gh1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 04:23:43 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49H4NgJL019515
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 04:23:42 GMT
Received: from liuxin-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 16 Oct 2024 21:23:36 -0700
From: Xin Liu <quic_liuxin@quicinc.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Andy Gross <agross@kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, <quic_jiegan@quicinc.com>,
        <quic_aiquny@quicinc.com>, <quic_tingweiz@quicinc.com>,
        <quic_sayalil@quicinc.com>
Subject: [PATCH v1 1/4] dt-bindings: phy: Add QMP UFS PHY comptible for QCS615
Date: Thu, 17 Oct 2024 12:22:57 +0800
Message-ID: <20241017042300.872963-2-quic_liuxin@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241017042300.872963-1-quic_liuxin@quicinc.com>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: uZ2U60uycUYMUTj-5dnKm9OhSFMPSK9P
X-Proofpoint-ORIG-GUID: uZ2U60uycUYMUTj-5dnKm9OhSFMPSK9P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=988
 clxscore=1015 spamscore=0 suspectscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410170029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_212349_536326_8EFD164A 
X-CRM114-Status: UNSURE (   9.81  )
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

From: Sayali Lokhande <quic_sayalil@quicinc.com>	
	
Document the QMP UFS PHY compatible for Qualcomm QCS615 to support physical
layer functionality for UFS found on the SoC. Use fallback to indicate the
compatibility of the QMP UFS PHY on the QCS615 with that on the SM6115.

Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>
---
 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 45 ++++++++++---------
 1 file changed, 25 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f9cfbd0b2de6..a93d64d1c55b 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -15,26 +15,31 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,msm8996-qmp-ufs-phy
-      - qcom,msm8998-qmp-ufs-phy
-      - qcom,sa8775p-qmp-ufs-phy
-      - qcom,sc7180-qmp-ufs-phy
-      - qcom,sc7280-qmp-ufs-phy
-      - qcom,sc8180x-qmp-ufs-phy
-      - qcom,sc8280xp-qmp-ufs-phy
-      - qcom,sdm845-qmp-ufs-phy
-      - qcom,sm6115-qmp-ufs-phy
-      - qcom,sm6125-qmp-ufs-phy
-      - qcom,sm6350-qmp-ufs-phy
-      - qcom,sm7150-qmp-ufs-phy
-      - qcom,sm8150-qmp-ufs-phy
-      - qcom,sm8250-qmp-ufs-phy
-      - qcom,sm8350-qmp-ufs-phy
-      - qcom,sm8450-qmp-ufs-phy
-      - qcom,sm8475-qmp-ufs-phy
-      - qcom,sm8550-qmp-ufs-phy
-      - qcom,sm8650-qmp-ufs-phy
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs615-qmp-ufs-phy
+          - const: qcom,sm6115-qmp-ufs-phy
+      - enum:
+          - qcom,msm8996-qmp-ufs-phy
+          - qcom,msm8998-qmp-ufs-phy
+          - qcom,sa8775p-qmp-ufs-phy
+          - qcom,sc7180-qmp-ufs-phy
+          - qcom,sc7280-qmp-ufs-phy
+          - qcom,sc8180x-qmp-ufs-phy
+          - qcom,sc8280xp-qmp-ufs-phy
+          - qcom,sdm845-qmp-ufs-phy
+          - qcom,sm6115-qmp-ufs-phy
+          - qcom,sm6125-qmp-ufs-phy
+          - qcom,sm6350-qmp-ufs-phy
+          - qcom,sm7150-qmp-ufs-phy
+          - qcom,sm8150-qmp-ufs-phy
+          - qcom,sm8250-qmp-ufs-phy
+          - qcom,sm8350-qmp-ufs-phy
+          - qcom,sm8450-qmp-ufs-phy
+          - qcom,sm8475-qmp-ufs-phy
+          - qcom,sm8550-qmp-ufs-phy
+          - qcom,sm8650-qmp-ufs-phy
 
   reg:
     maxItems: 1
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
