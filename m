Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CD14C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLkuUlkY10t4UX4Wla8Av6uiZqDeiS+xsPWNer/L82c=; b=l18ckJVrZJhyqf
	iRtWmT2vC9n3p+FTFKr6C1z18L12qWOCp/0VpJcgGf30kymGTUMWkyURcUWWb0yP+svYKC4RgnLH9
	gq7RnHaKc8sF/Pm9vnxxQYWqYWutdsrzQxT5ShaCrhDdSV0Le0kGS34Z8XYhrxucbLCZGow8Yx6S8
	TfG8O8C4PSb5NJEbI8I0mCwFqdfORuu5nMt7sA0ybNqlr9d73xHizU6rg79WO1yHu6vaAeKWETOfO
	ISw3JgaD6KvkMNyBw037kShsQmgFeui+r/rA+CZOCGRYSrtsDiJ1P+DnNH9Lvhck7rforWYvQ2BzP
	TW3D7yeaZlzyQjmpt6dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3HL-004u1d-Fd; Fri, 18 Nov 2022 15:27:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3HJ-004u09-Um
	for linux-phy@bombadil.infradead.org; Fri, 18 Nov 2022 15:27:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=hVxJa3STNY0C2kzT0MSxTsy9/TGhDa3zKnvqKO7DmlU=; b=ipQQJsUJVBdl2Oy3QJoSzgUhOh
	3QKMmCcpxUjOu5KkvdgZirIDXmR12LVM+qNDOJN/nVQggGGmWiafTeGV98BGL9ePgNAQSgi5vdXlv
	1Gjz85uT0csmPBrXqWZrT2eMufQJ6xiT3/7S5fEaxqVNXmLb6vFIQ1pM+QoNyyGhItOTV80+IBzr9
	OfOBSbQImEzUt4hpJI1E8xP4Ix/zLs1KJc1BvVw/paDBXBklhy191e9XX7Qqlzqrh/Pq8skZm/B4e
	aJCjBVAmFaidzCdCT817Ysr1ulDvuQ8Vyy2kUdld3fdSktPkRnhIkTerjzR+Cp9EuV97sCYBviaE8
	aThk9agw==;
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2R6-0020zO-7w
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:46 +0000
Received: by mail-wr1-x430.google.com with SMTP id i12so5656615wrb.0
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hVxJa3STNY0C2kzT0MSxTsy9/TGhDa3zKnvqKO7DmlU=;
        b=D2hzRXyEg80u+Ldcf+ncgX6Er8yfeFkw09Z1wr8ASlKtur8Opytua+32K9zCe9L1h4
         N30jNh+AUViJGI1qrcpmS2fE9qtjxM6KeU8WrunNUgX/Z3UxfIA7BbVC4uI/oXpi8hx+
         UFZDrccNasx1tP49xY3t9T2NXQi0DuzcBL/0futDC7ihqJbNuVAoH4sunzY+rozN8sGI
         KexB016XidyT/Ju0klTh73MOVCRisdyVBuxVZLIOEOADM9x/t3XpN2ICF86rKIcvD20r
         b9FUfXTuv7R5l2aqEd0XTyhaeaLofexBSNJyRUCa/3dTJoqEV/nKixqfjV+SCgdMzR8j
         iyLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hVxJa3STNY0C2kzT0MSxTsy9/TGhDa3zKnvqKO7DmlU=;
        b=ZWD4ZzMpsd1sLtghBgZOr/Hz2MfN8MEOk89iJyQXbz36IhP+P93BydBj+0OFjKb+al
         fkuPB8bzJELs5c+viNMRcG8Q3bhAUncYGdLc2CobQImVSVH1Tq1wjZEY0LBwrn3vBHAA
         qg9x+yX67zGiCGWdC/J73E1g4GLGqID/88KkwhZEFiw1TGwKUDFAtyaOzblS16dtnysI
         EkLK7Aqa26Iaq7w2Xis9u+SbnG6XJWpL0nea/zRa7u5ApiJyoN1e9CaTHHLgt60p/z5T
         DD/Lx8AV/uCGByM7eb2+5gF86D5mMPaEthWJKbF9SqMPrX+2kiDtMTDvg1/Nzrg5ZJkk
         LPCw==
