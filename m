Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D7F9C48BC3
	for <linux-phy@archiver.kernel.org>; Sat, 17 Feb 2024 14:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzkZQ5BXZdHyCgJoIXf1Iq2d03HhF9xlnyh9cKVLcgM=; b=dY/z0T/XIB+UNv
	mhgEqPCVmuaRYQfwrOjyDKe/BegdyaurTIIgtwbq4EM9wfHeGdEK7PhygP2r1WQbVGWCLCZQIdclv
	ARUhvpXAFJHiTXFqvQaLAp8aj3agg0iLIcBlyNpTMrwT0szG94diL1geqtKLm0tDJAsGovujsNwJt
	opzk7udE11ytHLouBHQGipR94iGPa+6luzxQJ3YfbTzEWyxa9Ap8D4RKtvKXTGvawtM84FXfaDmlg
	Ss4MpoaBqpXRT6gB/4vq/qEieb3vZKAQFJI2jncvwB16gKDqn84TtI9IuFg+sXWYmEloptIfFLTuu
	WePcxpnFRYeR9ey2fwHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbLHR-00000005n92-0flB;
	Sat, 17 Feb 2024 14:03:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbLHL-00000005n6i-3Ur4
	for linux-phy@lists.infradead.org;
	Sat, 17 Feb 2024 14:02:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9A629CE09ED;
	Sat, 17 Feb 2024 14:02:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD1BC433F1;
	Sat, 17 Feb 2024 14:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708178571;
	bh=lHIkP93cp1wiDLjkwEfV9tYxAmOs3XojUDO3LQnSIYM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=GTgul5cyvQdPbZPbhuN5izLHjM13A4ABYWjWdg+LbgNu0QDP5uwGTzd7MpynWHc2l
	 9TRKh5vBOXzgnk3/PwaizCAYM1FySQG4Qw6/B3/E0p/+40i5sKNbMPotx1hbPIGmkd
	 /KZryMaPdyO6UNXRwJwxGD1rRafxcdc8BanwsOTWfkMiyNDWPF5SjKahf6/wk5XCf3
	 Mtznp6RBCx73JMoVSh+UmPXBxHqLCuEktIYcz3ARnwtMLgqQK1zMy2bwdpirQj3NZK
	 KGMfWNCWUypIJJcflhiFToWZCG72H1rOshLZcS+7YB/LkKqHVMtw6l1A+GKDzNg/qU
	 xd0bBvV3rWRzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EFEC48BF8;
	Sat, 17 Feb 2024 14:02:51 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Sat, 17 Feb 2024 22:02:45 +0800
Subject: [PATCH RFC v2 1/4] dt-bindings: phy: hisi-inno-usb2: convert to
 YAML
