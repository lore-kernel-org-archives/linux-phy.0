Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFDE9C982CC
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 23:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJZ6WY77ChYb3lD6H5cr3kjk3m7M3Vg5fA1QmQVU0Iw=; b=gBaXPQNU/rDxTq
	zQqlAXVRAg+V1VhweMq6NilAAerBG0hP1zKgIfwytxgPsDJ00VCb6JAKB25P/GpqkVD8W9OXsRjXJ
	VcMoKM6+JqWljm8s72Wq+J7H3egjBLp0Z/kYM1ilsr8a2bJBsyoor6x6m7XSb4VpD5qaE/rJKkmDm
	jeudygAZVcly3nNyfvdPAZ08XKuw6T3n19aijKcRt10EDpofewaX+hduV1jb0CcnnDLzQfvHWoEDO
	BdcpTbEYe1JGiys1MYBShJyKXruQ17Rc+u70MNRHptZj9SLJrd9gANKTC45Jsr6Tg+FRB04lFyk5V
	98wHJjjMYCG3tBkXPXtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6zWd-0000000AI8a-1lvH;
	Wed, 16 Sep 2026 23:58:51 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6zWZ-0000000AI7g-3UdX
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 23:58:49 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a985fba28bso355608a12.3
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 16:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789603126; x=1790207926; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bn3uG/uVsJMnyAD108hyNP5Ygd/yS4P0lC6Y1NoRuNE=;
        b=cSBR1goC9CH0HlsJpXNlszm14WmeGxFswZwSNEW7XI760k7ggx29li8+kHjS0ZgLeX
         6Kl6nMCl00gGbda1qusDQ89jTIeUO90xFb/RnyLvcEwyTfTMaT94B789VgiR3CznBE7q
         G+NDrIr/rbLu/LzWQK7MXNDQ0pXNfuO/0Sxpw/iVCxU12YF9Qx/33n5mbldd/jUR+oWi
         IzWmtLyQ5mQAZ6aHfF3ueMoqdvDGS051oev9G7hKKbBEWBvdw4Gt62k8RxBVH1IGJCft
         Bv8Iu0DqgW8sBb/Xg99fOF/7JQZvkwFc+MfwA5a1yq109lZRwNCbfRj5oN6wY3K688aB
         vs1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789603126; x=1790207926;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bn3uG/uVsJMnyAD108hyNP5Ygd/yS4P0lC6Y1NoRuNE=;
        b=wSj32hP5L7h8EvCMMBqM2KwWbLH/9Ww4WElveCYpZBytR0o2x37YXb36XI2oCOqV0K
         KvgdTWaYYWwdIGR1eHyHkS8ZZB8ZhhdP2tTrc9ikhYebogtQG/c+Tuui9PcfVbY9GP/V
         VLRAYDWz7ouL36mA9GHE5MG5Y4+n0NC0IA+d6wV0kg6uP7FEw2nsMLo2NNLiklsTyaH1
         4pRBzlowvQ5Zp37cGPWqpnuzEeldpdvYru7y2QDUTN/ehb9Tykjn47uliYnemTq2b0mY
         zmaVkYtfG/dSx+R95HaYCTQ6qamtxAk7NMhi4EOmBxZEtyGzo2RUioFPX/F0JMF+iac/
         UXzg==
X-Forwarded-Encrypted: i=1; AKwUvBwjzYUSiKO6tmc4d/gLEtl1XgJ/19zvL78gWM59PjEuHYpGQ6BbaTg6/+0vP8LkVR3KUEeEINCq7qY=@lists.infradead.org
X-Gm-Message-State: AFuF++kKOec1AGO6iD2dYW2RzP+UL0xCadPeFmTvaHfdDO0sLAemeRs8
	QjHulsCtHpAl/tX7pfOTlv7OuWiY70mg/MoBWG0et4IhV2RBj3G7V3fLJhug5ubNb14=
