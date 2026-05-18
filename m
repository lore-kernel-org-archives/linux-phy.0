Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69EADCD4F50
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 14:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHcqPbQY36wWVKZ5WPOk6VNQyLx9z3+RayNHyizx6cY=; b=IUVM7YukXtNml8
	uUGaN9DFhz6178W/Wuq0fMS5gOPHltTvVqIfjQU4iUwh8CVvEraktuD6djAZBrSsJA5pTSc3u5MTn
	YusRP8DliqXdlO06IE0yztZeqlP0k3Scq0vzf6s6ROG9dMYGNyClfk08xpx6cvTCb7aEP974XG+Ur
	r4BbQ33Yy1GqM6ahBIXWiDXn5ayKAPIpYM9RjfHNv3dHeN8WInBsqIbsC2EiVpV9v1D+bmmE9yH/t
	nbLJgOkfzZmHrRInjEk5kdwdgVUBFhnG0TCVV6MtEocw0cw63OvYHw7yBBv+ABYSNnePdtRPCKp+6
	xVag/5dUaRqO2zYL7puw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyjJ-0000000FwWV-0XrD;
	Mon, 18 May 2026 14:14:01 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOyjG-0000000FwUi-34ur
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 14:14:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E99FB412ECA;
	Mon, 18 May 2026 16:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1779113633; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=k6pdOU+b4KLB22qUcje1fbtGobrJHihoy0yvfUJmdr4=;
	b=RVSj/0dU2KqbYXIfQMFQcRTJOK+ScyAxGT9VFYUcT3KtEpQbk3KL7AT5r0AZh6aal5k4ay
	0o1gHALxFKAXt0Fy+lKDrRGZttSVevlSvOQnw3zB5mMVoWeGKsXA0h8XeNxgrhJnt3tWaq
	Np6hNVQQ9oLLP6vg/0E7/Icu1xrQW1aKxA1DhDl+LOO4B2SuQ2muomdSTBS9Gn2h/4Hmfl
	R1jjc7ya+A3jcA5gkAtmNPaU3S+i7ZnLXVIBft5Wy4NFlWbcnzh+Kf1giCFl/bBY0gpadE
	bUKr3MWEYzB7bAFsH6VsNHas9TVMuUIjLuGDX3l1IPxyZAb5yLwb2ZmcOTCC0A==
From: Caleb James DeLisle <cjd@cjdns.fr>
To: linux-mips@vger.kernel.org
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Caleb James DeLisle <cjd@cjdns.fr>
Subject: [PATCH 1/2] dt-bindings: phy: econet: Document EN751221 USB PHY
Date: Mon, 18 May 2026 14:13:42 +0000
Message-Id: <20260518141343.401555-2-cjd@cjdns.fr>
In-Reply-To: <20260518141343.401555-1-cjd@cjdns.fr>
References: <20260518141343.401555-1-cjd@cjdns.fr>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_071359_211861_F67188C9 
X-CRM114-Status: GOOD (  13.73  )
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

Document the USB PHY devices which appear in EcoNet EN751221, EN751627,
and EN7528 based SoCs.

Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
---
 .../bindings/phy/econet,en751221-usb-phy.yaml | 128 ++++++++++++++++++
 MAINTAINERS                                   |   6 +
 2 files changed, 134 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml b/Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
new file mode 100644
index 000000000000..a44f59601747
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# Copyright (C) 2024 EcoNet
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/econet,en751221-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: EcoNet EN751221 USB PHY
+
+maintainers:
+  - Caleb James DeLisle <cjd@cjdns.fr>
+
+description: |
+  USB PHY controller found on EcoNet EN751221 SoCs as well as on EN751627 and
+  EN7528. These devices generally have two ports, one of which is a USB 3.0,
+  and the other is USB 2.0. The USB 3.0 port is driven by one of two PHY
+  blocks, depending on whether the connected device has negotiated USB 3.0 or
+  2.0. These PHYs are also used on other EcoNet silicon in varying
+  configurations, such as only port 0 (the USB 3.0 port), or only port 1 (the
+  USB 2.0 port).
+
+properties:
+  compatible:
+    enum:
+      - econet,en751221-usb-phy
+      - econet,en751627-usb-phy
+      - econet,en7528-usb-phy
+
+  reg:
+    maxItems: 1
+
+  "#address-cells": true
+  "#size-cells": true
+  ranges: true
+
+  clocks:
+    maxItems: 1
+    description: |
+      Crystal oscillator clock source. EcoNet devices run at either 20Mhz or
+      25Mhz. 25Mhz devices require additional tuning in the USB 3.0 PHY.
+
+  clock-names:
+    items:
+      - const: xtal
+
+patternProperties:
+  "^usb-phy@[0-9a-f]+$":
+    type: object
+    description: USB 2.0 or 3.0 PHY sub-node.
+
+    properties:
+      compatible:
+        enum:
+          - econet,usb2-phy
+          - econet,usb3-phy
+
+      reg:
+        maxItems: 1
+
+      resets:
+        maxItems: 1
+
+      econet,usb-port-id:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1]
+        description: |
+          Physical port number. Since USB 3.0 requires a second PHY for the 2.0
+          fallback, multiple PHYs can map to the same physical port.
+
+      "#phy-cells":
+        const: 0
+
+    required:
+      - compatible
+      - reg
+      - econet,usb-port-id
+      - "#phy-cells"
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/econet,en751221-scu.h>
+
+    usb-phy@1fa80000 {
+      compatible = "econet,en751221-usb-phy";
+      reg = <0x1fa80000 0x700>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges;
+      clocks = <&xtalclk>;
+      clock-names = "xtal";
+
+      usb-phy@1fa80800 {
+          compatible = "econet,usb2-phy";
+          reg = <0x1fa80800 0x100>;
+          resets = <&scuclk EN751221_USB_PHY_P0_RST>;
+          econet,usb-port-id = <0>;
+          #phy-cells = <0>;
+      };
+
+      usb-phy@1fa80900 {
+          compatible = "econet,usb3-phy";
+          reg = <0x1fa80900 0x700>;
+          resets = <&scuclk EN751221_USB_PHY_P0_RST>;
+          econet,usb-port-id = <0>;
+          #phy-cells = <0>;
+      };
+
+      usb-phy@1fa81000 {
+          compatible = "econet,usb2-phy";
+          reg = <0x1fa81000 0x100>;
+          resets = <&scuclk EN751221_USB_PHY_P1_RST>;
+          econet,usb-port-id = <1>;
+          #phy-cells = <0>;
+      };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index f877e5aaf2c7..1a90a1736294 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9204,6 +9204,12 @@ F:	drivers/irqchip/irq-econet-en751221.c
 F:	include/dt-bindings/clock/econet,en751221-scu.h
 F:	include/dt-bindings/reset/econet,en751221-scu.h
 
+ECONET USB PHY DRIVER
+M:	Caleb James DeLisle <cjd@cjdns.fr>
+L:	linux-mips@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/econet,en751221-usb-phy.yaml
+
 ECRYPT FILE SYSTEM
 M:	Tyler Hicks <code@tyhicks.com>
 L:	ecryptfs@vger.kernel.org
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
