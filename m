Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D36D6C54EBD
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 13:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TuoVmqXvfbnQI8pM4gyMaXeIwfMCFAo5Q6ZeqTPxRow=; b=XWmadZiqPWGPFh
	SIcu5jCkkVzMCgQo2wAQrSOBwGGWAfIRba+qAtLx6Td/vx5z2qn708iM0FwyT9eceZtL7HdcRm2j8
	FSK7n/fwYh3c309GPCG1n2Q5f5gGS6xzI43i/LYS8Xhn1+RI1RMKbwguXMKSEx/6n/NOlV+D2UcsU
	dBD0FG+i6MAE9dwDCE+GkbrTy+xdxgGEaOeRiUSR+p5Ec657kJyrvqxtFrB4lsTLxv1gkGHgHcBTn
	omqjTYrWcFPi598RcHDfSq8UrvVuxhu7cZAEPfi7lLQJuDlgkBzCFagvX2hOb5g9SnCUm1LqwOsbQ
	14YBxFOcaO14ycENof/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEs1P-001Vje-4R; Mon, 09 Jan 2023 13:17:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErzN-001UXJ-NV
	for linux-phy@bombadil.infradead.org; Mon, 09 Jan 2023 13:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=apTdb92AzNQ96d3ETxccHyv95HLA5cv6Przk0hO/8h8=; b=QcmhmfhjYgntLX73WvbwfTWF7a
	OYDUbu4jgev3hfIlZBuvS9Ka0A4QXlSSZ38hR26+oF40FazEJzt5uoQUq5vYgoQ/2Xd2fNdFbJyqQ
	woFNdcin+79RxuPGkvmOyVkf09tzvYx7h74qYfznqJ+2B0DmHZ/wz41pn3lhnF9GkCTxnpjo054Fr
	485wSXxTw6wzKQ+eorSLuf1B8h+We3fhAb8oqC1RceBHQDzU3yOlHRwkjkz7auGxPRoYPT3TlBmO5
	LLJQYrleXFCvG16mxwf94GG8pfriCoZ7HwloL0rGU+uJXbj9rbp4zVWEjY3qqihqMLzTYFL2RB3nX
	oFqow9jg==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErf8-002HUZ-BU
	for linux-phy@lists.infradead.org; Mon, 09 Jan 2023 12:54:05 +0000
Received: by mail-wm1-x329.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso6635426wmq.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Jan 2023 04:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=apTdb92AzNQ96d3ETxccHyv95HLA5cv6Przk0hO/8h8=;
        b=EsPXoXoYQiEGXrVW2y08Jw63MOaSE7K82Wa7hO1KkMnIEV1GsOeInOf2/7FEhX/x7g
         HfnceNCBdr4d2qFy48gJokuywZ0DFfHh0/lc/FmPU0BXvkVj9BFzr1QCZvHVnekASNRd
         aPw+24RSxuSQfYvMPvyZSrIfntYA8LQV2+LMWjudIVGoj4nSTJSzSCjcsOWb0FLx8nFN
         xbVGV/sNMT1pUIX7L/fyYV/wbCR02VLtIk0oHdwVzjN3iPjNggr+OOwIH2odCBxfsO1u
         docmtVsMF/TOvbNWwV0XUaNuyxB4deNMoTK7R1YJc93cZ59tTYI9Mmn1E7mEnyNg6eIC
         kKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=apTdb92AzNQ96d3ETxccHyv95HLA5cv6Przk0hO/8h8=;
        b=JKq6qxU5JiRkSkjSc4nhSeQ63JNF4KZO5VGffnpe9cFd5KWuTzNBcnhrWIZkvcFbtG
         aDJifbQWFstgEFh7X6wrT2Isic5emx5ugnlsJwfYkVY9UyeVEN53+cF9F7qV+PCfCPSg
         hWYTFIh9ZHPox8KBBeXYuJfapoGChenqOJ4bBz2VUBgQhtU4P78P92zd6gALvxi1yYiZ
         HkLfMC4STlsr1DHgv8ifWBztfTlWjC5XrV6CqL1aOoNIALNXP8w1zi21INqYtrpMViTX
         MgxABWlBotTkpLPxx8NdObIJx004uh6U6lGKCkoC9Wv5zcbwHmc0so9QvMJc+epsi4E1
         gCsg==
X-Gm-Message-State: AFqh2krgNzc5HezddFHMnRjp/ee2moXmUg7VF6Jq7Q+kLu9tlzSPWTEO
	l2Uet+l5EmFhDxCJC480+h+a/g==
X-Google-Smtp-Source: AMrXdXtAapEnKxQpOhIkltcToEX8T5OnPnIqchFzqGnfuLYUoCHcU94+sp3J+/xrNs805/CeyL0VSw==
X-Received: by 2002:a05:600c:1e1d:b0:3cf:b07a:cd2f with SMTP id ay29-20020a05600c1e1d00b003cfb07acd2fmr45391761wmb.37.1673268828090;
        Mon, 09 Jan 2023 04:53:48 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y7-20020a7bcd87000000b003d997e5e679sm12805667wmj.14.2023.01.09.04.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 04:53:47 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 09 Jan 2023 13:53:35 +0100
Subject: [PATCH v2 11/11] dt-bindings: net: convert mdio-mux-meson-g12a.txt to
 dt-schema
MIME-Version: 1.0
Message-Id:  <20221117-b4-amlogic-bindings-convert-v2-11-36ad050bb625@linaro.org>
References:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
In-Reply-To:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.11.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_125402_400580_D01CB1ED 
X-CRM114-Status: GOOD (  14.84  )
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

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
