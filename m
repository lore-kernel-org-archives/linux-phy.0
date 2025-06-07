Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08F1BC61CE8
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JQMs9XMOa1nUXvcP1YLFfoo7aVwV5ZkT8Odu/5YPopU=; b=uYWapNs6aOmIH/
	TqYkaWC9o+SsKTdY5SUPE0Z/xfQxQbrIBH2+4hS/jOeV5B50mupJusUz7tyYZ4q5jN/lIVhdGn6Xp
	icjK1H3DXL3JCQ6pB6SwG3H7O0DrpUfesXUX61gP3trkv6qq0jxyvx0sb/mM/WTUmIAJC8aKwNGHJ
	AeDJ0HE5azwSE46BiOqMcL4bp0hs0qNd74UuiTC06YgQYCpKw/XLWfp2Oi465+sAsQKjwuf0kzMKr
	AvbfgQpfwZSS+XQHJ3xFTAM8ao+VT4sE/ET/nlH866X/0Bw9eGzsaRjA5yuX/wlsLuCXuqWSN8nya
	wL6IMMZ6V3O0s6gkhj6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14l-000000027nd-3Dek;
	Sat, 07 Jun 2025 21:27:39 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13D-000000027Ma-43uS
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AFDB85C5885;
	Sat,  7 Jun 2025 21:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E5FC4CEE4;
	Sat,  7 Jun 2025 21:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331563;
	bh=swF8HFv4xHzI2CsnrsBHSyYi8nPK3ASVByFcyafT7bw=;
	h=From:To:Cc:Subject:Date:From;
	b=th8faaSGkC2vkk/lVWqKGYoRxG26W7Fr5RUEX2RhfjMtWALXBoDGw1RyeoGM4BU+E
	 Sb46PwZGPxAYyzZoXhatOkIwfzrLq/0pF+W+JGrgRAl6ayh7wgbgPsqKGrAD22pqNb
	 72mz2t7Xo4V7dcVFgBDu2fMvFBzv65UwX2nImSAzPPyOziIoSGp01UBnPHjonMCVlo
	 U9RC9iKXNgQ4BCyxpZgri/eaG6zJ7qszLS2o8Q4c0PyVBDxRB+ZIP7WZ2J2/c8ZFhr
	 6RcoEZ3YH9t5BORTkogZ/BP4WCYcTp5FQTjbNS+n8ppm09k/fV9a4pP7uKsdeBkCxg
	 WKE1lsPiv2EMw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoine Tenart <atenart@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert marvell,berlin2-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:25:53 -0500
Message-ID: <20250607212554.742884-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142604_067800_F38AF777 
X-CRM114-Status: GOOD (  11.41  )
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

Convert the Marvell Berlin2 USB PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/berlin-usb-phy.txt           | 16 -------
 .../bindings/phy/marvell,berlin2-usb-phy.yaml | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/berlin-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,berlin2-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/berlin-usb-phy.txt b/Documentation/devicetree/bindings/phy/berlin-usb-phy.txt
deleted file mode 100644
index be33780f668e..000000000000
--- a/Documentation/devicetree/bindings/phy/berlin-usb-phy.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-* Marvell Berlin USB PHY
-
-Required properties:
-- compatible: "marvell,berlin2-usb-phy" or "marvell,berlin2cd-usb-phy"
-- reg: base address and length of the registers
-- #phys-cells: should be 0
-- resets: reference to the reset controller
-
-Example:
-
-	usb-phy@f774000 {
-		compatible = "marvell,berlin2-usb-phy";
-		reg = <0xf774000 0x128>;
-		#phy-cells = <0>;
-		resets = <&chip 0x104 14>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/marvell,berlin2-usb-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,berlin2-usb-phy.yaml
new file mode 100644
index 000000000000..b401e12a600c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/marvell,berlin2-usb-phy.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/marvell,berlin2-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell Berlin USB PHY
+
+maintainers:
+  - Antoine Tenart <atenart@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - marvell,berlin2-usb-phy
+      - marvell,berlin2cd-usb-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - resets
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@f774000 {
+      compatible = "marvell,berlin2-usb-phy";
+      reg = <0xf774000 0x128>;
+      #phy-cells = <0>;
+      resets = <&chip 0x104 14>;
+    };
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
