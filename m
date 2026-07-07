Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FAC1C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 23:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZHXz/+BxyS5dzIVwfqnJlvXObm3/6oMLfH03Fj+FUQ=; b=QaioGY9zg+4AqX
	e0AmstqwfAy0RIu8EJRL2eQDRBbhXifqsR1tcm5/M+1uC5+mSl5UO2qFwmwroDC8bdPcF3t1Zc0XZ
	Rq/M52tCD6HdlZRoy81lepc2SNSpdhLhRxIIkXJdXQqxq/1VMFKAyxAgJsOMCCMbgAdWSS/a/bTWp
	kLHEvhwX/ypvByf/m8b0Ggacf1zhQWueDPZ1qj2OT1N9ZChyp2i5jh3AtJhl1/Q4P97IwcfhXvfYI
	iHJPQZDpg73O9P80eP6fRY+fnV6hdBiqHwZHVjhYtuZwicvyabugBlvRY6shbEjbGjAXRr6YdbsnV
	hnXPHBr39oMjYgG5xluw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whFNi-0000000G1Pc-03hi;
	Tue, 07 Jul 2026 23:39:14 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whFNe-0000000G1OV-24AY
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 23:39:12 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-493b1710405so211555e9.2
        for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 16:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1783467548; x=1784072348; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZ5vky0kSKG/2XGDPEUJ8CMT7pfEAaXySWSVtHtS8uk=;
        b=cegKOm+iaf5EKGqKEV1pPfkp1LKyMHs7gHpn/EKEXFqWZ2eeQAmW6BZcTLkSWsASAe
         83dPbnaaKOi681lL+d6VUCxkfSlrnQsD1Msi5qao1Ez54mSBPcEVQcRfsKaW60mz3RK8
         QaP50e61q/cD4jNTScCWLDlowKEMQamcFyWBq1OgCPxYvNy9EtXGKRDQrvX2Pm6LKnjH
         yX0o1Oak1rIssQzBDimdpSoFk5ds6b0mGY2MBvPZo5FU6TWsiqPb90MgfdAVaHqR1qlw
         plcDjUBZj/0GQLgPBfSqx2gpeYb1BD+SmiMzueUJzqhC9+/qazWt5ufcYwflg6UV2SwJ
         G6rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783467548; x=1784072348;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tZ5vky0kSKG/2XGDPEUJ8CMT7pfEAaXySWSVtHtS8uk=;
        b=ZMnz4N4pTJln6cwUXoCYqsuIqsgcH2Qf2MWYE/kE+agi1iWq+uuoY1SfcYSULa7EAC
         qHGhjgNM/pjAOeXC+/E31QMEsw7I8y2ZVbAO8cBVxjVOiVx2EUIWIlrDLmA3NtMkbj4J
         e9MA5JL9ZASYndyfo8eNuxX6m7KvfpaHxqbao7VthTB3A3bsGSDUl0MFG92cjJymo8ZO
         OTgWwIKOl1fN8LyXg2ZciopHXkhG4xaxtJavaTfpsg0caDbY568igMCHFr/PMLqbvZrL
         v4uVkvkHxkSx9kJmi/CeB2EN7uTGDjxuvbinxHEuS+h54YYJ8DUBNB9qbDAdFGYoUroe
         BsRQ==
X-Forwarded-Encrypted: i=1; AHgh+RpbFFdqrH68fF58Ab5lROk+2Csv6exHHzih1vDzslRFQ6l8l4mIhVv5QSyHFoi4biRijl3hw9GbU38=@lists.infradead.org
X-Gm-Message-State: AOJu0YwYn7fOq6C/m2yH40oECn4V+rkZi25bVZ1hDU+/NhcFodXHNe1x
	sYtEsVpn3/UJiHPUYuxQTzsukpGoB0WBucgVeIv2YQ7fNKtcqbxUoEyuyVznZozARJs/wgJy9/O
	OBHOFnSQ=
X-Gm-Gg: AfdE7cm0AwVl3efAZk6aHfdRI4DjpjCPnQVvp6hpAamzOjVAeBaBnqrrDgud+qjQ2YZ
	vf4v1N2C4MjzzfoZR+lis3dAzMlmgzit6b1m6rFtHGWiOfUU2SCk1qOONaeyh/RQ/ehA1iwIrnN
	1PXCF1BctmiF0q1gCPYHpy6/FLyx2OQETtznKXw687iLE41wzfGFa0/J27FlJVH6anUSFwZyFtc
	AL7BNirjY4xYg0ZX/AsRSrhdnVuvaVMKDWPZhdJ1IciSQbR6GX72fasSfjjTaBhYiFzmXypjfSM
	cc9ALVE4JO7XIxDQOCV5wUvwu+c0vpVsO3ItqB4EPtJTkSR0/66pSpyJ4bzgUAoO8C6DS/miWs5
	uaScJNnYywgCT99yfO8jjq4kGfQX4XMVCGGAQEPT9zNWc8JTKAKOyvbkPIZ3QOn4c/g8HDM1MgZ
	qAWCEo6SG/U6v6xSD0L6d+V94=