X-Gm-Message-State: ANoB5pkr1VZgSGROvqRN6JvEmmgco+Vn45BgcLgQEr5qFCkNOo97eBrE
	qNiWIITzRDhwVkLC8nC8s1bjLw==
X-Google-Smtp-Source: AA0mqf67peyFZtZV93GcvgabhglYAoIYXQhcgEMFl/o2RSwRwc+Ful4I9mRT4NrESe3PdV/awdzBQg==
X-Received: by 2002:adf:fc09:0:b0:236:6181:a1ad with SMTP id i9-20020adffc09000000b002366181a1admr4404965wrr.85.1668782022660;
        Fri, 18 Nov 2022 06:33:42 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:42 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:34 +0100
Subject: [PATCH 08/12] dt-bindings: timer: convert timer/amlogic,meson7-timer.txt to
 dt-schema
MIME-Version: 1.0
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-8-3f025599b968@linaro.org>
References: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
In-Reply-To: <20221117-b4-amlogic-bindings-convert-v1-0-3f025599b968@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>, Wim Van Sebroeck <wim@linux-watchdog.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Alessandro Zummo <a.zummo@towertech.it>, Eric Dumazet <edumazet@google.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kevin Hilman <khilman@baylibre.com>, Ulf Hansson <ulf.hansson@linaro.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Vinod Koul <vkoul@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Paolo Abeni <pabeni@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Cc: linux-media@vger.kernel.org, netdev@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_143344_600833_8D91FFDE 
X-CRM114-Status: GOOD (  12.39  )
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

Convert the Amlogic Meson6 SoCs Timer Controller bindings to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/timer/amlogic,meson6-timer.txt        | 22 ---------
 .../bindings/timer/amlogic,meson6-timer.yaml       | 53 ++++++++++++++++++++++
 2 files changed, 53 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.txt b/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.txt
deleted file mode 100644
index a9da22bda912..000000000000
--- a/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Amlogic Meson6 SoCs Timer Controller
-
-Required properties:
-
-- compatible : should be "amlogic,meson6-timer"
-- reg : Specifies base physical address and size of the registers.
-- interrupts : The four interrupts, one for each timer event
-- clocks : phandles to the pclk (system clock) and XTAL clocks
-- clock-names : must contain "pclk" and "xtal"
-
-Example:
-
-timer@c1109940 {
-	compatible = "amlogic,meson6-timer";
-	reg = <0xc1109940 0x14>;
-	interrupts = <GIC_SPI 10 IRQ_TYPE_EDGE_RISING>,
-		     <GIC_SPI 11 IRQ_TYPE_EDGE_RISING>,
-		     <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>,
-		     <GIC_SPI 29 IRQ_TYPE_EDGE_RISING>;
-	clocks = <&xtal>, <&clk81>;
-	clock-names = "xtal", "pclk";
-};
diff --git a/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.yaml b/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.yaml
new file mode 100644
index 000000000000..ffcb137e720e
--- /dev/null
+++ b/Documentation/devicetree/bindings/timer/amlogic,meson6-timer.yaml
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/timer/amlogic,meson6-timer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson6 SoCs Timer Controller
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+properties:
+  compatible:
+    const: amlogic,meson6-timer
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 4
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: xtal
+      - const: pclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    timer@c1109940 {
+        compatible = "amlogic,meson6-timer";
+        reg = <0xc1109940 0x14>;
+        interrupts = <GIC_SPI 10 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 11 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 6 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 29 IRQ_TYPE_EDGE_RISING>;
+        clocks = <&xtal>, <&clk81>;
+        clock-names = "xtal", "pclk";
+    };

-- 
b4 0.10.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
