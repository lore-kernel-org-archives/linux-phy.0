Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3EDBC678DA
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3rsqM37qi5y4pFS1OAty56gWA8BzRjhk/N/HLjVPXpY=; b=elhMDnjuyV5/RS
	sMBeNZUGy2FTd3ql8CI3+iC4xKgf8RPdKtcEZPNKaXiXh/BRT4oziBqSDqFWAJosaNyLTSZKy7Y1b
	bSA0DGplngiKLEqxjmZmr0NRFER7rhENcsM0diLIl7fqiQnl4WnmtU4lrZi5++F27Wu4HXrfdPnU3
	oJ0iCXAAgRNWPo8fbl3uSEdY67hzP8ICx4MPwLp1bD0yLmOc7Sk7gbKd1ay9WSUCIawooXW9IIb2B
	9acQgq3lGqao/D59gACmWuqIb5QRYX1qnfSjz+fGR+ZNBbpIE3yklOo3wDFW4KXjNqT58t1RxzZC7
	/A/FH60gx4cGLvfgfsJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14o-000000027qu-1xHb;
	Sat, 07 Jun 2025 21:27:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13l-000000027WG-2Zpq
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C79F66135E;
	Sat,  7 Jun 2025 21:26:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53250C4CEE4;
	Sat,  7 Jun 2025 21:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331596;
	bh=8fCLr76Iztc6QlT6QEUsCfdY22i6jx3Cf8kHklqZmp8=;
	h=From:To:Cc:Subject:Date:From;
	b=gpQQeK7p68QN6/Xx0Eo4Y6fIA1/AODd2tg1HYI4hr8rkrlGynCe+7elJipRiu8rrl
	 /8lVRsCQsIp4sCiCvT0RcDODV8HWaZJA9lzDoeWSH3PgK9odqCyMPRpvYn4lNvoGqg
	 9AkwV9WRyXcSZBi73Gk3thLFf5ueUobHAjDL8H2bY5EXTv04oS838YmKxh+JvG0yoX
	 4thCKl5rKW0JlQw4JVstfVt5RRPdvT4axYTJQFcbKo2wOwyWfh0otRYAqcP1lLQwCf
	 v6qIB4ulmY4yoCi6SFQFHVywxz9MWNg+frH0bkUmIJoMiAvgn851Lmlw3ayQuTRrhT
	 K0NJGub4FdWpA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert ti,dm816x-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:26:33 -0500
Message-ID: <20250607212634.744373-1-robh@kernel.org>
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

Convert the TI DM816x USB PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/phy/dm816x-phy.txt    | 24 --------
 .../bindings/phy/ti,dm8168-usb-phy.yaml       | 58 +++++++++++++++++++
 2 files changed, 58 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/dm816x-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ti,dm8168-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/dm816x-phy.txt b/Documentation/devicetree/bindings/phy/dm816x-phy.txt
deleted file mode 100644
index 2fe3d11d063d..000000000000
--- a/Documentation/devicetree/bindings/phy/dm816x-phy.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Device tree binding documentation for am816x USB PHY
-=========================
-
-Required properties:
-- compatible : should be "ti,dm816x-usb-phy"
-- reg : offset and length of the PHY register set.
-- reg-names : name for the phy registers
-- clocks : phandle to the clock
-- clock-names : name of the clock
-- syscon: phandle for the syscon node to access misc registers
-- #phy-cells : from the generic PHY bindings, must be 1
-- syscon: phandle for the syscon node to access misc registers
-
-Example:
-
-usb_phy0: usb-phy@20 {
-	compatible = "ti,dm8168-usb-phy";
-	reg = <0x20 0x8>;
-	reg-names = "phy";
-	clocks = <&main_fapll 6>;
-	clock-names = "refclk";
-	#phy-cells = <0>;
-	syscon = <&scm_conf>;
-};
diff --git a/Documentation/devicetree/bindings/phy/ti,dm8168-usb-phy.yaml b/Documentation/devicetree/bindings/phy/ti,dm8168-usb-phy.yaml
new file mode 100644
index 000000000000..673dc1d37dcb
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,dm8168-usb-phy.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,dm8168-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI DM8168 USB PHY
+
+maintainers:
+  - Tony Lindgren <tony@atomide.com>
+
+properties:
+  compatible:
+    const: ti,dm8168-usb-phy
+
+  reg:
+    maxItems: 1
+
+  reg-names:
+    items:
+      - const: phy
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: refclk
+
+  '#phy-cells':
+    const: 0
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle for the syscon node to access misc registers.
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - '#phy-cells'
+  - syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@20 {
+        compatible = "ti,dm8168-usb-phy";
+        reg = <0x20 0x8>;
+        reg-names = "phy";
+        clocks = <&main_fapll 6>;
+        clock-names = "refclk";
+        #phy-cells = <0>;
+        syscon = <&scm_conf>;
+    };
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