X-Gm-Gg: AYBFou2DS4Vv3AKh1C6ISmxoCxoE8cqGCNPxaIUcnYUt9Lq13CIOmVsXtV7XmMqU/4y
	5MfI2hdnIZVxPyPOQaZTrVxUyYbWZUqy/CMgTI4y0yP5rgJ14OZxpaVQuP/sMRX1cl6xgvmt/8W
	1UQ0I/TH1mYrUuQopBacKPSXaHZ6Rf8I/6IBvaPXO+etRFhm467enKbLbMwnBsMArBdx/6Doxl8
	p5RQ1cxbqRs+YgYaQ8yJBSAd6yFM9mObCmxy5NG0EduJGnhZsegbYQMfiYiRlYwBDZ9xG0F7wyZ
	HN4zcxAEy4hOt5PtXuBH1zsGdxQoznSYtrjnVONdc0SHoF+qtMWND6nytQWu9hVm4ij2AyRH3JV
	Eo0H8gDnCgPAXOoAGca+U3gvOlXpY1b5FWEvJ4mOJ9As9blC4PnA5oWxo5J3kNlw3yLSXZTxnhy
	LbPMnjV0AqX38VqNEZa/hdtwokWlKSL/1JJbf0R41cGaZ6lybjOhgICTPORcUPnqSb0lQQcsruN
	nxLGc4Mbq1J2G/gFriJKw==
X-Received: by 2002:a17:906:f59d:b0:c20:1c9d:8d4b with SMTP id a640c23a62f3a-c29e5290ca4mr314638666b.2.1789603125976;
        Wed, 16 Sep 2026 16:58:45 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.116.194])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de5e4ca9sm199450166b.42.2026.09.16.16.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 16:58:44 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 17 Sep 2026 00:58:38 +0100
