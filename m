Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98430CFD658
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 16:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhP+fStu+HVplso61b3XeF2XxApxXnBzb+5Hs0ZWtwo=; b=NWEkq9PR5zwnV/
	bTpzDcFx/SLqODmZ8Aip95hCxxdsl9+21pZdMQXOin5q4/4DFR2XvG6tv1MnTWfrtkHngVXugQPVn
	MyXNyBF2zfgTEHuaD+cNwoNCbwXTKLEiEF8wdidFDpexMswlNqg6ob6NSK5UyteEbZTDKY50iHWHi
	WoVPfUklFtlnCXMRdbqFV7jHvh0UbEueXR/ROmksacitrov2ycA5P4SWlMiHFAElo16PnVH4eeSWt
	/MQWJbv7sHU+bO+uGW4ZVfuRTppHJ7OUgr0Hn49Nuv+kC7vmp2h6d28qpXp/NBBvwBoSod5gJzy/t
	vQC3/r5BzslnX3/FtT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdW8N-0000000FEnU-1SsU;
	Wed, 07 Jan 2026 16:11:43 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdW8K-0000000FEm9-1tLF
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 16:11:41 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so1767520b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 08:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767802299; x=1768407099; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3S/VWu3rjtLAXEYggnwZO63anTsADRidu6WH/Uifn/I=;
        b=KcWdZ9zhihp6P75mmJk2EpQWpEUyfz9Egl9KCQfAjBMXWuzN1kl/a4pMys5kVGIusn
         DhtKUyf09Tfn6lcnzokm67g0+KO3orFHmqmBAWQar6xVmS8gdDM5PJTUEtIFB125CPrx
         eIeBS25U8McAwkJrs3hsxFvE+67PgX8LJ84i0ygrivPbtu13gv0yw9zJRYpxju9pl5hH
         1ZLV6lFZ2sLNEXA+GnsUYOQDjeLD+6bvZo9Wil/gpVTnwBc+IVdwlVCIwwP5DlNo3tYE
         oewxL7yq+fBgEPV8rH/pdJpjsRVsfeFBLBSdEPMkvUf80x7pBkJlgNaekqARutDCr9FP
         J2QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802299; x=1768407099;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3S/VWu3rjtLAXEYggnwZO63anTsADRidu6WH/Uifn/I=;
        b=Hwcv72Jx0U0tB7WDkuXamH8t/xLhNJO8fwaZoczif2yzQVcB/yRdeuFoO/kyBlcJps
         tKffFGj/seTsxNE8u0fgaT6LFOEsKdxInk0Uhf4JXbppUKenbFu45RDy7lgj3hvOpS0v
         VIIMQxidIrKL2JfUE6rJcq8Nt95kc6sPqATby6pVPXdUKfpiyaH+jZQHUAS/J5hcaji2
         d8VMzqsUaHVNhRrSE8qteFO7gQsYnsj7q1S+2KahIcbz7D0unhFv/7hf7pZoGmQsXJdx
         nZozeqNjbH16EPg7dJSHMK2wKzJbAFlK1ckirDeIW5Qqa24RJsKv1/YWfg3BefBlOKzG
         h90A==
X-Gm-Message-State: AOJu0YyLKEPeLIfrq1LlEJ8jGn1SrVrsPpU9oTzG/zx3cUV7vNRYya0i
	uKzxAp+3n0cPtj4z/Es38zMO0qNrI0mns94LWWMBMcqY9Tx2D4PvxW7V
X-Gm-Gg: AY/fxX5JClaXQUpd7EnfjhZ1Ei6EcD6kD6KWWExIXzdx3jI1k4MC+qImfPXFOUcXq5t
	9aZ57UCbD07z/eln9I1+gDTZ/7QkapOyNjTSuzVx4FJPiJq+BpDCGOYhsoHk9ELA1z9q1kO+NLk
	Qc8zsDEHdhHheoVbYt53d3akFxug0nBb9+mOjfecMQgxdUzRNes/Gv6qHblpINcHL3n6QCR5etu
	WAI3GBMl6tacVzGjWlZ3zHHmgihfQbfn+F0i/uteN8mkaZ/6H3btNNAk1M2L3e/79d6yr45JcLh
	+GF5gU6WhRDzmh0bIA+npt4MaHDOMIV9Fkq+G80Jnbhr21XKB2tS1t77wZQWv5wO6rjbKoulRzD
	AQs6CVQ7lKnpAEVnOejOV0h9RZxj3NHVzcwXBWCT9enDgwbIDXek7qqfwuOtEPi33rglHec8EGV
	8FLkdnbNPTHGbjcg8ufhfKo+nb4Lss+SrhYYz8LA==
X-Google-Smtp-Source: AGHT+IEK3qjmLNBAzRjCXOSCfmQSEWXzEYKyyWE4wHQOEYhfzG+7BSZ4jrb35hckW3y1RZ4QFOylwQ==
X-Received: by 2002:a05:6a00:339a:b0:7f6:37e5:48d2 with SMTP id d2e1a72fcca58-81b7ef0bbc4mr2676839b3a.25.1767802299413;
        Wed, 07 Jan 2026 08:11:39 -0800 (PST)
Received: from Black-Pearl.localdomain ([157.50.178.147])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bafe98d5sm5373079b3a.21.2026.01.07.08.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:11:39 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Wed, 07 Jan 2026 16:11:16 +0000
Subject: [PATCH v2 2/2] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
MIME-Version: 1.0
Message-Id: <20260107-ti-phy-v2-2-a1ec27401fff@gmail.com>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
In-Reply-To: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_081140_639523_503CAE37 
X-CRM114-Status: GOOD (  20.95  )
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

