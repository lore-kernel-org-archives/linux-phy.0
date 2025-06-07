Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E54B0C71135
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+OGU4YEv5BKfHnwW0yL5TVi/O+kZMZS8lpASvGoItUc=; b=IFTjlnqgM1+N5+
	8ZKpk83MsswZzg/qgKAmaBFu1N41dJgnqGQUzKi6gPW6RCkE4d+K/rmupD+k4FpzKhHxisHC6dJNn
	7yAEGXNOnyLQIYDmSFika1X/5V7taGsr/oKankTexeDaeePAeXY8YSe+8qf1vY6QJ8K5BSfX8FSJ8
	h3vQP8JU2ADljEqkcO/o6uMGHdZpGCNfjO04b9jJWQBj3hTU5GF2koOaq8PR3p8hPEHyPOvjomRnv
	UN0J+4V0r7iSZfqIu400BjXx0j2/DRyhP1ynC+X3uDzZLY5GN66ozUGxg31wbvbOju1IIRDOjMxvO
	ayqWCvJnfbJandOrwzjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14n-000000027pj-2pyR;
	Sat, 07 Jun 2025 21:27:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13Y-000000027S1-0gom
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 990236115D;
	Sat,  7 Jun 2025 21:26:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FD5BC4CEE4;
	Sat,  7 Jun 2025 21:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331583;
	bh=qPWaXK9VAayAy2Zn/upVRookXCud3+76+B7m5D2a/V4=;
	h=From:To:Cc:Subject:Date:From;
	b=N6xeJSl0Pt2c7+uplpIxh4Ygc8KkdWP2twNJ726W2rnRCpnPos0XGVRp+6mhJxmuF
	 OEPxu9br0i/VojMF436Xi0gtGS9TlaLqIgY4XzpwEvXTd6E9f3+js+3zBXq4MmZ+4S
	 8iTY8npvv12boqBW4A62PEdu8MnKWwGldov7FPnedVptPdPv1Sq/rvhPngtPAetaOt
	 XIfzn1BIksLxpwrn67NkrPDsLzflVDfgCCYCdsOUgOoXAj6BNq+z2S7J4httv1Y+7Z
	 ysUQq8M0gL3CNvPW+1/oG/TonSsObRtFxdd6VGK3xUVFqqBFql+5Si1ofQNl7/doYZ
	 lLJWVUnpGmZgA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert motorola,mapphone-mdm6600 to DT schema
Date: Sat,  7 Jun 2025 16:26:20 -0500
Message-ID: <20250607212621.743859-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

Convert the Motorola Mapphone MDM6600 USB PHY binding to DT schema
format. It's a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../phy/motorola,mapphone-mdm6600.yaml        | 81 +++++++++++++++++++
 .../bindings/phy/phy-mapphone-mdm6600.txt     | 29 -------
 2 files changed, 81 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/motorola,mapphone-mdm6600.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-mapphone-mdm6600.txt

diff --git a/Documentation/devicetree/bindings/phy/motorola,mapphone-mdm6600.yaml b/Documentation/devicetree/bindings/phy/motorola,mapphone-mdm6600.yaml
new file mode 100644
index 000000000000..cb6544b3478d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/motorola,mapphone-mdm6600.yaml
@@ -0,0 +1,81 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/motorola,mapphone-mdm6600.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Motorola Mapphone MDM6600 USB PHY
+
+maintainers:
+  - Tony Lindgren <tony@atomide.com>
+
+properties:
+  compatible:
+    items:
+      - const: motorola,mapphone-mdm6600
+
+  enable-gpios:
+    description: GPIO to enable the USB PHY
+    maxItems: 1
+
+  power-gpios:
+    description: GPIO to power on the device
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO to reset the device
+    maxItems: 1
+
+  motorola,mode-gpios:
+    description: Two GPIOs to configure MDM6600 USB start-up mode for normal mode versus USB flashing mode
+    items:
+      - description: normal mode select GPIO
+      - description: USB flashing mode select GPIO
+
+  motorola,cmd-gpios:
+    description: Three GPIOs to control the power state of the MDM6600
+    items:
+      - description: power state control GPIO 0
+      - description: power state control GPIO 1
+      - description: power state control GPIO 2
+
+  motorola,status-gpios:
+    description: Three GPIOs to read the power state of the MDM6600
+    items:
+      - description: power state read GPIO 0
+      - description: power state read GPIO 1
+      - description: power state read GPIO 2
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - enable-gpios
+  - power-gpios
+  - reset-gpios
+  - motorola,mode-gpios
+  - motorola,cmd-gpios
+  - motorola,status-gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    usb-phy {
+        compatible = "motorola,mapphone-mdm6600";
+        enable-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
+        power-gpios = <&gpio2 22 GPIO_ACTIVE_HIGH>;
+        reset-gpios = <&gpio2 17 GPIO_ACTIVE_HIGH>;
+        motorola,mode-gpios = <&gpio5 20 GPIO_ACTIVE_HIGH>,
+                              <&gpio5 21 GPIO_ACTIVE_HIGH>;
+        motorola,cmd-gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>,
+                              <&gpio4 8 GPIO_ACTIVE_HIGH>,
+                              <&gpio5 14 GPIO_ACTIVE_HIGH>;
+        motorola,status-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>,
+                                <&gpio2 21 GPIO_ACTIVE_HIGH>,
+                                <&gpio2 23 GPIO_ACTIVE_HIGH>;
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-mapphone-mdm6600.txt b/Documentation/devicetree/bindings/phy/phy-mapphone-mdm6600.txt
deleted file mode 100644
index 29427d4f047a..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-mapphone-mdm6600.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-Device tree binding documentation for Motorola Mapphone MDM6600 USB PHY
-
-Required properties:
-- compatible		Must be "motorola,mapphone-mdm6600"
-- enable-gpios		GPIO to enable the USB PHY
-- power-gpios		GPIO to power on the device
-- reset-gpios		GPIO to reset the device
-- motorola,mode-gpios	Two GPIOs to configure MDM6600 USB start-up mode for
-			normal mode versus USB flashing mode
-- motorola,cmd-gpios	Three GPIOs to control the power state of the MDM6600
-- motorola,status-gpios	Three GPIOs to read the power state of the MDM6600
-
-Example:
-
-usb-phy {
-	compatible = "motorola,mapphone-mdm6600";
-	enable-gpios = <&gpio3 31 GPIO_ACTIVE_LOW>;
-	power-gpios = <&gpio2 22 GPIO_ACTIVE_HIGH>;
-	reset-gpios = <&gpio2 17 GPIO_ACTIVE_HIGH>;
-	motorola,mode-gpios = <&gpio5 20 GPIO_ACTIVE_HIGH>,
-			      <&gpio5 21 GPIO_ACTIVE_HIGH>;
-	motorola,cmd-gpios = <&gpio4 7 GPIO_ACTIVE_HIGH>,
-			     <&gpio4 8 GPIO_ACTIVE_HIGH>,
-			     <&gpio5 14 GPIO_ACTIVE_HIGH>;
-	motorola,status-gpios = <&gpio2 20 GPIO_ACTIVE_HIGH>,
-				<&gpio2 21 GPIO_ACTIVE_HIGH>,
-				<&gpio2 23 GPIO_ACTIVE_HIGH>;
-	#phy-cells = <0>;
-};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
