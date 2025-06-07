Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7BA1C71132
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jpNoouWvJrDAj6s9B+jbxq3CWtinGegf7xyiVAr3HkY=; b=JBacX4IbDBts6o
	Nq3V+t27OilVDhI0UglXEQ1UczTEIkNNunDO+R7Z6sY2pVPLTKy93eEkcISZuroevSq6I7mHpbflI
	T8+3VoS1WLrPGyrVopo7mbSJ8iCFNCahXcJCnDDPxhRdGQaRbA3zxMrkSv+v8dZaeduFLkNzcAUym
	MughqZvvtLHWwan2UUJqAIaq9c1aazzvzxeO/9jSU6c5n557AgTDwqPhp8B1UUGbqSEYpx0Is9iKR
	MZlvCwf/5sNTWgjXnZVEOnr45Euy6BEyCTtNl9qMhGMSQaVTsJi3KdfPMj03NiXEeKCYtw6MeK2qj
	jGdRGJ65LWH2iarI2yXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14l-000000027nK-22sQ;
	Sat, 07 Jun 2025 21:27:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO134-000000027KG-0sC0
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E8AD45C586F;
	Sat,  7 Jun 2025 21:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35897C4CEE4;
	Sat,  7 Jun 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331553;
	bh=S5OJVr6BMTt9ny5ViUGSZwRUrV81HRHFty5+QI2xE3M=;
	h=From:To:Cc:Subject:Date:From;
	b=eNfDf5j2U6C3hZIIb7v+x4L0SasIJZyvKNacZ9zPkzCqLiQU/8HKFptHZ8b4RrMzL
	 MZ8IdxZ84E5WLezriHrav9zaHUMEEhrVM7ksEbLfnaHDM//vSqzkoQBMzJQOrEvzM6
	 y2ek2XC5LMDcBAtUrqM1W7mP29kx8nIgPNykQqTQtqGtwu/BFEo3OgB2SAI9Of7Eq/
	 2Mgwa3GSq5z0Xp/j2gM9+T5kZnogG/siHHdouuvKa+880elGji07IFTHdBmTiqy3tY
	 2gMqZwFAPEYyiux2COW6mQK3Hmadijbs7JUOWGP4uDDMQgKzT3dBpWtUKtkxUcR0e/
	 6uuwX3heMt+OQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoine Tenart <atenart@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert marvell,berlin2-sata-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:44 -0500
Message-ID: <20250607212545.742617-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142554_332307_66274D34 
X-CRM114-Status: GOOD (  11.34  )
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

Convert the Marvell Berlin2 SATA PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/berlin-sata-phy.txt          | 36 ---------
 .../phy/marvell,berlin2-sata-phy.yaml         | 76 +++++++++++++++++++
 2 files changed, 76 insertions(+), 36 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/berlin-sata-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,berlin2-sata-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/berlin-sata-phy.txt b/Documentation/devicetree/bindings/phy/berlin-sata-phy.txt
deleted file mode 100644
index c0155f842f62..000000000000
--- a/Documentation/devicetree/bindings/phy/berlin-sata-phy.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Berlin SATA PHY
----------------
-
-Required properties:
-- compatible: should be one of
-    "marvell,berlin2-sata-phy"
-    "marvell,berlin2q-sata-phy"
-- address-cells: should be 1
-- size-cells: should be 0
-- phy-cells: from the generic PHY bindings, must be 1
-- reg: address and length of the register
-- clocks: reference to the clock entry
-
-Sub-nodes:
-Each PHY should be represented as a sub-node.
-
-Sub-nodes required properties:
-- reg: the PHY number
-
-Example:
-	sata_phy: phy@f7e900a0 {
-		compatible = "marvell,berlin2q-sata-phy";
-		reg = <0xf7e900a0 0x200>;
-		clocks = <&chip CLKID_SATA>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		#phy-cells = <1>;
-
-		sata-phy@0 {
-			reg = <0>;
-		};
-
-		sata-phy@1 {
-			reg = <1>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/phy/marvell,berlin2-sata-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,berlin2-sata-phy.yaml
new file mode 100644
index 000000000000..6fc9ff96e682
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/marvell,berlin2-sata-phy.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/marvell,berlin2-sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Berlin SATA PHY
+
+maintainers:
+  - Antoine Tenart <atenart@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - marvell,berlin2-sata-phy
+      - marvell,berlin2q-sata-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  '#phy-cells':
+    const: 1
+
+patternProperties:
+  '^sata-phy@[0-1]$':
+    description: A SATA PHY sub-node.
+    type: object
+    additionalProperties: false
+
+    properties:
+      reg:
+        maximum: 1
+        description: PHY index number.
+
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#address-cells'
+  - '#size-cells'
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/berlin2q.h>
+
+    phy@f7e900a0 {
+        compatible = "marvell,berlin2q-sata-phy";
+        reg = <0xf7e900a0 0x200>;
+        clocks = <&chip CLKID_SATA>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        #phy-cells = <1>;
+
+        sata-phy@0 {
+            reg = <0>;
+        };
+
+        sata-phy@1 {
+            reg = <1>;
+        };
+    };
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
