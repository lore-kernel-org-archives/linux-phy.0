Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EA4C55165
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 12:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWXaxAANx1Kxl1a83JG8CDKYJpVc55Q0eQoXczp/nlU=; b=kbjVpDMxRfl/TE
	yykxTg1ARTKUcCO9LE30bMMtEtVRFLgoAI84jCAWmM7D8WNM4UAC+LqPiNa7m4uQeCcqi97BDX6Dn
	F6IbckGoVxyjaJ7v1H0nWLjBc8pxfnl2jbXR9kmXci3DzGH/29OjxLIbhZncTU15quveE4IhL/BUu
	/+m/CHyJFK4bkZ/PS8o0eoAUGd0DZx2O82j1DLf6PpqccQ/Sc1qz+cKOdI4dBdAy0UvxIwi6XgD0s
	/HU552gvHx81xrkwdmUsW8+xdP9piLoLJRwdpxcdo3SBGuRFFLmKDodSkhGV2gdeJ+PB5LUv2B5za
	lJU+kGd5Re6N0WnBYmBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpPSy-0000000APc3-3Dfy;
	Thu, 30 Jul 2026 12:02:24 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpPSw-0000000APak-0i2l
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 12:02:24 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47ddf7b09e5so2116223f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 05:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785412940; x=1786017740; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w/sOP9dGVjFtHCfWYiUUuXm+dTM0GZTKvuSBtSotTjU=;
        b=bTjNGsrZh8CCyHfmIfZIycwCNo8Tg9bpjCaoNnB0UpaqfAMvC+V56kMLgOlY9m0IME
         RE/gtl+G/q9gxCA3Tu/KKkElBYMNk/Xe1qlC+TrCyYH/PU1Kjh8W5/ytbS4N2YCSSEgZ
         rPaSkgtZc3cwikYfceNpjGbtDgg1i+8HdrJ7b5p2cEeFU84CTtpkgJi2lQtaXrb6U7vK
         tbtAWceyOX7cJRcUIcljgyubyt5r4YrTlK+MZwCP525AGAoDOEv9mynqiCbSIZ2Md/hX
         yS8wH9XiL2TMlPzxM7/h8f/fzLaLoUvKdp2nhQGXhk87FOeIsy6V5fJnfHUr91shMbB+
         D+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785412940; x=1786017740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w/sOP9dGVjFtHCfWYiUUuXm+dTM0GZTKvuSBtSotTjU=;
        b=lqeQ9DTAu4Az+5xXxbAKumtrbpFvVeoPWSZPOyTtAbwu99rjt88sP5Q/aRw97fYMIh
         iuMIPK43E1ZRfIHGIWeSAvnKeI+mwHz2Zc+2WAiCl6k8rW0R/GAEJIwyGklf31xe8iVQ
         7FkzDyBvRWVFmXn0mcfnXpr4i+xFKeb7H2rZlVyyZwqNV8tUuXc0AIAIg736VqLTlz7u
         q5Y1wc+fVZoQ0qqj6EDTdVh5UmigPD/O2dVD9bKqeSTvSHUeIoVM56piADM/V91R8xFu
         Xerh/v5EnDukQTvZ3/VjX/3XWZuSoLoMtZrGFL9+b6erACxg0azbWpY0Vao4S2gggkfZ
         koCw==
X-Forwarded-Encrypted: i=1; AHgh+RrOJAhjO4JYKh7Ge7zKMBhdWLlfrVQo3qYc8dkrtMjeM5/TTevAFE+ptb/3GQ18/MIhkL+DGQO5DE4=@lists.infradead.org
X-Gm-Message-State: AOJu0YwPp7+k8ci6bnIPvOcEFW8ej2dIFGq7zdVK1T/LaTDtcN/90Ebl
	DbM0b71YA8Ko7cmIlwk+cInetWHqrV8QFNNKVFfnwRirKUOAj/0wMJ/gScYIrrpcNTc=
