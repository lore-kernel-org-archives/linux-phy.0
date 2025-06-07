Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 002C1C677C4
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zyoaYtEOtvLR01ggtodvRwrIZtvcJ1fQJvHp3HLInWM=; b=eFZbwZwxIQ2bJC
	sUtaPR/ShONujc5kZ4qKup/JIg9ae9ryRhLQ/pVjnaXhoq1eFFjawwrwwlsiUZlM5dDTdZgq2CmrR
	KnwJ1kqN8n35myzX9IqG71XMBd3mfktg/bjh3gUfi0Vf2UL4DcpnugN3xfnxCkrp8VJ1EyI4XSiau
	XHP6PnH+VT5c/0kMegPQYNTu7BaCPffvQOkgVYNB66jrOPsIrRRXMByN+Al6vxT1taSz7BYY6aPgZ
	sXxQ0dE7W+tu2yYkCCYeciVSe55vIFanPhkC03MXAE6kkSOfzEBZ0s+2zEjKsoGrErBemVT+Za5zc
	DnBeOC3+211rp66C1bZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14o-000000027rG-38xD;
	Sat, 07 Jun 2025 21:27:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13o-000000027Wj-2CwU
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DA5D949BDD;
	Sat,  7 Jun 2025 21:26:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B502C4CEE4;
	Sat,  7 Jun 2025 21:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331599;
	bh=qJ4YfuHAzk3f8J8PRLBdnsEu5c8/+vHM8mi4nty4J4A=;
	h=From:To:Cc:Subject:Date:From;
	b=O9A/BqRHEkFde+toPSxzkzZoYQPXif2/zQKYbuvY6Z1qUIUEEx/yXWJ7Po0p23j8+
	 CC7Ri8TGGsGvqml61+0+7sPWptlERC+VUTnkgSWyVjiT+fl+YrrT2Ki+ahoF57qFlb
	 ULTmuUfRZ494fBFx7KkPbvUtFGLj/MeTOdPr7ACVuSeNJO6if8fnhmBFkjLlrMR3BU
	 Z7PA2Op82T9YXnqKV6JrLblKT08acuCy1C8MLlmljGrYwhoK+CcBsrS75cd662OE89
	 TJD4YJEjxHEXpP6s5Zg1ynQXa4S4QSOah6hlAdFIZ+sAnzs32yKiTESDUZSccZmSTW
	 xiP5YIxPyY8VA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <david@lechnology.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert ti,da830-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:26:36 -0500
Message-ID: <20250607212638.744524-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142640_602711_5B8D3B65 
X-CRM114-Status: GOOD (  13.22  )
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
and "clock-names" which are already in use.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/phy/phy-da8xx-usb.txt | 40 ---------------
 .../bindings/phy/ti,da830-usb-phy.yaml        | 49 +++++++++++++++++++
 2 files changed, 49 insertions(+), 40 deletions(-)
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
index 000000000000..e18746f80982
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,da830-usb-phy.yaml
@@ -0,0 +1,49 @@
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
+  controllers on DA8xx SoCs. Consumers of this device should use index 0 for
+  the USB 2.0 phy device and index 1 for the USB 1.1 phy device.
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
