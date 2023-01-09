Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F866C54EBE
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 01:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52r/98kilP5moeRlXO0bFLbQebeAD2+YmqoyhA/bmKo=; b=PxeThx5l6hsJCr
	Tdz3ld+DL9x6vftuI8MKOGY5QUW+BVdBp/uGPV8cv62rXKh5BwIzTPUS7J3mZthoUlBrn1tUiTFXO
	ww0d7W9ga0qgHWrCxhypeHT4gRtYD+zTVFD8jT6fXbl5MkB6scukZ/BTakffEcAzE6WvUeNp7bNb8
	GpdzdDZ07/7mniGmfjykq/+zSrROIzEWyQ9YbMAzv6HkZckt4YwLU256+qP0XJ/7xXgeTnsuOOF/d
	cNcmvdvQV4IpN+ZItF6HenA07EU7/559KzKOYv92XaesHhI/d3/0spIIhgnwNeBb5wRJndL4Yj+O9
	rY60CgAwlqjUQEjNlb/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEgsq-00GdlX-HQ; Mon, 09 Jan 2023 01:23:28 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEgs6-00GdW6-Sg; Mon, 09 Jan 2023 01:22:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 832281515;
	Sun,  8 Jan 2023 17:23:13 -0800 (PST)
Received: from donnerap.cambridge.arm.com (donnerap.cambridge.arm.com [10.1.197.42])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA2013F67D;
	Sun,  8 Jan 2023 17:22:29 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v5 1/3] dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
Date: Mon,  9 Jan 2023 01:22:21 +0000
Message-Id: <20230109012223.4079299-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230109012223.4079299-1-andre.przywara@arm.com>
References: <20230109012223.4079299-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_172243_071835_7D113A63 
X-CRM114-Status: GOOD (  13.40  )
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

From: Icenowy Zheng <uwu@icenowy.me>

Allwinner F1C100s has the most simple USB PHY among all Allwinner SoCs,
because it has only one OTG USB controller, no host-only OHCI/EHCI
controllers.

Add a binding document for it. Following the current situation of one
YAML file per SoC, this one is based on
allwinner,sun8i-v3s-usb-phy.yaml, but with OHCI/EHCI-related bits
removed. (The same driver in Linux, phy-sun4i-usb, covers all these
binding files now.)

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
new file mode 100644
index 0000000000000..9488394992350
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/allwinner,suniv-f1c100s-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner F1C100s USB PHY
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#phy-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,suniv-f1c100s-usb-phy
+
+  reg:
+    maxItems: 1
+    description: PHY Control registers
+
+  reg-names:
+    const: phy_ctrl
+
+  clocks:
+    maxItems: 1
+    description: USB OTG PHY bus clock
+
+  clock-names:
+    const: usb0_phy
+
+  resets:
+    maxItems: 1
+    description: USB OTG reset
+
+  reset-names:
+    const: usb0_reset
+
+  usb0_id_det-gpios:
+    maxItems: 1
+    description: GPIO to the USB OTG ID pin
+
+  usb0_vbus_det-gpios:
+    maxItems: 1
+    description: GPIO to the USB OTG VBUS detect pin
+
+  usb0_vbus_power-supply:
+    description: Power supply to detect the USB OTG VBUS
+
+  usb0_vbus-supply:
+    description: Regulator controlling USB OTG VBUS
+
+required:
+  - "#phy-cells"
+  - compatible
+  - clocks
+  - clock-names
+  - reg
+  - reg-names
+  - resets
+  - reset-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/clock/suniv-ccu-f1c100s.h>
+    #include <dt-bindings/reset/suniv-ccu-f1c100s.h>
+
+    phy@1c13400 {
+        compatible = "allwinner,suniv-f1c100s-usb-phy";
+        reg = <0x01c13400 0x10>;
+        reg-names = "phy_ctrl";
+        clocks = <&ccu CLK_USB_PHY0>;
+        clock-names = "usb0_phy";
+        resets = <&ccu RST_USB_PHY0>;
+        reset-names = "usb0_reset";
+        #phy-cells = <1>;
+        usb0_id_det-gpios = <&pio 4 2 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
