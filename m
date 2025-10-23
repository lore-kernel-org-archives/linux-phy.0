Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1CE3CCD1BC
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 13:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chf8oOWzH9Reh5xqsPJ+WazNMvxqUpUV3oaUNfybwjY=; b=bglHUYauB0kMkh
	yrhKXoDYaD1APWuy84wV4+/XR9mP01+HJq/Sh29/bbiFDNtpuxWE6Cx0yXs8HrHqJZKbAUUDBBPRS
	xG1GFfNfAe1dEOAjbmhPkD4n9D5hNeevKGp0X3l6EoP1of/SuPPoA46B+Oxd8MUVa2mgvbtjy+7Ft
	9p7Lmz40i2ZTaCGVdDvVeqrvRKRD4vnSYg6HtIXGh84WrrU2QGD23OV/4i2gcuzuNYIU2v4T175C7
	k4Tqxriv1Qbjx7IgtH4Bo2MNV7Uxt1uoCXFhnimMc28Eg2GkDP2sZ8uXz6Crm+TzA2NxyTqWzQoSB
	QL9IsFGfAuHuRA+MSAgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpr-00000006V0P-2WqQ;
	Thu, 23 Oct 2025 13:58:35 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpp-00000006UzW-1dJQ
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 13:58:34 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b6d5e04e0d3so60481466b.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 06:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227911; x=1761832711; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w0ptn8E/LhDaocVN69/KiZrW/OIwIcPB5zTMwm1G3mY=;
        b=E08g7JwQp1BLCwzW6rEII7o4hXGL37hTxRSNRAAmMh/3NCq2UNqLN+aFD1M4ee1xJv
         YydFdcpiu4rN059qnrAAfDOEgNDX0DS5E+lz74wV50V13NypwLS/dW79Wb1jVtK773F3
         422i8XM0dug85hMdejZiKgFXwd4t7uu7CBXZ73QjpMx4N8SJWIVv1liNbgL7vnF//CUR
         AzbMyd17WFmb7qiFhTKJ7La65FaLHr4fZPJEXJylU+841BtTTQrEmtqd7EyBSJw9tZrd
         wm1uqBDxG+uFvC4yf8QbYmQOLniLRdoQ8DnG7QQ+XakUEg682UASsuvvLb5vLZoHTL2+
         9uRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227911; x=1761832711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w0ptn8E/LhDaocVN69/KiZrW/OIwIcPB5zTMwm1G3mY=;
        b=UNP/a7h1Xc/CcOOxpIPn6Y90zAeSfKdsupK0RFLiVfkLUftBpYVa99KxNz6r08RoYr
         tWvIBWe1YoT50NB9x2jYXNWo6b2yga8y4bNmLS9mGCqlGiIBOqjY+K4seQNZKGt1N0Qv
         t/YSg80Rq0JB4l0keOnxlW30IhRIULxwtQ7KuptNoigoV6bOLibvMAy3eDH1pOcXyobS
         8bbG72peMtlGAodZqP6BMmG7T3xBQCIaJ6y6vqLdzCBXFq1KzlASFyCHO4qx4wFotQBa
         leM44ErKfUxL2Yb1CWXKQe+Hyfs1fajwQWJ9/P9SOx1eYibFe0i+r6MjeQus9SGIkCwu
         iZOw==
X-Forwarded-Encrypted: i=1; AJvYcCVujNlknP/trX/cfL7hijar1i89YgVHlnPIqxrB134TVta0vgoFnK/2kIxCEQk3261AS8uXm7ueO8I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz29OHvmzR6/utoBICj/rk+R09yT6PWxQ//Tk8qcId/1tPJZJoZ
	4O33F3hM0Jv2JB/yfwqGeDcohOdVBptwkkbwP7RuCVL8GLnivcx0LdY7LHMJ9NSoXVw=
X-Gm-Gg: ASbGnctNBY6Kofwb05zp6IwKd4vyE5mtU3Vr0J4dwV+180RX7Gtx7mH8pNd+OTHL2lW
	EEfDGL7PbvCa+z9Zup1M56i+d7JPfdfgthxl97ySb8oAbG3rAHPddd6xvU/4fvLZrSUwZJBiLwO
	JV4bKduiqJz36kmjOXaLneCBhhWpGD4DF6pvEV6M5d6SrEKpAmievGOyRx2DiSHvXxfifYLG203
	VlgZPCfF7/k4s9McDETvR/Goa+EEhc9GeOBuFhenRkAWnde65fcwcIduekPcmv54q9R0/6mIZhN
	GdPOSz9dD/6X3yzyiifsWBdBpeGZAwLgLEQBTlxcOHXfihIKTW72BsUGw8ywIaNHTTukoqwMTQR
	Qbif/IHG8JrsZm9aGEox/CS3rjV9PM74e5kBO10fQNg3O9KFqZKyqj375+KmY8om7yknQnFZ3+K
	LJr0KNIhwV2oao678EPJzaTzJwxACGYC/wFYy96wDJ
X-Google-Smtp-Source: AGHT+IH5zxAjIq0T7KqfSxfMMJDn8BjHIDOb4sW4dH03nN6pd1cSkApPwJS1N7LfAd+GxeG4RMRMMw==
X-Received: by 2002:a17:907:9816:b0:b6d:5bc3:e158 with SMTP id a640c23a62f3a-b6d5bc3e4eemr167216766b.17.1761227911453;
        Thu, 23 Oct 2025 06:58:31 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:30 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v8 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Thu, 23 Oct 2025 16:58:06 +0300
Message-ID: <20251023135810.1688415-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_065833_458995_0FEEB54D 
X-CRM114-Status: GOOD (  14.07  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
system controller set before applying any other settings. The PWRRDY bit
must be controlled during power-on, power-off, and system suspend/resume
sequences as follows:
- during power-on/resume, it must be set to zero before enabling clocks and
  modules
- during power-off/suspend, it must be set to one after disabling clocks
  and modules

Add the renesas,sysc-pwrrdy device tree property, which allows the
reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
controller PWRRDY bit at the appropriate time. Along with it add a new
compatible for the RZ/G3S SoC.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- dropped Tb tag as it was reported that it is not valid on bindings

Changes in v6:
- collected tags

Changes in v5:
- fixed description formatting
- collected tags

Changes in v4:
- dropped blank line from compatible section
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
- dropped description from renesas,sysc-pwrrdy
- updated description of renesas,sysc-pwrrdy items
- updated patch description

Changes in v3:
- none; this patch is new

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 41 ++++++++++++++++---
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..c83469a1b379 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -15,12 +15,14 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
-          - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
-          - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
-      - const: renesas,rzg2l-usbphy-ctrl
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
+              - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
+              - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
+          - const: renesas,rzg2l-usbphy-ctrl
+      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
 
   reg:
     maxItems: 1
@@ -48,6 +50,20 @@ properties:
     $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
+  renesas,sysc-pwrrdy:
+    description:
+      The system controller PWRRDY indicates to the USB PHY if the power supply
+      is ready. PWRRDY needs to be set during power-on before applying any
+      other settings. It also needs to be set before powering off the USB.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description:
+              System controller phandle required by USB PHY CTRL driver to set
+              PWRRDY
+          - description: Register offset associated with PWRRDY
+          - description: Register bitmask associated with PWRRDY
+
 required:
   - compatible
   - reg
@@ -57,6 +73,19 @@ required:
   - '#reset-cells'
   - regulator-vbus
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g045-usbphy-ctrl
+    then:
+      required:
+        - renesas,sysc-pwrrdy
+    else:
+      properties:
+        renesas,sysc-pwrrdy: false
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
