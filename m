Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46817CAC583
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 14:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3a74UqSMQ7quBXyKMW7f6R6ROLgBBeA1J8DyWVPj9w=; b=BLAQx8gCNc/nrV
	FAWm+eVGkNPq2RHQQbcpA74ta1BJhkoQY6qcAlX+XLvm0b/HrLpsyXpDOYPSDJJYHpNAi5LmhGXdQ
	s0emNiWt5HecJuLXJct4B0WXB+oui17BOLflG7W9nG95tCv8xFjlPWyV7gAibEVdunnFPaA6iz5ZE
	x1isodvIyaIU3rGZ2x/0YtE+LjziQhnGp7cIAvni66e3RYuOOUP28sF7tehf32Z0zzEFrroP81Ovj
	zSLKrMu3SdRPjdBmZtktKPds7sDYJDfo/dGEfIvIdSk7Hg+iaws2fG5gZyzQak+WquUxCxpCZkEsM
	17yWnPGaO4yo8TwzP06Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQ3-0000000EYyX-09A0;
	Wed, 10 Sep 2025 14:03:31 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwLQ1-0000000EYwx-0aVW
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 14:03:30 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-45de1084868so21068365e9.2
        for <linux-phy@lists.infradead.org>; Wed, 10 Sep 2025 07:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513007; x=1758117807; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2v/qfrJwcDhrBtg7MhE4eAOkQayuMMHztt7+WMK54yY=;
        b=AiHrQsymDUOI2o+epd5rw5ZHZcB8X9LWqVM1FrOyuGt1ZrROmACmmfdkR8GCKYmRsx
         k2UYtfc+scOKrG3sJQeYy6sKgiZf2lcElO0XLq0Itf9WtsW/9m2fLvyc3uXMM/j4OtgP
         fSqlnH19cOjsGHUPe6rLhIQ9B+Mx09EiDFOjZPaj1NCsdWVBvGhrt3iKBCFYWC0k8iAj
         IRXFWqXZbT4MyZzAaYQFgBWHct6tpgz6fZre5B9yY2gDjnxCgihnyLnsUgJNxoFfbQse
         xnOMYHR4KYMT5n+tahL4PCxcuh9ZzKVRUrE3QL4aUZ6P918MVA+MEmJiRo1fLzZLeVA+
         UFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513007; x=1758117807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2v/qfrJwcDhrBtg7MhE4eAOkQayuMMHztt7+WMK54yY=;
        b=Q538hZpvG919w5DkZ1X+um58W9QNxXn6GnCG/aLy+Y0YcKh5CIn3E8uTJ5jSDCHssw
         xIkLQ+4khsHnBjJ36fe7PHHxZge95lStKNNAbnKalZIOBwPO0avV8NoYNTNug4wGDxOS
         ioXD5xQgFQySmM2BmD4mXPb/32ep5/ncoqrAFsZM7Kzz1IYfveiZPuLDcR3Ox8XSKjys
         ZVnTx37PfaBV5927h+mJLInQ4z3KGL/Gb08bHcn0AINm+0La+dLnFa7+3PWbs55gmcth
         RiOU3KhRoNNWUAxglhASZJmv73NdrZeebo0WdZl/egA6dv37/j94M5zFZ4vgdAu/SU2x
         kuAw==
X-Forwarded-Encrypted: i=1; AJvYcCV5hrdeSKCblAA2xj8K8FFHyca3wp5sJQQ9Inyb5oW/UIy66FBAnHx13WtIagbzBTSWPv+YmOW2Yzo=@lists.infradead.org
X-Gm-Message-State: AOJu0YyliscXuaQVLSy6uG3SMDaBIsAEdcX4+Gf6NkqIUuWz0bGZZnQ9
	zLY/4+rfBxoau5q0oA4u4j9e4bYup/OW3TFeCQT1EQnTVWA2UToE1myRddeUvw7VdNM=
X-Gm-Gg: ASbGncsUQ6NvJ7yf0M13F0ht9nxHLJI4iZwFnLVi6/gg5K+acxlPD/66LG8zJCagky7
	LBkILan4lV/qy/2mXFUKvdBnWIxpkBhEeYk4BWKhZIJyfbMhJgoaxgc8VnfUOf/7PZc2QYxLHwu
	EYGaVqOcKf0ANNDOrPkYMW8t6sr/yDyEiqcsLQK7b3wHXOy7ge8/LDIgKNrGaqcdEpfg5Ts0j9f
	Z6szwLOwerq3mJIcdinM3M3pwLCeyX8sg7OviDZtmLCcLu3sMwucAWz31l36K+vmj+HlJ4mkc2L
	gOL36J6XFWzxHCMHfq5BWrKZKMSRcibzZpprHjhk8jUzYetuoj51bMjw5eq2OlDaqsE8fuzlqEV
	Xd+g4wrkdr5WiiU75p0isEy8YyJCXXBFSbCdW5JUbzlOhVcqq4YfsnHmubHdSeJ8=
X-Google-Smtp-Source: AGHT+IER2la6Lcfz8bP/iHB1RQ8PkQa4R+3KjeerQ7zRfv0QQDireuWsIfKEUQrrW3yVDeUhRWK7Sw==
X-Received: by 2002:a05:600c:4587:b0:45d:d94b:a8fc with SMTP id 5b1f17b1804b1-45ddde8c757mr179992855e9.16.1757513007223;
        Wed, 10 Sep 2025 07:03:27 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:26 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v6 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Wed, 10 Sep 2025 17:03:01 +0300
Message-ID: <20250910140305.541961-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_070329_206650_32D7018F 
X-CRM114-Status: GOOD (  14.06  )
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
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

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
