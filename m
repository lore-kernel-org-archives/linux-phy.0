Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 970D7CD5BA7
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1GNEvsutk7kBgsHOdXSGGnnpS3cSDv1uNibfF0j8vk=; b=sJbxQE+7YiWizu
	/RWwBZq2ULkrQghJjxav1nvYVHC9746DVoFzqNPSEXZIo+SLi0RQL9eeukNa438Ih55o/oEXZ5y8x
	21dvUw2KP5jzsIMKGqc93GKG0u8WiqSOfM6JqYh/Bogj63oUJygPP32V/KWVkWmh+eO/myKGLu2SY
	oe6DA1lpXixBinXIaDnxaaPDOINKUMzqrluGp+g1ce7cJZBcsnfaKGQoRrfs33zKsCpVrfJvA+IXq
	Um1r80mC4rsJ00DEt6L3aN3MGqeZo/A11mhJmPo/uXV2Nl00fNqTfE9kfOLSppGxo7CwVc4qBc2vQ
	CSuFXNkAHYF4z0gQCF8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIf-00000000EN2-118f;
	Tue, 19 May 2026 05:47:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIa-00000000EJE-2p3A
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:26 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J1BTgW2975785
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B0O0IEIIuy7vAzmzRp9+03b/boaEZMZFLkZCHHXQ2fg=; b=ZTap0Nj57umfjt2B
	kcob8186W3p4l6tgUTyXbxQGnVr34MuzyqqTfIKD38pGP2X+xTHT4UCI7mOQixoJ
	eSZqQN3wUyeHgigsq/bxGj1L0m/EaHrTghaop4drNtpOjX3jhu3vDrO6T+enSCz5
	Szj6ad0TYWGKKi/ZW6zmcGbnqTFEDo9bNU43fcIoxHhivQQhmZdOjncvOJFnxkhS
	Ytwl/55LGF/x87R1zWxLRUbCJ6JjvDglBpam8Ef3DPyjp3AqDlgKg9ZuVUCWXIbr
	TM//Q4bIsU6MLhxkXQMaqIENnreaQqYarGx7Xy3L6h26v6so2rBPHa30PktRdN4b
	SAsEZA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e84v4asjt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:23 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2f525565b33so4043376eec.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169643; x=1779774443; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B0O0IEIIuy7vAzmzRp9+03b/boaEZMZFLkZCHHXQ2fg=;
        b=TIKeOF85p6Cxvd/yHuh8ty+LdAAVyP+yXgaaSvSZAx6ZuzHCLf/Xw6t3qr82CkS0EP
         4NpqUypzOryrp9BsUsrxKCyo5EIlNU1np8G3lbQXoz9VPWgqP/70W9TRJC4l7l54XZka
         afAtTzWx8XxKEHcHZ1VtwfdqP7zobaZ1RO0jK826TMD8IpQ1z78Iyt5ExGdtZNT37aFZ
         zAIoAP6eDfEUXuLRcvYebTAuVWU26Q5PWc4ZAcKWi/9S2FIgqzb6wgqrS4F0ouSNAqEh
         xpXovTRDD6htJ5g3FhD7ob75bAauuAjLCByCk9kXjCbwZNWQw2ZsVRpO1Dy+aVbIlkyj
         H48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169643; x=1779774443;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B0O0IEIIuy7vAzmzRp9+03b/boaEZMZFLkZCHHXQ2fg=;
        b=lWJPNhQbr5O7/ijejn4cxMehIpxqAMGVg4NFRxkwYycMZZycKZYMUb9/wME/NaFhL9
         3zcorlBt0qgg/dh7ef/igyGRfAyjHJ1J5WI5L7AzjcqPOeWb4Joy03265dJYUmVDCTW3
         wbR0I5BlWKiV/kuB59L4k3ZI5Y8u1i0M1FjG8dIvFuPUJXKJxuP/dWxPMixpZIsGsqvy
         qj6YIkAt8D3Wy4mN2Le9Q1JBVhWsB1n2j2aWbhz9pWPfSMfr2JwKgHhdOYUYmqq5RSbl
         snddTzOTSK39uDMeP/Clvg5Q3W0HjHWKd3tN2S8316T4ONZOihrI/4lfReB6s0IvdXo6
         sIgg==
