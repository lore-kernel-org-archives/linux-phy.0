Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA9CFE7719F
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 09:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:Message-ID:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mCAhYQq26mddFMeR31J296jVreqIjsoEnsNauWMs+DU=; b=vsag9LZr7j/PQO
	z7AeomBmPopTLDYqXQhDHbRwCwzSTh54bMmvuwvte04eC0crDZBG3f0hxcZ3QLn7n5DX+yBZk5qGi
	liRDWt3K+y0sCd0ozz7FX6VpYbUP6Df5uiYKIkExuKRgAXz281ponTqP5q5tuPIM0lLpWmIhrvLf8
	tQMg2gh+b/ePmrPiXcw8yW1N+mke6PrfG/oG92Rqx7Y6MVgpycaCCUGYxwvjxkVPmd+TIZ7ERmY23
	26Xba8nw7Y47GLDAk7sXHJIBs7yJb3JWuPcjRL9V2RKn09Mbtuf4LAzw1CVu9gZt6kU/Q/c/JRHrX
	qyIUo8bACa7c33+4XwTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGdg-00000004aEA-29Tz;
	Mon, 13 Jan 2025 09:21:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXGXI-00000004Yok-3RYJ
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 09:15:06 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50D2HnDB021778;
	Mon, 13 Jan 2025 09:15:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=3fReWpQjJqZadEx9vGwyqX
	bguWJDbIlaxdSWzE4O+q8=; b=OeJO42PhhpuI1IehbpQ0IUjA/AM3yhRLZrQ238
	R3emsJgWjcRIB/dMz91g78Ozddld8IsVHvGHPUKBWBZkf44Z5Hd/beA3HBwdCM+i
	dMqcrcp0p61hP118Hnp9ddiwjQxDA3KnEx86jYBXu0iVOZduyEJ2WQyUJg0uk7RW
	bU6eLL0xorfo19G7hnTZ80QaJxrKJNGY1kSieMxHzJOLEpv7BdXcNE22y/BXDcs+
	PTh3pBGBdNobe10miouT2q1PxbsDF9IO5Un9lwNCoiRUX3nVnqGSK2hQJ6n/taRM
	g/A4T3SM7OmsyusoWUKkJ66ZXXENk2jxwMLWseQJGyucMdxg==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 444swy8uwb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:15:01 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50D9F0Vs021600
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 09:15:00 GMT
Received: from cse-cd01-lnx.ap.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 13 Jan 2025 01:14:57 -0800
From: Yongxing Mou <quic_yongmou@quicinc.com>
Date: Mon, 13 Jan 2025 17:06:20 +0800
Subject: [PATCH] dt-bindings: phy: Add eDP PHY compatible for QCS8300
MIME-Version: 1.0
Message-ID: <20250113-dpphy_qcs9300-v1-1-842798ceee78@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAJLXhGcC/yWMywqDMBBFf0Vm3cDkJdFfKVI0M6lZ+EpsaRH/v
 aEu7uJcOOeAzClyhrY6IPE75rjMBeStAj/285NFpMKgUFmUUgta1/H72HxuNKIgWZPCshB6KM6
 aOMTPv3fvLk68vUp2v04Y+szCL9MU97ZSg3POymCdJu0NGxw8GfSBZVNbZSR7pRoi6M7zB4y0s
 2erAAAA
X-Change-ID: 20250113-dpphy_qcs9300-d16d206d2ffa
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou
	<quic_yongmou@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736759696; l=1814;
 i=quic_yongmou@quicinc.com; s=20241121; h=from:subject:message-id;
 bh=PdKl8EpuUJEbPNOs9S6LsY7d2BQsIKVN0a3/wVZvbBI=;
 b=kMKWKP5OqtjkDK816oF5TKCrZ291uUbFYwUx4/K4auwPHPXzoMdDug0WCBVB2/Z/5/0orcrab
 tdJn8vNIDFgDiTVTfFkloCfFZsu3NThF0snMPSXz4R6J57wLdlwPsSj
X-Developer-Key: i=quic_yongmou@quicinc.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: mMEKGX7aUkDD54Jj60lyHlXQu0UYzHpy
X-Proofpoint-ORIG-GUID: mMEKGX7aUkDD54Jj60lyHlXQu0UYzHpy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxscore=0 bulkscore=0 mlxlogscore=985 impostorscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501130078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_011504_871783_EC1C8A9B 
X-CRM114-Status: UNSURE (   9.23  )
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

Add compatible string for the supported eDP PHY on QCS8300 platform.
QCS8300 have the same eDP PHY with SA8775P.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
---
This patch is separated from the QCS8300 Display enablement patch
series, following Dmitry's suggestion. And it has got review-by from
Krzysztof, the original link as bellow:
https://lore.kernel.org/r/20241226-mdssdt_qcs8300-v2-4-acba0db533ce@quicinc.com
---
 .../devicetree/bindings/phy/qcom,edp-phy.yaml         | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index 293fb6a9b1c330438bceba15226c91e392c840fb..eb97181cbb9579893b4ee26a39c3559ad87b2fba 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -16,13 +16,18 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-edp-phy
-      - qcom,sc7280-edp-phy
-      - qcom,sc8180x-edp-phy
-      - qcom,sc8280xp-dp-phy
-      - qcom,sc8280xp-edp-phy
-      - qcom,x1e80100-dp-phy
+    oneOf:
+      - enum:
+          - qcom,sa8775p-edp-phy
+          - qcom,sc7280-edp-phy
+          - qcom,sc8180x-edp-phy
+          - qcom,sc8280xp-dp-phy
+          - qcom,sc8280xp-edp-phy
+          - qcom,x1e80100-dp-phy
+      - items:
+          - enum:
+              - qcom,qcs8300-edp-phy
+          - const: qcom,sa8775p-edp-phy
 
   reg:
     items:

---
base-commit: 2b88851f583d3c4e40bcd40cfe1965241ec229dd
change-id: 20250113-dpphy_qcs9300-d16d206d2ffa

Best regards,
-- 
Yongxing Mou <quic_yongmou@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
