Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39D30C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9I1O1zQ6UVPEvDsHt2PCzrUhrE+pU6TdWh/+zrXHlA=; b=W/Y5vVUSyouKbX
	UKhEJOGs1sUOIOpgNhNeDDj9gBXiDSJ4LvZYP+YLWWB1XHJ9emLYYlr5ss3UqvEyR2DHGLyK/8424
	aDfEStnLMyxEyfbskekrzuw7cMOqRQ/6SZw7vwurf+XFnEio7oZN8JYH0TDjZMXzBoNlUREslnU/v
	hDrI2Q7FfrOajtuTyCY+DOVaA9AVp0wteE/IUUjQ4yn4WqOV8K6+aNltWum+SMzQq14Pr7Z8e54ZV
	VZd25eR/1bDJ9hOzBl+3kauDvDzDz/z5SdP8gKFobfttCF9byv1I1hhNKZ9YRhMV8HnvE0eHYhS/4
	pc3x1G6aExTYXu+WCY6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3Hc-004u9a-8T; Fri, 18 Nov 2022 15:28:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3HU-004u09-2u
	for linux-phy@bombadil.infradead.org; Fri, 18 Nov 2022 15:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=xLXGft1LTrsRUm/stssOzl0Wu0Tv4L36SFUjpXRih0U=; b=bwgeSvarcey6SqQdkga845pyvT
	MQs2T+R5VENphOQn01DVb5qwxv6UXNizqqyysI50mg7a9CliufgYm0X2HH12ePpxNRpjafhdfspYq
	NA13GsEt5yRFv+SCEXbh+0NsXxuoRBFI9lskGVd978YpD81xhDBV5kUwhyx1uG0f9o1SpJstAZJP0
	3JYItdD4fTtmzvX7h/7foXw2BTvBny9S0RzUrvT5j6tsCl7z5QroNM9NSpy17Tzelf2Hw9ZTeGcPy
	UK6K+fFm2flG8H6tnAnlJGVUOPtGh8BWoovnZTlfOO/WvT4WLfk5ZI7qilHEUFIlzQeX55kOFH5Rl
	NsYFepYg==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2R9-0020zy-4t
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:51 +0000
Received: by mail-wr1-x42d.google.com with SMTP id a14so9554153wru.5
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xLXGft1LTrsRUm/stssOzl0Wu0Tv4L36SFUjpXRih0U=;
        b=cCR5gQy562wvY7HQ1tfOAsEkzRhd5Q67vmDhpKmXdhgwcXETjvsGX1J4mU9pCcNhV4
         c+Mc00TU+/VeylHvYs5E0MnIxYMkiSJ5qbqI+34tyGUSNO9RGoGb93KXrFmg4kBwz4sl
         4thkPqltfrVF30zr5uUyfhZ7eAOr0grm4V84lVwTr2NqhKpjXEDdkOYMVqxrlfV6LeWY
         RJ1wBOHq7O34tVSUCtLq/MQUgq/jAyVT9beK7sU6Uu43xH623nWYhGBDiDoYqdx/L9Nh
         HoH408Wcb8xfa9OozfxyU92ujUElSLyXDP8Wg+ouxedfxijEjU3QB62Dt5KIYW7GDdkI
         EwOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xLXGft1LTrsRUm/stssOzl0Wu0Tv4L36SFUjpXRih0U=;
        b=CZqkSl2VSmkGVgCEF/b9Tk1J9xEhaHwDBs8S4mfJJRJXFnqtl+A7eOPHmQxK/XUkAo
         z9TyE4aHc5f/3eoG+Q4FjbANtE0a8cVhDO2Qgv+93R1vf6NpNQhi0+oZaErxTrAVnazz
         ORv7rXrc/8NQ0cWzEyGWBbEYIk9/67ZXZ1BHZtbn1RFoWE8JNEytP609vYbEawv4QJDs
         pEMtJTwxGXEo74wKNX5eopOmPLP84u1BBYsIpp5Pd0/DgNV3fMhx2DmvvwvikRUJ7TDu
         A8MEKCIykQTLnPdFz7oXd+GcH/oFiSwe2VUvRi3f37diE/PMDA+HOHEsv3EzLJUAzSVU
         Uo2g==
X-Gm-Message-State: ANoB5pmoxqlfHIJwpi5mPxo6SqnAqxOdGq/ty4oPy//XcarGFEFIB9Y0
	g3+hyxqGcukl1OaR8TkIOsFUFg==
