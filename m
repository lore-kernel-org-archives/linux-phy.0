Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22306EDEBF9
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 00:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNsh5JGe7LF3Fj8sWVzZAYiejDOCtCUFDDEdRjnniHk=; b=W9+eoromvQE8Yx
	hVJsBXJ1gaTTLlpYXeuL57F7MeoUAF2Z8EymDE9/2ncTUEvK4RQabxdxx7TD1M8Ooxk2bW8eFwTbM
	FEAx8/6r2ylN2N89aTRMP/F4RqlQDBRH0P0BW4mxqz6VJYONssRJKbozm4AtD+IsxuBuvxYrmrFk+
	zw1EdFieICMJ/AEoUTCFPmOAmu1dQj0fHjwxnVVoXP9HlyMY6ckSK99erDfATRYx0Jg2plQ3Vdx5x
	3jlPitCC7C/29DuCqi+dMPcHJPPU94esZ6lupa0yTSkp6LxmUKgu40snk1OWadsOgN35zxkYUnhpT
	JNxJ5wpZ2A6AUnRwCZEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaa0-0000000GCTz-3SDc;
	Wed, 04 Mar 2026 00:59:12 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxaZx-0000000GCPR-13Jk
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 00:59:10 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-48379a42f76so51674085e9.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 16:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772585947; x=1773190747; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h38h80KHifUI84SS+z6wlkgcplrzkREaoXBLQFpmips=;
        b=AeoUOuEs7BBqMPveRJ9Dj20TDWqXc6rxJf7KeUv34qsgJzYBt5O8OSG14P4Fd606g1
         vE4GvcJFQvrro94N6ZUt8vOjtPjZzqL/qHI/JtJI19HPpp4W7eVq3zI9ZTM4JF6NnvGo
         qtUsh9Y6ARpD3dzDoJnrn3r3wRvKOSSJkB7+/5mABX/+YgJarf4odh0iPBB0dakLqaav
         s/9EhVt7abaJB3rxUZa2cUElfaEeZu6h8cWuBp88uDnWTbVTw3f0V+Mo4EXoie2sPdrV
         giV9ss7nbxyH5KKUnLg7SpZGlckTPMD9unPBy8gR2wLJ+GKKRTQ6Jbd3fHFkiMtGWJck
         nJKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772585947; x=1773190747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h38h80KHifUI84SS+z6wlkgcplrzkREaoXBLQFpmips=;
        b=o0D8rYSPssSASSotvGVV279vXd9KdLjNRfiOMR8KIAlTKQtZwK52PmgdCkZ3cKv0tE
         M3Q4BuS7w/qOPEWFZoPSB0Q2TpUnUuGCmaFVjmLkyMuatoBiTbbP3g0EV1Ij0l2ImvuN
         IldsnI8usZSVTRJvodZfFjladU4ww66ZnK24DU7VXNYuqbg121tgLsMF+KNKHTStp4J3
         fwJrLlfJvBoEI8ZuIgv2wdyYVdH0XbRGUNKLjgj0SFPFBi23+urUF0qzpazGKwcXTnaJ
         fNfvOmMzF2Z6uja2Sf10212UE6tJ7Ewvsz/GE9EVZ7JUNSIJ47kZQFI2uVB+fNtYLq3p
         wuKw==
X-Forwarded-Encrypted: i=1; AJvYcCXsprLOPvnhn3k0fwJxLitAxGLRObI+IYaVEoBYjN43vpFEMKt6Dp+9G07jo3t+eQsENrEITjsX2PQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4MdBLhAsXHIO4WkOpZKkMPO7ltT40c+sL6Ohbyl+JT+hho2Ql
	kcar9AddcNUo0S6BlfjZ/75fVUUIZwC50+UrKPFeYHqi51SBkUtGknvn
