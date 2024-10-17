Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 727DCD2126D
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 10:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wto8o1dauFksBPWvHNYJdCubZv5rd2Sh80LET1F370Y=; b=LQD4Bk0yrpj0Xb
	MmDVcF1Nzu7rv3u/98idyGElnZjZSulK0KQIT+GtS1XSn9U15ywDvYCbvwiP797L48DK+CX/A3A3a
	JDjumwo0IyKjjszkiITmVj234vzH02v3Zhlo+Y4graKl7PKjV/Lr0IxSngsXLUPLJRZmACWx5gVuk
	u2heAVxeYbsScNAYtzJoO2hMLahUwmPWHXzT/v8gWJVGLneqcAo4rPqu4Wn/my2cgERTr2JMdp7EW
	XgENGIe6PKcSFRVqiEPCiA9120L/ObDludyR9Tp9D9+AlTBCsAerYTjflfCY2vJVt7bI/ANEiDHDn
	PUb/Tf+rVNh7ukt1LJLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1NZH-0000000EUcv-0cgq;
	Thu, 17 Oct 2024 10:17:19 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1NCb-0000000EQXO-2zoo
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 09:53:58 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49H8PHcN012407;
	Thu, 17 Oct 2024 09:53:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QD8WKOLKymw6e23TR9PZ97KYvtjsQw9ZqeQmcwE0nsg=; b=RAA8/zXs0v0Qczmg
	E07OW1Oa5krBrt5lDVRmtlaMBenlA4OGD+bm+j/Mb5y4v86ghoBiFIYjAYreVUOf
	KIvlBdBeSOW1AAjpSYsHmZDV/hpgvO9iVAkBYNyRYqyh/OgVhxmGLW+GJZqKs0X6
	2s8bQSrQRG6sFXXnZ6x7w3jxzQ2iGlsGRW3K5zaz15yag08F9iv+rKY2i1vu9q1k
	qvCDh9r6aGGDH1Xk7lXx4Cazv5/uKW7FN8HeOBHKOwm38N5NUQqWHLqvE2k3kD8t
	kC7b282z2dg8ccNv0osn3DDLjdUzZxjCp4bMoIs/s4p+Qh4wVHVJ5PWE7IVBF4hS
	tVpyIQ==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42abbxummn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 09:53:44 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 49H9rhkS018000
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Oct 2024 09:53:43 GMT
Received: from yijiyang-gv.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 17 Oct 2024 02:53:37 -0700
From: Yijie Yang <quic_yijiyang@quicinc.com>
Date: Thu, 17 Oct 2024 17:52:37 +0800
Subject: [PATCH v2 1/3] dt-bindings: net: qcom,ethqos: add description for
 qcs615
MIME-Version: 1.0
Message-ID: <20241017-schema-v2-1-2320f68dc126@quicinc.com>
References: <20241017-schema-v2-0-2320f68dc126@quicinc.com>
In-Reply-To: <20241017-schema-v2-0-2320f68dc126@quicinc.com>
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
        <quic_aiquny@quicinc.com>, Yijie Yang <quic_yijiyang@quicinc.com>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729158811; l=1263;
 i=quic_yijiyang@quicinc.com; s=20240408; h=from:subject:message-id;
 bh=1fRwR2aQ8UF3hr0qNofVM7Li7WOw04ziNuFhMZDlbVE=;
 b=+wIQ4wow/VoWsJ3HVXyggm+oTTEdK2MByb1OAWDIGj2XGwVEbQzhGVptc+xZtJANlBtOlcGSf
 s2uZvrTkwVyCIz3IErBDjvK+LZGrwaz3zAHG/Ohs84f6vxqvlGesfb5
X-Developer-Key: i=quic_yijiyang@quicinc.com; a=ed25519;
 pk=XvMv0rxjrXLYFdBXoFjTdOdAwDT5SPbQ5uAKGESDihk=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: YvM4fkeYkmdU3mvOtsgmPwGAIK7ei00L
X-Proofpoint-GUID: YvM4fkeYkmdU3mvOtsgmPwGAIK7ei00L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 mlxscore=0 mlxlogscore=838 bulkscore=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2409260000
 definitions=main-2410170067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_025353_906885_9B941CF9 
X-CRM114-Status: GOOD (  10.18  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 6672327358bc13f4a464c845d242d32569bf66a7..8cf29493b8228967156758c0363a978daec84152 100644
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
