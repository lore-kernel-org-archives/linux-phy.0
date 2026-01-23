Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93C8BD74EED
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 15:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pe4Uevxn9eRoYEkAOI+vmkuzMAg3AUCIJGnTj4Pnfu4=; b=vPS5JpJlFa0Zmq
	3L4O+FkqgNMGfgw5lM0Ro7kIhNYiTVDlrb27gHaof0wVQACfVcEVRgXWewFxxsH+PjnV9vHH8UIyl
	BfLlrIk3y+WVIdm1nGrNie3HGNu/Anzc2QUHg9R5ryiZY99aAxgzGXVicHSuDplrJjCxKrPsSO/15
	IECzAzrpkO9AwvLMabx0ykOb2+eRgIbRjXS8sjbQmnhc0Du1HJiOkhCHKG7X5trQEruuYzaBmaPC4
	zhfYpEe5hfDAf9I7PpNCK/GeEyz1nMnzxmjsvdrhxw7IAQC0z+68U7uoTtkWiTiFBEyRGmBSTQRtO
	zZ9Dq9bADx6m2ZcV1vOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJG9-00000009730-1SG6;
	Fri, 23 Jan 2026 15:39:41 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJG5-0000000972W-2Lwf
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 15:39:40 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2a75a4a140eso12098535ad.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 07:39:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182777; x=1769787577; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tSR3AHGBnzfA//kFOlkmDaGhGRWpqjPMPn6vjrluFLw=;
        b=SO8zrime0vjMRCCJqnSAHqBXrvS5l5CEDiHN0nQsM+IosfbjNfyeslirhEsAgzwhnO
         LTC5oPXdF+uCF+jPb9bcfIKS9411CDONhhmV3OknGEPPjXoxD379S0rcvPj2XBLfD/IM
         SXywGgm9yX/KSvgUOjZO2sLjL1KvfcbpB8DI3rLCX8K7BnRXZQOMJIeqZh2YJbV61ydq
         p0fTGfnUzZBOvUytIK+T9eOPUCOU6RrqC6JzISpfzD6AMMvkblFoGEgW6RLjh87qL0AZ
         o86PituIbl2iBDTFeRJTlj7Emup3hdML5iYQKU3NZV5M9WDL+LJAjpcdK44oLyuhUpUi
         9DXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182777; x=1769787577;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tSR3AHGBnzfA//kFOlkmDaGhGRWpqjPMPn6vjrluFLw=;
        b=ZruRZM1j1ouNRpiFbRId/tJn/H5Ua40iSHviPMF4J29IdWDoTYVs0Iw+Ee+PPufSLs
         xcCXfXDolea2Yc8yAX2P1FYyWf4r7HiF7tozaJL8G3n4IOqJLkMZYuGKKvgo3aRWzrlU
         Tm+QtejmqeEBJb1V5al0I6rV9Wa4hLYXt9bTJNOYbOipBGrppgqtLC5UoSkXRhcAf/Ds
         fxIBBU3JjBEA5SNPI0wMwpEXjnfGPagDepVOQTeqf0W4i5zy0FhmWOJVEgVrB+h7lApb
         zoIddQwZZy1rKS2b2kUe9cMOkPimLX2UxlTgOy5g4jPfSAbigx6eCj+/8qDXs5lk0yGv
         lVqQ==
X-Gm-Message-State: AOJu0YzfzOhRXO1rOqMpIt4cPzaPqkjKzbG5OVkz7SbqbS/g7+vwlLQL
	mELjRwdHO6LtqDHa224JfxahFFnFXNYuQXSRsAJvE7/bhNaUK39jEq0S8XHNcg==
X-Gm-Gg: AZuq6aISeIUYJTmZVt1YZ55dknLeHSTJ1YRZ8XYZ0JTP0j43qL/9TfE/XVYfmSzXg//
	726jq+UUzWn9dWwnoowhu5wRLNubBUf+FjNy/cKAIUy4ON6w/0+o0FHsllqwuy2nZzEhHvsYEQM
	iIVkq3nwUMjq/J1qV1UlAQNiQZDFIfZWw5yG5dW2whjsP4PYvHgYoJZgehygF2U51ou/yLs5NEp
	gymmto7rW72Ry10TspvK6+At0jTN+LSP0by8/ALBlKqT54ffm1NUyrOpJ2rXusfpIBuuS0OnAsi
	BYjMhqwu762nzN2TJSHT0GgKQ5EFFJF6DaMqF6tZDBOppdzVtBOTQGGJN2fXxBccex9T4N+NVUM
	T+jiooa9l6AtLET3AW+E6FvRbMJ3oZfDzxHyR9oVzUqtpefDDh8Iu8tEQKmYthuDnCmorKa6R4a
	13ilZnQiu5VEKIC8RXAc9oZFmi6ZSmRjNkJg==
X-Received: by 2002:a17:903:2351:b0:29f:1bf:6424 with SMTP id d9443c01a7336-2a7fe56f8d2mr29592255ad.18.1769182776616;
        Fri, 23 Jan 2026 07:39:36 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:36 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Fri, 23 Jan 2026 15:39:04 +0000
Subject: [PATCH v4 3/3] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
MIME-Version: 1.0
Message-Id: <20260123-ti-phy-v4-3-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_073937_631760_41A4E410 
X-CRM114-Status: GOOD (  20.49  )
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/phy/ti,control-phy-otghs.yaml         | 99 ++++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ---------------------
 2 files changed, 99 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
new file mode 100644
index 000000000000..4ecb1611ee65
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI OMAP Control PHY Module
+
+maintainers:
+  - Roger Quadros <rogerq@ti.com>
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
+    pattern: "^phy@[0-9a-f]+$"
+
+  compatible:
+    enum:
+      - ti,control-phy-otghs
+      - ti,control-phy-pcie
+      - ti,control-phy-pipe3
+      - ti,control-phy-usb2
+      - ti,control-phy-usb2-am437
+      - ti,control-phy-usb2-dra7
+
+  reg:
+    minItems: 1
+    maxItems: 3
+
+  reg-names:
+    minItems: 1
+    maxItems: 3
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
+        reg:
+          minItems: 3
+
+        reg-names:
+          items:
+            - const: power
+            - const: pcie_pcs
+            - const: control_sma
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
+    phy@4a00233c {
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
