Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FFD6C71130
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SslijelMgDGVuPeechG7MSB2z/V++yz+IL/xurSTGCQ=; b=FrmYrJpBBF4j/s
	98VTK6vQpA4Ub+xkuMeGSeWLKuSALQzYC0wLOjAgfD9fDxeAmxOQPMeFuhT2OuBiC66as9RWn8sfc
	CbZnM/CTnsf6YgTKXm04lx4T0kBGlR1MSINFeNTO7kLupiBMjnE1EA+hr2DQ07+6mZVEKl/EAh+FZ
	OejA69bvNOgsZGmcMnxr4S9jINzOzYKxt5hYvHYEtS+YfVu6qjv01ZPi0+D+xsQGU4BxFeQQ7sVPv
	xHIkfHWewczG75dkyM0xUHFBzY2SPGkU3W1idmgDLAh8mni8K1KTJOz1pgTO4hJH7/wuAFJR07ns5
	0n6vvB0amteLem1mUwCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14m-000000027oV-1ckn;
	Sat, 07 Jun 2025 21:27:40 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13M-000000027P9-10Bm
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AA6A06115D;
	Sat,  7 Jun 2025 21:26:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D3E2C4CEF2;
	Sat,  7 Jun 2025 21:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331571;
	bh=9qIg7nbVlH9lBf4gZhbYJUi7zeVRI83SNOM20GBH+CM=;
	h=From:To:Cc:Subject:Date:From;
	b=ouDPQgbiVnLPKhnyAvyov/3263kJMXAShxvV/Usojroe+jzVKurcqPn30gGnV4tQH
	 hwzu98oQEH5TjSPfThN84P7fz9jtH4X+EtbGR3UlYovTeLeH7YRj2akPnrQNLBeFX6
	 mDNQO8jLQnpZMx7UW9DM7NKMRb1MNcam8IWrQjika5zqU/ApkZaPXq4rNaKoTT+FAM
	 9atCRkVQdFmjndCrT2G5pPq9JZ3ku+EWDv1sJWd0/z5kve77yM8FFRruCJ5SDU6XFq
	 Pa1mPAwHG8IEbx3obaxZqDz0ZsdGHO0wqpMHHT984PbMmck+IzZNm8VCyysQU/2R2P
	 Y6ilD77tJlluA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert Marvell MVEBU PHYs to DT schema
Date: Sat,  7 Jun 2025 16:26:07 -0500
Message-ID: <20250607212609.743346-1-robh@kernel.org>
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

Convert the Marvell Armada-375 USB and MVEBU SATA PHY binding to DT
schema format. It's a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../phy/marvell,armada-375-usb-cluster.yaml   | 40 ++++++++++++++++
 .../bindings/phy/marvell,mvebu-sata-phy.yaml  | 47 +++++++++++++++++++
 .../devicetree/bindings/phy/phy-mvebu.txt     | 42 -----------------
 3 files changed, 87 insertions(+), 42 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,armada-375-usb-cluster.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,mvebu-sata-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-mvebu.txt

diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-375-usb-cluster.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-375-usb-cluster.yaml
new file mode 100644
index 000000000000..1706c31644e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/marvell,armada-375-usb-cluster.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/marvell,armada-375-usb-cluster.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Armada 375 USB Cluster
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Gregory Clement <gregory.clement@bootlin.com>
+
+description:
+  Control register for the Armada 375 USB cluster, managing USB2 and USB3 features.
+
+properties:
+  compatible:
+    const: marvell,armada-375-usb-cluster
+
+  reg:
+    maxItems: 1
+
+  '#phy-cells':
+    description: Number of PHY cells in specifier. 1 for USB2, 2 for USB3.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    usbcluster: usb-cluster@18400 {
+        compatible = "marvell,armada-375-usb-cluster";
+        reg = <0x18400 0x4>;
+        #phy-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/marvell,mvebu-sata-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,mvebu-sata-phy.yaml
new file mode 100644
index 000000000000..81e942428911
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/marvell,mvebu-sata-phy.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/marvell,mvebu-sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell MVEBU SATA PHY
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Gregory Clement <gregory.clement@bootlin.com>
+
+properties:
+  compatible:
+    const: marvell,mvebu-sata-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: sata
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    sata-phy@84000 {
+        compatible = "marvell,mvebu-sata-phy";
+        reg = <0x84000 0x0334>;
+        clocks = <&gate_clk 15>;
+        clock-names = "sata";
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-mvebu.txt b/Documentation/devicetree/bindings/phy/phy-mvebu.txt
deleted file mode 100644
index 64afdd13d91d..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-mvebu.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-* Marvell MVEBU SATA PHY
-
-Power control for the SATA phy found on Marvell MVEBU SoCs.
-
-This document extends the binding described in phy-bindings.txt
-
-Required properties :
-
- - reg		   : Offset and length of the register set for the SATA device
- - compatible	   : Should be "marvell,mvebu-sata-phy"
- - clocks	   : phandle of clock and specifier that supplies the device
- - clock-names	   : Should be "sata"
-
-Example:
-		sata-phy@84000 {
-			compatible = "marvell,mvebu-sata-phy";
-			reg = <0x84000 0x0334>;
-			clocks = <&gate_clk 15>;
-			clock-names = "sata";
-			#phy-cells = <0>;
-		};
-
-Armada 375 USB cluster
-----------------------
-
-Armada 375 comes with an USB2 host and device controller and an USB3
-controller. The USB cluster control register allows to manage common
-features of both USB controllers.
-
-Required properties:
-
-- compatible: "marvell,armada-375-usb-cluster"
-- reg: Should contain usb cluster register location and length.
-- #phy-cells : from the generic phy bindings, must be 1. Possible
-values are 1 (USB2), 2 (USB3).
-
-Example:
-		usbcluster: usb-cluster@18400 {
-			compatible = "marvell,armada-375-usb-cluster";
-			reg = <0x18400 0x4>;
-			#phy-cells = <1>
-		};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
