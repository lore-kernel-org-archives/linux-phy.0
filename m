Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F2D8C982C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 10:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZZKCKelkvC4qzxoc533IbV0M0xWo38521iTQYn68Was=; b=jK9XA39WHujqWi
	u19oaV9hD/pFW4TeQdp8VfF/ckIquQlpWHWJ3gA0FXxtTMtgd3WuzVvW2UTmN7fS+mRIpB9lSGRUB
	sF7ZFoXN5P5jlKGUcx/6bZ/HqVIY5dpeJSXHaU49WSIPdaMT/lVoBNCQSy/j6gVi6j5uReKKXW0P+
	giddr5Iocem5qS4yOqLz9VRGPe1GyFJqntX1TegrMsTzNlkN7I3SRsVBo7neLMHFKSNE1bsdCtX3u
	y+EXJEqUhGBe8Cw2lTn4dm+x+HykSjzJbPIGPKrCn/qYQCBNLckjvNIlpu1Ja4G+o8sHWRCR2c9Tf
	KcMgeNV9LXOO328x/m9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkr-00000008xS4-1O2Q;
	Wed, 16 Sep 2026 10:20:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6mkm-00000008xOx-0g7z
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 10:20:38 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68G9321c1587094;
	Wed, 16 Sep 2026 10:20:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Pt6P9PA8gET
	6YEOYiX9rRnfsnG9rapP6eeXbi6Ywjdg=; b=hZ6R0HwC+iQlEqAVNZsgcQ1r3WV
	INsBSit4ZmbqHNPigheranbF2969pMROEBI0ixdReqvGoeT5PVUdzZQ0te3ki6YF
	PtwLQzC01S7WRjmrUDHA2zYXk+uS69ZRp/H+dEQfo9pyf0SO57siLGj9vJPG43RM
	K21wSy9QUPIk9+xUXXM1hX4I59DMc5Pp278G5V22wbAvMRXrsAesztAUsypK+Gw/
	9Xu/zvujMINqEMSnZwOPkW2qtkByjHSIvNu+k0JEJimVR4nhLI1skIYObq8hVhhp
	k25x1CgOLelJIOh+JPkyMY0ZgTnP2DSI5BqGfBquYbgf4+fjkWwycCD/iUw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqagekr32-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:31 +0000 (GMT)
Received: from pps.filterd (aptaippmta02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.11/8.18.1.11) with ESMTP id 68GAKTCW1158171;
	Wed, 16 Sep 2026 10:20:29 GMT
Received: from cse-cd02-lnx.qualcomm.com (smtphost-taiwan.qualcomm.com [10.249.136.33])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 68GAKSEK1158148
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 16 Sep 2026 10:20:28 +0000 (GMT)
Received: by cse-cd02-lnx.qualcomm.com (Postfix, from userid 4438065)
	id 574DD48DC8; Wed, 16 Sep 2026 18:20:27 +0800 (CST)
From: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        peter.chen@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add vdda-refgen and refgen supply properties
Date: Wed, 16 Sep 2026 18:20:20 +0800
Message-ID: <20260916102023.2054761-2-ziyue.zhang@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
References: <20260916102023.2054761-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Reinject: loops=2 maxloops=12
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfXwmUAvsFOpDce
 wInLiBTc8LI9g3FPb3L2G6jqlrDH4Ux5WMtA+mrDPqMTzsKniFEVusjkZ/sCYUNnIDU1d6Xp6to
 tEcY4Gjhrtv6FqOYimgi318cTPgZgKg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDEzNSBTYWx0ZWRfX5M8YyGvKiQNJ
 ADbq8zqdLxbA0UFNUwc00OjFdBu7vTaa3ND6jeTc6pGpI7Pi4AccizMKTnre7jFh9fPEYgqiRXc
 ULSHTQOx1P4YMKvacB3wRXHkNkXF2qkSyersRNb6LDwJ5uhMPBfeF8vXfyj8Eg6QIuVl//a+Ohu
 DdoqT7t3KFvw2ZXjp9QCmmi9kZCSAB1lZAYNkiEwdVUEjLEQpFe92pnqwQIrkQs/IZ8W74zGLKA
 mWGc9yzZMF6JQdOg8n0cCYiM/3Zf5dDMhxtQLsjMjkWW8KMYGldWevirdkR3S4ZwUZoQZL0RSEs
 A4iKmSjJ07ygMqV89W2Mdkv/bph6UDJgfkC8+M3mCjowDTJ9mBW1mW/XXMtGLmosHqTdzmRZ6dJ
 lhAgOMrJrosp2EsXs7OpEq1UVkTosJ4ALk8IE4cLs/wdJsps9TV/hp96eGw9dpqXHd5u71AyT5J
 MMpdPesWIjW1LHB5PPA==
X-Proofpoint-GUID: WFoymBXDo8X0SkOIBH_VG7tGrF44STu9
X-Proofpoint-ORIG-GUID: WFoymBXDo8X0SkOIBH_VG7tGrF44STu9
X-Authority-Analysis: v=2.4 cv=PcZqFShd c=1 sm=1 tr=0 ts=6aaa6d6f cx=c_pps
 a=nuhDOHQX5FNHPW3J6Bj6AA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=VdqzKS8jKosA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8 a=AF2lrSSGt1_3PscgMUQA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-15_05,2026-09-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_032036_337754_376D54F4 
X-CRM114-Status: GOOD (  10.40  )
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

QCS8300 and SA8775p PCIe PHYs require dedicated vdda-refgen and refgen
LDO supplies for QREF to provide a stable reference clock. Without these
supplies, the PCIe PHYs cannot work properly. Mark them as required for
the affected compatibles even though it breaks ABI.

vdda-refgen-supply is required for all three QCS8300 and SA8775p PHY
compatibles. refgen-supply is required for QCS8300 only, as a workaround
for a hardware issue where QREF actually depends on refgen3 rather than
refgen2 as documented, so the PHY driver votes for refgen3 directly via
this supply.

Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b353b7bfb839..bd4c98784142 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -94,6 +94,11 @@ properties:
 
   vdda-qref-supply: true
 
+  vdda-refgen-supply: true
+
+  # Only required on platforms where the hardware voting doesn't work properly
+  refgen-supply: true
+
   qcom,4ln-config-sel:
     description: PCIe 4-lane configuration
     $ref: /schemas/types.yaml#/definitions/phandle-array
@@ -269,6 +274,28 @@ allOf:
         "#clock-cells":
           const: 0
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x2-pcie-phy
+              - qcom,sa8775p-qmp-gen4x4-pcie-phy
+    then:
+      required:
+        - vdda-refgen-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcs8300-qmp-gen4x2-pcie-phy
+    then:
+      required:
+        - refgen-supply
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
