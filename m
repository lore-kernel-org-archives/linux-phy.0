Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADEFFC43219
	for <linux-phy@archiver.kernel.org>; Fri, 18 Nov 2022 15:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1J1N9U2L20wIGIQacR3OpfpMN/tvn2hAcfiXwxkn34=; b=HFdqR6Wpe4Jlwt
	MtVb1o9js7HfzWNt5w3mqZU/5eM2DoYXio4xrrAAy/8Mzda8PtSNftWdrzrVaPAAPKI4diW6pgo0T
	usyKH9wy/Jvw005Uv1sTbbsuG2Jx3pIdGZ5Rx3dTFZaDeVSl5jyco+0kcuQXncCUJL3Z4VIRUCgZ4
	99m5+EkqfMKdhB7pMrGxPyyJnS25YMWaWrG1A1vHsc9SlOCu04al2xUCl0ZTKjkpQHbW5NSII4/mY
	iLn3PpmoQ8N1b446vbYUQdStwMo4O5JvgLAmsNK0OCdd8bE6MNkm+P7ttTxauYltiNSe3+QDQNVYG
	+s2Ys30ZtgETvG8M5KFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow3Zl-0052LQ-0g; Fri, 18 Nov 2022 15:46:45 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ow2R2-004TeE-1G
	for linux-phy@lists.infradead.org; Fri, 18 Nov 2022 14:33:42 +0000
Received: by mail-wm1-x331.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso4182474wmo.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Nov 2022 06:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I8lUWDOeXjkH9UHmo38dtGs19w/rqs9Sy4VJSCBQlaI=;
        b=oDWz/pVsf+cFAzOAOBv41AAAHEW5ljeCUEwzki0jVdZ1JNRLYDVZqUUxfbHny9q643
         fO4ZpGeaHPCMjmBzrPADNC+gBiHTXx7m6eypZMNLgI27Ozc/hPzmnJKtuj7jyGu1effk
         3H0eauS3fMm/TYNuSxfmDQ/DLUGxByrvAB1couqbfCMQOA39ujMBvf5e3W7Yxtz6qzj9
         E1Qf3Ff9AT8I7Mr1E7zseEaF7WH75RqoMCMFUMCw2Tx5tKaSpOMneq3yhCrb/0OpRw/2
         A1lhamyhxw/X19HDLcgQgqS27L4V3Cf+8/wuOdhrHgn6+txxa2lcydl91VSTbLk5Ip1r
         3+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I8lUWDOeXjkH9UHmo38dtGs19w/rqs9Sy4VJSCBQlaI=;
        b=6orqe9zLmx3Rr0ENSfGoUWEohAhOx+6I63zoZUqmwjK6swQxlrcbHMtYFbpVBXj3NT
         FFYHDCJeJH4eeMR1S7Z0pxIHvhXtVdIbhX/BRX7NqToDHyDSF3cKO4VFeuSH0UOQyYpd
         FB6L36m9C7W2NHKBM+cSJdL5/913NrBOdAWsZdQ7eWEAbtU+3iDtrE7JPDTD8uBwhAHO
         1Wde/pgZ05jaa6BLRdlx957dxT4pnsF5SoYvARFgJlBOwgkjeofOr+g04c4ZvKhJh7jO
         DsZJvmIl8UvvOzlEw08s+WmUQv4Bl890Ly0Hw1hNR1ElqublguF0KHav+dmBXEjuJzTq
         88/g==
X-Gm-Message-State: ANoB5pkq6vKu2fqz6igOTVveBXlCHhbWsvDarJmdazZ+SHsXob0dnPRP
	pXEKkwz8ZPNIFtqjyQydw2/uAQ==
X-Google-Smtp-Source: AA0mqf58oHI/7To3+CZoBl7djIZXtAy//xIgmpt08lgvBcuLlZjN5W390xyBDOKkHM9CY2J0U3XElg==
X-Received: by 2002:a7b:cd85:0:b0:3cf:931c:3cfa with SMTP id y5-20020a7bcd85000000b003cf931c3cfamr5085059wmj.203.1668782016660;
        Fri, 18 Nov 2022 06:33:36 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j21-20020a05600c1c1500b003cfb7c02542sm5436726wms.11.2022.11.18.06.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 06:33:36 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 18 Nov 2022 15:33:30 +0100
Subject: [PATCH 04/12] dt-bindings: watchdog: convert meson-wdt.txt to dt-schema
MIME-Version: 1.0
Message-Id: <20221117-b4-amlogic-bindings-convert-v1-4-3f025599b968@linaro.org>
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
X-CRM114-CacheID: sfid-20221118_063340_221010_2ABC2817 
X-CRM114-Status: GOOD (  13.49  )
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

Convert the Amlogic Meson6 SoCs Watchdog timer bindings to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/watchdog/amlogic,meson6-wdt.yaml      | 39 ++++++++++++++++++++++
 .../devicetree/bindings/watchdog/meson-wdt.txt     | 21 ------------
 2 files changed, 39 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/amlogic,meson6-wdt.yaml b/Documentation/devicetree/bindings/watchdog/amlogic,meson6-wdt.yaml
new file mode 100644
index 000000000000..4e33a5a9c23c
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/amlogic,meson6-wdt.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/amlogic,meson6-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson6 SoCs Watchdog timer
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    enum:
+      - amlogic,meson6-wdt
+      - amlogic,meson8-wdt
+      - amlogic,meson8b-wdt
+      - amlogic,meson8m2-wdt
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    wdt: watchdog@c1109900 {
+        compatible = "amlogic,meson6-wdt";
+        reg = <0xc1109900 0x8>;
+        timeout-sec = <10>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/meson-wdt.txt b/Documentation/devicetree/bindings/watchdog/meson-wdt.txt
deleted file mode 100644
index 7588cc3971bf..000000000000
--- a/Documentation/devicetree/bindings/watchdog/meson-wdt.txt
+++ /dev/null
@@ -1,21 +0,0 @@
-Meson SoCs Watchdog timer
-
-Required properties:
-
-- compatible : depending on the SoC this should be one of:
-	"amlogic,meson6-wdt" on Meson6 SoCs
-	"amlogic,meson8-wdt" and "amlogic,meson6-wdt" on Meson8 SoCs
-	"amlogic,meson8b-wdt" on Meson8b SoCs
-	"amlogic,meson8m2-wdt" and "amlogic,meson8b-wdt" on Meson8m2 SoCs
-- reg : Specifies base physical address and size of the registers.
-
-Optional properties:
-- timeout-sec: contains the watchdog timeout in seconds.
-
-Example:
-
-wdt: watchdog@c1109900 {
-	compatible = "amlogic,meson6-wdt";
-	reg = <0xc1109900 0x8>;
-	timeout-sec = <10>;
-};

-- 
b4 0.10.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