Subject: [PATCH v18 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260917-x1e-csi2-phy-v18-1-6515b5255fa9@linaro.org>
References: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
In-Reply-To: <20260917-x1e-csi2-phy-v18-0-6515b5255fa9@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6795;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=NE7hWzCexAgX9RwKJyubG7DkTiJYxRaxYM7poqAcXcE=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqqy0vFS1MnzZpwePLohwHAiW3cf5SV2wcHcc3e
 hr67kuERd+JAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaqstLwAKCRAicTuzoY3I
 Ov7zEACH1xYRQCmmYcepPa/TrYIZ7UttIoSS/VVXvRvuUNVc4oxtOE8c3AFijwVw8NTX5bcxnKG
 /rzXATq2ZzuR5p0MhULgR4wqA43LFSAoriiYbawJRC08BtDhSehjWcbyt6tCMvJjkPyHZWkv6E7
 yUCjdGa86R6LtSnYy87MzNwh81fda4E6QM51KUgtUjoef+VGZlQPsF9MIFWumKmvjdnwaELBYDL
 eQz/Q81E3+SnOgEBatX/4z0AFC+m0mZS9kQ/7CtJOQtGdHx2Hx/vq9dXIWKo5PCyC41iGeYSrOq
 oBZpO3Wio2Vhbdg8KSMztpUorwT+Dd5fJF6/aUGp8XFIK47vpqP1S37Goph64Y27ZJl4C+xVY/r
 AF/Nt99lxWSykZmbpR7GrMj4ti9lKOlEHUUZa4/XliQCa9CJVbAvZH6WzbtyH+SXJk5xTg1S/6E
 7h057Kkz6nPZ3IyYvZGnI6hlcfKK6EJhb948vYuXMr6jpOGu2bh5OBuulhhDF7v9PIN3ww78N+p
 H3DwAMmuImrOfZ2uCFvK6hiAiHyQQix1Tu2QucVFJLdRYDACpFuYsrF1ZAkuuqATADaiFbCaHzD
 bEJ5TdkegC8QrwJoIuzDqLmWqwoFZ7R4CnZmFBbZ16h4z+8TEpgQM5JBzlcV4e4Eg6DT0VPoVCz
 vnhgN6pr+4k3AfQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_165847_936659_8C79BFA6 
X-CRM114-Status: GOOD (  12.59  )
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

Add a base schema for the MIPI CSI2 PHYs on Qualcomm SoCs. This PHY
supports both DPHY and CPHY operation. A special mode of DPHY operation -
called variously split-mode or combo-mode also allows for two sensors to be
connected to one PHY.

The schema supports both the D-PHY and C-PHY bus types.

Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 209 +++++++++++++++++++++
 1 file changed, 209 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..dc64af97da6c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,209 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm X1E80100 SoC CSI2 PHY
+
+maintainers:
+  - Bryan O'Donoghue <bod@kernel.org>
+
+description:
+  Qualcomm MIPI CSI2 C-PHY/D-PHY combination PHY. Connects MIPI CSI2 sensors
+  to Qualcomm's Camera CSI Decoder. The PHY supports both C-PHY and D-PHY
+  modes.
+
+properties:
+  compatible:
+    const: qcom,x1e80100-csi2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+      - const: ahb
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2: true
+
+  opp-table:
+    type: object
+
+  power-domains:
+    items:
+      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
+      - description: MMCX voltage rail
+      - description: MXC or MXA voltage rail
+
+  power-domain-names:
+    items:
+      - const: top
+      - const: mmcx
+      - const: mx
+
+  vdda-0p9-supply:
+    description: Phandle to a 0.9V regulator supply to a PHY.
+
+  vdda-1p2-supply:
+    description: Phandle to 1.2V regulator supply to a PHY.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Sensor input. Always present. A single sensor is described by a
+          single endpoint with one to four data lanes, numbered 1-4. The
+          clock lane is position 0.
+
+          DPHY split mode, where two independent sensors share the PHY, is
+          described by two endpoints. endpoint@0 uses data lanes 1 or 1-2,
+          clock lane position 0; endpoint@1 uses data lane 3, clock lane
+          position 4.
+
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[01])?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              bus-type:
+                enum:
+                  - 1 # MEDIA_BUS_TYPE_CSI2_CPHY
+                  - 4 # MEDIA_BUS_TYPE_CSI2_DPHY
+                default: 4
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                items:
+                  minimum: 1
+                  maximum: 4
+                description:
+                  Data lane positions following this endpoint's clock
+                  lane. Positions are a per-port logical numbering, not
+                  package pad or ball positions.
+
+            required:
+              - data-lanes
+              - remote-endpoint
+
+        allOf:
+          - if:
+              required:
+                - endpoint@1
+            then:
+              properties:
+                endpoint@0:
+                  properties:
+                    data-lanes:
+                      maxItems: 2
+                      items:
+                        maximum: 2
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      items:
+                        - const: 3
+              required:
+                - endpoint@0
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output to the CAMSS CSID controller.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - power-domain-names
+  - vdda-0p9-supply
+  - vdda-1p2-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/media/video-interfaces.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    phy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                 <&camcc CAM_CC_CORE_AHB_CLK>;
+        clock-names = "core",
+                      "timer",
+                      "ahb";
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>,
+                        <&rpmhpd RPMHPD_MMCX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "top",
+                             "mmcx",
+                             "mx";
+
+        vdda-0p9-supply = <&vreg_l2c_0p9>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in: endpoint {
+                    bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
+                    data-lanes = <1 2 3 4>;
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                csiphy0_out: endpoint {
+                    remote-endpoint = <&csid_in>;
+                };
+            };
+        };
+
+        csiphy_opp_table: opp-table {
+            compatible = "operating-points-v2";
+
+            opp-300000000 {
+                opp-hz = /bits/ 64 <300000000>;
+                required-opps = <&rpmhpd_opp_low_svs_d1>,
+                                <&rpmhpd_opp_low_svs_d1>;
+            };
+        };
+    };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
