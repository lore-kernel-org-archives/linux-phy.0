Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E65F5CEDDB8
	for <linux-phy@archiver.kernel.org>; Thu, 10 Oct 2024 02:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyFRLpZQ6emynJEaNW+UbFIs3Ci36NUkigqOb33sNYQ=; b=SWiPuZ6WWQntR1
	sSycQvgWDI25OS+DmfR0+03H8ZZM8ZdPJUPf9MR8RvPd8+NxUDsjxQe03RUQBTf/zCHosKwy8+wCP
	vMc5wAFx1Y0+6XYYPHmbL54sXfpzlvBP824rEn9x8lzMtJxoAQCFZFh0z4/9hCxCQY+Q0bDMkK9k8
	qT86QP8wTkozBj08xul8ZH8LRqFcs4p9jyV6gkjw/9odLTskjfoFrBjHQt7wP4wn4xuXdnznP50K8
	ZE+vHxRNoD2+islyeSKXUnelRcT7PTN3hHBi5Ks8O0ycyrazSzkIcrocx8dC9PwtOkHagJbuG4X2j
	eAo1MZ3bpH9PZzbU34Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYi-0000000BGGV-2cUF;
	Thu, 10 Oct 2024 02:05:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syiYc-0000000BGF3-1sqG
	for linux-phy@lists.infradead.org;
	Thu, 10 Oct 2024 02:05:42 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49A1bHiE009185;
	Thu, 10 Oct 2024 02:05:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	78PNpcCN8wMlM6G5jBcKLZRy/i3qNzJuV3HBQg4DeP0=; b=P1bsZTQ6KIOFSL2a
	c345x4TvisrYmzYZZ2ilPav3lPuJ+Y7Ipia3lj5X3XsuBo3msw5SKP2N84hZXmLb
	qNyTsMtlTQdpN0UqKr5kcOkfmIxQXEzMVU09y8+qROCGbd2Wo+9NGDDlxlcPRslg
	rEss4b1sMJvfK3Nv6jHdKavUDqHHFs5UrsESingWOK3VEPwx68BApKrMMGRLQn2D
	DmfSYEfbMy6ybJQqRDlSUVeLqgNUdLpKgyjX67T3mhFnC7u37qONbhztPGbWaCje
	0jfww9BjYSKXLAMhBvuQX5PoHAnCQDDV63NO3q2hNg7jeWsUbljqGEj1yTPN0gQU
	iln1sA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 425tn11xqm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:30 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49A25TLd007361
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Oct 2024 02:05:29 GMT
Received: from yijiyang-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 9 Oct 2024 19:05:23 -0700
From: Yijie Yang <quic_yijiyang@quicinc.com>
Date: Thu, 10 Oct 2024 10:03:43 +0800
Subject: [PATCH 1/3] dt-bindings: net: qcom,ethqos: add description for
 qcs615
MIME-Version: 1.0
Message-ID: <20241010-schema-v1-1-98b2d0a2f7a2@quicinc.com>
References: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
In-Reply-To: <20241010-schema-v1-0-98b2d0a2f7a2@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        "Paolo
 Abeni" <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh
 Sharma <bhupesh.sharma@linaro.org>,
        Kishon Vijay Abraham I
	<kishon@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
CC: <netdev@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <quic_tingweiz@quicinc.com>,
        <quic_aiquny@quicinc.com>, Yijie Yang <quic_yijiyang@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728525917; l=1140;
 i=quic_yijiyang@quicinc.com; s=20240408; h=from:subject:message-id;
 bh=8P4ZQ+CZOCH8vZQlSLNo77S4gwMiUX4y1WrSWCcvZ+8=;
 b=TGyLZpyXT7ehstJOQaa2jJoKlflSrHRFN4i7cU1VNoE0BOL/ukohiR35Ol5gO0jlA7BDAQoCK
 AJx80KEWeh5BHkSJHGGmGFNmV/BISJ5XS/S8fM/Crw/Qj/DAPmZ3vVs
X-Developer-Key: i=quic_yijiyang@quicinc.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: I2EfeC1qQIadFELihCnKvfXuPvp_oEAk
X-Proofpoint-GUID: I2EfeC1qQIadFELihCnKvfXuPvp_oEAk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 suspectscore=0 priorityscore=1501 mlxlogscore=812 impostorscore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410100012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_190538_530188_BBF22D84 
X-CRM114-Status: GOOD (  10.30  )
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

Add compatible for the MAC controller on qcs615 platform.
Since qcs615 shares the same EMAC as sm8150, so it fallback to that
compatible.

Signed-off-by: Yijie Yang <quic_yijiyang@quicinc.com>
---
 Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 6672327358bc..8cf29493b822 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -18,11 +18,16 @@ allOf:
 
 properties:
   compatible:
-    enum:
-      - qcom,qcs404-ethqos
-      - qcom,sa8775p-ethqos
-      - qcom,sc8280xp-ethqos
-      - qcom,sm8150-ethqos
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs615-ethqos
+          - const: qcom,sm8150-ethqos
+      - enum:
+          - qcom,qcs404-ethqos
+          - qcom,sa8775p-ethqos
+          - qcom,sc8280xp-ethqos
+          - qcom,sm8150-ethqos
 
   reg:
     maxItems: 2

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
