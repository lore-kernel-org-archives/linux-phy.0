Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12780C6FA86
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lsovDpBTO3gnbfdr32+59YLNwoRkrCHjD7hD9tnHng=; b=Bn6j0BSIFhJAm7
	83M4wFL0CXn1Ql3mfLpHTZkpx22GygqRhFKdFaCQUwjWpd4ih+w/oZvcGI5+OrENwrdp+ATaUomW/
	1poIUXZPgwcl/huVFRfHrWjZxu2gavvWCFM8PluB34Z6KjP2cdZSbhyf6a53Y0FmBTr24TMUZHEte
	w9lY6H+TpT8EcqMA5thCfYnx6aM1uPOxOz2+ITlJT3hXgjKsJK5OKWJkv/cVClCRlqrafQbMow4NM
	RvqkDRVEWA7HNHlIAb9is/sW4uB2bNrGxZWtqOjyuEuh/oTL4uV265Lmzq0PdkzFBArG40DMLpR5Q
	H6CV7sd+3x/r5lbrZ9nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRl-00GZii-E3; Tue, 30 Aug 2022 11:30:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRV-00GZY8-GT
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 301556156C;
	Tue, 30 Aug 2022 11:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31DBBC4FF07;
	Tue, 30 Aug 2022 11:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661859000;
	bh=KrERl821kaXf7MQFHb1BZHVrEUbLX6UfIO8FJ6ngUG0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=klRKrsKjE+IOE/cL4uecn8bg3VEYzN+6YE8CwjFP6ZoBfJv6nha6aAy+JRSxA1+Mm
	 +tQbit9jKQb/UpM1+0r+azE0ODVF1IMuLMjE0jTfV0M3gi0dgnsbJBO4jH0E0+73Wt
	 hVCNC+Jz0XdkrWy7tmi9liZFx1vbbre4eMUVCF6JW3Lo0w7m/OVzR4nbnsL5Wd7/Gc
	 ZCMbhUBPDUon1Qxbv5MJj6Yit/2Mh4tzjgJtEWyVDAu1KENRYy6OfJIYsidX0ujO3m
	 QnpoQUWmmB/GaWPYCy/8SxfPsidKrMTDmuI++ieRJ1RtB0A/NTs7L1PucpFYueOqmJ
	 TVYBsW865lHJQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-00010N-SA; Tue, 30 Aug 2022 13:29:57 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 12/30] dt-bindings: phy: add QMP PCIe PHY schema
Date: Tue, 30 Aug 2022 13:29:05 +0200
Message-Id: <20220830112923.3725-13-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_043006_076795_392FC931 
X-CRM114-Status: GOOD (  13.96  )
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

The QMP PHY DT schema is getting unwieldy. Break out the PCIe PHY
binding in a separate file.

Add an example node based on a cleaned up version of sm8250.dtsi.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 205 ++++++++++++++++++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  68 ------
 2 files changed, 205 insertions(+), 68 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
