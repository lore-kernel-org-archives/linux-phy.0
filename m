Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DEEBC531DF
	for <linux-phy@archiver.kernel.org>; Thu, 22 Aug 2024 15:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ox2ON2e9ghFSvnaXyV1jgIiIF7dQt6u+8647IWoV0Y=; b=fMog8YITG7b5/L
	krk+uHfy+qo5UW8eG8tU1YPOfh3wz5qn+gfHYHAtZIdkcK2rSk1o4YKj8zecBMkju1VWEqjx2iu9q
	eZ0EpnuUgS8uXx4RgtUNIscLA55KwDaR8wzSaisMBn1KfBCasoH/YFp2wOOADABS1WsJ3JRUPwh4q
	QOo+XZymiNV2oDv3Q211SGDK0D0P3+BcZNUEi6J2DV4nKPWnzb9fLQDUGdbT5mSLTXBHsbAhcsVb9
	u9nbhcHYs9sR3QAJfplMy86XL005/NkSFZSmeIrvIgBSmCsnG3Jum0tA4Vht+mm+iv4uTQHrv+vlk
	dzK9JdoHcaPHC3gyB7PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shA8q-0000000DRNn-2Flb;
	Thu, 22 Aug 2024 15:54:28 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh9jZ-0000000DKmH-33rJ
	for linux-phy@lists.infradead.org;
	Thu, 22 Aug 2024 15:28:22 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a869332c2c2so118805366b.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Aug 2024 08:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724340500; x=1724945300; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T/Tria7vwi+NxmbhPx5iyMMpWnKPFvb0PWDauQE1PU8=;
        b=lOpnpIzs1eMD3kGK3vsNhmR1yAt28F/ZbVq4+ydEFn8JAc8zFZhJnkMwtkWf404RzV
         1QTarSLoPrtcSS8Z4TLHBmz8NJ2piOIgptPkyyfJ8VTO9o3wRP+/6kf4x/tM1ko4fLsR
         clRxo6MiQpJykMceoSXQsIlRfYjRrJnl73ofEXspPx6l9FRSY5vL0p7Ke4rbHaJG9vk5
         9tkwgoPMcfuryedFOKqbH83GW5oqyl9Y4bMc46rmJzT5MZDkEfJTWxqwub2lC/Y6axzL
         YX8ji0QfTqJ9RruvuBdXQsIvgfqYynXsk2rWutfZKVQiEa34qZ0a0C44SJ+FYCx5v/aP
         9Lug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724340500; x=1724945300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T/Tria7vwi+NxmbhPx5iyMMpWnKPFvb0PWDauQE1PU8=;
        b=lRDMfa2nRVXc5ZgVPZMtacUN9BgckK8jvg86F+ebxldmsA5JDlvrH+3cVA6UQCF+LC
         Suy2EDpd6b39o0VThoWnhq8OOAml9ZTtfxZK/mMlBWNnh6Xk5PkrfpcD4pAYePIsCbdE
         V2yb9zYDqbRNbLLodgGN9TKGyW80IZ6DqmXVs1np7z/UO+cN/UH9HKaok9UjY1OAM7SP
         IKcM0TFIV4JykBTFcSlfdd9QySV0yV6IviCC4czH5kmg2EH4vdg7+zgG7tYTRiIlFSUQ
         crH9/hcm5pnEe87vGIku/CnQJVRG37porvqedwG3svFl7g5G63LJsq9c8aiazIqYymmN
         GPUQ==
X-Gm-Message-State: AOJu0YzeG0urOy+gj7lpcZau6eNKcomGfcP6xIIbub5JzOdsrTA3wzCw
	FJrZYpvwpwEVqNMODFMXoYVW7aBafNj5kRnozHa8//OrGmS9tBOnobMeVbGxs0w=
X-Google-Smtp-Source: AGHT+IEDGiFS9rTl2gT4mpF+7WDWt9rKV3W2mQ9PNVf1k+OndljloE3v+2XJ/Wih9mrH3Tadrpyqjw==
X-Received: by 2002:a17:907:9307:b0:a7a:a4cf:4f93 with SMTP id a640c23a62f3a-a868a97d6f2mr322799366b.32.1724340499945;
        Thu, 22 Aug 2024 08:28:19 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f484dc5sm134189166b.171.2024.08.22.08.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 08:28:19 -0700 (PDT)
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
	gregkh@linuxfoundation.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com,
	ulf.hansson@linaro.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add #reset-cells for RZ/G3S
Date: Thu, 22 Aug 2024 18:27:47 +0300
Message-Id: <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_082821_793953_4588FDDD 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
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

The RZ/G3S System controller has registers to control signals that need
to be de-asserted/asserted before/after different SoC areas are power
on/off. This signals are implemented as reset signals. For this document
the #reset-cells property.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
index 4386b2c3fa4d..6b0bb34485d9 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
@@ -42,12 +42,28 @@ properties:
       - const: cm33stbyr_int
       - const: ca55_deny
 
+  "#reset-cells":
+    const: 1
+
 required:
   - compatible
   - reg
 
 additionalProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a08g045-sysc
+    then:
+      required:
+        - "#reset-cells"
+    else:
+      properties:
+        "#reset-cells": false
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
