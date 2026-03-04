Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A80EB7EA0
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 08:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQq5/80bgyP1kp3lPWsfqds1LeYUJFRqgpRZPJAgOxc=; b=cUBGwRkKJNDfFY
	RNEJX6BpddllUXQWs8P59Ic9Wtl/+44gyyeno2SxUnVrLRHFt2kS3g6Us+cZZBNHHxfF9MGP41XP8
	VTKI0hXOe9g1iKcxqIG6MvGCWrwjS6q/2eYD91Ggn2za1E/brS1afm0wQ7Q1fa7SoKNhUKfpvdcwL
	r8QXcRwrMTUNkS0wg0G59IVx4dbgsLYS7naiYrcx5giKrD+WekjvULHOrn+Bga5lcKb2uzLSYrkHK
	wH0bpN52ooRjTvsyIINAswGVVmsDDMhiGPSNngLGPBmPVN1TD8FmFk8aNYU/gC7FjDK4dkSNF/nWa
	mzryre0GbMTY0lWbMdjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUa-0000000Gjam-0NRa;
	Wed, 04 Mar 2026 08:22:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUX-0000000GjZg-2ikr
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 08:22:02 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SVZo1072461
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 08:22:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=; b=UrTFhOkQGwc7B7A8
	rz6cCieTGQtkwoi5U5DUOGeYak7oBh2+hlJaOYrhjf97CKFTfY26zYEMJNpAIZFM
	Sqkjstvk3CHfm3QXv/tA8N5fLmJMHk0MOvVyHWcgI29g4OVmLY2Cs+X3Yr5KNTHp
	yEPs12Fw5gGoTD8mXS2R4pPnRMmQF+B2wPdCNNHP2gw1A9o1JT9iZWqjt+UmbKDK
	mhwxbF/pRS09E/0dCTFhP7b9/C2tcCdUxFJsh+Iz5XeZTqcdoR1ZGhrIYHbgg659
	0+2tIgjefqaLTnr9DGrWoL1MNfHYDxfSA+F0Z3ZHH4gzN1cXAvdrvaikpXxrBpc9
	K1eHhw==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpcxfguur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 08:22:00 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d4c1b2651fso34236775a34.3
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 00:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612519; x=1773217319; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=;
        b=RXCFIDoGyvVBa1muU+QPGgAuOSPT4DBMNoJyk1yoGc9Miityv4SXi0TPIAK30TwE5Z
         9hV+PDQE4AQtS2vghF591j7S/BbUYLocGKNdWFQikkbhks7MoITyERncVcjg9/U6h2yb
         oczDOCHdtaiXO293srp6WZdImFZOoGe29eZ/KWG4n7o+WlUB2HCw7NeoCbSrAtztZ4xq
         8Iq1GAQpyTzIlBy/Tu16qM1WvBI6FvQKyhHSYHdlmkrbpulx3QMOVsJTreaMDSLza+oX
         fiNB69zVZU+Nj3cRUgweteBx9t/DH5VmDhOMt5fZqpYlRmZpkCrJm/zWCsYYhS4CBhr/
         QzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612519; x=1773217319;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+feDmpxyjcw2Gpw8JLF/SSE3a9sEyKxeVIjgMxiPBLY=;
        b=vB2h/z3FR2hdSPlPn5SRvM9r+QrIpipg6kxSB/JGIE3WiQcXs5dyIPhRL/5m6LLxXm
         jlG/4r0gpFl5ISibAQEGluJ3KmkAaLYK/OWIR1pzv9TcxLsKr2z6qC01HreWEy3HkLKR
         +Os7nYlL7jqgYAhbU3N4YRcWzR3trJW2BSrnwxO253SpDX5Rumcnd6GXupGoq2Vgn99/
         BCabWfVvaovRdBustkYL+X3rQ0bMjsiwJGgBbJxfI+M0T6kCZdtHXcoJ5n0n3IMLoOjD
         X3jRMAy0k0YE7NDFGm+wCLSIuh0V8W4i/9TvnLQK1D16DPNH9WF8HrhODtGim9Rt7FVc
         +6OQ==
X-Forwarded-Encrypted: i=1; AJvYcCVRRqszoLhPW47/PQgxXsg9BK2gq+kEFTVdzabcy+/lSZmbndF1+Kc5aJHluHtJB8xaxlvamu2XTx4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0ZdWVcAchS0ffQea9+TwVTx5soKMAYTv2a1oThCBV0BiMbuP5
	0+DNNO28RxnS3WQMbNRLOmZH4yGKhBv4OamgVJjNFxBVeQ8OYez5Z5JQDzsS4WI/T4mdNGguQaM
	BRD2lQ3q0h8XOWYZ5DY+6a0Xe9Dcj09QIZQJoNgzyvg+qdbwAmKpWD5uN51uO2aPFxU/w
X-Gm-Gg: ATEYQzxVLblCek0gXNLbzRrR6T4NugBmP79/yNEFyjTEzqRLQI0ey5XcxQ8KGMlERec
	mn15OctFzCsezJD534AoBLsLGk21qY5s4x2g+Sqcllewz700n/L7RzUKpJraD+Pt8kURDbFB5fk
	M7YfL6Kkj/hrqpWFiG6uWNnsXTHj6JKIpL3tk2gTt9zwJDmdZFtzR56vghG/EGLX5TZh76rxcIk
	TLcuuQYvR1zSdnj0yIEUDEy56e1ukU3JIJJAIxeNjrkyhbsBb5h2Pwa6YZxhhl35JtFUnZDPolL
	C+px2F8nMoceH/ANNIguYorz4JQK1iyf1YyOPHp9O/eKIeWHv6Rv6/ibTBcKHAfT0qgeufxCN1x
	N69syDZNKFIDnVzoGD68gPJ9WljTov8JS85nbCj/5z2okAGHaWKCT0VscnSmKLX1ZrhVc
