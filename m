Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B58CCCA48D
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWZ2AI9lp0X0l36iRvwS5s49gFBS3ZDULUxH5CC41OQ=; b=uRx5ic+88EgFjZ
	frD0ELP0w+IPTXkCC0LwEta6cSu2eDPLRMLdPqUPsttAxQrMBu1/b/niM9f28C5EzIku4uRRtFXkD
	8m5kPSKLg68niyLFyz5GhwbItiNaMc3+HQhSO66gT1F9xJIRQEOI+pjMsyIVPRV+RxhXvLjexrgH9
	pGqSyU0H5RyaoLLDZJFOlwDg3ywtQ5X97aFjhuzjyy0sX5gGCtOZgbpnAfL+WRytz7VWK3vrJzCye
	8wFBxNHHMju60gIKDfYD66VIE+iF4KL/MFFTs9D0kWub3nY4uaIsVOvd6sBCBNRhJuW6BDn0Q1ff8
	PNQ9W5mAlnzVbpWykLxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrE-00GKoP-Sw; Thu, 07 Jul 2022 13:47:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9Rr4-00GKcd-RS
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9243A6216C;
	Thu,  7 Jul 2022 13:47:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 787B9C36AEF;
	Thu,  7 Jul 2022 13:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201659;
	bh=igmgwuyaAMfNCZGd6OzSH4Fl235u54nGnL5w31qWOhA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cQOySKPY3ru4iM6Rr7yhBGSqM6ukITh4h7DV6EHkbmTzC4rWoGrYnFrfWKy3wL+QM
	 Ro6rsvhBIKcB6dLiulLBjRL9dZO3LDDQdaBzRuBNHTC/haAsloueeb5vIDo7pnHxpg
	 yfgcgNdghY1Ea3SySD6o5lLJFNxahm5xPkuHL/Keu8DMuPPLCQF1u4YbfLFGjwHn+M
	 nil/ehjL7qppqBwnObAveCGLlmFeb7FB+ZhgIWcjXaEm0Co1neIBeSUXl/K6sX2lfc
	 be1+oI3KfiP8KzEpGoauooxD71cxwhlDSlyF8pTmDKfFPzkpyM383zr2pDQl/JxJCZ
	 px1ty7nFR6ECA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr4-0000wB-8K; Thu, 07 Jul 2022 15:47:42 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 08/30] dt-bindings: phy: add qcom,msm8996-qmp-pcie-phy schema
Date: Thu,  7 Jul 2022 15:47:03 +0200
Message-Id: <20220707134725.3512-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064743_008964_30EF50C8 
X-CRM114-Status: GOOD (  14.74  )
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

The QMP PHY DT schema is getting unwieldy. Break out the odd-bird
msm8996-qmp-pcie-phy which is the only QMP PHY that uses separate
"per-lane" nodes.

Add an example node based on a cleaned up version of msm8996.dtsi.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../phy/qcom,msm8996-qmp-pcie-phy.yaml        | 146 ++++++++++++++++++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  26 ----
 2 files changed, 146 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
new file mode 100644
index 000000000000..accbcb8b5c6f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-pcie-phy.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QMP PHY controller (MSM8996 PCIe)
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
+    const: qcom,msm8996-qmp-pcie-phy
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
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg_ahb
+      - const: ref
+
+  resets:
+    maxItems: 3
+
+  reset-names:
+    items:
+      - const: phy
+      - const: common
+      - const: cfg
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
+    description: one child node per PHY provided by this block
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
+  - vdda-phy-supply
+  - vdda-pll-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-msm8996.h>
+    pcie_phy: phy-wrapper@34000 {
+        compatible = "qcom,msm8996-qmp-pcie-phy";
+        reg = <0x34000 0x488>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x34000 0x4000>;
+
+        clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
+                 <&gcc GCC_PCIE_PHY_CFG_AHB_CLK>,
+                 <&gcc GCC_PCIE_CLKREF_CLK>;
+        clock-names = "aux", "cfg_ahb", "ref";
+
+        resets = <&gcc GCC_PCIE_PHY_BCR>,
+                 <&gcc GCC_PCIE_PHY_COM_BCR>,
+                 <&gcc GCC_PCIE_PHY_COM_NOCSR_BCR>;
+        reset-names = "phy", "common", "cfg";
+
+        vdda-phy-supply = <&vreg_l28a_0p925>;
+        vdda-pll-supply = <&vreg_l12a_1p8>;
+
+        pciephy_0: phy@1000 {
+            reg = <0x1000 0x130>,
+                  <0x1200 0x200>,
+                  <0x1400 0x1dc>;
+
+            clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
+            clock-names = "pipe0";
+            resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+            reset-names = "lane0";
+
+            #clock-cells = <0>;
+            clock-output-names = "pcie_0_pipe_clk_src";
+
+            #phy-cells = <0>;
+        };
+
+        pciephy_1: phy@2000 {
+            reg = <0x2000 0x130>,
+                  <0x2200 0x200>,
+                  <0x2400 0x1dc>;
+
+            clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
+            clock-names = "pipe1";
+            resets = <&gcc GCC_PCIE_1_PHY_BCR>;
+            reset-names = "lane1";
+
+            #clock-cells = <0>;
+            clock-output-names = "pcie_1_pipe_clk_src";
+
+            #phy-cells = <0>;
+        };
+
+        pciephy_2: phy@3000 {
+            reg = <0x3000 0x130>,
+                  <0x3200 0x200>,
+                  <0x3400 0x1dc>;
+
+            clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
+            clock-names = "pipe2";
+            resets = <&gcc GCC_PCIE_2_PHY_BCR>;
+            reset-names = "lane2";
+
+            #clock-cells = <0>;
+            clock-output-names = "pcie_2_pipe_clk_src";
+
+            #phy-cells = <0>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 08a84af711ce..5fd716c6412f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -21,7 +21,6 @@ properties:
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
-      - qcom,msm8996-qmp-pcie-phy
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-pcie-phy
@@ -165,31 +164,6 @@ allOf:
       required:
         - vdda-phy-supply
         - vdda-pll-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,msm8996-qmp-pcie-phy
-    then:
-      properties:
-        clocks:
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux
-            - const: cfg_ahb
-            - const: ref
-        resets:
-          maxItems: 3
-        reset-names:
-          items:
-            - const: phy
-            - const: common
-            - const: cfg
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
