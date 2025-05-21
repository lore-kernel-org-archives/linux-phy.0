Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 563B4C54EDA
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1/3jfdqBpGC18mLjxps8E9Z1oJSz05umlr+5nb532g=; b=oUAgmtizUmCC35
	HuK38NhLEkeq0Afs3YPPBomfA1+C6TBrsVOK0KPtJr8CoSP8CIJkzb6oDTlMWPByJVvQKhxE50AgA
	1W+I/ZwasROtxfhEie0n013shWq7zGvY4p81G7vNaya902xaD7sqCStIyDVC6SQ0UgRimdRALSGAq
	fkLtFVRHkn1WkcFec+oT/+YMdtwUySf2GhgJTrPW1FcQeUfUhn1Efxla4em8o9ta9j6+/KZ2X2x9/
	gHDWlbA/AYyfsXbuNQqPImlqrvjXH0HM2tCcR8qSDGO60+eqCsC13MO69+u1ulAv4FoMwSl/67nj6
	PLBIugqPJQ/iGfSy08ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkNa-0000000G6R8-0Nkl;
	Wed, 21 May 2025 14:25:10 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHk9B-0000000G3Yt-0FUZ
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 14:10:18 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-ad5740dd20eso552428466b.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 07:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1747836615; x=1748441415; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTkOFfYMZ3y3OldHS+qgsfJuEURwbh9hY6q/q0wMKX0=;
        b=fQo2uT/3FO362rhKo/Z+AXB/Ecvu53YrOwsZnkROcASiiDy/WXusD6K5MY1K3lTki0
         pZvlFrBx9J7BnB0AhNMq0i35zE9S644EAxnHTdShWw+US9Qt2i//Vbp5e6fgbckbG7Rb
         zTut0ndusxsNk/esWReeOZ7g8gXFObyqV94BMwy1ni7IAMPIHdj5fzqg41M9hsx0pwCY
         KuNJML7P5uV/J3oKDH6u+0OZy/gPKwS1bFWUBjUzjf9qjGYYW1jxapT4C3UqhTq+AhEG
         KG5g0eIqQ35m+n7kEiY28CU+ZXjFM12NpYa9eGNgN1u6iPcLDowY/sPSIsgqUq7XaVdg
         nCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747836615; x=1748441415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTkOFfYMZ3y3OldHS+qgsfJuEURwbh9hY6q/q0wMKX0=;
        b=ATPzzFFw0GuFo8yofMuSt+fiLAkLaT6ZjL7bMQaQIc9oUcqBy151aYQ43csL+kXNeQ
         R/btBdwC73YCLG13VpSdFz6RbAPwawiRzqhZJ+C4yesrLi2wH10XuuaMxzP54/4ax1hP
         g+UFIaQpdyvP1opwDyeN+M2mEuvrsXhDSpy7D29HL6UTieGu82jmODwt9w90zjExa+/j
         76I45YZBw2UXNI0jIHcSnkHQhNubpcxa/FggSvEZdkaXI3IE3YgE9HjvbVJEB0fP19BY
         ZIgerL2pFWY5USKbtZliKkS/JQ/QEmHvHZF1943zQQIrZ+r9ScBhQ4MqsXBdmDv8VDgo
         9GhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhzrGwmso3z8pMry9IgrV85m1zGYL875AOTwwJ7RcZ/a7RXzwVHe59oHk0s+EFjAHEA1sU3O1/t8I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9CF/zJhpcLEwQ70WHKxAy7r4pa6KkyAO5v861AGwOw0HPY7x6
	OX2a2cf1hkrjz92PPTtVmsTxS2XuEwliZiYZRvzKtGVrEGL4Np8qocd0ZX95A5ZKJWY=
X-Gm-Gg: ASbGncsYQGHYGbECeyfSRa7mUrVm4LXwPNzfMRgcALSSNzglgwkYCjriNWlVGt6M9bz
	wuG2X7hanQTTMZp+dmwHBaI91CerGA8rB7S4lKtyKsrVakRlC4bGDB8nJdo16PyEguz39KOQ+1g
	Htk6FRikC8R1be59oNzfnRJBbSsQZBfdZnsmNvSviZnU3WAvNBNcrnbSl+vf5wI/pZB9lPgTN8H
	zVsugGjRkp6Cv2a3RLoNQGqBCmycR80wTpifSd6kEdJKIoR+ESEY0v+8J0zFiNxWsjh3C33fhJy
	aMs8twTHKjrtbw0FEmjKXD6L93PGQRQ0uZioOz4/Y02GP8g7fSBGXuQX6c9z0ypoXU09m3O7oSB
	7DRWJ
X-Google-Smtp-Source: AGHT+IFLlDXtdMoYXukkCC8sPd8xH42J3h4acLeVvcHYzKInEmtzF2VU3mVXe4/z28RFNsO/iS7XoA==
X-Received: by 2002:a17:906:9fc4:b0:ad2:450b:f8df with SMTP id a640c23a62f3a-ad52d468132mr1557492366b.8.1747836615237;
        Wed, 21 May 2025 07:10:15 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.58])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d271916sm914552866b.69.2025.05.21.07.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 07:10:14 -0700 (PDT)
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
Subject: [PATCH v3 05/12] dt-bindings: phy: renesas,usb2-phy: Add renesas,sysc-signals
Date: Wed, 21 May 2025 17:09:36 +0300
Message-ID: <20250521140943.3830195-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_071017_099517_CA8128DF 
X-CRM114-Status: GOOD (  13.05  )
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

On the Renesas RZ/G3S SoC, the USB PHY receives a signal from the system
controller that need to be de-asserted/asserted when power is turned
on/off. This signal, called PWRRDY, is controlled through a specific
register in the system controller memory space.

Add the renesas,sysc-signals DT property to describe the relation b/w the
system controller and the USB PHY on the Renesas RZ/G3S. This property
provides a phandle to the system controller, along with the offset within
the system controller memory space that manages the signal and a bitmask
that indicates the specific bits required to control the signal.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v3:
- replace renesas,sysc-signal with renesas,sysc-signals for case where
  more than 1 signal should be described with this property
- Geert: due to this I dropped you tag

Changes in v2:
- none; this patch is new

 .../bindings/phy/renesas,usb2-phy.yaml        | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 12f8d5d8af55..e1e773cba847 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -86,6 +86,16 @@ properties:
 
   dr_mode: true
 
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
 if:
   properties:
     compatible:
@@ -117,6 +127,18 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,usb2-phy-r9a08g045
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