X-Gm-Gg: AR+sD13R5xUpsh+L1br8S1EQ7HD+7pNzsE/dAvnqpl6U20hJhAHf2i2okfZ511+ei3w
	DaeVgab7PUeOUB8gcUKw/QLiYP9SFh5xUOZfjHPjEw9mp30FTEDuH0z2+aShNyltMk61SapvTQO
	7URVCgOj85FsurQEABjMsOdCn6aHbGh1GL2mRLPezuj7OGDRUFOwnvYMS5mcZYwADn3lTHdUBS6
	IW8aTWYZ50pizeVQsKTah+7LfW9z1ZOiAaQaJy96vSpPxjdDLp8oSZ+Ow51lw7gP7Y+mqL7uini
	NeBEgrmLst3L4I/L2AKgWmmIAJMoRrROoonu3wDb7ty8B8CZQ9LpwgKDc8Y2podix7oX+lHx7/O
	sKX+ihXJiuki82YFRqmfXLQUteILFW/gCJ1duZUKaDXi3+W3PbpxA67FnsaEgKPr3wIhVdFgOUF
	JPXP6chjmX8AACSw6Jtbl/VUBeTQTpgki4YA1hXwnTpg64txpTZ2pRzKsL+UdoXkZCWW9PORE=
X-Received: by 2002:a05:6000:4022:b0:47f:773f:2d68 with SMTP id ffacd0b85a97d-47fc81c5c1bmr3356079f8f.16.1785412938700;
        Thu, 30 Jul 2026 05:02:18 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.38.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fc89342f7sm5992175f8f.26.2026.07.30.05.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 05:02:17 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Thu, 30 Jul 2026 13:02:09 +0100
Subject: [PATCH v15 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260730-x1e-csi2-phy-v15-1-f284131de1fa@linaro.org>
References: <20260730-x1e-csi2-phy-v15-0-f284131de1fa@linaro.org>
In-Reply-To: <20260730-x1e-csi2-phy-v15-0-f284131de1fa@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6752;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=owpNCfOHotF2UbyHHowVjmWzdDG8ObXidVDg5wAHinw=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqaz1DhCAC4gEWeqB2EnxsaTOzDHZ1MlLtL/ITN
 tbDJ2LR5BiJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCams9QwAKCRAicTuzoY3I
 Opx5D/9vZfgdeNbWv6VAiW3OeTRDfXDSOQ3YBUyx89fWuCQSWbCd9OeuBQPl02C5Uka/Trcz1yu
 T98DFtfWWvDE1G0F7N15PsHSJ4e6KOw7kXQCWoHQRN4YBMAuJdZ4ReaPxPWkF0DjaqMH9LhTp+8
 s4a/7Esrpotg5k/Tj560+PBN2z/Lll5KzSqJHEJSH3WKtJ08sHmJ0ydh3JoQye1ghwQNyCwCpDY
 cDcoTmoScMx/GyNTFtMKBA/kjB4TVI69zK/ec4BeSQSe7uRh7C4MfMIqmjHT1n7WqxGMH8FVcbp
 ad9eROIcLtoPRaoSgU/nuFv3PVugaQy6X2tRVOF4w9/I+awFVM/o2JpJeHk8c2OPs4S7YkRH1ty
 +mnnLnjc8S7CSHPNYb9QndIa1gYsoLJvNAGESrMuTPePePnDo1htK0jbasWJUJq2uaOJaP9n1Ap
 ZuWyKy1IkatVSxMuBBPfm3YhXgn7uPPrDEnWiNxx/us4JCGzKKZvarHgFjm31g3svqH1FHEvJQV
 EsRksbSGUeK7n8CBiKg/U5OJXzw5dXPLS5GqCSUKzrtcZXmnVngv0zGbG3ETDcM/6F+V+gmjtnN
 5vKo0CPsTPr3N42fT2VGRPtWtvwkZgKlqxHnePbuXBQ0XNEotPJ9KGju2wJ+KWaRcgrXNhyKI+k
 zwXh8lDeh7T7Nfw==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_050222_764406_15697ABB 
X-CRM114-Status: GOOD (  12.64  )
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

The submitted binding here describes the DPHY modes of operation only. CPHY
is left to future work.

Suggested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 202 +++++++++++++++++++++
 1 file changed, 202 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..8aa6ad2723988
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,202 @@
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
+          single endpoint with one to four data lanes. DPHY split mode,
+          where two independent sensors share the same PHY, is described
+          by two endpoints; endpoint@0 with one or two data-lanes and
+          endpoint@1 with exactly one data-lane.
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
+
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+                description:
+                  An array of physical data lane indexes, 0-3, following the
+                  CSIPHY hardware's own lane numbering. data-lane N corresponds
+                  to bit 2N of the D-PHY lane enable mask. The indexes do not
+                  denote package pad or ball positions. The dedicated clock lane
+                  is not described.
+
+            required:
+              - bus-type
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
+                      minItems: 1
+                      maxItems: 2
+                endpoint@1:
+                  properties:
+                    data-lanes:
+                      maxItems: 1
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
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