X-Received: by 2002:a05:6820:1905:b0:679:a4fe:f024 with SMTP id 006d021491bc7-67b1775f4demr849072eaf.46.1772612519448;
        Wed, 04 Mar 2026 00:21:59 -0800 (PST)
X-Received: by 2002:a05:6820:1905:b0:679:a4fe:f024 with SMTP id 006d021491bc7-67b1775f4demr849053eaf.46.1772612519072;
        Wed, 04 Mar 2026 00:21:59 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:21:58 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:55 -0800
Subject: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
MIME-Version: 1.0
Message-Id: <20260304-glymur_gen5x8_phy-v1-1-849e9a72e125@oss.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=3719;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=0cxDH4J+ogpnd/2Sh8T/+lD9ulgjspAUfkAYG3Mt/CY=;
 b=u//xzciC0iOy71tQzdkre/5ZzPbinP8Hp0mSQdZG6U7/pN91pAkszc0NfvrWioUvLrrK2HRok
 5wHzs+4x0vhCOT40wazLhj02LqmEoGsg7xZ3H+EjViGQw7WhGpd3YyD
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: LMHJmmvOaYiqigcQkD2dDTxAQuqdkBkT
X-Authority-Analysis: v=2.4 cv=R4gO2NRX c=1 sm=1 tr=0 ts=69a7eba8 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=RFdnLZz7-LqoW1cxMWEA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX8LLN0FNnQrI4
 i25wJtCdmKzP3rAyEqhFmlpNvoyB8vYlqZIvl+rCQHYtCU7NfeuHiBxUMC8pKv5yssHBKHiA+pJ
 D+P/IokpSit7p08YNsNJj2E4o7PtiYqiOz4ZoNqMb0ZFOTdsdBCtV5m4V8KZS1BaGlGTVTyTn6J
 QhMulIjGs32EMrVucrTE9+szL4LHzL/Rw2iSMQPf/Cj47jPTAvC1bxjFfp/FuDp25HfaxdfhUSp
 ++9NSlOw15+prDHauGRYaVIOkVrazPS8PZg1kGxqqLPHWvTl9Uv25XkNWnv16xGlzlVJFUQg1/E
 wZM/JLjHj0N6VAIrTjV1yJoe+wyTRQXXD3fNq7sXKjE5BRDYmBuAtI2yJjCZCB3ZnA3PiaJgAoe
 v2PZVQXAyIzY4V/HElCM6P9sxIF8kT+fL/FI6ECztwpXtxhgGVag0t0R0TJ4CtQrqkGNJaztqbX
 KEYQ2NRO6Ky7VaokZEw==
X-Proofpoint-GUID: LMHJmmvOaYiqigcQkD2dDTxAQuqdkBkT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 clxscore=1015 phishscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_002201_699669_6EB5070F 
X-CRM114-Status: GOOD (  12.62  )
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

The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:

1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
   4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
   follower to form a single 8-lane PCIe Gen5 interface

In bifurcation mode, the hardware design requires controlling additional
resources beyond the standard pcie3a PHY configuration:

- pcie3b's aux_clk (phy_b_aux)
- pcie3b's phy_gdsc power domain
- pcie3b's bcr/nocsr reset

Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
8-lane bifurcation configuration.

The phy_b_aux clock is used as the 6th clock instead of pipediv2,
requiring the clock-names enum to be extended to support both
[phy_b_aux, pipediv2] options at index 5. This follows the existing
pattern used for [rchng, refgen] clocks at index 3.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 45 ++++++++++++++++++----
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..25717bc9be98824e38f3c27c3299fbd1f2e7e299 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -18,6 +18,7 @@ properties:
     enum:
       - qcom,glymur-qmp-gen4x2-pcie-phy
       - qcom,glymur-qmp-gen5x4-pcie-phy
+      - qcom,glymur-qmp-gen5x8-pcie-phy
       - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
@@ -68,20 +69,23 @@ properties:
       - const: ref
       - enum: [rchng, refgen]
       - const: pipe
-      - const: pipediv2
+      - enum: [phy_b_aux, pipediv2]
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   resets:
     minItems: 1
-    maxItems: 2
+    maxItems: 4
 
   reset-names:
     minItems: 1
     items:
       - const: phy
       - const: phy_nocsr
+      - const: phy_b
+      - const: phy_b_nocsr
 
   vdda-phy-supply: true
 
@@ -183,6 +187,7 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,glymur-qmp-gen5x8-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -201,6 +206,17 @@ allOf:
         clock-names:
           minItems: 6
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen5x8-pcie-phy
+    then:
+      properties:
+        power-domains:
+          minItems: 2
+
   - if:
       properties:
         compatible:
@@ -223,11 +239,24 @@ allOf:
         reset-names:
           minItems: 2
     else:
-      properties:
-        resets:
-          maxItems: 1
-        reset-names:
-          maxItems: 1
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,glymur-qmp-gen5x8-pcie-phy
+      then:
+        properties:
+          resets:
+            minItems: 4
+          reset-names:
+            minItems: 4
+      else:
+        properties:
+          resets:
+            maxItems: 1
+          reset-names:
+            maxItems: 1
 
   - if:
       properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
