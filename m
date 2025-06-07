Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C4AC67861
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tOL7sDmpsFshZVas7Dd0Ahg2LC7hq++SbCzsHuYgaR8=; b=DTTrm5L7mVGuxi
	qCpEKg/0s3wVs8WBla4ExIx9RWTa3BHnbCWLP2cT5L7Tba7CeaH/Wdz4PW9afJWhbAEe6jY4YSVzJ
	jzDddQGt87JLv/kvySzNJBtrQT6WqLhGHaMm/ly5T0j5/qCbaTJo3xKtzJk9/ZnJu5vgk/5CqYKly
	5h0jffx2a8EkVVdtiS32siMWG488MytkDUrov37ZvgT7kMWUHNf4WkkpgRbDQkR4BFoRUE3RMlvUR
	1DbrqrkW/IggXh33BfH3oOy4llnbWBUp8OtiCuFXSSl2FBvY/AoMWGYRfoPA7YISO2ObnjbXmaTYU
	ezP1abYRVKtw3f9VldCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14k-000000027li-2G12;
	Sat, 07 Jun 2025 21:27:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO12m-000000027F7-1QbN
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:25:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 182854AB64;
	Sat,  7 Jun 2025 21:25:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9488C4CEE4;
	Sat,  7 Jun 2025 21:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331535;
	bh=K6AgqbCW9JSjO83IIZgLlFEbhS3N7/Ckiy1gB7abu3E=;
	h=From:To:Cc:Subject:Date:From;
	b=AoZqJDT0febyKLlUO3MJ4D8cpngI3LYXICgQK5r1J9BfeHhXiP7PK0j/+XcDa4HSF
	 cCJXXRbSAPYd8rJepUHpb0dbRoKtvphOROemAMC8H73VeVjvrGLxPnCoM1HymbyotC
	 aRajyi8gXQjymv0HxOv/0RojHp7V1UEnv/hr6NTZgOhHNyvWE1PGO5N7+7GKF0VdPL
	 rr6M5stWF9tl5M79gEZ5bVbHTJoXqckqimxrk5uvEUD15hHMfcrxm+X/5fpTPS7vCs
	 0dy2lmLp0SZuwNN7m9gZzfjT81qootIKeqdGKMe/gDShAfhdhdiD+8be/wkuTcWaNU
	 CgKoGLlpyUX8g==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Bresticker <abrestic@chromium.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert img,pistachio-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:30 -0500
Message-ID: <20250607212531.742082-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142536_422829_CDCBE561 
X-CRM114-Status: GOOD (  12.79  )
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

Convert the Imagination Pistachio USB PHY binding to DT schema format.
It's a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/img,pistachio-usb-phy.yaml   | 62 +++++++++++++++++++
 .../bindings/phy/pistachio-usb-phy.txt        | 29 ---------
 2 files changed, 62 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/img,pistachio-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/img,pistachio-usb-phy.yaml b/Documentation/devicetree/bindings/phy/img,pistachio-usb-phy.yaml
new file mode 100644
index 000000000000..bcc19bc68297
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/img,pistachio-usb-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/img,pistachio-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Imagination Pistachio USB PHY
+
+maintainers:
+  - Andrew Bresticker <abrestic@chromium.org>
+
+properties:
+  compatible:
+    const: img,pistachio-usb-phy
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: usb_phy
+
+  '#phy-cells':
+    const: 0
+
+  phy-supply:
+    description: USB VBUS supply. Must supply 5.0V.
+
+  img,refclk:
+    description:
+      Reference clock source for the USB PHY. See
+      <dt-bindings/phy/phy-pistachio-usb.h> for valid values.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
+  img,cr-top:
+    description: CR_TOP syscon phandle.
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - '#phy-cells'
+  - img,refclk
+  - img,cr-top
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/phy/phy-pistachio-usb.h>
+    #include <dt-bindings/clock/pistachio-clk.h>
+
+    usb-phy {
+        compatible = "img,pistachio-usb-phy";
+        clocks = <&clk_core CLK_USB_PHY>;
+        clock-names = "usb_phy";
+        #phy-cells = <0>;
+        phy-supply = <&usb_vbus>;
+        img,refclk = <REFCLK_CLK_CORE>;
+        img,cr-top = <&cr_top>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt b/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt
deleted file mode 100644
index c7970c07ee32..000000000000
--- a/Documentation/devicetree/bindings/phy/pistachio-usb-phy.txt
+++ /dev/null
@@ -1,29 +0,0 @@
-IMG Pistachio USB PHY
-=====================
-
-Required properties:
---------------------
- - compatible: Must be "img,pistachio-usb-phy".
- - #phy-cells: Must be 0.  See ./phy-bindings.txt for details.
- - clocks: Must contain an entry for each entry in clock-names.
-   See ../clock/clock-bindings.txt for details.
- - clock-names: Must include "usb_phy".
- - img,cr-top: Must contain a phandle to the CR_TOP syscon node.
- - img,refclk: Indicates the reference clock source for the USB PHY.
-   See <dt-bindings/phy/phy-pistachio-usb.h> for a list of valid values.
-
-Optional properties:
---------------------
- - phy-supply: USB VBUS supply.  Must supply 5.0V.
-
-Example:
---------
-usb_phy: usb-phy {
-	compatible = "img,pistachio-usb-phy";
-	clocks = <&clk_core CLK_USB_PHY>;
-	clock-names = "usb_phy";
-	phy-supply = <&usb_vbus>;
-	img,refclk = <REFCLK_CLK_CORE>;
-	img,cr-top = <&cr_top>;
-	#phy-cells = <0>;
-};
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