MIME-Version: 1.0
Message-Id: <20240217-inno-phy-v2-1-3bf7e87b0e9e@outlook.com>
References: <20240217-inno-phy-v2-0-3bf7e87b0e9e@outlook.com>
In-Reply-To: <20240217-inno-phy-v2-0-3bf7e87b0e9e@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Shawn Guo <shawn.guo@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708178566; l=5202;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=S10kxyAA+0zcLslyAPap5mw+bF2BBsabAHscvCgNtfw=;
 b=Y3S+hsOizkFLpagFOiUB+KQ7SpeWsONjf/SpDIki3AlBiNOnu9nBJZYogmDnIhD0TAF9otXJR
 dnBndRX/FHGD9sc0kzZaX7bMFMWEI9OMH/+9Imoj7N0yHbnI2pGRZ/7
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240217_060256_337853_380CF3F9 
X-CRM114-Status: GOOD (  12.78  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Yang Xiwen <forbidden405@outlook.com>

Also rename to hisilicon,inno-usb2-phy.yaml and add this name to
compatible lists.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 .../bindings/phy/hisilicon,inno-usb2-phy.yaml      | 95 ++++++++++++++++++++++
 .../devicetree/bindings/phy/phy-hisi-inno-usb2.txt | 71 ----------------
 2 files changed, 95 insertions(+), 71 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
new file mode 100644
index 000000000000..bfbda1568557
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/hisilicon,inno-usb2-phy.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/hisilicon,inno-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HiSilicon HiSTB SoCs INNO USB2 PHY device
+
+maintainers:
+  - Yang Xiwen <forbidden405@outlook.com>
+
+properties:
+  compatible:
+    minItems: 1
+    items:
+      - enum:
+          - hisilicon,hi3798cv200-usb2-phy
+          - hisilicon,hi3798mv100-usb2-phy
+      - const: hisilicon,inno-usb2-phy
+
+  reg:
+    maxItems: 1
+    description: |
+      Should be the address space for PHY configuration register in peripheral
+      controller, e.g. PERI_USB0 for USB 2.0 PHY01 on Hi3798CV200 SoC.
+      Or direct MMIO address space.
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  clocks:
+    maxItems: 1
+    description: reference clock
+
+  resets:
+    maxItems: 1
+
+patternProperties:
+  'phy@[0-9a-f]+':
+    type: object
+    additionalProperties: false
+    description: individual ports provided by INNO PHY
+
+    properties:
+      reg:
+        maxItems: 1
+
+      '#phy-cells':
+        const: 0
+
+      resets:
+        maxItems: 1
+
+    required:
+      - reg
+      - '#phy-cells'
+      - resets
+
+required:
+  - compatible
+  - clocks
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/histb-clock.h>
+
+    usb2-phy@120 {
+        compatible = "hisilicon,hi3798cv200-usb2-phy";
+        reg = <0x120 0x4>;
+        clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
+        resets = <&crg 0xbc 4>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        phy@0 {
+            reg = <0>;
+            #phy-cells = <0>;
+            resets = <&crg 0xbc 8>;
+        };
+
+        phy@1 {
+            reg = <1>;
+            #phy-cells = <0>;
+            resets = <&crg 0xbc 9>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt
deleted file mode 100644
index 104953e849e7..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-hisi-inno-usb2.txt
+++ /dev/null
@@ -1,71 +0,0 @@
-Device tree bindings for HiSilicon INNO USB2 PHY
-
-Required properties:
-- compatible: Should be one of the following strings:
-	"hisilicon,inno-usb2-phy",
-	"hisilicon,hi3798cv200-usb2-phy".
-- reg: Should be the address space for PHY configuration register in peripheral
-  controller, e.g. PERI_USB0 for USB 2.0 PHY01 on Hi3798CV200 SoC.
-- clocks: The phandle and clock specifier pair for INNO USB2 PHY device
-  reference clock.
-- resets: The phandle and reset specifier pair for INNO USB2 PHY device reset
-  signal.
-- #address-cells: Must be 1.
-- #size-cells: Must be 0.
-
-The INNO USB2 PHY device should be a child node of peripheral controller that
-contains the PHY configuration register, and each device supports up to 2 PHY
-ports which are represented as child nodes of INNO USB2 PHY device.
-
-Required properties for PHY port node:
-- reg: The PHY port instance number.
-- #phy-cells: Defined by generic PHY bindings.  Must be 0.
-- resets: The phandle and reset specifier pair for PHY port reset signal.
-
-Refer to phy/phy-bindings.txt for the generic PHY binding properties
-
-Example:
-
-perictrl: peripheral-controller@8a20000 {
-	compatible = "hisilicon,hi3798cv200-perictrl", "simple-mfd";
-	reg = <0x8a20000 0x1000>;
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges = <0x0 0x8a20000 0x1000>;
-
-	usb2_phy1: usb2-phy@120 {
-		compatible = "hisilicon,hi3798cv200-usb2-phy";
-		reg = <0x120 0x4>;
-		clocks = <&crg HISTB_USB2_PHY1_REF_CLK>;
-		resets = <&crg 0xbc 4>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usb2_phy1_port0: phy@0 {
-			reg = <0>;
-			#phy-cells = <0>;
-			resets = <&crg 0xbc 8>;
-		};
-
-		usb2_phy1_port1: phy@1 {
-			reg = <1>;
-			#phy-cells = <0>;
-			resets = <&crg 0xbc 9>;
-		};
-	};
-
-	usb2_phy2: usb2-phy@124 {
-		compatible = "hisilicon,hi3798cv200-usb2-phy";
-		reg = <0x124 0x4>;
-		clocks = <&crg HISTB_USB2_PHY2_REF_CLK>;
-		resets = <&crg 0xbc 6>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		usb2_phy2_port0: phy@0 {
-			reg = <0>;
-			#phy-cells = <0>;
-			resets = <&crg 0xbc 10>;
-		};
-	};
-};

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
