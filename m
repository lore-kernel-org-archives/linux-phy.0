Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6507BC433FE
	for <linux-phy@archiver.kernel.org>; Sun,  6 Nov 2022 15:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8Hu8SplomZpj4x6nU7TjRtroFmoJOp/xYtxP5MCffQ=; b=hjP/BwfzqDVpom
	PghD2VOQC4Fpb3FvFR3x0PRiCYeMTRq2WdWH30ex37NR1+MWYiRM5qoqH6frPkXm2Kq4fRsT4VO5Q
	n6ousbEEvDOM//beNN0OGoTo2kY32S22ElltYJpYwSnt05LI8NTt10fGBMQOjr8RxO22GAxoTL4k/
	6FYBXEBBLhPgPNS0ZV2hSHYWwHTjjYQaiIt1pRoKaIShI+S8O3z9jpQSEuy7t/9mElAFwhY8dzO1x
	ePG8nmdNZkcUlQJcmDbaJDqEO1Kt2mbiedgzI3yYf2oskgfDgQpo6AHLPL7ky+4NN3TDZIFPOpcop
	vSupipzO3RfXF4UQDp1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orhuz-008f8t-Ni; Sun, 06 Nov 2022 15:50:41 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orhuS-008eqA-4c; Sun, 06 Nov 2022 15:50:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 34AA123A;
	Sun,  6 Nov 2022 07:50:09 -0800 (PST)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 515FF3F534;
	Sun,  6 Nov 2022 07:50:00 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Icenowy Zheng <uwu@icenowy.me>
Cc: soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 01/11] dt-bindings: phy: add binding document for Allwinner F1C100s USB PHY
Date: Sun,  6 Nov 2022 15:48:16 +0000
Message-Id: <20221106154826.6687-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.5
In-Reply-To: <20221106154826.6687-1-andre.przywara@arm.com>
References: <20221106154826.6687-1-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_075008_314900_CF8EE6E8 
X-CRM114-Status: GOOD (  13.55  )
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
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../phy/allwinner,suniv-f1c100s-usb-phy.yaml  | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,suniv-f1c100s-usb-phy.yaml
new file mode 100644
index 000000000000..948839499235
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
2.35.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
