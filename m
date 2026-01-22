Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A0B0D3EE9F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 17:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iE37T+TIFi3RYiyIPLBW3vKSaL5N88oCIr/AJUukcDM=; b=C6Lm1pqkGRJsL3
	xAGaiGmmLATnhG2ATC6yc3BleadZhuRGG3iudoYAg7IpAUut4QL+/w6X3zsRX9ommoo4sGP4ZHmOf
	/YKC8Yz8oYFPM/XqcnVs4ODRUZLYFE+3WOx4LRbf2Kc1pNMm2N+op4N2GJaRzUrNmTPWN/shwBMnE
	IY/W6y62HfcnYdJbp6cjGbOECoZmfzPIbtjJVp0aoO6TbaSdsyn3K66x60D52MA8OUAIVBF11Q4HJ
	YHSAgPMhTCCnVC67WLEhXbLsdICdryZ4+oqaWSv08rM2UB3l0FD3yXmbMmdX1Uvaa6qjbYT7fCt5X
	pKY2ynnY4/HXUrwlR7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viytD-00000007b3r-1L0x;
	Thu, 22 Jan 2026 17:54:39 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viytB-00000007b3N-38Oq
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 17:54:39 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2a0d67f1877so9338055ad.2
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 09:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104477; x=1769709277; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FI40l1zZcp0EM6GPdpYD9qucEk4y4q1/RvaUNk8yFvo=;
        b=SaPAqzQ5vVr3mFQO2hI7K27MpEVj/0nN17EkwYIvgRYxfJTObaVVh7aRDoWpNjsDdt
         NOvcppS2hd3R1VoWAjZsmSmemQNHwjQRzRVXDOk6dyiL4yi0H2FdPIk4Ie8zmxceAQ6D
         M2lPPLt2eTvscBdjA2w7B3h9XBir8cWyKu/a9n3VNnzp7sXFBWjB+0MaQtXdGacpmFKC
         6c2VSbVSl7EPoYXtH3qJTduXNTagwzNfKneoOymAg9yNEoqOnRd0Uzva63DcTe+lsrYS
         s+KvJfsE3qIDtnNb18ygVSy3XKyETnSasIaz3buHyUjxGCcN4eIMXVGt3iNZFxNz/bO/
         BsCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104477; x=1769709277;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FI40l1zZcp0EM6GPdpYD9qucEk4y4q1/RvaUNk8yFvo=;
        b=BHXaX42js73/u99+pEm8Ys71ilcCbPVNq0saP7LRTQIGSxponUmgmS6em6YKeheteU
         B2tgUJVO5mQVatosIgqv99iAdxdOf+ssWcj5q97xRwtnEQWUC2k9IK0tZjeXR0Gr5U+3
         VThVyM1SyrdeUwYWtHOjxig7SzgjggHRp2xOd9Xb80cVSz88ToS1VURikOpaj4aJ8eBW
         YLK0YoHygOxENCn2e0RYKueGiaieW9L61Rrj+dp15sxjbsIJoS5hQ0uztXINfknMqV5b
         loeyiRZhokeh4e5WQ13+O8gOGc6MYv8uYgZsECJDeRH+US+IGizM8kBfLjA/8iECXgt+
         6EmQ==
X-Gm-Message-State: AOJu0YzPkNO0tgE5/f1h5yeBIJ73p4zRHSFK5P5rSyO+ktt9xHSg/IvO
	Ds2Y4QcJplzyopKGCDhIJgze8mFijEBzJ1spF5RowPRNBfv9HJF+d+EY
X-Gm-Gg: AZuq6aI/qS+Ya3/TCmdwR7KQfYhliYUHzlf57AT6ZSxui802paqGwn6t59eqPI7Iqgb
	Phem/mq0Jr2p+J56uaBRXAfzyEopUPPlEP9qR3/deDxxnIcLynpOnskv0Pm01y9cVcbGv52rQQM
	aohVrfNGYfAwDREZfx7VuB1nn0Rr6yiqLfckwnGzv/dZOqoe0T346WHKQRy1w4r7lTlk5ppzrBc
	tX2bqfTihpxV3CnusmP2EYeouZc61DieWtalpNtvxCpXzvhG5mw3KPzrQSA6rKD02807YOqdwVu
	0k4QXT2tv/ThzoZ55dWL2cLoz0Cn/Und6TU5foQCIbookXMUj16MjEXYtaT8nhqdk8W7pWXF9yM
	0ei0cWVYYo8kQ+FxhkswX6/m+qoYPj7ZcBB3lVbyzY+4CYYSSEAX9SrwEog92qMdVIkY9vdnKvS
	C9A5xVkDBulCqpMynLplYBq7hbSTHlA4RzNE7RL3eYlutW
X-Received: by 2002:a17:902:f681:b0:2a5:99ec:16d7 with SMTP id d9443c01a7336-2a7fe43ecd4mr2224725ad.7.1769104476545;
        Thu, 22 Jan 2026 09:54:36 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:36 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 22 Jan 2026 17:52:59 +0000
Subject: [PATCH v3 3/3] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
MIME-Version: 1.0
Message-Id: <20260122-ti-phy-v3-3-751619729433@gmail.com>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
In-Reply-To: <20260122-ti-phy-v3-0-751619729433@gmail.com>
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
X-CRM114-CacheID: sfid-20260122_095437_800993_DB8462CA 
X-CRM114-Status: GOOD (  20.88  )
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
