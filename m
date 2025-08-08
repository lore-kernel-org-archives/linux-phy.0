Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4BF0C87FD3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJiZk1v8fXi1/i+txdvjwlThR3Nsxkw2CFJeuDCWAXs=; b=isv+Nw/rgIHIKq
	gM1mmwoe8koPksd9taGa/EbJyNjiDtLfC6e2oDhCV8idfIkUcd/fJDqRX0o068z+1vIXA2SfWSKjj
	/VHhy4tzFvoLZC5uZvATjYZ9ne2T1jYNwfErLIzJUY2NdMAuAh7ndEkyM1gwQU0HBeKKQIHIhyhX6
	PSXC+uk+S+pjX+Kl6RDiVyBHgULqa2lW5/h3mYHLNTxL0f+DI9VwRNujt954DLRsK5AWHwsqCVoAb
	6k9xr6jgkfiPo3lgwjhG0Rd4KczmvfztSFwJol9+cbhJm92WzhwqNMUkPFE6a7iUaTEZXsjfUPC9O
	xEhmbM0KR04mlp+zr8UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQz-000000025ZD-2X4i;
	Fri, 08 Aug 2025 06:18:33 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGQw-000000025XQ-3uya
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:32 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-af9842df867so321279266b.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633909; x=1755238709; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LP9d+H6CPlnAcNit9gY8gkr92HzBXHt7ewsUzb2PWg=;
        b=GJ6OP5PaQiTyHNKf6HQyIuQAqWrlv6hqkQtDs4EeM13sMzSP4PGRGCMQhgGuEcKcE3
         hf0NxxWrPja+taZDxq+U0Cxn48kxw1oUa2O9iiuZeoCBIqqeNp6yfRZA3/WUU1f0zH80
         KBA2dtOKyOVPL3BMTrmGmayC0QXivzU06ur+6QZs9vRev46YDMehYdthFQQj0ceOVljT
         WMSUzDFRhm0ALMuF6XtTXtysM7fEe6VQm3YxA1xu5N5CR2WWhX9HExWzmtwHTt0rawX6
         osjz+g4OE7jXidoaiLgHEPZDBKMLAq+y+a906IoeoSgFawXL/8ML6MGAYV/mo1xT2kXL
         7Zwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633909; x=1755238709;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7LP9d+H6CPlnAcNit9gY8gkr92HzBXHt7ewsUzb2PWg=;
        b=VmyvNBsf+MNW4EmlZW1Fo4+nUtM0wYmO/MnME/LQfFm6FfcJjU84dGu+excAl6hbrr
         6t5kwn8wQf52QpqWmhXEAuYGsDRimscU+Hv80sm40x93zvNKqQAE/lFbsHXYE8EUpiSr
         wkRmkYt/mcYCV8GvLwfwi5Q2B+lrlh3fyIJEFCimdOQBSJrjwHbndaffFaRPBj0Wd5YX
         5QY+xIOZANEYrcZmss8xezfzJD+KiS0dGno1zAO1G/kdpAgaUWW+3ARrMkBCkExXwSZZ
         8eB7DLp1JxejcsJLF0/NPtiadQaemZo+9H/lQvAyg2d4FhMA2ww7qB72rlvRShRvF6ZA
         OFYA==
X-Forwarded-Encrypted: i=1; AJvYcCXGtyIKpxRk7Agd+Nmw/wDlsLxPtUxJalV0VjFjUfc6l63eM0EBa+b6TSK4dhHHK1imus1jlQUP5T4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw+HP9abzl9Mco5IysapfaebpMQO6amEorr5Ir/dN0/JbRcNj/L
	UYMfkhVKIdBCQnonpgADUsPUIxbyVnIpXim7jhXlznHBk9756nBGPeWyP/2xZChpcAI=
X-Gm-Gg: ASbGncutjQ5XsUuc6ZkhiySiwPs0UTY1EqBT9pLWSjPcTtc02juej8n5uOmxMxWWfzT
	3obyVeFh0aQjKMrBdWEEPN29bXlCnJhiWiKgeU0J91CYI75A64c5VN9DHola+NziQROPvpAJdSl
	LKWtsUxBECeoIyAcXCtA/+Ho22nW24hRlWZF+l3bSAXpvNxO+jGqhLsJMi1Nsiz8a85bDJ8/fO5
	yE1DaZh7L7I0bdpDxSR58+tmAjs/AT7rStlLssz5jAOSPOlTM04G25UDDAjOYgN2p+Er7c67xsE
	1yqsREaow18VDpRnEpBAsYhU9bdsuJkgYG4LAHK3vfL7xSofKf1pi/caZFXSPt5cJrssHKePC3Y
	FeZyXC0ojr1Rm5CBgiX5FUFfaT4rMeYHB4YRQnJATcdyIx8wBr5gAO893qfAUmQg=
X-Google-Smtp-Source: AGHT+IHBGypz2csrT01KrszUBTtkYO2Kq59PbibkZ10/vGO1t9o/yLlL1WxFizfyiFcAA87qUi9uGw==
X-Received: by 2002:a17:907:7e89:b0:ae0:35fb:5c83 with SMTP id a640c23a62f3a-af9c64bf042mr131826866b.28.1754633908938;
        Thu, 07 Aug 2025 23:18:28 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:28 -0700 (PDT)
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
Subject: [PATCH v4 4/8] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Fri,  8 Aug 2025 09:18:02 +0300
Message-ID: <20250808061806.2729274-5-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_231830_980475_E5AFE94A 
X-CRM114-Status: GOOD (  13.28  )
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- dropped blank line from compatible section
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
- dropped description from renesas,sysc-pwrrdy
- updated description of renesas,sysc-pwrrdy items
- updated patch description

Changes in v3:
- none; this patch is new

 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 40 ++++++++++++++++---
 1 file changed, 34 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index b0b20af15313..c1d5f3228aa9 100644
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
@@ -48,6 +50,19 @@ properties:
     $ref: /schemas/regulator/regulator.yaml#
     unevaluatedProperties: false
 
+  renesas,sysc-pwrrdy:
+    description: The system controller PWRRDY indicates to the USB PHY if the
+                 power supply is ready. PWRRDY needs to be set during power-on
+                 before applying any other settings. It also needs to
+                 be set before powering off the USB.
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: System controller phandle required by USB PHY CTRL
+                         driver to set PWRRDY
+          - description: Register offset associated with PWRRDY
+          - description: Register bitmask associated with PWRRDY
+
 required:
   - compatible
   - reg
@@ -57,6 +72,19 @@ required:
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