X-Received: by 2002:a05:600c:4e93:b0:490:e5c1:b8b9 with SMTP id 5b1f17b1804b1-493e67f7c3emr986055e9.0.1783467547855;
        Tue, 07 Jul 2026 16:39:07 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.92.41])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0fbd355sm82398655e9.13.2026.07.07.16.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2026 16:39:07 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Wed, 08 Jul 2026 00:39:02 +0100
Subject: [PATCH v9 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org>
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
In-Reply-To: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7167;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=Z3dSfJX0MhbZYUDQBTNiVmFR3GkvAfvU8jIVz/5tEaE=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqTY4Yi4SlrGsBQVG7CawSL3tFYZHaXSjQWFzgS
 9LKmbLW7TOJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCak2OGAAKCRAicTuzoY3I
 Ok0UD/0c/Pudn4Ji4Y7c7c8BYMfTNR/LJXpXhq7a7KtdQNv2ZnYBznA3qKjud7E4Q7FCF2F0bg7
 GxPDe6hY9a3cjN2zEmFa5zvEm/9e8TDhIj6XbY6yQ5OxgMmq38wnesclpSJaHr+YNn/+tHNuHnd
 IxIF+XXlSJ61ZXJAJyAp6RKUdC1dovxfuTClphgZ+En/1Tpx2/f4Z3btjRo7SFo5rlYBQ++bT9L
 e4De4NPnmXk2Jnp4uvkrOk8bLeP31xMgorv4kIQI9CkwCvX/9Q7zLTqQKqdI0P9ko+DDO88ibgT
 emxLQ6o91J4GcND5Pq4Xpgck0Iq7Tbr2sUPDgfARTUabGS7fPMS8h9ADtTCvxL/IYmr4Hk2zSXk
 MBQbo2CsnXsOfn5Whk6Jsn8PfI1jMv+Vhv0iNkn81LGjttSCvn0C2FT2hHBZayoS9bEgP6mzgTN
 fVgoRdVXKqG1psQzV+Krvx08USpkBikS/p9ZVV5nlLLYSnTrKIpqN5o4rLUjbc/NoFbVvJlNIIg
 V1eUXUvLHHj39Unw5j2bSBd7g9D3o/Qs+8+oBkNA45gFN+9St8Mvn0zJFGLMQM1jU/LoCKTLxpL
 aFq35GzZS57iEdJjiyfQwIvtPKnrDwlxjj2nB4d5mUtRWYO4XOCWtk7GzXPiYrrV5SQ63JFC3qQ
 Qq0AZL4RJReCMxQ==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_163910_589626_5D8A611F 
X-CRM114-Status: GOOD (  12.29  )
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

Add a base schema initially compatible with x1e80100 to describe MIPI CSI2
PHY devices.

The hardware can support both CPHY, DPHY and a special split-mode DPHY.

The schema here defines two ports with three endpoints:

port@0: Sensor input.
          endpoint@0: primary sensor
          endpoint@1: optional second sensor, implies DPHY split-mode

port@1: Controller output.

The CSIPHY devices have their own pinouts on the SoC as well as their own
individual voltage rails.

The need to model voltage rails on a per-PHY basis leads us to define
CSIPHY devices as individual nodes.

Two nice outcomes in terms of schema and DT arise from this change.

1. The ability to define on a per-PHY basis voltage rails.
2. The ability to require those voltage.

We have had a complete bodge upstream for this where a single set of
voltage rail for all CSIPHYs has been buried inside of CAMSS.

Much like the I2C bus which is dedicated to Camera sensors - the CCI bus in
CAMSS parlance, the CSIPHY devices should be individually modelled.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 202 +++++++++++++++++++++
 1 file changed, 202 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..a7fbf6804cd9e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,202 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SoC CSI2 PHY
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
+  "#phy-cells":
+    const: 1
+    description:
+      The single cell specifies the PHY operating mode.
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
+  vdda-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to a PHY.
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
+          single endpoint with one to four data lanes. DPHY split mode,
+          where two independent sensors share the same PHY, is described
+          by two endpoints; endpoint@0 with exactly two-data lanes and
+          endpoint@1 with exactly one data-lane.
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[0-9a-f]+)?$":
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+              remote-endpoint: true
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
+                      minItems: 2
+                      maxItems: 2
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      maxItems: 1
+              required:
+                - endpoint@0
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Output to the CAMSS CSID controller.
+        unevaluatedProperties: false
+
+        patternProperties:
+          "^endpoint(@[0-9a-f]+)?$":
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+            properties:
+              remote-endpoint: true
+            required:
+              - remote-endpoint
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - clocks
+  - clock-names
+  - interrupts
+  - operating-points-v2
+  - power-domains
+  - power-domain-names
+  - vdda-0p8-supply
+  - vdda-1p2-supply
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,x1e80100-camcc.h>
+    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+
+    phy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
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
+        vdda-0p8-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in: endpoint {
+                    data-lanes = <0 1 2 3>;
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
+    };
+
+    csiphy_opp_table: opp-table {
+        compatible = "operating-points-v2";
+
+        opp-300000000 {
+            opp-hz = /bits/ 64 <300000000>;
+            required-opps = <&rpmhpd_opp_low_svs_d1>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+    };

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
