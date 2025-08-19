Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7DD0CA0EE9
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+qt7y0AIOvERElqh4DWan+haymAiiujkdB7ydLPm/U=; b=RXZyfIrpSXwyU+
	eS7LBo3lMWBIIOQHiyPaiE0FFVzxM3bjdH7YyVuNbi7uKGXyfXYA2fu0KKfPojNyULGVwVaZpPP/F
	b+ly5gjWU0+Jsdqv6au5P+vd/WvS3v3ApApag3fzGsplI/lY+GMNSmlqAdsBEZySPSWvG+oSdvTIS
	Gf+z6pIzn5NMctIYLENUBeYIPO4fWtXuPpnr/84WquamMogxNSw8nPka9EPghCy31y/EfAqU37kfR
	NeNP4lEhumi4vATxcOJ6xuJKDcKkdWkuw4le8u+95cNr7DII6Ban4OoOKc5dmRbcWYuhfcnvjMSQJ
	0bEzUp2hPuRx1pV9wW6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF75-00000009SAV-2iPc;
	Tue, 19 Aug 2025 05:42:27 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF72-00000009S9A-32WA
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:42:25 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45a1b0c82eeso40016615e9.3
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582143; x=1756186943; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HYSKXBGxl/0cppLApyYv7t4M3O5QkIiUowE4I+ciT30=;
        b=Td1MCZDHZ2Zy28dghYQ4OqQpvTotaS/B8GFSLPcHt8o93b1zRLKOMalyCRiIywmQSj
         /fzS4ZM1cz4aIYJjbDM+7ZhEFtBHAwOnYhY0rGFV8zIKHCfBBGS9vKdb/Ka2LkPaZRzo
         ntnhsXvZ0hQ36bEBad+8/hb4tZ+QVs+rMYbxDfHuUAaL6GzcLtSH17EPvcloJbl7x78z
         03cg6o7YLyXEOhEiJ7JnYKD3csNq1OEusL2NGbRn/jzSercHn/hcDPvkx6wYMVpzCP14
         sjdumPaQEvnWgNkTT8M0F/6dQofyVXmGdQf1M69HtO47Slwa+fmQBiezQ/ep34CZ8YwR
         5S0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582143; x=1756186943;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HYSKXBGxl/0cppLApyYv7t4M3O5QkIiUowE4I+ciT30=;
        b=mhVxItbNIKdQ6dxN99eQaYj24TqgUdPdBoLVu39VgoI01m1jBls6YRiE3rntgq4I0g
         mCUHhG7pZz3GPoRbrSf2aIQAqMmjF+xVQkfAPzu7+zxWFirNAao3zEo3Ewc4uU/Zi8x6
         AXXt1DEgK+mvtxQSqal4TiO1r2I3zgccDYS6AH7CTpJ4j2rnI80uT/OhQzgwr8sIjbuH
         iIHyue1zVgu0Ca4kFkIV+NmqZJ96VoglKtcvZodC5a995atqWeYxSoU6ulZ4xogYYgQb
         ODv9b/JQ1JfjhdbK0WRy+zp9bfyVvG917DgKlb71Tukcuzm8wHgBvmHnQCqbf7IZ6Cvt
         ZfPg==
X-Gm-Message-State: AOJu0YwvqNUXCw7F84jFdtIBQwl6X+3pxdxHGm2d2+pW2NKJohFEnc8K
	HY139Wi59dBoyOHhco5sS73QOLOwn0Cly7ouEVy054ea/WHBy42c4iY3iPrOsJLYw+s=
X-Gm-Gg: ASbGncv6Jfh4qyxkhf6EI0S1lia6tqIgvyBGoqNUfzXTxM66pZIuI/vdv6ewoyY8YXa
	J91Vna8iXph1tkYHhzOZQlDiXvWZno00VKWg1rJhBbtgWi53rgbs68CZClzhdifAD2ppjb+/Smt
	fgfSrqv104g0af9gFislCgDrIiJmOFLOIhFTV5hfGoM3wTQ7bRHPaSzDMilDV627XStDfI2rX4I
	75Gd46h4uf9pra9BuSs3LLefyu/MxktoqmVw3OS921Af731Pnwu4KoinkBPAUSmofpBWjcJpdMz
	azjrcaXrYqaAvw67Gp7/39bbcKoi9j7urYfkJuw+5d4ldYHO80n4yJVO1qZ5M4KGGhJExhyht5W
	8YAgMvhqYbER1V+cFxAWHxrWmKJaWu+YGhKeUxyVHpt3DedMa2FldUfRoGyeCHzJu/9xgSPOcAN
	IpR3v7amA=
X-Google-Smtp-Source: AGHT+IEBqeNsrzMuxdDwDLYVLpHRfbSwbG09A9d+KjmEIS4kFBVPomWUHd262GBt3nx9ixhYE3ZToA==
X-Received: by 2002:a05:600c:1c1b:b0:456:1c4a:82ca with SMTP id 5b1f17b1804b1-45b43e0f3a3mr7340335e9.32.1755582142917;
        Mon, 18 Aug 2025 22:42:22 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:22 -0700 (PDT)
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
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 3/7] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3S support
Date: Tue, 19 Aug 2025 08:42:08 +0300
Message-ID: <20250819054212.486426-4-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224224_769080_577FA033 
X-CRM114-Status: GOOD (  14.50  )
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
