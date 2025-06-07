Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9A3C71134
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JwYyCGEZJqKa8JN38FCfPOREXXjc7hXENqp7i+cA0xQ=; b=KYN6babeO7Vp1v
	RqBRyWczNE7x34hnNB4/gN9YhoJDeuLiLCm6yupxru0xLGhheTzqC0N8N3xehgQH9j34jJDcBypYI
	hKvXln7eZcqhcpYE8CDyvzwmUO03zTIwUhO+uhQjLgcWEOh29h9fijxl8+ZGrnByKxS9F5X//iBqv
	wqhddoYtrjEw4/kd2lJhp+a3btoJLygE/qJpYQ6ZslOof2tFYSnG7WxPXHb9rhDPukZtpD6G+1Fdi
	e2gR2B7//26JCIplOydfi6ibNnY07WUBkIkP4NwBEmKU2OvWrkdxO4SWMBasGu0tnfOvk8TIa9ABd
	s1xXTbpdPGG5dSgsfR3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14n-000000027pE-1hJI;
	Sat, 07 Jun 2025 21:27:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13U-000000027RN-2IxV
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 528295C589D;
	Sat,  7 Jun 2025 21:24:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96803C4CEE4;
	Sat,  7 Jun 2025 21:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331579;
	bh=riGBJKNEXXOJxez01Kr2XlCx/B+HZH1yrpRkVzIDIPY=;
	h=From:To:Cc:Subject:Date:From;
	b=rLaarE1CzBtBaHSt1HQWqAAvk7eelpgWFRpVqU4VhMR8GsBkpS2J3qLhNF0OOxlpM
	 Mgevp5wjtWBWM6AZyyG9Gwm+757B3XJ6USigOw1FrL6Atu8NfNLYPkDdvxX40hrMXn
	 cauPKArk9FuUHwZQq8Oke6CtoKBa1px/uETYCeZHh2jI+uUDqrfABx+h6Ev8EqmA0f
	 5yqaz1MTcv1OLilgl8L+hzSEomrUHDVDT95D/NqUTmw6nSd1WJPgxedJr3Z8Z7RTl1
	 fK/DzN9xewWmq0AnvX8k3JliaAwXbZMcElga4L7lxuLMEtJJcseMPwwr9k7fc4bW7A
	 D/qtbG96bUI2g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Tony Lindgren <tony@atomide.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH] dt-bindings: phy: Convert motorola,cpcap-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:26:15 -0500
Message-ID: <20250607212616.743674-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142620_674624_841106C8 
X-CRM114-Status: GOOD (  12.82  )
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

Convert the Motorola CPCAP PMIC USB PHY binding to DT schema format.
It's a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/mfd/motorola-cpcap.txt           |   2 +-
 .../bindings/phy/motorola,cpcap-usb-phy.yaml  | 107 ++++++++++++++++++
 .../devicetree/bindings/phy/phy-cpcap-usb.txt |  40 -------
 3 files changed, 108 insertions(+), 41 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt

diff --git a/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt b/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
index f00827c9b67f..18c3fc26ca93 100644
--- a/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
+++ b/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
@@ -19,7 +19,7 @@ which are described in the following files:
 - Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml
 - Documentation/devicetree/bindings/power/supply/cpcap-charger.yaml
 - Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
-- Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt
+- Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
 - Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
 - Documentation/devicetree/bindings/rtc/cpcap-rtc.txt
 - Documentation/devicetree/bindings/leds/leds-cpcap.txt
diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
new file mode 100644
index 000000000000..0febd04a61f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/motorola,cpcap-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola CPCAP PMIC USB PHY
+
+maintainers:
+  - Tony Lindgren <tony@atomide.com>
+
+properties:
+  compatible:
+    enum:
+      - motorola,cpcap-usb-phy
+      - motorola,mapphone-cpcap-usb-phy
+
+  '#phy-cells':
+    const: 0
+
+  interrupts:
+    description: CPCAP PMIC interrupts used by the USB PHY
+    items:
+      - description: id_ground interrupt
+      - description: id_float interrupt
+      - description: se0conn interrupt
+      - description: vbusvld interrupt
+      - description: sessvld interrupt
+      - description: sessend interrupt
+      - description: se1 interrupt
+      - description: dm interrupt
+      - description: dp interrupt
+
+  interrupt-names:
+    description: Interrupt names
+    items:
+      - const: id_ground
+      - const: id_float
+      - const: se0conn
+      - const: vbusvld
+      - const: sessvld
+      - const: sessend
+      - const: se1
+      - const: dm
+      - const: dp
+
+  io-channels:
+    description: IIO ADC channels used by the USB PHY
+    items:
+      - description: vbus channel
+      - description: id channel
+
+  io-channel-names:
+    items:
+      - const: vbus
+      - const: id
+
+  vusb-supply: true
+
+  pinctrl-names:
+    items:
+      - const: default
+      - const: ulpi
+      - const: utmi
+      - const: uart
+
+  mode-gpios:
+    description: Optional GPIOs for configuring alternate modes
+    items:
+      - description: "mode selection GPIO #0"
+      - description: "mode selection GPIO #1"
+
+required:
+  - compatible
+  - '#phy-cells'
+  - interrupts-extended
+  - interrupt-names
+  - io-channels
+  - io-channel-names
+  - vusb-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    phy {
+        compatible = "motorola,mapphone-cpcap-usb-phy";
+        #phy-cells = <0>;
+        interrupts-extended = <
+            &cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
+            &cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
+            &cpcap 48 1
+        >;
+        interrupt-names = "id_ground", "id_float", "se0conn", "vbusvld",
+                          "sessvld", "sessend", "se1", "dm", "dp";
+        io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
+        io-channel-names = "vbus", "id";
+        vusb-supply = <&vusb>;
+        pinctrl-0 = <&usb_gpio_mux_sel1 &usb_gpio_mux_sel2>;
+        pinctrl-1 = <&usb_ulpi_pins>;
+        pinctrl-2 = <&usb_utmi_pins>;
+        pinctrl-3 = <&uart3_pins>;
+        pinctrl-names = "default", "ulpi", "utmi", "uart";
+        mode-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>, <&gpio1 0 GPIO_ACTIVE_HIGH>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt b/Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt
deleted file mode 100644
index 2eb9b2b69037..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Motorola CPCAP PMIC USB PHY binding
-
-Required properties:
-compatible: Shall be either "motorola,cpcap-usb-phy" or
-	    "motorola,mapphone-cpcap-usb-phy"
-#phy-cells: Shall be 0
-interrupts: CPCAP PMIC interrupts used by the USB PHY
-interrupt-names: Interrupt names
-io-channels: IIO ADC channels used by the USB PHY
-io-channel-names: IIO ADC channel names
-vusb-supply: Regulator for the PHY
-
-Optional properties:
-pinctrl: Optional alternate pin modes for the PHY
-pinctrl-names: Names for optional pin modes
-mode-gpios: Optional GPIOs for configuring alternate modes
-
-Example:
-cpcap_usb2_phy: phy {
-	compatible = "motorola,mapphone-cpcap-usb-phy";
-	pinctrl-0 = <&usb_gpio_mux_sel1 &usb_gpio_mux_sel2>;
-	pinctrl-1 = <&usb_ulpi_pins>;
-	pinctrl-2 = <&usb_utmi_pins>;
-	pinctrl-3 = <&uart3_pins>;
-	pinctrl-names = "default", "ulpi", "utmi", "uart";
-	#phy-cells = <0>;
-	interrupts-extended = <
-		&cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
-		&cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
-		&cpcap 48 1
-	>;
-	interrupt-names =
-		"id_ground", "id_float", "se0conn", "vbusvld",
-		"sessvld", "sessend", "se1", "dm", "dp";
-	mode-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH
-		      &gpio1 0 GPIO_ACTIVE_HIGH>;
-	io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
-	io-channel-names = "vbus", "id";
-	vusb-supply = <&vusb>;
-};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
