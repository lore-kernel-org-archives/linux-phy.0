Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99DB8C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 09:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZaNxCkdOJUZKqIbYsj/qMfFWZAS2u43jSDHix4z22tw=; b=tRuz6a3irddsEV
	+i+NkOphu840JWnSn8XzCdod5OrllFl0I5eY5svE4zHUKPTPFVRyDZXyMKxEYzLSdNNYzdyzUXGF1
	Q4Z+GA7/SVKS9YtYmJXtRfPaaSlqPTHigUWL09OZiBnELDXc8Z3k82OtnMCxNlUnQmTK9dZNyS9dV
	AC2C1xE1gB9siL0W8HVLx/LBqLQnrGYFmvZSdHlF1MxeQA8WARr3m/1QYlXfBjFgbV5C9bYdJz1cm
	plbW5sKKooJ3R/oXCCWT4+QddeZiHmC2Aoaf3G3M8cJLAO1lTagDM0Fc/RxmcSASQVIS4GeN+i8/9
	Hqgb+meumNpsAioeujCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDsN-0000000440n-1XQf;
	Thu, 02 Jul 2026 09:38:31 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDsJ-000000043we-2gP5
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 09:38:29 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-493b6f1b14bso7020765e9.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 02:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782985106; x=1783589906; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mb7TOOIuiwseKoR6/vRO7kfdbaChj9w+25XESDqQWTA=;
        b=itKX+kst68Lub2jVrAbKsxrf13uJ6QAr//OK65U7iFWBfO++AhKt88mYqbkOc8UEE4
         fClZ8IYJMzr8iv4ajuMOD5vWMW+Uf1Lz49OHTteJUBtGVt+YyksX0S4yTvB75blbGO9c
         msa1pGebEeNeeFr37D6XE2LWbzwJJC3z9+rV9AAqxAz2kX7EjnbpYrHXfsf9dKhOiixe
         h0wtaaQ7WJvHj443cyGvE31s5WgS8BxuUzG3rgr474X7dsembbgivtyHckqRVSpUVTOH
         wP8Vb/LhQ08Q+B/rk3lgnKg5tfHtv74imn1gp7UieqNKALyCx2xIqwT0uDKP3ir6f+az
         9q9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782985106; x=1783589906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mb7TOOIuiwseKoR6/vRO7kfdbaChj9w+25XESDqQWTA=;
        b=nUwbaRzodM0X652JFGzYQqIYhw7UMM54iPI2Vnjkz0qRlpq7FRI9d4sXmTljFb6Zz8
         Z1AeUV0Mb8OULqP+bxFcstJdDkmqCEqSFCONS1DldnkdS/CWKIdB9PKfjm6cZej3oHBk
         AGxR67K3sT2a5ub182IcTbbUHDq3glOiyn7LbPY1Z1kwY3JsxHR0QCioeacfvaIoK2yF
         F7n0LgY1iZ27tJpcaSEnVIdMtGB7ZzwgpIazVX2E+3JDRfmthjJas8t7x2tB34hRteC1
         MOSLBn8zcZun32aglKeSjcOgVmTLY8gxBlk277dUSHtWIV4GPaebhDpgk82c1PGfCYNn
         ewkg==
X-Forwarded-Encrypted: i=1; AFNElJ/I/w254XSG8uz3QvfdyADhJFuo/Kvom0JNOsOK6k193xQGFvy4iZct+jSYtmjyg08Gzigx3WqPjYs=@lists.infradead.org
X-Gm-Message-State: AOJu0YznDYVlmVTw8AGmnU9En5Mpkvxux5YvoKbFwAvd7eWU9rZp/mNK
	E7nMPeLc4arTNBZWbSzx7FG2wtL5lgTW/Po5LRbSU2CeNoqRA4bx/oyR
X-Gm-Gg: AfdE7ckP8nuBrjvr/Jdj/v+H6Z4ndei7Bmww4Z2TOJd0OHVpbq2BUzeZbdErsOh59JN
	6SzV09jH/ZyBghsgOAG7hrkOlHAUoCXnwlMpLQdWkdZgqyMok1mQZG3/NXgM0LFrcV1HxQuPu9O
	qdtGSQWvqgRDdkuRfCeCg2miL12ZPOuSUCD3Dfe4mPPy+2wxbRWvLt0qQbFVyNU9yOYa9ErzshL
	uwI01arE4aEX5PDW12P+twuxn5+gLZxK4ObXIaIfNKRGK3j0g8dk+maOG/4MwwT41cJZFd7iUy3
	ivNOMvIdyJwEuH5bFcCWP6w5EcUoeOdx9GqIBG3fuISXzeOqhOKEsHGffahFzOwQOD2uiTVaonR
	bIztOMVBh4xt/KtGX4kzZL4oHOCXHjFqKmNLQpHT4Y/oEhONzxHDxlr1EPFIzPmJXm2n4db5scX
	EyaNyXsBp70LNhlxwlJAh7pm5vNuGjrN9h0/geic6rdDAhYR6m97UkOZHlnvIjkhePn70lfuGRS
	bjuZw==
X-Received: by 2002:a05:600c:5296:b0:492:6efc:7c60 with SMTP id 5b1f17b1804b1-493c2b99781mr72214405e9.28.1782985105669;
        Thu, 02 Jul 2026 02:38:25 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-79-52-250-217.retail.telecomitalia.it. [79.52.250.217])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-493c636c8b9sm35502285e9.10.2026.07.02.02.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 02:38:25 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Felix Fietkau <nbd@nbd.name>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v10 2/5] dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY
Date: Thu,  2 Jul 2026 11:38:07 +0200
Message-ID: <20260702093812.15918-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260702093812.15918-1-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_023827_705918_3B227D30 
X-CRM114-Status: GOOD (  18.71  )
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

To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
property is required with the phandle pointing to the correct Serdes port
provided by the SCU node. Providing the phys property is optional if USB
3.0 is not used.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/phy/airoha,an7581-usb-phy.yaml   | 62 +++++++++++++++++++
 MAINTAINERS                                   |  6 ++
 2 files changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
new file mode 100644
index 000000000000..f42e3d49a61f
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
@@ -0,0 +1,62 @@
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
+  phys:
+    items:
+      - description: phandle to Serdes PHY. Optional if USB 3.0 is not used.
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
+        phys = <&scu AIROHA_SCU_SERDES_USB1>;
+
+        #phy-cells = <1>;
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 1705eb823dd0..05e90c3f7fe0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -777,6 +777,12 @@ S:	Maintained
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
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
