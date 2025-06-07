Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51EA9C71133
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=njvoOxOiKRUulATmnHw+c6/cj/gCc04ufH6NrCuEheM=; b=ZMDFTEsRS+4MRS
	t1U1/U+AFU4GPIXAHmUNPC60djWfxI9zurwYRQsJO2nUmJa3/LGH6hZSpxSAU8B1+VXxCHyTl9UBY
	kcQLiEBNhqKbSrboFVpbftaTaiZ71PCVm5EZh6qS9YecbecM2gIc4ZuvDmiI6NrbDaL2f8igIKK2X
	9H9vAfxbmWNAFOw4nN7X0/d+67cO1e5xz2lahs0setxcFdBQOkXhEZsGlecnxJ44RLT1yv/VRgiNw
	5Nfb8R7tT3ZbAuX9C41F5dfNJPqLT0/IyZN+Bpcs4KrVW/eX3sP0bIi2iNozWSNXdwgZBl9IYa1x8
	Ko+LpMDsnkMsmmKxWDMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14m-000000027oq-2oS3;
	Sat, 07 Jun 2025 21:27:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13P-000000027Qi-3YsL
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8D0455C5885;
	Sat,  7 Jun 2025 21:23:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D148AC4CEE4;
	Sat,  7 Jun 2025 21:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331575;
	bh=EPWwv5YFwd++RWtna5xn9/rjluNdas130e6t6KL0tBU=;
	h=From:To:Cc:Subject:Date:From;
	b=PUbhco6bSe3W5GTiAStGHf2noglY9nC0GxCtcjlafz0G0G6sZ5pMTmBZ4Yxfzd48C
	 TxJxGTutYvWgi7Klqcr0jJwcKO1L98KE2BUjtGh790FPMIEJAJg0CrUCyraVR1c6xv
	 BJqln7KwQlb0oqltaP4iyg/eWOGsEeMWONOaIBhIRRDGQ+ezGeCgU8C9yQzPtGbJ53
	 l0s/PIPow2KMqxt2QThDcK8bWimD8n6OfsOfFoVtfZauxchaFntVBukETY+N0XYZFi
	 1i44yIJUBIf6AKBas4HbttkAhlzrZNZJqHDLYbIpP8SH+R86T0niLgtt73+8u5N7LV
	 /MTRibbu0jquQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert marvell,mmp2-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:26:11 -0500
Message-ID: <20250607212613.743515-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142615_934282_0A4B338D 
X-CRM114-Status: GOOD (  11.10  )
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

Convert the Marvell MMP2 USB PHY binding to DT schema format. It's a
straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/phy/marvell,mmp2-usb-phy.yaml    | 38 +++++++++++++++++++
 .../devicetree/bindings/phy/phy-pxa-usb.txt   | 18 ---------
 2 files changed, 38 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-pxa-usb.txt

diff --git a/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
new file mode 100644
index 000000000000..2441c5fae550
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/marvell,mmp2-usb-phy.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/marvell,mmp2-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Marvell MMP2/PXA USB PHY
+
+maintainers:
+  - Lubomir Rintel <lkundrak@v3.sk>
+
+properties:
+  compatible:
+    enum:
+      - marvell,mmp2-usb-phy
+      - marvell,pxa910-usb-phy
+      - marvell,pxa168-usb-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    usbphy@d4207000 {
+        compatible = "marvell,mmp2-usb-phy";
+        reg = <0xd4207000 0x40>;
+        #phy-cells = <0>;
+        status = "okay";
+    };
diff --git a/Documentation/devicetree/bindings/phy/phy-pxa-usb.txt b/Documentation/devicetree/bindings/phy/phy-pxa-usb.txt
deleted file mode 100644
index d80e36a77ec5..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-pxa-usb.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-Marvell PXA USB PHY
--------------------
-
-Required properties:
-- compatible: one of: "marvell,mmp2-usb-phy", "marvell,pxa910-usb-phy",
-	"marvell,pxa168-usb-phy",
-- #phy-cells: must be 0
-
-Example:
-	usb-phy: usbphy@d4207000 {
-		compatible = "marvell,mmp2-usb-phy";
-		reg = <0xd4207000 0x40>;
-		#phy-cells = <0>;
-		status = "okay";
-	};
-
-This document explains the device tree binding. For general
-information about PHY subsystem refer to Documentation/driver-api/phy/phy.rst
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
