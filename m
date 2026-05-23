Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8498ACD5BBF
	for <linux-phy@archiver.kernel.org>; Sat, 23 May 2026 02:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yEtL9kh2/a3x+qGum+hHDjf9DdiayeVJqtHRPlW2lO0=; b=nkvjMVJe/2ky0b
	VWUaXK0gA3mJV8dhtJRDHHFuZaYw2I+Utfe9MpO84mf14+NYHCOajnx4bdkxovRz/NZjEXNwzcfUN
	mvSehk152stftO7YIzyqOYl48lY48GW3r/5vvM4Z62EuzUy+VWS3pQwFD6tV3WcVrkQS3d3w20rJ9
	XDe39fNmTD/GwFTHkucXR30MpMK2xerl8jXHT18a4iCbMvey2T8re5mjyV4DFY9qZIDktoJxn80dR
	UCtoQ/0Z29LnA2bxCQiV2J7lnQa0uT/WhsjVLDj6wWs1htkjNNaZZ/WXXt1R1G+U/NuxyZkdw2nQB
	/mXiw5OdFTd9MWR0ktIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQcQ8-0000000CYqw-17VH;
	Sat, 23 May 2026 02:49:00 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQcQ4-0000000CYpa-3tKs
	for linux-phy@lists.infradead.org;
	Sat, 23 May 2026 02:48:58 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-49048e043e5so6888875e9.1
        for <linux-phy@lists.infradead.org>; Fri, 22 May 2026 19:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779504535; x=1780109335; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZpqokVh1FuDolR3bjOrXVJUhBU/P6kIDy2rIFcxqce8=;
        b=Nz4Ta5xOc28uRJsqRAx4viuzkn2RqAkw5/eyrL3SUGraJ17E9tWr8fggZTxe34kIWi
         N8VvMbGUwa1loe7XsS1rcn+v/h9itfr7E0Uf5S4TGA3pst/r0gq8SjqUzPqWbEQvILTv
         +B/kZPn55nLUc16mnhfu8aqOUmBO/IXdeN00AztsbhUtB6x89Yh6fHMgf+POQO8GNxIW
         fcemPyzbVymHPqQ5KD0DfFlmEdwOmwpM/IZmP5SiY5ViFlcmAlWESSyu+C758EN+UsRC
         h9qnMHbFx0ByQjsuCQ4qWqqLmpelvUbSVjL2BHBNuJ+zJ+XrtoImA4Z449HxKIHsWbav
         EPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779504535; x=1780109335;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZpqokVh1FuDolR3bjOrXVJUhBU/P6kIDy2rIFcxqce8=;
        b=OH68HQlpQUMLBnsad51aIg2XdyphCsaZh7VD9gYqqtqiiMvNQwmQxe9w5vEPTqmUO/
         g9LGk49EiNTmRxwVZ+wSmIAPZd1u2YWXGntxlLTIyckmE7g3w2Vw3TDWcKfTjYqLzLc/
         SSqPvZ0a9XbZwv2UKJn2lwAfRRx1Kv+f5cK3B9Zg76RympSyv7mFHb6yX728JEB/9taT
         6eR0NH+R6+wgSGx+vMxdNBc7q9arptgMbDzrN/oE03nZb2C8IFL950joophmHAOUGOo+
         g9ZTGGB+UnJK10Tzc6HSilCXhN/L/gKUg/PtTO45QrjLaBadR2j9LFvR/Dgu+ti26NZo
         /AcQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Pq5ME4Lvc8WkqlOLdN8l0ZjG4e+NIQ5yiezdw4z9a/mSLCZo+vw5oJg8m2yHRvX8PWx0RXhinAKc=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXWA/LEaBkRvfxskpfDWPo7OuLq5n7l3MZoe+BoU8CRmBjnJ16
	7CDEDo6Jjqio7A76LVNBwQxpeY1YkSqTmtYJt71XSE6WvIDdvK+aDjVhEUm+tige4b0=
X-Gm-Gg: Acq92OFRk0J7pNVqRIv8+n9UvzzuEo0peBEX86+fHCUCDhK5BpB5NrDuU6S8bICrC87
	+7902PLHhPbdX9uh9iEsltPuNBOdSyPOYm2l1p+XYNWdC1NM1Y2cOjFUyxVC9R/4w0Gk0pj7jkk
	rEK5KxMNgP9k28yANp4hNQUQWaQOLboN8XCkLNyRi/j5VGj8NcuCVlnLjkT1Pok9iWYuxtDEGX2
	RwCfS9A6U0O1rNKSBUdWzGNYFpGmwU9YTymfJGgSsL9igCEIOPuN25JAbv2z2J0Sigp540N467z
	8Co3lIkdvQUKGDJKXgwOSikw4CFrP258xitRZrTt2PntotFDGmWeIluMZkElRfSFwmwEUVzTF5i
	0bcmK2v/t8GJ7ztjYLN9GghxggO9NIqxX3zTlYPZndXmeXfR6PGykevRSf5Ws+c/cZcn8EkNA1e
	AVqriN84Ri+xEu+IOvQ8pL4K4JDdWV4Jinew==
X-Received: by 2002:a05:600c:8217:b0:490:51e9:deba with SMTP id 5b1f17b1804b1-49051e9e233mr7104605e9.27.1779504534976;
        Fri, 22 May 2026 19:48:54 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.145.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4904526ca50sm77938765e9.2.2026.05.22.19.48.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 19:48:53 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Sat, 23 May 2026 03:48:47 +0100
