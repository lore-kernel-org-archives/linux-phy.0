Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF0C2EBFD03
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cb9ZrTQYNz0QGf5wM/z/YpMF7ne78AjhHHk1THB6To=; b=TPX9gwxnUwLNhV
	IM5IFNtMpU0MVC77pY3m9lBZR0eJGMySHmlBSAu0C1ey29YKTodyHqERci3oXgotOZidE6D6zGqJs
	PGm58O68SF7BOoJpvivdidg7eW/m7XIh/rvJYvjChpfpzKMUHDnyfufcPElpJvnDB5bvBM7vSbvN/
	pC/7TjRGb7GfsUbJC2PJI0noINLT8JFbucin2BhDFU3AXIOGHIXcpBxiALQoTcyBSZwtw8HwWrzto
	eMYBFsxU1dfkWnthtuQqCZbOqG78+RZg3B2hfiwc6ovJzJZSbP1NU3mA25mUqghpHeleJ82Ze8sRA
	aJ/3+AcRHExSJ7Dc3cNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkb-0000000F4n8-2RJY;
	Mon, 13 Apr 2026 06:26:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkY-0000000F4kE-0F2y
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 06:26:24 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63CMKpYQ1529060
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T9AXyPY/o/ozfLjxbr26E/dTeHhi5BgDJRfDxIqtSHo=; b=bKTbSHwolqdvs+QB
	A1cE4zZOkumIOmhOUXJM8kZaGHsKgY68iu65CqxzoeKZ9eDizAi8hyFexSj0QFmd
	a6/KO8W7E25TXRq7UOMKTPXddTS2twp0CyVLR+JZAEOV+F8vn1x7OvJjIZab50yD
	6sSdPYhH4clowS5NRTdTrNTQhobvzhkXpkjn8oyZv7RLxYK+VcozvCTKapk6l+Ry
	mTIwdZHj9guDC7wfZfXK4Qa7mcWXXKqgTqFgmYmVrYwB7NVewv37vhHOw2FqPgJr
	wnS6GSssisgjGkwwNiCGd2azN/4NtFFrb3XHenfLswdeYyTUjIHe1UIPkBIT0mrc
	eq+UIQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dff2bc0xu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:20 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ba9a744f7dso5116002eec.0
        for <linux-phy@lists.infradead.org>; Sun, 12 Apr 2026 23:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776061580; x=1776666380; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T9AXyPY/o/ozfLjxbr26E/dTeHhi5BgDJRfDxIqtSHo=;
        b=AusNJsfwbdLi5KZbf7n9uHiPzj76PRYyUR98c8V4YAcADpVkQrcHCKu/nYALaW//sg
         N0tmjoEVeeZYiLKE3NYW0MmeXgdFKTpmZH8Wnl9pxJGrreGKyRCnYGquwQQk75p4SwJT
         h+GAWcwPhZZC3CjHua1byRp+PJciAPpBnBRxrs17WOm/k7Gi28Yh1Oh4ar2r3meS07Ql
         aptN4ueWoncZLRVKByMAHsdTJ4qAF7UiBdItbT5m6Ymlz9QPWH+zQR62yDaFVqic52xi
         GTBkman3z3M/fAoJOcSBLO+/qpa0+IXPRhbc5OyYWMpeY9Xj8zMiLZcA1/S31+XXwMHA
         XKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776061580; x=1776666380;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T9AXyPY/o/ozfLjxbr26E/dTeHhi5BgDJRfDxIqtSHo=;
        b=A77cLCRDTi6E4mYfdmhWCBPotT9Y6B/8+AuIr4HdsI66FBN5vNXwGFcTeRzuluornj
         TeHgbO/TAEZptMkxmwSoDPWOKg2Lnci1hilUmhUkTlQcoJ948BE/lYJqFfLpLW87zwB3
         S7bDcaw3ImpPM95F7/FNljhyIUWPyqSj1eEwSDVh21BzFph8kt4CNWq911doh/2P+KvJ
         yUjrZz17uhYOuL0qbGLUzEtus3RpRCHSS4i25zVgFeOBMwtUM/dgO0Fx31cPQyO+z+YB
         kSqOU/y4zWD/226QTm99sEgRPACj0Bh69FOND9x/WixY5GZ2dVjdeVbhaGtVARf544A3
         ONGQ==
X-Forwarded-Encrypted: i=1; AFNElJ8zop/LeJsxtjYmRZz8w1sgA4yc3sRWkS2xxX+fXc50jFtoIV+mAhk1kwJB/uNqYVHpT0uAdeY9Qfw=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGEsaDRxBVJV4PoOCUef+ssWClfiid+MyNQQB141QTuP/Bgk2O
	iI/OgLA2O8TwcPz2DGcjKWKa8uRDFWMjf/QOSubxhCDi3gbBq3z+2BxtwCvCJoU/pRhS/gJ8Jz7
	moip51VH7VayIShTFHO98YxuvtuWRQmymNvu18UtJ/mYI5EmGDid6MOIXWhdCe95rJSjN