X-Gm-Gg: ATEYQzyOmToafOldImG+cSfUOuNh5jr1F7v5Y+BDW0zdbjlJS15XdP2GafElp4U4H2Q
	OcWR4RJtVgIJ3yuUaL9jvaNDMxDH0Qui4w0Cd4NqmGElk2FfWcMeCJuFSOtklgM7sJ9q9BcRi06
	Iczpm6QdSPJqRPw+7pWmaQDsFzekXwKWYpcIW83kQu+I7cKfWOhOHGHCK2Lw5/0BYIwngAkC6Te
	KcvTi/SUnfrM6m3c9iVOeO0J5lwcP0zs0FCfNtpc+oKwvAz9DJESMV2Lbzsub+wdBYT0G7LKbQu
	Zke1ORgB320LqiNXwLJUuCwnAa3YII0wwfcohPC3TK3GD1nQpIpDa9ghW7WY8CS6q8v/tr63Vkh
	VKIVhNr2Uo6U4p6FQXtTWk6DEit6D9xkizWHE2OXBgsu/n/ugIO0vYvlCZYrKjKmKr30SXVTS+V
	jrjDaSAt8NY2iNCU0EUEl+F828iHfRKU9YDOdI5UhaIVXXTE2Grr+DR7E=
X-Received: by 2002:a05:600c:4e51:b0:483:7783:5373 with SMTP id 5b1f17b1804b1-4851988ce8fmr3051295e9.23.1772585947161;
        Tue, 03 Mar 2026 16:59:07 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-88-122.ip49.fastwebnet.it. [93.34.88.122])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4851880724esm26927575e9.9.2026.03.03.16.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 16:59:06 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 2/4] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Wed,  4 Mar 2026 01:58:34 +0100
Message-ID: <20260304005843.2680-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304005843.2680-1-ansuelsmth@gmail.com>
References: <20260304005843.2680-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_165909_314976_5F60D1C4 
X-CRM114-Status: GOOD (  18.94  )
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

Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
for the USB controller.

Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
always supported. The USB 3.0 mode is optional and depends on the Serdes
mode currently configured on the system for the relevant USB port.

To correctly calibrate, the USB 2.0 port require correct value in
"airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
selecting one of the 4 monitor clock for calibration (internal clock not
exposed to the system) but each port have only one of the 4 actually
connected in HW hence the correct value needs to be specified in DT
based on board and the physical port. Normally it's monitor clock 1 for
USB1 and monitor clock 2 for USB2.

To correctly setup the Serdes mode attached to the USB 3.0 mode, the
"airoha,usb3-serdes" property is required. This can be either
AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 and is used to identify
what modes support the PHY and what register to use to setup the
requested mode.

The first USB port on the SoC can be both used for USB 3.0 operation or
Ethernet (HSGMII).
The second USB port on the SoC can be both used for USB 3.0 operation or
for an additional PCIe line.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 71 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 77 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..ec467fb7f971
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha AN7581 SoC USB PHY
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+description: >
+  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
+
+  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
+  always supported. The USB 3.0 mode is optional and depends on the Serdes
+  mode currently configured on the system for the relevant USB port.
+
+  The first USB port on the SoC can be both used for USB 3.0 operation or
+  Ethernet (HSGMII).
+  The second USB port on the SoC can be both used for USB 3.0 operation or
+  for an additional PCIe line.
+
+properties:
+  compatible:
+    const: airoha,an7581-usb-phy
+
+  reg:
+    maxItems: 1
+
+  airoha,usb2-monitor-clk-sel:
+    description: Describe what oscillator across the available 4
+      should be selected for USB 2.0 Slew Rate calibration.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
+
+  airoha,usb3-serdes:
+    description: Describe what Serdes line is attached to the USB 3.0 port.
+      Can be either AIROHA_SCU_SERDES_USB1 or AIROHA_SCU_SERDES_USB2 as
+      defined in dt-bindings/soc/airoha,scu-ssr.h
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+
+  '#phy-cells':
+    description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
+      as defined in dt-bindings/phy/phy.h.
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - airoha,usb2-monitor-clk-sel
+  - airoha,usb3-serdes
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/soc/airoha,scu-ssr.h>
+
+    phy@1fac0000 {
+        compatible = "airoha,an7581-usb-phy";
+        reg = <0x1fac0000 0x10000>;
+
+        airoha,usb2-monitor-clk-sel = <1>;
+        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
+
+        #phy-cells = <1>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 364f0bec8748..d75f59118a9a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -779,6 +779,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
 F:	drivers/spi/spi-airoha-snfi.c
 
+AIROHA USB PHY DRIVER
+M:	Christian Marangi <ansuelsmth@gmail.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
+
 AIRSPY MEDIA DRIVER
 L:	linux-media@vger.kernel.org
 S:	Orphan
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
