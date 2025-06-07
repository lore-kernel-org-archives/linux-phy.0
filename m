Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68221C678DF
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yI/G9C3VPyZGKOnxTtbdR0ktw0GQBVfJs2Scl6lDyR8=; b=Q39if7sZP27VBL
	HmiGgSjEX0ROgPLj49IP33MObUGyA2UxkVDzTUbff5zn/by621JnSJAUOf7m4lYvYhm4BWgkem+uf
	FGK/g738xrCtwdOhIMRIFnMmCEUB8Wg3aP7EAJNLps56biZGqYmR2as+1DWxs5dn1c0w95ysiTxkz
	/UW1USwVgH91HT241JJQP/QPTfZeNhxDiwVQU5rc2EcO/oSLojExa6oE75g1YK1G36tmCtIhUj50B
	nDPnL95NIsJAubvyACr6ZDV6wJI3hNyU/Y4cE30fq7iXf7R38S+4/RwM7bT7tLFdcUIXpjnJ9aMR0
	2BM6BAsxbuek482yxjbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14l-000000027mp-0ao2;
	Sat, 07 Jun 2025 21:27:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12u-000000027Hg-3m2m
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 19FC2A41759;
	Sat,  7 Jun 2025 21:25:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F96FC4CEE4;
	Sat,  7 Jun 2025 21:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331543;
	bh=j1/lkJgtqy4+16mK/gyMR0VMNIfeyeJnF3QBrtQixPs=;
	h=From:To:Cc:Subject:Date:From;
	b=opIVyA5/vgjtAQC0y8vRkUfTuiwiCbucZJ86OmP1L+apjv67v9wLw95EP/VfBLJnb
	 AAia9zkhxq7RVdLrdy1RM/ZNDuWkT+4ejWyhg0OXhNSjc+Nw4YCBWFe0ngxObN6U7K
	 hnE+q/qV5eAznRCKpFp0TaCS2Mg+v2NECUvyhmTJv8JsPFB9hDxDJdZkDCngebWcbF
	 6p8p7FpGyHxKPOudNm0oJ89uDh5OQRjkmzU5itfU+W/e2ElzBoWy6fmua1UsnJtZN/
	 ZaJ0UylnbnaeHyvqS5hUqkoB9ET/a5KfyFZX2we/T4URF3wSNa7SXnnWtafG7lERe4
	 eBwR3pO6fdOIg==
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
Subject: [PATCH] dt-bindings: phy: Convert marvell,armada-380-comphy to DT schema
Date: Sat,  7 Jun 2025 16:25:40 -0500
Message-ID: <20250607212541.742427-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142545_066903_1CEE4D8E 
X-CRM114-Status: GOOD (  12.36  )
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

Convert the Marvell Armada 38x combo PHY binding to DT schema format.
It's a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../phy/marvell,armada-380-comphy.yaml        | 83 +++++++++++++++++++
 .../bindings/phy/phy-armada38x-comphy.txt     | 48 -----------
 2 files changed, 83 insertions(+), 48 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,armada-380-comphy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-armada38x-comphy.txt

diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-380-comphy.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-380-comphy.yaml
new file mode 100644
index 000000000000..dcb4c0007832
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/marvell,armada-380-comphy.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/marvell,armada-380-comphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Armada 38x COMPHY controller
+
+maintainers:
+  - Andrew Lunn <andrew@lunn.ch>
+  - Gregory Clement <gregory.clement@bootlin.com>
+
+description:
+  This comphy controller can be found on Marvell Armada 38x. It provides a
+  number of shared PHYs used by various interfaces (network, sata, usb,
+  PCIe...).
+
+properties:
+  compatible:
+    items:
+      - const: marvell,armada-380-comphy
+
+  reg:
+    items:
+      - description: COMPHY register location and length
+      - description: Configuration register location and length
+
+  reg-names:
+    items:
+      - const: comphy
+      - const: conf
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  '^phy@[0-5]$':
+    description: A COMPHY lane
+    type: object
+    additionalProperties: false
+
+    properties:
+      reg:
+        maximum: 1
+
+      '#phy-cells':
+        description: Input port index for the PHY lane
+        const: 1
+
+    required:
+      - reg
+      - '#phy-cells'
+
+required:
+  - compatible
+  - reg
+  - '#address-cells'
+  - '#size-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    comphy: phy@18300 {
+        compatible = "marvell,armada-380-comphy";
+        reg = <0x18300 0x100>, <0x18460 4>;
+        reg-names = "comphy", "conf";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        cpm_comphy0: phy@0 {
+            reg = <0>;
+            #phy-cells = <1>;
+        };
+
+        cpm_comphy1: phy@1 {
+            reg = <1>;
+            #phy-cells = <1>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-armada38x-comphy.txt b/Documentation/devicetree/bindings/phy/phy-armada38x-comphy.txt
deleted file mode 100644
index 8b5a7a28a35b..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-armada38x-comphy.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-mvebu armada 38x comphy driver
-------------------------------
-
-This comphy controller can be found on Marvell Armada 38x. It provides a
-number of shared PHYs used by various interfaces (network, sata, usb,
-PCIe...).
-
-Required properties:
-
-- compatible: should be "marvell,armada-380-comphy"
-- reg: should contain the comphy register location and length.
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-
-Optional properties:
-
-- reg-names: must be "comphy" as the first name, and "conf".
-- reg: must contain the comphy register location and length as the first
-    pair, followed by an optional configuration register address and
-    length pair.
-
-A sub-node is required for each comphy lane provided by the comphy.
-
-Required properties (child nodes):
-
-- reg: comphy lane number.
-- #phy-cells : from the generic phy bindings, must be 1. Defines the
-               input port to use for a given comphy lane.
-
-Example:
-
-	comphy: phy@18300 {
-		compatible = "marvell,armada-380-comphy";
-		reg-names = "comphy", "conf";
-		reg = <0x18300 0x100>, <0x18460 4>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpm_comphy0: phy@0 {
-			reg = <0>;
-			#phy-cells = <1>;
-		};
-
-		cpm_comphy1: phy@1 {
-			reg = <1>;
-			#phy-cells = <1>;
-		};
-	};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