new file mode 100644
index 000000000000..84642cd53b38
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
@@ -0,0 +1,205 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (PCIe)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  QMP PHY controller supports physical layer functionality for a number of
+  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
+
+properties:
+  compatible:
+    enum:
+      - qcom,ipq6018-qmp-pcie-phy
+      - qcom,ipq8074-qmp-gen3-pcie-phy
+      - qcom,ipq8074-qmp-pcie-phy
+      - qcom,msm8998-qmp-pcie-phy
+      - qcom,sc8180x-qmp-pcie-phy
+      - qcom,sdm845-qhp-pcie-phy
+      - qcom,sdm845-qmp-pcie-phy
+      - qcom,sdx55-qmp-pcie-phy
+      - qcom,sm8250-qmp-gen3x1-pcie-phy
+      - qcom,sm8250-qmp-gen3x2-pcie-phy
+      - qcom,sm8250-qmp-modem-pcie-phy
+      - qcom,sm8450-qmp-gen3x1-pcie-phy
+      - qcom,sm8450-qmp-gen4x2-pcie-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  "#address-cells":
+    enum: [ 1, 2 ]
+
+  "#size-cells":
+    enum: [ 1, 2 ]
+
+  ranges: true
+
+  clocks:
+    minItems: 2
+    maxItems: 4
+
+  clock-names:
+    minItems: 2
+    maxItems: 4
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
+    maxItems: 2
+
+  vdda-phy-supply: true
+
+  vdda-pll-supply: true
+
+  vddp-ref-clk-supply: true
+
+patternProperties:
+  "^phy@[0-9a-f]+$":
+    type: object
+    description: single PHY-provider child node
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,msm8998-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq6018-qmp-pcie-phy
+              - qcom,ipq8074-qmp-gen3-pcie-phy
+              - qcom,ipq8074-qmp-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+        resets:
+          maxItems: 2
+        reset-names:
+          items:
+            - const: phy
+            - const: common
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc8180x-qmp-pcie-phy
+              - qcom,sdm845-qhp-pcie-phy
+              - qcom,sdm845-qmp-pcie-phy
+              - qcom,sdx55-qmp-pcie-phy
+              - qcom,sm8250-qmp-gen3x1-pcie-phy
+              - qcom,sm8250-qmp-gen3x2-pcie-phy
+              - qcom,sm8250-qmp-modem-pcie-phy
+              - qcom,sm8450-qmp-gen3x1-pcie-phy
+              - qcom,sm8450-qmp-gen4x2-pcie-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          items:
+            - const: aux
+            - const: cfg_ahb
+            - const: ref
+            - const: refgen
+        resets:
+          maxItems: 1
+        reset-names:
+          items:
+            - const: phy
+      required:
+        - vdda-phy-supply
+        - vdda-pll-supply
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sm8250.h>
+    phy-wrapper@1c0e000 {
+        compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
+        reg = <0x01c0e000 0x1c0>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x01c0e000 0x1000>;
+
+        clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
+                 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+                 <&gcc GCC_PCIE_WIGIG_CLKREF_EN>,
+                 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
+        clock-names = "aux", "cfg_ahb", "ref", "refgen";
+
+        resets = <&gcc GCC_PCIE_1_PHY_BCR>;
+        reset-names = "phy";
+
+        vdda-phy-supply = <&vreg_l10c_0p88>;
+        vdda-pll-supply = <&vreg_l6b_1p2>;
+
+        phy@200 {
+            reg = <0x200 0x170>,
+                  <0x400 0x200>,
+                  <0xa00 0x1f0>,
+                  <0x600 0x170>,
+                  <0x800 0x200>,
+                  <0xe00 0xf4>;
+
+            clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
+            clock-names = "pipe0";
+
+            #clock-cells = <0>;
+            clock-output-names = "pcie_1_pipe_clk";
+
+            #phy-cells = <0>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 275abb402945..a03339a2e50f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -17,29 +17,21 @@ description:
 properties:
   compatible:
     enum:
-      - qcom,ipq6018-qmp-pcie-phy
       - qcom,ipq6018-qmp-usb3-phy
-      - qcom,ipq8074-qmp-gen3-pcie-phy
-      - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8996-qmp-usb3-phy
-      - qcom,msm8998-qmp-pcie-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,msm8998-qmp-usb3-phy
       - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc7180-qmp-usb3-phy
-      - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8180x-qmp-usb3-phy
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sc8280xp-qmp-usb3-uni-phy
-      - qcom,sdm845-qhp-pcie-phy
-      - qcom,sdm845-qmp-pcie-phy
       - qcom,sdm845-qmp-ufs-phy
       - qcom,sdm845-qmp-usb3-phy
       - qcom,sdm845-qmp-usb3-uni-phy
-      - qcom,sdx55-qmp-pcie-phy
       - qcom,sdx55-qmp-usb3-uni-phy
       - qcom,sdx65-qmp-usb3-uni-phy
       - qcom,sm6115-qmp-ufs-phy
@@ -47,17 +39,12 @@ properties:
       - qcom,sm8150-qmp-ufs-phy
       - qcom,sm8150-qmp-usb3-phy
       - qcom,sm8150-qmp-usb3-uni-phy
-      - qcom,sm8250-qmp-gen3x1-pcie-phy
-      - qcom,sm8250-qmp-gen3x2-pcie-phy
-      - qcom,sm8250-qmp-modem-pcie-phy
       - qcom,sm8250-qmp-ufs-phy
       - qcom,sm8250-qmp-usb3-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8350-qmp-usb3-phy
       - qcom,sm8350-qmp-usb3-uni-phy
-      - qcom,sm8450-qmp-gen3x1-pcie-phy
-      - qcom,sm8450-qmp-gen4x2-pcie-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8450-qmp-usb3-phy
 
@@ -173,7 +160,6 @@ allOf:
             enum:
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
-              - qcom,msm8998-qmp-pcie-phy
               - qcom,msm8998-qmp-usb3-phy
     then:
       properties:
@@ -242,60 +228,6 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,ipq6018-qmp-pcie-phy
-              - qcom,ipq8074-qmp-gen3-pcie-phy
-              - qcom,ipq8074-qmp-pcie-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 2
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-        resets:
-          maxItems: 2
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,sc8180x-qmp-pcie-phy
-              - qcom,sdm845-qhp-pcie-phy
-              - qcom,sdm845-qmp-pcie-phy
-              - qcom,sdx55-qmp-pcie-phy
-              - qcom,sm8250-qmp-gen3x1-pcie-phy
-              - qcom,sm8250-qmp-gen3x2-pcie-phy
-              - qcom,sm8250-qmp-modem-pcie-phy
-              - qcom,sm8450-qmp-gen3x1-pcie-phy
-              - qcom,sm8450-qmp-gen4x2-pcie-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 4
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-            - const: refgen
-        resets:
-          maxItems: 1
-        reset-names:
-          items:
-            - const: phy
-      required:
-        - vdda-phy-supply
-        - vdda-pll-supply
   - if:
       properties:
         compatible:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