X-Google-Smtp-Source: AA0mqf5izo8CUrxyl+/5K7a0ETPX8fLNUL2jQN7f+Pa+tcQ6frMXmlBDMAAxi7obM1ilnXFV6/S1WQ==
X-Received: by 2002:adf:b342:0:b0:236:62ce:3db with SMTP id k2-20020adfb342000000b0023662ce03dbmr4460768wrd.687.1668782025463;
        Fri, 18 Nov 2022 06:33:45 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:45 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:36 +0100
Subject: [PATCH 10/12] dt-bindings: mmc: convert amlogic,meson-gx.txt to dt-schema
MIME-Version: 1.0
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-10-3f025599b968@linaro.org>
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
X-CRM114-CacheID: sfid-20221118_143347_737999_16D3CE93 
X-CRM114-Status: GOOD (  15.94  )
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

Convert the Amlogic SD / eMMC controller for S905/GXBB family SoCs
to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/mmc/amlogic,meson-gx-mmc.yaml         | 78 ++++++++++++++++++++++
 .../devicetree/bindings/mmc/amlogic,meson-gx.txt   | 39 -----------
 2 files changed, 78 insertions(+), 39 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
new file mode 100644
index 000000000000..c9545334fd99
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/amlogic,meson-gx-mmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic SD / eMMC controller for S905/GXBB family SoCs
+
+description:
+  The MMC 5.1 compliant host controller on Amlogic provides the
+  interface for SD, eMMC and SDIO devices
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: mmc-controller.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - amlogic,meson-gx-mmc
+          - amlogic,meson-axg-mmc
+      - items:
+          - enum:
+              - amlogic,meson-gxbb-mmc
+              - amlogic,meson-gxl-mmc
+              - amlogic,meson-gxm-mmc
+          - const: amlogic,meson-gx-mmc
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: core
+      - const: clkin0
+      - const: clkin1
+
+  resets:
+    maxItems: 1
+
+  amlogic,dram-access-quirk:
+    type: boolean
+    description:
+      set when controller's internal DMA engine cannot access the DRAM memory,
+      like on the G12A dedicated SDIO controller.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    mmc@70000 {
+          compatible = "amlogic,meson-gx-mmc";
+          reg = <0x70000 0x2000>;
+          interrupts = <GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
+          clocks = <&clk_mmc>, <&xtal>, <&clk_div>;
+          clock-names = "core", "clkin0", "clkin1";
+          pinctrl-0 = <&emm_pins>;
+          resets = <&reset_mmc>;
+    };
diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
deleted file mode 100644
index ccc5358db131..000000000000
--- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Amlogic SD / eMMC controller for S905/GXBB family SoCs
-
-The MMC 5.1 compliant host controller on Amlogic provides the
-interface for SD, eMMC and SDIO devices.
-
-This file documents the properties in addition to those available in
-the MMC core bindings, documented by mmc.txt.
-
-Required properties:
-- compatible : contains one of:
-  - "amlogic,meson-gx-mmc"
-  - "amlogic,meson-gxbb-mmc"
-  - "amlogic,meson-gxl-mmc"
-  - "amlogic,meson-gxm-mmc"
-  - "amlogic,meson-axg-mmc"
-- clocks     : A list of phandle + clock-specifier pairs for the clocks listed in clock-names.
-- clock-names: Should contain the following:
-	"core" - Main peripheral bus clock
-	"clkin0" - Parent clock of internal mux
-	"clkin1" - Other parent clock of internal mux
-  The driver has an internal mux clock which switches between clkin0 and clkin1 depending on the
-  clock rate requested by the MMC core.
-- resets     : phandle of the internal reset line
-
-Optional properties:
-- amlogic,dram-access-quirk: set when controller's internal DMA engine cannot access the
-  DRAM memory, like on the G12A dedicated SDIO controller.
-
-Example:
-
-	sd_emmc_a: mmc@70000 {
-		compatible = "amlogic,meson-gxbb-mmc";
-		reg = <0x0 0x70000 0x0 0x2000>;
-		interrupts = < GIC_SPI 216 IRQ_TYPE_EDGE_RISING>;
-		clocks = <&clkc CLKID_SD_EMMC_A>, <&xtal>, <&clkc CLKID_FCLK_DIV2>;
-		clock-names = "core", "clkin0", "clkin1";
-		pinctrl-0 = <&emmc_pins>;
-		resets = <&reset RESET_SD_EMMC_A>;
-	};

-- 
b4 0.10.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
