Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 922BDC3DA41
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 14:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aK8CV1bJwwoxhSnW+sSEKroJV1Hu5cTY/Cksm+FKswk=; b=PoLZ+drLNMeZ86
	ftkWHGf5v96jscL15DdPZ6gwfrpxiZdRr6Kb2ZbRauMbEzB8XvrsO/Edc8VUceRo5TmVJlySrccfU
	j1VxDxWU5XjhUfJ5j9lNP/kEnq0DyjzBMLlp9Bl96CRSlneUA0zon3UtCZs1DMRI6lllCCujXYc9L
	gXEJRyn9fTglSvEkLF4MP9Y593d1IyEjYtPDWtY3K2kkv5bPCS1fAuaSRaszltdltvf+H7ET4FxZH
	UODCATkfaPBlJZUe/Yp9yc0/tOg9S1/Gslz4YKI7CaIHz5QImS0qfRuDgVJ2PA9y312c427U2P86v
	BKJRjCP4QUwZm4Q7NjFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRC2U-00000007bOW-1I2E;
	Tue, 09 Jul 2024 14:41:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRC2N-00000007bMb-2ImG
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 14:41:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 469AF37w003367;
	Tue, 9 Jul 2024 14:41:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6giKhM0FQvTutDLvjuBeElDjzrsC+XYi2pL3CEENN1U=; b=pSh+M24kvCkXDnr2
	a8RE1w2BDFoT9TXz7wUJi57Xm8isTmI5Mz/JE2FiaQdhGtiJKtIWhW+/7JOqSoc+
	PM8/jnNN2Ic3E1K9HdNeKauTcDyBaLy5DMVQpiczAksQT41/PefShDbI+P5bKWqe
	3FdB+UL4/R556+QSIsKUGoAXDahP330eA4hV+B6iCVZwz2pfGyCnCucTR6eZ/gXq
	xBjqQcriIcc8QEc+HK8kIS9+BwnLDp777X6S7J1daCdeqymIuV7vl/Dufgb8+wGO
	sEiVM1ch87/RjIaFOiHo/U5+S/T/3XqXSdkY5gpyRI4A7JIlrv6K/peEkp8BEovV
	ltiKdA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 406wjn6yd1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jul 2024 14:41:44 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 469EfhiO007581
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 9 Jul 2024 14:41:43 GMT
Received: from tengfan-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 9 Jul 2024 07:41:38 -0700
From: Tengfei Fan <quic_tengfan@quicinc.com>
Date: Tue, 9 Jul 2024 22:41:26 +0800
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,qmp-usb: Add QCS9100 USB3
 PHY
MIME-Version: 1.0
Message-ID: <20240709-add_qcs9100_qmp_usb3_uni_phy_compatible-v2-1-e83b9fc7b280@quicinc.com>
References: <20240709-add_qcs9100_qmp_usb3_uni_phy_compatible-v2-0-e83b9fc7b280@quicinc.com>
In-Reply-To: <20240709-add_qcs9100_qmp_usb3_uni_phy_compatible-v2-0-e83b9fc7b280@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Tengfei Fan <quic_tengfan@quicinc.com>
X-Mailer: b4 0.15-dev-a66ce
X-Developer-Signature: v=1; a=ed25519-sha256; t=1720536095; l=1806;
 i=quic_tengfan@quicinc.com; s=20240709; h=from:subject:message-id;
 bh=x9JzsbCcFnjW1KSqX2xpw/H/y0Cfy9k5VcjTbgEfo0U=;
 b=7gXr/xub+NIZbA9eBuYpXMsx2n/XiTIt74oXuWM8zIyXdrgsbGs/Ray0D91EMvNDH+DNtyB+1
 P69rdgd3qNyAB+0P31DDVG6ks+l02koBT9LIgfGobn2qhYx/HxPxzL+
X-Developer-Key: i=quic_tengfan@quicinc.com; a=ed25519;
 pk=4VjoTogHXJhZUM9XlxbCAcZ4zmrLeuep4dfOeKqQD0c=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: mBwyXjJXQ8Ayw9o2Bz8qhhjYR0ii7kf_
X-Proofpoint-GUID: mBwyXjJXQ8Ayw9o2Bz8qhhjYR0ii7kf_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-07-09_04,2024-07-09_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=712 clxscore=1015
 mlxscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2407090095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_074147_758234_4D485260 
X-CRM114-Status: GOOD (  10.13  )
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

Add dt-bindings for USB3 PHY found on Qualcomm QCS9100.
QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
platform use non-SCMI resource. In the future, the SA8775p platform will
move to use SCMI resources and it will have new sa8775p-related device
tree. Consequently, introduce "qcom,qcs9100-qmp-usb3-uni-phy" to describe
non-SCMI based USB3 phy.

Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 0e0b6cae07bc..ebe225eb334a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,ipq9574-qmp-usb3-phy
       - qcom,msm8996-qmp-usb3-phy
+      - qcom,qcs9100-qmp-usb3-uni-phy
       - qcom,qdu1000-qmp-usb3-uni-phy
       - qcom,sa8775p-qmp-usb3-uni-phy
       - qcom,sc8180x-qmp-usb3-uni-phy
@@ -111,6 +112,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs9100-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
@@ -153,6 +155,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,qcs9100-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
