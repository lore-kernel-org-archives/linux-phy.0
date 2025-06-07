Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 313DFC67861
	for <linux-phy@archiver.kernel.org>; Sat,  7 Jun 2025 21:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Whw28xYW9j9Gyrui3j7/v5IReNt/5UYSdpJmZ8OEFrk=; b=lRtNA6mgVABJW/
	B/XKCi3xjPgBsje+vBaDEjKbqZI2HIAQKYGwgDIvXKX/r/E9DvfnaQqCKknbP6lHHobyvFst02/CF
	J2G5AECVOTd7xSH0U+pTkJMUpr/sMTnVaM5dnRm3GKQLy+gwwQVWdryOtXOu8S/psyDGUkWZRK2AT
	3Ajyb7wndxaYqSuBNvnDr7J0FRFM+YWN7vSXQgmxtQYNWBaPM9wKhPj5n+SRDPxtsYUFElcHfU4B3
	iyYVnDFEQshDEjbCgpSwqQQNaK8EhN5AU7p+27U/AxqzUJ23JAp2OOsy6SPck9uUbJ1dBQxCGRi03
	2hbXKKeLaBdRuCx8GLyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO14n-000000027q2-3uvj;
	Sat, 07 Jun 2025 21:27:41 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uO13c-000000027SY-3LyH
	for linux-phy@lists.infradead.org;
	Sat, 07 Jun 2025 21:26:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 211FDA4B914;
	Sat,  7 Jun 2025 21:26:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A530CC4CEE4;
	Sat,  7 Jun 2025 21:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749331587;
	bh=+ZPrWtmPPFCsURJUnqt37WxfXbcYTz4vDsTXFOIJitI=;
	h=From:To:Cc:Subject:Date:From;
	b=LITufkiNBH4UVApXJPFG5pUAh5WYnAs5CTASMeKvkh4Kf8W3VwRzalToQ9rJPeQs3
	 7AXWdv/mmaZBP5arKy39A/XjyQNhUAq8ccP50bZ9BuXh0NfA7NYcbMmGZ6nIT2eBj2
	 nyQoykDdqCoGfWxVQWGxsFHI4QftoohvXwnfahobeE4rAogOAR93Y+9QCacZtxtLpj
	 F0G8+e0SS22AiFZHFMVQmSYO2+DtPQHQEgoIbT24XcESYHD7rJZbbrtGBOQ0eadhHO
	 AbWOdASwebRFNJsIRH3i+Q24eb6aWu4BD/S+QOY3BgfRJE58r4gswB8OZaF8BoCVeC
	 MMfG9ONKvGXOw==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alban Bedel <albeu@free.fr>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: phy: Convert qca,ar7100-usb-phy to DT schema
Date: Sat,  7 Jun 2025 16:26:23 -0500
Message-ID: <20250607212625.744008-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250607_142628_969701_83F60795 
X-CRM114-Status: GOOD (  13.05  )
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

Convert the Qualcomm-Atheros AR7100 USB PHY binding to DT schema format.
It's a straight forward conversion.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../devicetree/bindings/phy/phy-ath79-usb.txt | 18 -------
 .../bindings/phy/qca,ar7100-usb-phy.yaml      | 49 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 50 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-ath79-usb.txt
 create mode 100644 Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-ath79-usb.txt b/Documentation/devicetree/bindings/phy/phy-ath79-usb.txt
deleted file mode 100644
index c3a29c5feea3..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-ath79-usb.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* Atheros AR71XX/9XXX USB PHY
-
-Required properties:
-- compatible: "qca,ar7100-usb-phy"
-- #phys-cells: should be 0
-- reset-names: "phy"[, "suspend-override"]
-- resets: references to the reset controllers
-
-Example:
-
-	usb-phy {
-		compatible = "qca,ar7100-usb-phy";
-
-		reset-names = "phy", "suspend-override";
-		resets = <&rst 4>, <&rst 3>;
-
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml
new file mode 100644
index 000000000000..029665530829
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qca,ar7100-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Atheros AR71XX/9XXX USB PHY
+
+maintainers:
+  - Alban Bedel <albeu@free.fr>
+
+properties:
+  compatible:
+    items:
+      - const: qca,ar7100-usb-phy
+
+  reset-names:
+    description: Names of reset lines in order.
+    minItems: 1
+    items:
+      - const: phy
+      - const: suspend-override
+
+  resets:
+    description: References to the reset controllers.
+    minItems: 1
+    items:
+      - description: Reset controller for phy
+      - description: Reset controller for suspend-override
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reset-names
+  - resets
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    usb-phy {
+        compatible = "qca,ar7100-usb-phy";
+        reset-names = "phy", "suspend-override";
+        resets = <&rst 4>, <&rst 3>;
+        #phy-cells = <0>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 8fc2f21de224..c9457982b406 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3823,7 +3823,7 @@ M:	Alban Bedel <albeu@free.fr>
 S:	Maintained
 W:	https://github.com/AlbanBedel/linux
 T:	git git://github.com/AlbanBedel/linux
-F:	Documentation/devicetree/bindings/phy/phy-ath79-usb.txt
+F:	Documentation/devicetree/bindings/phy/qca,ar7100-usb-phy.yaml
 F:	drivers/phy/qualcomm/phy-ath79-usb.c
 
 ATHEROS ATH GENERIC UTILITIES
-- 
2.47.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
