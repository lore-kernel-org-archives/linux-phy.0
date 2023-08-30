Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C55C6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 11:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dedkscFm6IVijI1L6JUQkqTlDEV518Fqmfu+ZhKUIZs=; b=Y639m/RLRJ5yV5
	mPpupKmAqOCeci48ymPnM3zsRLG2KVBcQ0LbiGwWwgZ7aplgrHK4W9uluItIrXfL3UkVSi8HvWhZX
	y8xXsiv9e5G5lG7Oe8kkApAilNzrh4Zi/5pEj4x+Agiq8hibnmrXhS07SSmkIobB0z1i1rIDH2XpA
	P97uWyLkKe7lgjsivGBunYyNjSY3ofDAkivldB8rvDy8JFQK+QKPGsUh83e3ql1KJLW56OE+3JDwB
	oiozITK4vPf1Ut3eohWqcOkof4StcNUu2D0GPns1lppISYfYO391UlbYZ7bNA1LdXQNjOV7ukPt8a
	Eaouque5QP1IHqlCjt8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJD4-00DNGe-1h;
	Wed, 30 Aug 2023 11:18:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJD1-00DNFk-1y
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 11:18:05 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U7IWBC029060;
	Wed, 30 Aug 2023 11:17:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=RVSgOjjc8Lx1PtMbNzGlpI095je4DEkWdb2qJnArQSQ=;
 b=gOFJD+0N79aQyQpvUy7dEgJjD0uABNWTJ+f8dsWh58bfLxxqbCQS+Yufj9QatOq7APdr
 oRPskpm1nwlxMzA96pq7bp4MHCnV0SwiyQIvApbSkJPxfiFINiZCG3+8+F9t4tE97g5g
 j0ugUGU1gUrzhH2/RUYhMUhOtRgDalA92OyqSD/7wViVSFtcpkVhA/TBBaVgVtPafvLg
 4z/+jcWeHoJeiGPrxZwS3S5NHAI1Mw255vIvYs8YMtS8uFCa2ENrBo0Q98HfG6HLcO4W
 ZwRF7vwospXsO8Ay4NVYjzOhcEHlzOp6egaGL8xVSUQHziqA5n80M9xQcjwSCWzktSNP 5w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ssjvb26pu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:17:54 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37UBHq2O006335
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:17:53 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 30 Aug 2023 04:17:47 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
CC: Nitheesh Sekar <quic_nsekar@quicinc.com>
Subject: [PATCH V2 1/4] dt-bindings: phy: qcom,m31: Add IPQ5018 compatible
Date: Wed, 30 Aug 2023 16:47:19 +0530
Message-ID: <20230830111722.19380-2-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230830111722.19380-1-quic_nsekar@quicinc.com>
References: <20230830111722.19380-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: lnAGwxY71AKc02MLOtiFcVHnowwgMWdl
X-Proofpoint-GUID: lnAGwxY71AKc02MLOtiFcVHnowwgMWdl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 spamscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0 malwarescore=0
 mlxlogscore=863 priorityscore=1501 clxscore=1015 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308300105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_041803_651457_CF2E31A4 
X-CRM114-Status: GOOD (  15.62  )
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

IPQ5332 qcom,m31 phy driver can support IPQ5018.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
index 2671a048c926..e77576d06c0e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     items:
-      - const: qcom,ipq5332-usb-hsphy
+      - enum:
+          - qcom,ipq5018-usb-hsphy
+          - qcom,ipq5332-usb-hsphy
 
   "#phy-cells":
     const: 0
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