Subject: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
MIME-Version: 1.0
Message-Id: <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
In-Reply-To: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=7217;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=ksE9IzGsVOiPiMz3PetPeTc3/hG40XGcqECVS4HfclM=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqERWSME4EpK2d/5JPuYSQIQCI4mTc8FjYMEryO
 I9h1w8mgdCJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCahEVkgAKCRAicTuzoY3I
 OoFoD/9rMWDg4FRxEc7CpWP3FkkNIhLhPloMolmD2ZizRvmmtxOMiic4MznI9AdWEDMdCi9yAZn
 hRqwrtpkHeg3pQLRmWU5TTryFgz5WTMLyaXAcY4HqoG2Gyw08FuJwbtwvwH2aH44v1HoZvp0O4/
 M6OYL2qQm6J65cizP0iy3yKA1mQ6B9RWlsvqeLAfQ4Lk9Xd8gHTvIUwa7W8YAEzyiXgX/B+hC6A
 nZCOFEjwUDsKQg6/1YM6QkkDE9k99lt9Qc/goJtVoiOIG1qJb0cB4tNlfCbD2p2LkZM1p/dOVAL
 XlponAKgOUZ775V+4mVmqBfgfHU1GlXaAjhmNAwQW8kFUT0zwXwnrqFgbPoOj3DX6Xouvn5IR56
 dDoJhlQp0ztOAXMDy0tgzt6gxp6ywBeo/rfhBo76C2yY23xsMr1QDI6aeijjiLNlE0cGsrZ/mA6
 bRvXttP4q/3BLEREEAFctAHr+6y04Y0LiUDHHcVB1c/aMYaMIXiP/mwJ2ZrHzkdgsqIYN/wMtY2
 8SJ3fbTsc6hFvpT7VRZHzQrl9E87wKernw2OEdja7gT1gj3p6Shfvj1c07nK/rAzibYLWdhJCk3
 6FDa6jmQZbTDvI2nSO2BbPYJ+Fb8QMnG2a7a0k8ZWUPlgBzXxSx9Aoxy7ITYUo2yTE4Nncbhimm
 BBn7IN6anHmnHHA==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_194857_021222_076D7553 
X-CRM114-Status: GOOD (  11.67  )
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

The schema here defines three ports:

port@0:
    The first input port where a sensor is always required.

port@1:
    A second optional input port which if present implies DPHY split-mode.

port@2:
    A third always required output port which connects to the controller.

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
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 209 +++++++++++++++++++++
 1 file changed, 209 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
new file mode 100644
index 0000000000000..270375f949880
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -0,0 +1,209 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,x1e80100-csi2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm CSI2 PHY
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
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: core
+      - const: timer
+
+  interrupts:
+    maxItems: 1
+
+  operating-points-v2:
+    maxItems: 1
+
+  power-domains:
+    items:
+      - description: MMCX voltage rail
+      - description: MXC or MXA voltage rail
+
+  power-domain-names:
+    items:
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
+        description: Sensor input. Always present.
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+              clock-lanes:
+                maxItems: 1
+              remote-endpoint: true
+            required:
+              - data-lanes
+              - remote-endpoint
+
+      port@1:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description:
+          Second sensor input. When present, indicates DPHY split mode.
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+            properties:
+              data-lanes:
+                maxItems: 1
+              clock-lanes:
+                maxItems: 1
+              remote-endpoint: true
+            required:
+              - data-lanes
+              - clock-lanes
+              - remote-endpoint
+
+      port@2:
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        description: Output to CAMSS controller.
+        unevaluatedProperties: false
+
+        properties:
+          endpoint:
+            $ref: /schemas/graph.yaml#/$defs/endpoint-base
+            unevaluatedProperties: false
+            properties:
+              remote-endpoint: true
+            required:
+              - remote-endpoint
+
+    required:
+      - port@0
+      - port@2
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
+  - vdda-0p9-supply
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
+    csiphy4: csiphy@ace4000 {
+        compatible = "qcom,x1e80100-csi2-phy";
+        reg = <0x0ace4000 0x2000>;
+        #phy-cells = <1>;
+
+        clocks = <&camcc CAM_CC_CSIPHY0_CLK>,
+                 <&camcc CAM_CC_CSI0PHYTIMER_CLK>;
+        clock-names = "core",
+                      "timer";
+
+        operating-points-v2 = <&csiphy_opp_table>;
+
+        interrupts = <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>;
+
+        power-domains = <&rpmhpd RPMHPD_MMCX>,
+                        <&rpmhpd RPMHPD_MX>;
+        power-domain-names = "mmcx",
+                             "mx";
+
+        vdda-0p9-supply = <&vreg_l2c_0p8>;
+        vdda-1p2-supply = <&vreg_l1c_1p2>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                csiphy0_in_ep: endpoint {
+                    data-lanes = <0 1>;
+                    clock-lanes = <2>;
+                    remote-endpoint = <&sensor_out>;
+                };
+            };
+
+            port@2 {
+                reg = <2>;
+                csiphy0_out_ep: endpoint {
+                    remote-endpoint = <&controller_in>;
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
+
+        opp-400000000 {
+            opp-hz = /bits/ 64 <400000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+
+        opp-480000000 {
+            opp-hz = /bits/ 64 <480000000>;
+            required-opps = <&rpmhpd_opp_low_svs>,
+                            <&rpmhpd_opp_low_svs_d1>;
+        };
+    };

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
