Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1FADC54E71
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssZ84OMPNPFXzru26HnzJYYTMge5VIh7EYRm1dFgMhc=; b=icQfzxDUA4OMvr
	wtwAdVvJ/ffE63qPsv1l5bEfJA9RCO2rbFmWJ71hsYyH+Hv4C9s2eMz7gAZex0DN9Ms0fp0ZXQ62A
	LEA2bv5RnDYf4p5nauy3nST5VeWrsmjgnxeSMhkQ3XYKkiE1saEjvvH7C3upAgiOLLIYk9lbMECw2
	qcGMebfr7aukmoLnUM1L+sH5ZVz3w681lRCWm5IPQp9Ht1nq57GygQrZCB1if4TDSRjRZbZt5I/Go
	EW9mTUESnauf74mUFTRdb3fxRAX8RFVUud1o0SzBEwcYsGTa0p3rjNBUB4edIKjg//ImCykxMoehP
	9ayiQD3wJGRF5vbVZUxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNb-0000000G6TK-1KD2;
	Wed, 21 May 2025 14:25:11 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk9I-0000000G3cp-2IQH
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:25 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-ad574992fcaso608201966b.1
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836623; x=1748441423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=axrizH4VwOODtm6rlbHWFXbGvGcBXbHyDloVMVUxuZA=;
        b=akQfKriQn36WzX06Ut+QhQyt9LrALduLKLOuzYz1rrjONWl9av/pvYD5Qr8ntpKe28
         +812Xg2bACITNRFYDg4k9Mp6p8eglWzjr+/ilo6ydSCjoA2O9kwuIZwrGWtoLd6sLo9b
         hkAurYe/RDnVD5v/AScItLpoxBqsf92FnevW/BSJ/kE6uWisrioO/juTjlvgEH7xNqLi
         2CldDybiaA2Wmr4h+K5qbtqE29ReWHpqVlX/UrsEHS6SHkQGKsRyCEaY4WUTxHprLXPZ
         /Vk27mqmMokYJzfh5sEvQUPb6Q5d4y4kwPhXde6LVVKkkxSJZMqawIayw5NXQc8tzyzl
         fURw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836623; x=1748441423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=axrizH4VwOODtm6rlbHWFXbGvGcBXbHyDloVMVUxuZA=;
        b=X8x6WNkQRW0mbAbldZZihBHo6FiHz47ziROlDlrwkhV2j8wcMotUmXmKC/zet6ihjb
         iOjR8kN1va23DaHjX/Ujx3ZPNhe/j0T/jwbF/74YhPzvdMkN/1BaeoidHVOFYd8A87nk
         QqcrKewgAk2Gnf/yr6ydiwJzvQvuHt94LVIVnsfJL/4rtW/MyyZK/7M0ZmHX8qyI93oe
         IPrN0lOsNxrkWE+my2L9iv6Cad8RF/x9mHKei7Pm5hEQ01+15PtyeOrIsEkjheq1I6p+
         a3IixNQMwnHHL++1N/m4z+OWIM5yZaob2teBd9xBUf99gIEyAy1UVyOO6eeSJb+Jf/CL
         uEDw==
X-Forwarded-Encrypted: i=1; AJvYcCUplxd476KM6xCma3iI46RILcU33v0PGjwTlK9j2NaSxUx6mHBq6S0aZjZEv0oTR7gNLsCUWpFHrEY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzTdgrI7L7C9y/Oal+wEQIamFEpXr3lPZm03sx8F18uLOeVCz8
	Az1wWLLDNGXYGdolvE8uLZIPNb4h1NaQD0RjvEeT2i3cuxYcJYB8U8XZ2hBlD6N2Tpg=
X-Gm-Gg: ASbGncs3QIqcWAr7hiZSQfn7nByINN2zoDF66LW9Vy5BQ7ljFDAqNXmWtItYW2FFhWM
	TLZZf6Fj7hPx3XvVy+UtKj9QuLMINWZ4OyV7cnLNHQg8/brEC9mECBa4JZcP16gx9kEVBA4J9YU
	3A6UnoQlzBrT/2v5PMpHaO9m63DnudfmvT3M0wcsT1IzRFne6cijGW+C4SwzrXaHXiFRPXt5M+5
	JHx5vx+Yx8wjlzDLm4K0P/ALsvN0HjOJhbza/SxTwPDxE1hdBWghrPwf7Ea1RMBxOfEjOidEw2i
	BN0pcTqs917i3n7XYVZ3kiq58etpDMlRfFM5roC2l2/RZdk9UKmbh/ZsV/YtS6p9KEPvIAr1/fp
	nl7wE
X-Google-Smtp-Source: AGHT+IH3mjW85lP5lOF5G/GhwZ6sMJSToBEkgbvpm+r4oUg10WnOp4gbvX5AAF37R+msjZhvebr+eQ==
X-Received: by 2002:a17:907:3fa8:b0:ad5:60f7:b2ab with SMTP id a640c23a62f3a-ad560f7b749mr1377568066b.36.1747836622552;
        Wed, 21 May 2025 07:10:22 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:21 -0700 (PDT)
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
	kees@kernel.org,
	gustavoars@kernel.org,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	john.madieu.xa@bp.renesas.com,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v3 09/12] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Wed, 21 May 2025 17:09:40 +0300
Message-ID: <20250521140943.3830195-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071024_587574_DB2FF904 
X-CRM114-Status: GOOD (  11.47  )
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

The Renesas USB PHY hardware block receives an input signal from the system
controller. This signal must be controlled during power-on, power-off, and
system suspend/resume sequences as follows:
- during power-on/resume, it must be de-asserted before enabling clocks and
  modules
- during power-off/suspend, it must be asserted after disabling clocks and
  modules

Add the renesas,sysc-signals device tree property, which allows the
reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
controller signal at the appropriate time. Along with it add a new
compatible for the RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- none; this patch is new

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 38 ++++++++++++++++---
 1 file changed, 32 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..75134330f797 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -15,12 +15,15 @@ description:
 
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
+
+      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
 
   reg:
     maxItems: 1
@@ -48,6 +51,16 @@ properties:
     $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
+  renesas,sysc-signals:
+    description: System controller phandle, specifying the register
+      offset and bitmask associated with a specific system controller signal
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: system controller phandle
+          - description: register offset associated with a signal
+          - description: register bitmask associated with a signal
+
 required:
   - compatible
   - reg
@@ -57,6 +70,19 @@ required:
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
+        - renesas,sysc-signals
+    else:
+      properties:
+        renesas,sysc-signals: false
+
 additionalProperties: false
 
 examples:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
