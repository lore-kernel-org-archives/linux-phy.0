Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE23C678DA
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YDsmc+czjqsp+xWC4oywtBwQ+vVF0I1sGNH9KjPA9gM=; b=p2IPVLzWDhQxUc
	74KgSnRGxzZVZhQNVnED4XiF7U4PdWMMSd73h5e2ty5FVX2FMM8zU0sFWJL9NipSevvS+XChl43gV
	rYumfdpCPqFjkqx/wlMg4iTWJk5DqvNJ/FPJw3qNn3cf9xQMe4RiOdaXrKCqBJgk2nYa/jY5sAwvl
	3Hj6e9w0yR7+Sxeqq5E/2tNRZOyMbeCwAWDkfxPqfM2n3TRygrzCMy3Pp6gEsK8RUMZuD4LV8jwKh
	IkeYfXDiSWz1KmIULzbWtzuwODOPvdzKWROSi1YP+FGmYbIgXyCNx0BrFDnjf3kcoyd6G48IbJ8Xq
	RRR4nXqHplrEWbCeeEYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14k-000000027mA-3QaB;
	Sat, 07 Jun 2025 21:27:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12q-000000027G2-1b5E
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 22D7F5C586F;
	Sat,  7 Jun 2025 21:23:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6770EC4CEF2;
	Sat,  7 Jun 2025 21:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331539;
	bh=lDutR/OkZJ8kejemD+ev3cJGgma3EktDwsICk0qZi/c=;
	h=From:To:Cc:Subject:Date:From;
	b=QiVYTStC0tCKCpWkxIXZjo51dquboWRkaSsp9XUW3T6nGrRTiI1b3gcFjshihMhkn
	 gc3j/YqolsyW8TRo24Y7YaZmkfOckgbgms1HEAmMDUyUQ6LUepPZBe4TM/6uoXE4cc
	 jQ4AWh/i9e25i624WS3WVuMctwJOSNgdUos0/l2+kTqDJRoybJHjDvD68eDjCH38cd
	 cQfdMHgQobnfJ6H0DqsWmYsl1CfGpMIeBJVHmeEuar5y7oh3b2hXQ1icvwdQdPkiMG
	 C1CThrSJ9UFWvJVKCrwD6CmQZ/yLKV2HjrQodtoxCEtgaCoR7fK6SG6eDAjVoKkWYC
	 9ao94dAP1hC5A==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hauke Mehrtens <hauke@hauke-m.de>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert lantiq,ase-usb2-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:36 -0500
Message-ID: <20250607212537.742287-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142540_851120_ABA93DDA 
X-CRM114-Status: GOOD (  13.46  )
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

Convert the Lantiq XWAY USB PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/lantiq,ase-usb2-phy.yaml     | 71 +++++++++++++++++++
 .../bindings/phy/phy-lantiq-rcu-usb2.txt      | 40 -----------
 2 files changed, 71 insertions(+), 40 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/lantiq,ase-usb2-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt

diff --git a/Documentation/devicetree/bindings/phy/lantiq,ase-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/lantiq,ase-usb2-phy.yaml
new file mode 100644
index 000000000000..99b5da705ca4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/lantiq,ase-usb2-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/lantiq,ase-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Lantiq XWAY SoC RCU USB 1.1/2.0 PHY
+
+maintainers:
+  - Hauke Mehrtens <hauke@hauke-m.de>
+
+description:
+  This node has to be a sub node of the Lantiq RCU block.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - lantiq,ase-usb2-phy
+          - lantiq,danube-usb2-phy
+          - lantiq,xrx100-usb2-phy
+          - lantiq,xrx200-usb2-phy
+          - lantiq,xrx300-usb2-phy
+
+  reg:
+    items:
+      - description: Offset of the USB PHY configuration register
+      - description: Offset of the USB Analog configuration register
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: phy
+
+  resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
+    items:
+      - enum: [ phy, ctrl ]
+      - const: ctrl
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    usb2-phy@18 {
+        compatible = "lantiq,xrx200-usb2-phy";
+        reg = <0x18 4>, <0x38 4>;
+        clocks = <&pmu 1>;
+        clock-names = "phy";
+        resets = <&reset1 4 4>, <&reset0 4 4>;
+        reset-names = "phy", "ctrl";
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt b/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
deleted file mode 100644
index 643948b6b576..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Lantiq XWAY SoC RCU USB 1.1/2.0 PHY binding
-===========================================
-
-This binding describes the USB PHY hardware provided by the RCU module on the
-Lantiq XWAY SoCs.
-
-This node has to be a sub node of the Lantiq RCU block.
-
--------------------------------------------------------------------------------
-Required properties (controller (parent) node):
-- compatible	: Should be one of
-			"lantiq,ase-usb2-phy"
-			"lantiq,danube-usb2-phy"
-			"lantiq,xrx100-usb2-phy"
-			"lantiq,xrx200-usb2-phy"
-			"lantiq,xrx300-usb2-phy"
-- reg		: Defines the following sets of registers in the parent
-		  syscon device
-			- Offset of the USB PHY configuration register
-			- Offset of the USB Analog configuration
-			  register (only for xrx200 and xrx200)
-- clocks	: References to the (PMU) "phy" clk gate.
-- clock-names	: Must be "phy"
-- resets	: References to the RCU USB configuration reset bits.
-- reset-names	: Must be one of the following:
-			"phy" (optional)
-			"ctrl" (shared)
-
--------------------------------------------------------------------------------
-Example for the USB PHYs on an xRX200 SoC:
-	usb_phy0: usb2-phy@18 {
-		compatible = "lantiq,xrx200-usb2-phy";
-		reg = <0x18 4>, <0x38 4>;
-
-		clocks = <&pmu PMU_GATE_USB0_PHY>;
-		clock-names = "phy";
-		resets = <&reset1 4 4>, <&reset0 4 4>;
-		reset-names = "phy", "ctrl";
-		#phy-cells = <0>;
-	};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
