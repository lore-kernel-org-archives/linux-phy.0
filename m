Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 930CDC54EBD
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 13:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+oSgo4kxjhfXEqxqEGrO/9zdxb/dXlRhRL1ZfYfIEBM=; b=gS632NY1XnJkrQ
	7mRxak0TeRq7/zyWT33QPa9qpaeTvSs3qytuAnrdkN3GgskEPYdM+LZP+L2nWBvpBgthwH/Dv8jJC
	Tq8tZYdQkcI9vHW4OW2t69jYOIJWaQkpHTmd1LJNJ8hc9VpSKBW8G5ea7C4nou9E4452GXFprCpG9
	rYkiU50OcZm1uKL8pNQ7F2tkRQB9bcdpbeRbLRusa8oQZN89dnOrRLGFyCiXDyHceDvYXayzz9H1m
	Ey24TQrobv96LkN4x3e7GdsvxuvqddnWozwI1VEaz45JeF44oD25RodvX0ckMcIilXyaMO3QIV6BR
	aE61aQe1uOK1E11sJ0Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEs1w-001W1x-Ij; Mon, 09 Jan 2023 13:17:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErzO-001UXJ-RW
	for linux-phy@bombadil.infradead.org; Mon, 09 Jan 2023 13:14:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Tquvwj2kpJM2Ju/UAJGs8M9lyCJgcUVyQS/lXUiEhkI=; b=SO4Ir+IO3voauNGV/zy2QN21gy
	d6rhzETySGsrgenS+qOThg5d1JinZaUphjXA+JqjJrmFTrYggqsknM0pwvBjqBEotF2lsn25wigob
	vX3qYPwvHr9UZSwuWoMfBArFp20InvnJNroyyIcEuYY/tbE9ZpVYUyh9qbvOzLe4pTYS2rwrMOXb2
	TAJ6QqWuc4qpC5Yvk1YXLIpcWsifxNBrM8Mi+oiaxc4ZS9PRvkT8+FAbj5K+j5HB8V9nHZtVGTLKj
	LrEixigt2qARdtb5bEaI/i4ZOLPqISrQ8GqrlOFxge+WatmlaPpyHamhIXhvUOMhNELSKPq4N+/aL
	DiG/3k5A==;
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pErf6-002HTJ-2z
	for linux-phy@lists.infradead.org; Mon, 09 Jan 2023 12:54:02 +0000
Received: by mail-wm1-x334.google.com with SMTP id m8-20020a05600c3b0800b003d96f801c48so8914266wms.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Jan 2023 04:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tquvwj2kpJM2Ju/UAJGs8M9lyCJgcUVyQS/lXUiEhkI=;
        b=j4WnyX0OrhV3Tl4dXLdREy6trUYPvtp6GUEeJ7GPOcr73tsXoa4iOdeDXWB502uqCb
         L8UokGsnT4o4qVlJsUCzo/J4Gx6YpBCaStpX8O2/AfvVVoCCWuOV6iFQdxiWGFhCM7pr
         eBwl3cWeK751NdGbRKATht+u7uei9a51RSkVcEAxkFTpHBB7n4BU97L6gu+R591cFEc6
         wrZPz6ROTTgyq5NNhr3BhFw/WQJVusUfgPQ6SFLl23+qT0Me5yjaHsxlb2fyXlliEoz4
         gtb5vBBw0hqWuV9GYsAWdnIcxSuWq0N4fHT6PY0U8ME5pivWgx1xfJq+6oR1s6KvA+97
         69Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tquvwj2kpJM2Ju/UAJGs8M9lyCJgcUVyQS/lXUiEhkI=;
        b=JTELb3kXyuL7naFeWQepGinGvVLd5izyaioJKJ7BShSD49sStIOQqTB/szcAkGluC5
         QNFKnF8upUIsxna3swrNWa5hWF6OJVv38aMR8NAfLQ8Sp8Q93AU8GARiJAOZ9wiCDqFR
         yeggNGZAmQ6PkNHTXmmOd0n530r512cVDAno3gVFZOAbCGLMAQbiYvD6eh6MSJKJKRHd
         36e6X1OqprFF/h7dxcJhqm/9q5j7uRNIoeSmYd2V8lm7vlxxVVNxDEXknrLsQuOFhkvG
         T6/1mwlAbeSCpSwa6T4e4ktaygIL/+t6uMlembFQx82bdD9ssDQlob/l3IIpzlPJYqLd
         riXA==
