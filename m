Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB0DC43217
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 14:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdKUJh4Pt5iSJ4+Ag+Fz0HBg1YUOal+zbE726yqv2V0=; b=iedQMu5/CNkBZt
	c7i0Af8C5KWCcB44lyxljIKBYtFsgH0I025XOj8EzuXjZGLardc3gNJUfLAix8gSLgH8VgdHn1GoW
	y3TgcAjb824Due6/1QNO7kZwo/GgZq+PT+kN09EMAtqen3kk73WWNTeXd2futRfTBJXEOaSFSwzNY
	xvDW+u6+GVB/cL9Ao09wrV8JmtrI8dnU+EugIpirXo+WGX49czwcFhfxRQ9nyCBgW7it274AFC0dN
	0d/v3mwIlvc2JiXH2C40KpbuxMKpW8G5c7GjTZ036uco+puUFdkTpxTUs3rxVygQLWfZw49fXXaHy
	ZxZYjwucMLIUuBr0gS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2SV-004UW6-QF; Fri, 18 Nov 2022 14:35:11 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2RA-004Tab-Pd
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:51 +0000
Received: by mail-wr1-x433.google.com with SMTP id g2so5853119wrv.6
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4SvRgFTn6+Gybi1+j9eb6DiJcXSsUC9wg7dcCoAYlxo=;
        b=rNdR543njIXd/vTYoC3ISLSjkRryowY2q1V07GqmJUyFH4lwy6TTyxgMjsP8O4AKdA
         CYLwLsgpri/smVj6DDW62FZNw93QkK3gqpHq2HQk379M1DV3NrFNIwncfoYKjJVi6+6E
         XVZ28lFTylYIhRpbfkpcf1cFDgj8AhxK3mbcTrqXN5bB6aJhMjaM/XZ9G5HSewQfRdRp
         UFEMd90M0jfE54YuwnblNTl6tI2fn3oHsoKZxXEXOOPnqozVO3GHjDFwnsp/uG/HGse1
         N+lyHJbxaUEA7S4WxaHcA7nZPgRoXhiwU22v+tCG2qO21jjs1yb9dLbV1ygsljh87xjA
         0o+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4SvRgFTn6+Gybi1+j9eb6DiJcXSsUC9wg7dcCoAYlxo=;
        b=DYv8YhJu+KcxY5y2eCvoBFLo2Ug76vM3mXoqA+dPLR3yhWkGF3RjgbW7+Xc0oEPydi
         +EUa5V29tGFkRqDeuA1yHyNcrrmDn5GedJUQSnjP+5VyW35wvBiEpLqptJcZuXWGUYU8
         TXs4EFOVSFedAwqPaRS3F/5QUlKDG9I43Q8YhfgRUf1J6BZc+nyX51znw+2s2FqrtbDC
         t/tX1jRRJKAn+LAON9nva40Xnt/Gis7RJ+MM1xOJ4havx3juuN0Hw39eBZCdxTgJoAUS
         HaWq50UjAQqTzlrd15NjTdbiULnPgeHbYT1IBnY+ohRYAsz83XKYzyiy3qpfvdoVmxwg
         xkvA==
X-Gm-Message-State: ANoB5plVQ9X45ciHUAwQJZEYBZo/OpKoSJOoucuGHcjxsSNu5IzkNWLB
	bE4BvbeB3R48nzhUT6iegwJk5Q==
X-Google-Smtp-Source: AA0mqf6QQq479fIUCOCgvip5Pl5AI82bEkY7FqOFZ5rXBu8KR0A3F1ydYiGUSPadA491uLfZ1bpajw==
X-Received: by 2002:a5d:452d:0:b0:241:c5ec:d0d with SMTP id j13-20020a5d452d000000b00241c5ec0d0dmr804402wra.441.1668782028313;
        Fri, 18 Nov 2022 06:33:48 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:47 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:38 +0100
Subject: [PATCH 12/12] dt-bindings: net: convert mdio-mux-meson-g12a.txt to
 dt-schema
