Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C126C6FA97
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 11:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iUlfoupwftMMUC6/CdA3EepyG1kFRiN0WGcDRkvBGY=; b=vjOhEIbp1uPaDX
	4Jqf+TqlbKt8Cy5J6kwV4AV9S2HW/bn+9fXjmlNqZ4ACwPbc34Tklz/Gzn6P8E9BNOEPKxgcCXewV
	M7SaC4Ebkez9E/4FWbeffZmb0I1CSUIENKGRLYh4cXQtQovt3XRwDIvJa576QKRwBimKbVPvkHBBJ
	hi706bkf8PZY2j9VczzjrinYW8TASZ8TtYdoHhZyfzjP8oGkfOKw1oAk8pGdsEcczckt3zXO/sN8A
	ncuuEn/g5KVGuTdkHbDhtdhYUbjg2G/Y3eQKobVXzboSbCxcwzHIrYhpWPxpvSUYYuUN3fdhCXz16
	ti61CWnBVgnGu1SbzUZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRq-00GZmn-PM; Tue, 30 Aug 2022 11:30:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRf-00GZgF-O5
	for linux-phy@bombadil.infradead.org; Tue, 30 Aug 2022 11:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ROE/z5tLk1FoX8v6GFnS6I4GP5CSiO1L8abaUdiwa4c=; b=LLrgVEATNZD1nUtpdQD3L4PWFh
	Z6Gcdwv277JRD5sah4meZiFnHpKn/yN3wOyAdi/vb1IG97nmuCH91W5atO734BYrlUYJl8qse/pAa
	sh8QAYCCIjpNDgMMfpm32PL9+KqYF3rAklYzBPvs4P3AgOl6cuxxTIP7+/xYI3vNMy1EGV53LAjGv
	Ui+e5SXZo/iypkwl+/hRsKxvqMD8Dk3cNERZBACP7V8QU7LOzMApzhIKX0nm9fxB8hiI2gWJHhHEG
	c+7GPB2tZhuspGqpn2tsGsXwX2u0gJ84wzIkftFDsknyr3z624cCcxpsQ32ZlXugBa/FdhZnLTHr/
	QAsfUyDg==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSzRb-007ozm-Hn
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 11:30:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 60798CE1AA7;
	Tue, 30 Aug 2022 11:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD993C43141;
	Tue, 30 Aug 2022 11:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661858999;
	bh=gQUU4jzp1n7B3VgKD1TTCE2C0i9kVqQVtWd0FxrrbaE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fMRyF7yqD1ittPrz7Hsd2etswooBTgb0OITO3OF31ACxDe+UvR+sYB2+BSiuks9TM
	 /OH9+uasYlgiCzdIUui6emSLT7pr7MJLGK9WkHCgL6L1HKZus6MKNmLIHYyCixVaLP
	 DVg0GcjUacpCSUSYRYyrUdS3ijEmc0dblFm/u4Es5rzAEFC9CpgcKiX5El9LMl3+/E
	 lkqYOePKHdrpmEqRZ8/GohFy0nyEQrRDbawRTjM+fe2Gofa5AAm3wODvNQQBbZvjyR
	 SfWgD0/32WV5m4IHDuCdf8/58NGRgg0/5FpWg5v6JxWCPBP5Fl8sfNBmdqH1xFSmwg
	 nZDagc/ytX7Mg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oSzRN-000105-Gy; Tue, 30 Aug 2022 13:29:57 +0200
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
Subject: [PATCH v4 08/30] dt-bindings: phy: add qcom,msm8996-qmp-pcie-phy schema
Date: Tue, 30 Aug 2022 13:29:01 +0200
Message-Id: <20220830112923.3725-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220830112923.3725-1-johan+linaro@kernel.org>
References: <20220830112923.3725-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_123012_262607_0FAED02D 
X-CRM114-Status: GOOD (  14.33  )
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
index 8cb2898db740..275abb402945 100644
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
@@ -167,31 +166,6 @@ allOf:
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