Convert TI OMAP Control PHY binding to DT schema.
Changes during conversion:
- Define a new pattern 'control-phy' to match nodes defined in DT.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/phy/ti,control-phy-otghs.yaml         | 94 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ----------------------
 2 files changed, 94 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
new file mode 100644
index 000000000000..2c91609cac35
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI OMAP Control PHY Module
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+description:
+  The TI OMAP Control PHY module is a hardware block within the system
+  control module (SCM) of Texas Instruments OMAP SoCs. It provides
+  centralized control over power, configuration, and auxiliary features
+  for multiple on-chip PHYs. This module is essential for proper PHY
+  operation in power-constrained embedded systems.
+
+properties:
+  $nodename:
+    pattern: "^control-phy(@[0-9a-f]+)?$"
+
+  compatible:
+    enum:
+      - ti,control-phy-otghs
+      - ti,control-phy-usb2
+      - ti,control-phy-pipe3
+      - ti,control-phy-pcie
+      - ti,control-phy-usb2-dra7
+      - ti,control-phy-usb2-am437
+
+  reg:
+    minItems: 1
+    maxItems: 4
+
+  reg-names:
+    minItems: 1
+    maxItems: 4
+    items:
+      enum: [otghs_control, power, pcie_pcs, control_sma]
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-otghs
+    then:
+      properties:
+        reg-names:
+          const: otghs_control
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-pcie
+    then:
+      properties:
+        reg-names:
+          items:
+            - enum: [power, pcie_pcs, control_sma]
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-usb2
+              - ti,control-phy-usb2-dra7
+              - ti,control-phy-usb2-am437
+              - ti,control-phy-pipe3
+    then:
+      properties:
+        reg-names:
+          const: power
+
+required:
+  - reg
+  - compatible
+  - reg-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    control-phy@4a00233c {
+        compatible = "ti,control-phy-otghs";
+        reg = <0x4a00233c 0x4>;
+        reg-names = "otghs_control";
+    };
+...
diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
deleted file mode 100644
index 7c7936b89f2c..000000000000
--- a/Documentation/devicetree/bindings/phy/ti-phy.txt
+++ /dev/null
@@ -1,98 +0,0 @@
-TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
-
-OMAP CONTROL PHY
-
-Required properties:
- - compatible: Should be one of
- "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
- "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
-                        e.g. USB2_PHY on OMAP5.
- "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
-                        e.g. USB3 PHY and SATA PHY on OMAP5.
- "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
-			set PCS delay value.
-			e.g. PCIE PHY in DRA7x
- "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
-                        DRA7 platform.
- "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
-                        AM437 platform.
- - reg : register ranges as listed in the reg-names property
- - reg-names: "otghs_control" for control-phy-otghs
-	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
-	      "power" for all other types
-
-omap_control_usb: omap-control-usb@4a002300 {
-        compatible = "ti,control-phy-otghs";
-        reg = <0x4a00233c 0x4>;
-        reg-names = "otghs_control";
-};
-
-TI PIPE3 PHY
-
-Required properties:
- - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
-   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
- - reg : Address and length of the register set for the device.
- - reg-names: The names of the register addresses corresponding to the registers
-   filled in "reg".
- - #phy-cells: determine the number of cells that should be given in the
-   phandle while referencing this phy.
- - clocks: a list of phandles and clock-specifier pairs, one for each entry in
-   clock-names.
- - clock-names: should include:
-   * "wkupclk" - wakeup clock.
-   * "sysclk" - system clock.
-   * "refclk" - reference clock.
-   * "dpll_ref" - external dpll ref clk
-   * "dpll_ref_m2" - external dpll ref clk
-   * "phy-div" - divider for apll
-   * "div-clk" - apll clock
-
-Optional properties:
- - id: If there are multiple instance of the same type, in order to
-   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
-   PHY). If "id" is not provided, it is set to default value of '1'.
- - syscon-pllreset: Handle to system control region that contains the
-   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
-   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
- - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
-   register offset to write the PCS delay value.
-
-Deprecated properties:
- - ctrl-module : phandle of the control module used by PHY driver to power on
-   the PHY.
-
-Recommended properties:
- - syscon-phy-power : phandle/offset pair. Phandle to the system control
-   module and the register offset to power on/off the PHY.
-
-This is usually a subnode of ocp2scp to which it is connected.
-
-usb3phy@4a084400 {
-	compatible = "ti,phy-usb3";
-	reg = <0x4a084400 0x80>,
-	      <0x4a084800 0x64>,
-	      <0x4a084c00 0x40>;
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_usb>;
-	#phy-cells = <0>;
-	clocks = <&usb_phy_cm_clk32k>,
-		 <&sys_clkin>,
-		 <&usb_otg_ss_refclk960m>;
-	clock-names =	"wkupclk",
-			"sysclk",
-			"refclk";
-};
-
-sata_phy: phy@4a096000 {
-	compatible = "ti,phy-pipe3-sata";
-	reg = <0x4A096000 0x80>, /* phy_rx */
-	      <0x4A096400 0x64>, /* phy_tx */
-	      <0x4A096800 0x40>; /* pll_ctrl */
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_sata>;
-	clocks = <&sys_clkin1>, <&sata_ref_clk>;
-	clock-names = "sysclk", "refclk";
-	syscon-pllreset = <&scm_conf 0x3fc>;
-	#phy-cells = <0>;
-};

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
