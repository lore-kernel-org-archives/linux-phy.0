Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7F3C61DC2
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 13:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oha31ScADNiPWloXWpzn1hFw+7YTVtEVeQV06wWgzbo=; b=NDX3Djf8MLaZwa
	Hb7qAfWCyJas9qP9SuGb9cjB1PBmb/nASWD5iEHqYIzhMhCWU8O5RyrH9354dMeRo+YG0UP3PrMvM
	Thb/5qQM0G9aO0vEgsgcO3Jwkc32aKBay2J8m9YjCVXymo/II2OwFbOr3NPc+3J4P69gkJGhZTINp
	MdPF3Csnz5kOEyYyJrNQtdwkyho3Qfb44vnZQaZvaYXbKRdLJrEoWUJ2syO1ZcHNCb8LaD8aXvwmn
	tgpdUTp2Bg0Qc0NzcJBSxlnKuDhDWmZwYcYhDg/NNUlCVoRx5FqS9ig9QlQuBUZ6AIIdLtLSoyAeQ
	W3EiYI09GC3AySRI5PRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZxf-000000042HD-34KY;
	Thu, 27 Aug 2026 13:16:07 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZxa-000000042FI-2K7v
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 13:16:04 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-496bb7cdf51so9426165e9.2
        for <linux-phy@lists.infradead.org>; Thu, 27 Aug 2026 06:16:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787836561; x=1788441361; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XDY73W5+DrXEydXQR2nkbVBUMArg5jEL4W2f2kgOO8w=;
        b=WbmH5p+Fm3PBfgqnhIj2bkD8y7hKzJ9kdNxmoE6184+AWv4VgJPUDkouqYzh7DcyIi
         +BOIERAvh+X2NSyDzTtqxB/DIxHgF4X0RXWqtkxHS0V6ZIfW5JCa30NNPuy2qWlRUYVR
         T5Jen2cYT57459dgwU14tnSBojEOJt0fxAFF8K7j+26Knh2pH+5jKIwHvcAy/D1dYM1s
         H+zm7UgoyV/uDSM45viUTZrJCZymmmdj9sa9etesmwSe1rW47VhIkg+xbDFbw7z1RHft
         Ie1vFjVxVeXchIhQOjForo6RQixRjzcdVbkpYhFDjedmgottq2xRs0BQqd9aSZo35k9I
         jKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787836561; x=1788441361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=XDY73W5+DrXEydXQR2nkbVBUMArg5jEL4W2f2kgOO8w=;
        b=Q6j1g/kURvaQOmDFvDQV8v8I+mlozqw7tIAdMqSbZ/iHoehvB3vWfPSTQ+N3GdJwYB
         M4yvBEmy+M9zHMXHUAWcW4rUNQt2zs/6VrKx5mE77ZQBOuEnVC+gMCPJGRJezI1luEDk
         i2PwRfus3Z89pHUvr8u2ApE5rIBeIdrECbNFUIHh2BRoxfmsDLYWbdMGsFs5yBzVz/1O
         3OQU7VingWfVjbCT4xVr9KQ4Ei3Qpp6XO1HTTUts8PLbozddO7/5JaMPWhX6QQJOPoqQ
         Z7A0czIm9Ofv7ylF3uXjUpy6nEPT6vEyvuIo46+RRL7ek9J5/6epnszUxDCe2bq8osJp
         W0Yw==
X-Forwarded-Encrypted: i=1; AHgh+Ro3cQMSlbi9UDcl1zERN+vHwcSb5+3JWDMmWQjwL7Lje0O39vkCvvdiqF77jBh56nHKMUBaeVi5M7Q=@lists.infradead.org
X-Gm-Message-State: AFuF++k22lNfCSgVacnYJ97ItyVLEl55C7sLuS59kIPiwKS7lGWn7rPv
	1mMJkJtg5MVvcxuqR5fg8VPq7QaPnJek/5i67xg5i4dnCbOCG7gypf3x
