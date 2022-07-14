Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE026CCA485
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMlHPVY48CEQlTOET8VGHOTjsLPKV8qleG2cglh4Cqg=; b=MWpdC/qz9+1hsX
	AxqwEC3EfuKt3sSxS3Kby4eyWCBNum2NS9Adf+0So5axISdLrmUk+s/Wn7g5lOEgZnc/qCxFtqOTM
	s5zK70rvf6vyETzgxa9Nwi1/0fPVUzZZ101D2ekAhTOFLY3A+pLf/O+p3r3FTnt1CJGOsMmmOMHgB
	Hc5ypNT1ng+St313eUI5MZdu9TAYydmMfd6U7+3/X4H3U0a4RvPYNx8qGG7xF6ngIK4tE4RyelYZl
	f7Fr3ksMo352/dxfZdolrKAfIsw5+8DN6ejeyNy/2A6i34nPIPYf2c9FlckDUUzhpjV2aEtgpgOV4
	pKMD/gdV89E0Ws0lw2ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFD-00ENCw-HQ; Thu, 14 Jul 2022 12:47:03 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCL-00EL4B-Ri
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2BEFB61F7E;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14516C341CE;
	Thu, 14 Jul 2022 12:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802644;
	bh=lSJ9xBkkNJpW7UWc1fqDijAGAp3EYYVJ/ShIuYKYdIY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lWyNevUAYWvxNhRNAxuNENqp68UbzhN7zGQZSe5hWS/ub6zVP2CegsCE0bNHvk/Rs
	 VKn9OL5HoN8UATGsANacS2ea0o3Tnh2FdPI6q0Y6V5hpWABmSeoj0x2kJwFervTmTq
	 /dbOvKiBYZ4mS9VmhJ+WJ3yHnQD7c4Qmf0VS08T4UwGjf7vjYOc0yQ2lMkxgFuqbC/
	 H89k7pWN+4ruXKvsy8EutYrNhYqGYUGgLI0cUXV7YfvpTEU8S4yuacdjeQPZC0Q6ng
	 CD0UQnynowqIwUPbzGzroqvNUO4vvYT3+iBSWnRGl+uRMfr7pfrp+7Cfvd5fI1Z9TR
	 92pJPNZMgC1VA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCP-0007DL-Dm; Thu, 14 Jul 2022 14:44:09 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 08/30] dt-bindings: phy: add qcom,msm8996-qmp-pcie-phy schema
Date: Thu, 14 Jul 2022 14:43:11 +0200
Message-Id: <20220714124333.27643-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_054406_033861_62C20CD9 
X-CRM114-Status: GOOD (  14.17  )
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

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
index 693cec10d7d6..90d703548913 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -22,7 +22,6 @@ properties:
       - qcom,ipq8074-qmp-gen3-pcie-phy
       - qcom,ipq8074-qmp-pcie-phy
       - qcom,ipq8074-qmp-usb3-phy
-      - qcom,msm8996-qmp-pcie-phy
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8996-qmp-usb3-phy
       - qcom,msm8998-qmp-pcie-phy
@@ -166,31 +165,6 @@ allOf:
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