X-Gm-Gg: AeBDietrefZNGwtoAs/Zj5VQ/I1bKZ/dzOp6yYGKiJ7krxRsa94KzsOfybtxHH28NAM
	eZyL6vfkLrmqlmCzy9/WEzw5YC79XQDaMMafQncKkOVjJ/2vAp4cvCWWanz24Glx7A6FTZcULwf
	CZdHv9mB6o7xrRDbZXPosxY9AGyakq7Ece1Ml/ieZ9n0771FWg88pEYZqaJMEyKvNcCZKSOJ8jS
	l5ZJ9MLiEK5/ieSg1rM5r988fuh01HhlhGraRZ4WicWWDrKQc6L1TGkBfLicYSbDbNOl75fn+iV
	sqGMSEC0sryG9La+hXLIYc+tUQuQClfYYjOpxUGz9AmI4H2dzrT+iTOEVS+S+MfMVeY0XmqckbK
	PxEtqzbHTlcPjIYO0OWsx/kOcLM42PJCFjtvA3mkOZNA6d5BEvik8CmrIqN3ObuP/zhSu
X-Received: by 2002:a05:693c:2c96:b0:2cf:28e8:d784 with SMTP id 5a478bee46e88-2d58945c9b1mr6043572eec.19.1776061579820;
        Sun, 12 Apr 2026 23:26:19 -0700 (PDT)
X-Received: by 2002:a05:693c:2c96:b0:2cf:28e8:d784 with SMTP id 5a478bee46e88-2d58945c9b1mr6043560eec.19.1776061579289;
        Sun, 12 Apr 2026 23:26:19 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2d561cd3138sm15260935eec.14.2026.04.12.23.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 23:26:18 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 12 Apr 2026 23:25:56 -0700
Subject: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
MIME-Version: 1.0
Message-Id: <20260412-glymur_gen5x8_phy_0413-v3-1-affcebc16b8b@oss.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776061577; l=4060;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=37ntqnYxbt/tnoGEfVBaNuji1qCkMWieDHTWp7+jFXY=;
 b=h6UmKLAVvuw2ViAHtaZJ0N1KEw+2AZsfRlJ6f9XTCia8lln/Ov2M9UD4AHf7YtyeyzuSzL85A
 4Rk+pFMhoSpDN2CMzdPm2prdQeo1NHPSOE4T/BZqD8B57IpE6RgiG5w
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDA2MCBTYWx0ZWRfX5+pDHorzmnyM
 Eb6YmNsBNTNADjcI39kdCtSBSYZwk9CyIGEh5KIiKtNZ3CvUhpxLLqkAv4yWvFZxBWwWkUzdJz9
 oqIqLB/4F5K5z1T6swWcb6ifwfsCeD/T6eFi3GPM2nkvr7L8ZpOGC9ttfmuW6k16HjDUyOjKoG6
 tF4+cf0mmrz4aI+A5ca05kVTtnKR4JYvGS63IIARfThnH2xH4TV5NcyjDwyDzmHaxiWzkNZbUf5
 LEoMgYuSTdJfj+H11IvJBMPqPQ1MSzZQnqaBJly/lQRB8DG1DQCVP7JnApn9HqzXyIZOKk0gE7a
 4M/uCO8kpXsG6wnF+hpIeTylA7Egh5FydfmyMw7fvtGWLd4PZZR4jMoAKG/czutqS5MfWy8ogvm
 P+VpNgB4p8y1+dWwCRtXeGnJnc9xgFbwWZ3kHyG+ZRjHjViChLbDDiXcepXdYOkAiruRjPKXlsY
 vRs2OSzN2tpJbt+qnBw==
X-Proofpoint-GUID: ppF5zDNGqcM-TnBVBo6uyy-xyaFPY71I
X-Proofpoint-ORIG-GUID: ppF5zDNGqcM-TnBVBo6uyy-xyaFPY71I
X-Authority-Analysis: v=2.4 cv=W4gIkxWk c=1 sm=1 tr=0 ts=69dc8c8c cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=HOj_8Gw7N_1wnwFbGYcA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_02,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_232622_114019_8775472F 
X-CRM114-Status: GOOD (  12.53  )
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
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 53 ++++++++++++++++++----
 1 file changed, 45 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..14eba5d705b1956c1bb00cc8c95171ed6488299b 100644
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
@@ -68,20 +69,27 @@ properties:
       - const: ref
       - enum: [rchng, refgen]
       - const: pipe
-      - const: pipediv2
+      - enum: [phy_b_aux, pipediv2]
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: PCIe PHY power domain. For PHYs supporting
+          bifurcation mode, this is the leader PHY power domain.
+      - description: Additional PCIe PHY power domain for PHYs supporting
+          bifurcation mode, used by the follower PHY.
 
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
 
@@ -183,6 +191,7 @@ allOf:
             enum:
               - qcom,glymur-qmp-gen4x2-pcie-phy
               - qcom,glymur-qmp-gen5x4-pcie-phy
+              - qcom,glymur-qmp-gen5x8-pcie-phy
               - qcom,qcs8300-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
@@ -201,6 +210,21 @@ allOf:
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
+    else:
+      properties:
+        power-domains:
+          maxItems: 1
+
   - if:
       properties:
         compatible:
@@ -223,11 +247,24 @@ allOf:
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