MIME-Version: 1.0
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-12-3f025599b968@linaro.org>
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_063348_903130_09E02DAF 
X-CRM114-Status: GOOD (  14.28  )
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

Convert MDIO bus multiplexer/glue of Amlogic G12a SoC family bindings
to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/net/amlogic,g12a-mdio-mux.yaml        | 80 ++++++++++++++++++++++
 .../bindings/net/mdio-mux-meson-g12a.txt           | 48 -------------
 2 files changed, 80 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/amlogic,g12a-mdio-mux.yaml b/Documentation/devicetree/bindings/net/amlogic,g12a-mdio-mux.yaml
new file mode 100644
index 000000000000..ec5c038ce6a0
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/amlogic,g12a-mdio-mux.yaml
@@ -0,0 +1,80 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/amlogic,g12a-mdio-mux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MDIO bus multiplexer/glue of Amlogic G12a SoC family
+
+description:
+  This is a special case of a MDIO bus multiplexer. It allows to choose between
+  the internal mdio bus leading to the embedded 10/100 PHY or the external
+  MDIO bus.
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: mdio-mux.yaml#
+
+properties:
+  compatible:
+    const: amlogic,g12a-mdio-mux
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: peripheral clock
+      - description: platform crytal
+      - description: SoC 50MHz MPLL
+
+  clock-names:
+    items:
+      - const: pclk
+      - const: clkin0
+      - const: clkin1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mdio-multiplexer@4c000 {
+        compatible = "amlogic,g12a-mdio-mux";
+        reg = <0x4c000 0xa4>;
+        clocks = <&clkc_eth_phy>, <&xtal>, <&clkc_mpll>;
+        clock-names = "pclk", "clkin0", "clkin1";
+        mdio-parent-bus = <&mdio0>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mdio@0 {
+            reg = <0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+        };
+
+        mdio@1 {
+            reg = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            ethernet-phy@8 {
+                compatible = "ethernet-phy-id0180.3301",
+                             "ethernet-phy-ieee802.3-c22";
+                interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
+                reg = <8>;
+                max-speed = <100>;
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/net/mdio-mux-meson-g12a.txt b/Documentation/devicetree/bindings/net/mdio-mux-meson-g12a.txt
deleted file mode 100644
index 3a96cbed9294..000000000000
--- a/Documentation/devicetree/bindings/net/mdio-mux-meson-g12a.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-Properties for the MDIO bus multiplexer/glue of Amlogic G12a SoC family.
-
-This is a special case of a MDIO bus multiplexer. It allows to choose between
-the internal mdio bus leading to the embedded 10/100 PHY or the external
-MDIO bus.
-
-Required properties in addition to the generic multiplexer properties:
-- compatible : amlogic,g12a-mdio-mux
-- reg: physical address and length of the multiplexer/glue registers
-- clocks: list of clock phandle, one for each entry clock-names.
-- clock-names: should contain the following:
-  * "pclk"   : peripheral clock.
-  * "clkin0" : platform crytal
-  * "clkin1" : SoC 50MHz MPLL
-
-Example :
-
-mdio_mux: mdio-multiplexer@4c000 {
-	compatible = "amlogic,g12a-mdio-mux";
-	reg = <0x0 0x4c000 0x0 0xa4>;
-	clocks = <&clkc CLKID_ETH_PHY>,
-		 <&xtal>,
-		 <&clkc CLKID_MPLL_5OM>;
-	clock-names = "pclk", "clkin0", "clkin1";
-	mdio-parent-bus = <&mdio0>;
-	#address-cells = <1>;
-	#size-cells = <0>;
-
-	ext_mdio: mdio@0 {
-		reg = <0>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-	};
-
-	int_mdio: mdio@1 {
-		reg = <1>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		internal_ephy: ethernet-phy@8 {
-			compatible = "ethernet-phy-id0180.3301",
-				     "ethernet-phy-ieee802.3-c22";
-			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <8>;
-			max-speed = <100>;
-		};
-	};
-};

-- 
b4 0.10.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