X-Forwarded-Encrypted: i=1; AFNElJ8WMqSfjIhJKLvP7oliTUjqfejDT+X9D/qWAMVtP99GSaiq2qg4UevxdxCpZdopy7F7c+G3/s01Zgw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj9Y9nlMyzQtFifZBiORH8zYB07R+4h9XBtt5SALOEtPSpWfko
	6kpBkBlxU2sNf7FdmepfN2OZRIY1dcgaCUCUAVgTmBki+BE4e8lXBkmMbJzPE39vWr2XnRKHS18
	tPbtfH1dQtF1mo7wFcLiF6Ry/SzSY9qBZOK3vzUQugKXI7IBWqnKDZ6aTPMe1AWdYtIBm
X-Gm-Gg: Acq92OG+dLpbcL+01VEpm6tGHIbDjSISg9uJY0WbM9wAO3qi+zBHlCXvLvqw1szRk8c
	WmC/3iIOk1tsgQqhV31nZfMUD++HjEJL+ZBD8In6s2pvjNNg41+t9dvIvDuQfPKl01whOL0bd59
	H96t69cPPmiSJldFhDpxq2f/CcF6NjquqbmD06tLuVIJ7by+O1vgeMkzDb1rBnJtBoubUNWTG8E
	MCv125IKjmG4W5dXDKuvNYtB71SjfbG7qnw6GnlVH2Yg3N6Db7/fNEzhJ4geRIq1xY5f9GixPZd
	PXj6h9ckXN1VtlBAe7TYAbRlOD6V6n9DQa8Bpmbx6DgCxaJo5k56FlBn0iQVr34Ysu9odLowqyZ
	m5nxSlt+xvDEXRKAYP9hv4fgsS4Wo86fAZ7hN2J+sknTtvd8Mc7EGc39zEV9bsGgLr9zR
X-Received: by 2002:a05:7300:8b95:b0:2e0:1f09:d924 with SMTP id 5a478bee46e88-3039813cab5mr8494402eec.5.1779169642593;
        Mon, 18 May 2026 22:47:22 -0700 (PDT)
X-Received: by 2002:a05:7300:8b95:b0:2e0:1f09:d924 with SMTP id 5a478bee46e88-3039813cab5mr8494379eec.5.1779169641875;
        Mon, 18 May 2026 22:47:21 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:21 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:12 -0700