X-Gm-Gg: AR+sD11ALZhGt1/UrV+WLRX99+F1jJLx0FI+woeEPtIJHwDoB03a/N2ae19Anu87w6d
	9OucSoh8KUAKEeZMtNdqvQ7cGkkJ/WHQEqtrnH1iyUDqhNmu2lVCz/iqyLJhZA5Q5Y/eAtJBY+1
	M/TBSnqw58EbCM8eSFXfe6ZCe29HsI9qVo/AUlD+0B48lU3FYXBrhvrXH67R9aZfyoScK6quXyX
	BxsZZYN97YPcCSKXJz1AdX+vNbzUEf4/U6gganIts87G9By2CF3pFQWASAy/mmjwGYb+Sguco70
	gD23jzc1DozqTqcGSW87u4Y0oJ+NOeF8RtjUBKwPlWKGqLw0dKs45OQerD0Z7pnJacSlFmw0twI
	4eBV0ckbN4IZdvzN1gACRMmPzESQe2Kxf/DS81f7hkkUCC5rcsuoMw0i+3SbuZh24sa9iMs2mYG
	fGkDNyJfVGv4oxLJC3VQriZqE2sRknLIH/paB+g4KwlbAFaI9/Z/qTb+EmVtJ3V0KKvmyjlSEYx
	cUKInB2kkhv9FkGECxbgkGml04pLfu2iGA1ipnR0cF4yh2KHH59NwBPT3TsnIU=
X-Received: by 2002:a05:600c:3b0e:b0:499:dbba:9859 with SMTP id 5b1f17b1804b1-499dc701419mr155135385e9.5.1787836560352;
        Thu, 27 Aug 2026 06:16:00 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-482e28dc3f5sm9367192f8f.21.2026.08.27.06.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 06:15:59 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: phy: airoha: Document support for AN7583 USB PHY
Date: Thu, 27 Aug 2026 15:15:45 +0200
Message-ID: <20260827131551.26725-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260827131551.26725-1-ansuelsmth@gmail.com>
References: <20260827131551.26725-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_061602_617898_9AE34237 
X-CRM114-Status: GOOD (  17.66  )
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

Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
property is required with the phandle pointing to the correct Serdes port
provided by the SCU node. Providing the phys property is optional if USB
3.0 is not used.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/phy/airoha,an7583-usb-phy.yaml   | 133 ++++++++++++++++++
 1 file changed, 133 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
new file mode 100644
index 000000000000..7ec655253a8e
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7583-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7583 SoC USB PHY describes the USB PHY for the USB controller..
+
+  Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  On Airoha AN7583 there is an unified PHY implementation where a single
+  PHY provide support for both the 2 USB 2.0 port and
+  optionally one 3.0 USB.
+
+properties:
+  compatible:
+    const: airoha,an7583-usb-phy
+
+  reg:
+    items:
+      - description: phy register
+      - description: ana register
+      - description: pma register
+      - description: dig register
+
+  reg-names:
+    items:
+      - const: phy
+      - const: ana
+      - const: pma
+      - const: dig
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  usb3-phy:
+    type: object
+
+    properties:
+      phys:
+        items:
+          - description: phandle to Serdes PHY
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - phys
+      - '#phy-cells'
+
+    additionalProperties: false
+
+patternProperties:
+  '^usb2-phy@[0-9-a-f]+$':
+    type: object
+
+    properties:
+      reg:
+        enum: [0x0, 0x1000]
+
+      airoha,usb2-monitor-clk-sel:
+        description: Describe what oscillator across the available 4
+          should be selected for USB 2.0 Slew Rate calibration.
+        $ref: /schemas/types.yaml#/definitions/uint32
+        enum: [0, 1, 2, 3]
+
+      '#phy-cells':
+        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+          as defined in dt-bindings/phy/phy.h.
+        const: 1
+
+    required:
+      - reg
+      - airoha,usb2-monitor-clk-sel
+      - '#phy-cells'
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - '#address-cells'
+  - '#size-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    phy@1fac0000 {
+        compatible = "airoha,an7583-usb-phy";
+        reg = <0x1fac0000 0x11ff>,
+              <0x1fa6f000 0xff>,
+              <0x1fa6e000 0x3ff>,
+              <0x1fa6a000 0x8ff>;
+        reg-names = "phy", "ana", "pma", "dig";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        usb2-phy@0 {
+            reg = <0x0>;
+            airoha,usb2-monitor-clk-sel = <0>;
+
+            #phy-cells = <1>;
+        };
+
+        usb2-phy@1000 {
+            reg = <0x1000>;
+            airoha,usb2-monitor-clk-sel = <1>;
+
+            #phy-cells = <1>;
+        };
+
+        usb3-phy {
+            phys = <&serdes_phy>;
+
+            #phy-cells = <1>;
+        };
+    };
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
