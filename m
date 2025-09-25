Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E3B2CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AJgFP8OxgaEAgDwKn1yfzWWedegMH7iO8ZwWgqdurOM=; b=z2GRIwKioN7aK1
	ZISX9V+q0jQRyUX+whGoXxNQKZ+cWXeFOSUHmSXXfhYakNr3jnxQ/YuZQyZD8VFjtnbZvRiP/Gwa8
	G8YfsSXCSn1R4u23hjaqc5oFVnY7UQnxaQVpUgLe9F2WmaTUYTcE5I63Ob2gk40snlRbKRlmbDhT9
	LXzcI1iXjYlTnLODXKsahIjmVcSDmCpILeVFnn+RhZLCIt6D95eVChgDcAiNQtaO35upT1rrxujZa
	OYk8EUEYWdsXSMKIjsCK9VsPqHQ/Tui5wsrieCHOFng49h+VCGek9/+t34rGJ8AuhJM3IOvA5f3Ys
	DJvV09Xaqzd6g93tLmlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipc-00000007tyY-4A8f;
	Thu, 25 Sep 2025 10:04:08 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipZ-00000007tuk-3eEq
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:04:06 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-46b7580f09eso4801645e9.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794644; x=1759399444; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ev+V/JW5+QM+PIWIe4k3CE87ZcIEVc5Xt1x3/zgMw44=;
        b=nWCsQ8vUf7sLy+M1pbULEAmxHE62r9oq/nNzRybdCuxhrRvJn+BvczLmr4v9rmJbJ2
         9k9jKVjc9cRQp3RC+50dm0RPOnUXZtYjPTUG+Vdb8Gt0+eCcuu2Y785m1NCV5h3VBqKW
         vQFj0qVY0UJu6ddZWak38Byn/VYunPttnnWoWjsivd+/aJFZgBTMF7OPl40+yEVEMcFF
         W+NId/6sKo6N46AQckmQqg4kePA5DSNEoZW3fxWaIvz4I3MGbnUjsMxOmmQtqDrHoeA8
         4iLiPIDix0qHwZZvTlVbOOUr2GTLZx3xYPgIv779spAzKSPGtTHx/w+Pk6nodRFgFKLR
         5XWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794644; x=1759399444;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ev+V/JW5+QM+PIWIe4k3CE87ZcIEVc5Xt1x3/zgMw44=;
        b=UJjJewLQs+TmwSuo8OPKFnb4p4IDaEntTV+u3ooUkbGgGln1x1JV8q0g/Z8KYEZdBR
         l8mq65KnITQSo4qKDTkhxAjVhbsxe6QacWPzyyjfDddbX2VzKhe+iRe2Zf4emvCNzu9T
         OLO46XNBLLNR9JlyJtqiQqYaaaw5z/L3dGm2KlQXprE/GdRp16xJS6LP9rmJpuxH6jm+
         iHWqRY+zx4aMyoIKdanHkJB+q/I5gGgAB6e3GMPnVUHxdn7MWUeEyIjm4A3EFWP7obrZ
         XK/Z45KKikYLJlXiS9bWjIi5zRTwJYgp4m8aGOnGlk6e7T19tPBLJcikeHTEjRlstreZ
         hr+w==
X-Forwarded-Encrypted: i=1; AJvYcCXT8Tu/iLy2RG1YmCk95pFEJT789mZXmvRrRlHHfuf6OwyS8pZHz6DqgogmsY8kdPu7sR5gsEit6RA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0nyb3UcY9Nd3Ol3CKAi2hI5okyFp8rY/xejp5ak7+4H8VT8O2
	0bXgG9XCbadNQ7WG6+igmrtGO0RM1pdUzl92aFi5eG12dbnY5pUsQCgI0LrdZimkIbg=
X-Gm-Gg: ASbGncsZRsQdf0sF6JS/xt0NHscVEWF7eyMqGM5zW3RrFxC/UZJIHf+YzMC/ZkxRrUe
	eLb5fKZqxTN/mHK+L4J/HAJVCdwN3Y/c4KwUqoWzNgBSaM2uTysoDokBQvubJnK3dQDmiVChZjh
	2J1rA1w86k+XRwklq3IgG+2yzNBrxZsM9fDqys37tHj2sZ8Pd3Z7EZ4AifA+k10Fr0ENHgv6Ssc
	uNWC8Hwv+LjwMdWHwXDjAViTCRTehD9kLH6zuY2sprJgDcpOdjwWcjqDtrJ/0ATkM0sq8Pz0HF/
	yyjs2Qcr9pfZzN9QuZ1pjyAz607i5neuiWqj3P++s1C7wVnrzRp8cbWZHV4jUh53FUUK6GpzCsx
	PedAtynvSFh0ly0Q9caegtSLz2UpJAlT+hFEso/peyiH3F+URXiSl
X-Google-Smtp-Source: AGHT+IHF5IlDl81hhWyikMX5E0qyEzULKekaiiDeU818Ht7Ddn8on2/kQQ7mJhhr2YOOLfwqnUuxuw==
X-Received: by 2002:a05:600c:630f:b0:46e:1c16:7f42 with SMTP id 5b1f17b1804b1-46e329aec2dmr28177585e9.11.1758794643994;
        Thu, 25 Sep 2025 03:04:03 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:03 -0700 (PDT)
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
Subject: [PATCH v7 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Thu, 25 Sep 2025 13:02:58 +0300
Message-ID: <20250925100302.3508038-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_030405_931768_B0D236F3 
X-CRM114-Status: GOOD (  14.76  )
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