Subject: [PATCH RFC v4 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Add glymur-qmp-gen5x8-pcie-phy compatible
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-1-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=6963;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=/GzJSMoS9msbAtJPMhiojx/3pCxgRir7RfY8D/ogF4k=;
 b=KgruVv6cFJ5PFUCqlCf6ohCZdOolIp7KX7leRvFDn+Z3pnbdwhuShekuUrmk8p48yUcIBrD/Z
 NUUzCxoL1fZB1aKAxH/vkl+NJ4PHcd3fVDuFb7xeQpt+Rt7uohKQgcU
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=VJPtWdPX c=1 sm=1 tr=0 ts=6a0bf96b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=3VQrzie0oMwTYjLhUJMA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: -eUTjXVfcuh0Q_8BvuCrenDEpWdHCaQK
X-Proofpoint-GUID: -eUTjXVfcuh0Q_8BvuCrenDEpWdHCaQK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfXyR+ImSjg6pga
 bNVDQcuKFKJhhhDqiwAVdczNBqobu8igCA7ZVYJwlaCflbpwhjbnyeusn1VDPib+vuAXjlbFjvF
 ZtPDT5/QxIAXHnlr24y7d0zg8Oik4ISC0INic4JVPnvjB5aonwL0S9HJf99R2xHzTQ9rw8tN6hK
 JSxPjftWFWkDAagZV1jqZjM5aAG7xV154KiZrOs2KB/qmN7Xh6ZP/92qx7MNHMyP12/ZTGEdJ6W
 jGed2xp6TE6aQz7pZy2AE93CYL2556AgN+hJO+mLCtdSf4UGnwObAG4Ejbq1legDMjN5KYE9Sl3
 o/T9qwOpEHd1LY5RyHm9rm7LUd2PKYGX6TqVAyWPugkyCXxNLZSV99Z9V7NZcDaQLrAg8LfOWNj
 nd7eHLOjKX7J9dr+1iDBmCjj9oAWIRvZ8q6BV93JPPLgAL1IYGX8KcwLr+TBw0WIWNcrYLcH6GX
 H39Ytke7iSPEjTKmKUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 bulkscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224724_724368_E3DB7D23 
X-CRM114-Status: GOOD (  13.86  )
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

The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
PCIe3a/PCIe3b controllers. This block supports two link modes:

1. x4+x4: two 4-lane PHY instances are exposed
2. x8: one 8-lane PHY instance is exposed

Add qcom,glymur-qmp-gen5x8-pcie-phy as a multi-mode PHY compatible and
document the new link-mode property, which selects the active link mode
via a TCSR syscon register.

Document the required clocks, resets, and power-domains for both PHY
instances active in x8 mode. Use #phy-cells = <1> for this compatible,
where the cell value is the PHY index within the active link mode.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 140 ++++++++++++++++++---
 1 file changed, 126 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 3a35120a77ec..5877e40244ba 100644
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
@@ -58,7 +59,7 @@ properties:
 
   clocks:
     minItems: 5
-    maxItems: 6
+    maxItems: 10
 
   clock-names:
     minItems: 5
@@ -68,20 +69,29 @@ properties:
       - const: ref
       - enum: [rchng, refgen]
       - const: pipe
-      - const: pipediv2
+      - enum: [pipediv2, phy_b_aux]
+      - const: cfg_ahb_b
+      - const: rchng_b
+      - const: pipe_b
+      - const: pipediv2_b
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: PCIe PHY power domain.
+      - description: Additional PCIe PHY power domain (if present).
 
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
 
@@ -98,13 +108,29 @@ properties:
           - description: offset of PCIe 4-lane configuration register
           - description: offset of configuration bit for this PHY
 
+  qcom,link-mode:
+    description:
+      Configures the link mode of the PCIe PHY. Some PHYs support multiple
+      link modes, such as a single x8 link or two independent x4 links. The
+      link mode selection is performed by writing to a register in the TCSR
+      syscon, specified as a phandle to the syscon, the register offset, and
+      the link mode value.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle of TCSR syscon
+          - description: offset of link mode register
+          - description: link mode value
+
   "#clock-cells": true
 
   clock-output-names:
-    maxItems: 1
+    minItems: 1
+    items:
+      - description: Name of the first pipe clock output.
+      - description: Name of the second pipe clock output (if present).
 
-  "#phy-cells":
-    const: 0
+  "#phy-cells": true
 
 required:
   - compatible
@@ -130,19 +156,40 @@ allOf:
               - qcom,sc8280xp-qmp-gen3x4-pcie-phy
               - qcom,x1e80100-qmp-gen4x4-pcie-phy
               - qcom,x1p42100-qmp-gen4x4-pcie-phy
+              - qcom,glymur-qmp-gen5x8-pcie-phy
     then:
       properties:
         reg:
           items:
             - description: port a
             - description: port b
-      required:
-        - qcom,4ln-config-sel
     else:
       properties:
         reg:
           maxItems: 1
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
+              - qcom,x1e80100-qmp-gen4x4-pcie-phy
+              - qcom,x1p42100-qmp-gen4x4-pcie-phy
+    then:
+      required:
+        - qcom,4ln-config-sel
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen5x8-pcie-phy
+    then:
+      required:
+        - qcom,link-mode
+
   - if:
       properties:
         compatible:
@@ -198,8 +245,40 @@ allOf:
       properties:
         clocks:
           minItems: 6
+          maxItems: 6
         clock-names:
           minItems: 6
+          maxItems: 6
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen5x8-pcie-phy
+    then:
+      properties:
+        clocks:
+          minItems: 10
+          maxItems: 10
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: rchng
+            - const: pipe
+            - const: phy_b_aux
+            - const: cfg_ahb_b
+            - const: rchng_b
+            - const: pipe_b
+            - const: pipediv2_b
+        power-domains:
+          minItems: 2
+    else:
+      properties:
+        power-domains:
+          maxItems: 1
 
   - if:
       properties:
@@ -223,11 +302,24 @@ allOf:
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
@@ -237,6 +329,7 @@ allOf:
               - qcom,sm8450-qmp-gen4x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,glymur-qmp-gen5x8-pcie-phy
     then:
       properties:
         "#clock-cells":
@@ -246,6 +339,25 @@ allOf:
         "#clock-cells":
           const: 0
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-gen5x8-pcie-phy
+    then:
+      properties:
+        clock-output-names:
+          minItems: 2
+        "#phy-cells":
+          const: 1
+    else:
+      properties:
+        clock-output-names:
+          maxItems: 1
+        "#phy-cells":
+          const: 0
+
 examples:
   - |
     #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
