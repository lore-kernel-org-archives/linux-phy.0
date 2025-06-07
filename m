Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41A38C678DF
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8A1/DhWcuFjfRFmuiNMwUL0cKz3NWR8onHb+KtUh6nk=; b=bMPH4ipeU6LptT
	iX+tlGAYzzJJDYXYMw43xtELM2qJjdSXnLqg6waJRTbFEoAINz1y6Hw6u0casDPgVlAZgMVN8VZox
	3MwPBkcRKUqBBs7zR7u8K8W1H+8KDrjsmyqwrQ4U45/i8p1QCGUGDKxc4zNjRuiFqgwV1/rH/e0Qw
	E18rJcEt6QT49KyZM5vsr2Ri5poGZ8ZeF7azc4MJmenUe+ex95qWAsBOHS9Li3DozLhmEmjllmF4G
	rUqiA7IZnQrQwGM8N5UGd73GRt4DSLULrG/j6wIbMVad7CEsnQwxzQ5yY5Tc7ise2qCyZFvwUx7eE
	TLZRJAVgvNvMBrqJsgrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14p-000000027ra-03yM;
	Sat, 07 Jun 2025 21:27:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13w-000000027Yq-05MT
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6FC146115D;
	Sat,  7 Jun 2025 21:26:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03FC1C4CEE4;
	Sat,  7 Jun 2025 21:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331607;
	bh=b7Ks2MMNciFeMLa8eUiYSRjsz/aoPmB73xGRIMh11d8=;
	h=From:To:Cc:Subject:Date:From;
	b=NRGS1DpwNcFMHcGTM8nGqQ2Y1DNAtodeiH2blXhu411xMZydUqqhsrzTrxF+NOQsS
	 LJNmTcikSiuWSwzaiduSNsVpsMxTRSnJ9nP/8haEyl7B0xEaR9vskBamFsI1PzHjT9
	 y+XKCdNPimjxX+My0GNiVGh0N7To+rL1WXprRLb+5zx96Ru7NPLh5kuNmm8iEOVbqL
	 DjD0mABzV7Kv1ebKlZ7m+BkF4ZPoTEDyVzfPFDoGKRLLJFfuVnNiejRYeveAxA+am2
	 iVzv7NM9EcFdQfWecGEMnjz5o7aZtHFU5+zwa7bv7wdgEzQnf+zNhkpCuYFDXNRWdD
	 4k3tBqBqyw1NQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert ti,keystone-usbphy to DT schema
Date: Sat,  7 Jun 2025 16:26:40 -0500
Message-ID: <20250607212641.744683-1-robh@kernel.org>
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

Convert the TI Keystone USB PHY binding to DT schema format. Drop the
"#address-cells" and "#size-cells" properties which don't make sense
without any child nodes.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/keystone-usb-phy.txt         | 19 ----------
 .../bindings/phy/ti,keystone-usbphy.yaml      | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/keystone-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/ti,keystone-usbphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/keystone-usb-phy.txt b/Documentation/devicetree/bindings/phy/keystone-usb-phy.txt
deleted file mode 100644
index 300830dda0bf..000000000000
--- a/Documentation/devicetree/bindings/phy/keystone-usb-phy.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-TI Keystone USB PHY
-
-Required properties:
- - compatible: should be "ti,keystone-usbphy".
- - #address-cells, #size-cells : should be '1' if the device has sub-nodes
-   with 'reg' property.
- - reg : Address and length of the usb phy control register set.
-
-The main purpose of this PHY driver is to enable the USB PHY reference clock
-gate on the Keystone SOC for both the USB2 and USB3 PHY. Otherwise it is just
-an NOP PHY driver.  Hence this node is referenced as both the usb2 and usb3
-phy node in the USB Glue layer driver node.
-
-usb_phy: usb_phy@2620738 {
-	compatible = "ti,keystone-usbphy";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	reg = <0x2620738 32>;
-};
diff --git a/Documentation/devicetree/bindings/phy/ti,keystone-usbphy.yaml b/Documentation/devicetree/bindings/phy/ti,keystone-usbphy.yaml
new file mode 100644
index 000000000000..08dc18e7feea
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,keystone-usbphy.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,keystone-usbphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI Keystone USB PHY
+
+maintainers:
+  - Nishanth Menon <nm@ti.com>
+  - Santosh Shilimkar <ssantosh@kernel.org>
+
+description:
+  The main purpose of this PHY driver is to enable the USB PHY reference clock
+  gate on the Keystone SOC for both the USB2 and USB3 PHY. Otherwise it is just
+  an NOP PHY driver. Hence this node is referenced as both the usb2 and usb3
+  phy node in the USB Glue layer driver node.
+
+properties:
+  compatible:
+    const: ti,keystone-usbphy
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy@2620738 {
+        compatible = "ti,keystone-usbphy";
+        reg = <0x2620738 32>;
+    };
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