X-Gm-Message-State: AFqh2kqYnwDo2iSKbRvw0WIMwW0xxUnci15q4AHryhsy9P5tNd4/sJdi
	JHQhXpteg/++vcW1ol7piKhEtQ==
X-Google-Smtp-Source: AMrXdXuDMWMWyAxYhduaA0kIz0hDTTIZak6lv6S7NHGoYj5aNSpW7iiMBldGLNyII8nQkPvLHAq60w==
X-Received: by 2002:a05:600c:3b16:b0:3d5:365b:7749 with SMTP id m22-20020a05600c3b1600b003d5365b7749mr46672260wms.16.1673268823250;
        Mon, 09 Jan 2023 04:53:43 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y7-20020a7bcd87000000b003d997e5e679sm12805667wmj.14.2023.01.09.04.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 04:53:42 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 09 Jan 2023 13:53:32 +0100
Subject: [PATCH v2 08/11] dt-bindings: phy: convert meson-gxl-usb2-phy.txt to
 dt-schema
MIME-Version: 1.0
Message-Id:  <20221117-b4-amlogic-bindings-convert-v2-8-36ad050bb625@linaro.org>
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
X-CRM114-CacheID: sfid-20230109_125400_264410_79B5569D 
X-CRM114-Status: GOOD (  14.43  )
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

Convert the Amlogic Meson GXL USB2 PHY bindings to dt-schema.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/amlogic,meson-gxl-usb2-phy.yaml   | 56 ++++++++++++++++++++++
 .../devicetree/bindings/phy/meson-gxl-usb2-phy.txt | 21 --------
 2 files changed, 56 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-gxl-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-gxl-usb2-phy.yaml
new file mode 100644
index 000000000000..c2f5c9d2fce6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,meson-gxl-usb2-phy.yaml
@@ -0,0 +1,56 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/amlogic,meson-gxl-usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson GXL USB2 PHY
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+properties:
+  compatible:
+    const: amlogic,meson-gxl-usb2-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: phy
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+  "#phy-cells":
+    const: 0
+
+  phy-supply: true
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@78000 {
+        compatible = "amlogic,meson-gxl-usb2-phy";
+        reg = <0x78000 0x20>;
+        clocks = <&xtal>;
+        clock-names = "phy";
+        resets = <&phy_reset>;
+        reset-names = "phy";
+        #phy-cells = <0>;
+        phy-supply = <&usb2_supply>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/meson-gxl-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson-gxl-usb2-phy.txt
deleted file mode 100644
index b84a02ebffdf..000000000000
--- a/Documentation/devicetree/bindings/phy/meson-gxl-usb2-phy.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-* Amlogic Meson GXL and GXM USB2 PHY binding
-
-Required properties:
-- compatible:	Should be "amlogic,meson-gxl-usb2-phy"
-- reg:		The base address and length of the registers
-- #phys-cells:	must be 0 (see phy-bindings.txt in this directory)
-
-Optional properties:
-- clocks:	a phandle to the clock of this PHY
-- clock-names:	must be "phy"
-- resets:	a phandle to the reset line of this PHY
-- reset-names:	must be "phy"
-- phy-supply:	see phy-bindings.txt in this directory
-
-
-Example:
-	usb2_phy0: phy@78000 {
-		compatible = "amlogic,meson-gxl-usb2-phy";
-		#phy-cells = <0>;
-		reg = <0x0 0x78000 0x0 0x20>;
-	};

-- 
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
