Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 552D6C7EE2A
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 22:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h7FOnBLP1n3/+XEczyutuJ7AXNnSyzhb7gLsRwmFP3Q=; b=OkuoXhbTzHSDNw
	9wxc4Eye4zsaJ8+72WpE04AWRsZqwga/IxsoZT8e5JhP6HEFXnN+AG4qQzI4yQpJoWoHRx/gxld8I
	V8j1fHOj9I6fddVRFYkajiy7uvkW5b1NYT60DnhOHtC5cbGoiTsw6zmoSahd3xF5WQTIaOEWkh9aQ
	Ow/D0/S9Igz9hM3wg08y3a1lI9ELTO8ETWJSMAqyEQq1bSEoq/lKmrU9d7PxM7pMElOfIUmUyIiwU
	eYt+PP++A7morbGGZy5fXpSxZ+xcd2Xx8GE6/Q+4pqr9MRiDKoZnKpERAv2mmAvWF5S8zdAY7J+FU
	zzmNDOm8qpPvFCVpKMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVH9g-0000000FuYG-49nF;
	Fri, 27 Jun 2025 22:02:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVH8C-0000000FuPB-0we0
	for linux-phy@lists.infradead.org;
	Fri, 27 Jun 2025 22:01:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A267161435;
	Fri, 27 Jun 2025 22:01:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AA5AC4CEE3;
	Fri, 27 Jun 2025 22:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751061671;
	bh=BBDMuacztTBtEROA79o/9jfSg7I2yx27X8lo9p2vjMI=;
	h=From:To:Cc:Subject:Date:From;
	b=dQhqkObnkc688nkTHLB1YNw+nkGpECLKTrcGZicJVv8dZnR8PU8BemzkPgj2ZD12N
	 N7PX7/OyDQtenL2S4MiJcoaTi9jiRQB8K3Y8GL3l1K6x+OdcLT8eYAxzAC+Qd4VYbG
	 9Q74EfVF/dtBENO2yEq6IFHBVJGy/C/qx6k1H8MpI4sDPLJksnIkSz+DoT8Q2AKFjR
	 OMEBJVwgtSSOHMXAPOLQgiXPmMWkF/xe3WNynjC+xcecG3ICmSMObRUwJnsrXPfEH0
	 FezZ8HAVdeaxXruSwoboLyaoBA1p6hmc8eRqRrO6s+zMX3iFk13pFp6zk91OkL1l7t
	 MevjIQnyY4OSA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: phy: Convert ti,da830-usb-phy to DT schema
Date: Fri, 27 Jun 2025 17:01:06 -0500
Message-ID: <20250627220107.214162-1-robh@kernel.org>
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

Convert the TI DA830 USB PHY binding to DT schema format. Add "clocks"
and "clock-names" which are already in use. As they are always present,
make them required as well.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
v2:
 - Move some description to #phy-cells
 - Make clocks/clock-names required
---
 .../devicetree/bindings/phy/phy-da8xx-usb.txt | 40 --------------
 .../bindings/phy/ti,da830-usb-phy.yaml        | 53 +++++++++++++++++++
 2 files changed, 53 insertions(+), 40 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-da8xx-usb.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ti,da830-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-da8xx-usb.txt b/Documentation/devicetree/bindings/phy/phy-da8xx-usb.txt
deleted file mode 100644
index c26478be391b..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-da8xx-usb.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-TI DA8xx/OMAP-L1xx/AM18xx USB PHY
-
-Required properties:
- - compatible: must be "ti,da830-usb-phy".
- - #phy-cells: must be 1.
-
-This device controls the PHY for both the USB 1.1 OHCI and USB 2.0 OTG
-controllers on DA8xx SoCs. Consumers of this device should use index 0 for
-the USB 2.0 phy device and index 1 for the USB 1.1 phy device.
-
-It also requires a "syscon" node with compatible = "ti,da830-cfgchip", "syscon"
-to access the CFGCHIP2 register.
-
-Example:
-
-	cfgchip: cfgchip@1417c {
-		compatible = "ti,da830-cfgchip", "syscon";
-		reg = <0x1417c 0x14>;
-	};
-
-	usb_phy: usb-phy {
-		compatible = "ti,da830-usb-phy";
-		#phy-cells = <1>;
-	};
-
-	usb20: usb@200000 {
-		compatible = "ti,da830-musb";
-		reg = <0x200000 0x1000>;
-		interrupts = <58>;
-		phys = <&usb_phy 0>;
-		phy-names = "usb-phy";
-	};
-
-	usb11: usb@225000 {
-		compatible = "ti,da830-ohci";
-		reg = <0x225000 0x1000>;
-		interrupts = <59>;
-		phys = <&usb_phy 1>;
-		phy-names = "usb-phy";
-	};
diff --git a/Documentation/devicetree/bindings/phy/ti,da830-usb-phy.yaml b/Documentation/devicetree/bindings/phy/ti,da830-usb-phy.yaml
new file mode 100644
index 000000000000..1d6f30b5a159
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,da830-usb-phy.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,da830-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DA8xx/OMAP-L1xx/AM18xx USB PHY
+
+maintainers:
+  - David Lechner <david@lechnology.com>
+
+description: >
+  This device controls the PHY for both the USB 1.1 OHCI and USB 2.0 OTG
+  controllers on DA8xx SoCs.
+  
+  It also requires a "syscon" node with compatible = "ti,da830-cfgchip", "syscon"
+  to access the CFGCHIP2 register.
+
+properties:
+  compatible:
+    items:
+      - const: ti,da830-usb-phy
+
+  '#phy-cells':
+    const: 1
+    description:
+      Consumers of this device should use index 0 for the USB 2.0 phy device and
+      index 1 for the USB 1.1 phy device.
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: usb0_clk48
+      - const: usb1_clk48
+
+required:
+  - compatible
+  - '#phy-cells'
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy {
+        compatible = "ti,da830-usb-phy";
+        #phy-cells = <1>;
+        clocks = <&usb_phy_clk 0>, <&usb_phy_clk 1>;
+        clock-names = "usb0_clk48", "usb1_clk48";
+    };
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
