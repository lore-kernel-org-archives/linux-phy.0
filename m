Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54A3CC5479D
	for <linux-phy@archiver.kernel.org>; Mon,  9 Jan 2023 14:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Lcbwts3WKdFS9mFKR/eGToteAl1ZsN+jnyLQPAa16Y=; b=sArnpVdOSPdDhz
	YW4O2qSjIxe6cfMHHXEvkOmEvsQuNFUw15JBYZNayRKkW2zCemZN7s/w+NpyLRINS26r92DI7UCsa
	F/JV2GtrhfvHYPbf3OfZaasLyzy0WrAa5e42Hy5rWKHj4bROegA6Pnpq3WWGJdD83M4Q/iNwel59h
	FBnf2iQa16ph0Hi3JvDSKgJLCjXpJoMG2U8Gv4HtkYjRtSR7EunVE+WVj2OxmfWnOu1l0BTv2G78Z
	J3AVzxkayaz1F77uXtGhwa9fEovPOoiEvFt98HBvn8IUnC3BvofXKxeROCQTaXJz8/NroajTj+nkr
	0VaNcomYdpMc+9oIJ6ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEsop-001pDQ-DJ; Mon, 09 Jan 2023 14:08:07 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEreh-001LK0-2L
	for linux-phy@lists.infradead.org; Mon, 09 Jan 2023 12:53:39 +0000
Received: by mail-wm1-x335.google.com with SMTP id ay12-20020a05600c1e0c00b003d9ea12bafcso3518428wmb.3
        for <linux-phy@lists.infradead.org>; Mon, 09 Jan 2023 04:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P70q56eNDzQKtjG8UahCST8YP9ABVa7yjoZzTsjOKTI=;
        b=NgEM+iKgQTUk9x5DB4Z3ckdZHOZXp7O7teK4MUsgUq8xj4WlYqUG2NB5o57NFyPFH0
         8FJMj+UdTMeNkNknlyMGv6/2x9pSF3KS9XKLTUtJNcxM+w3EgCBLhtlNJZc/jAIwJD1R
         QvTW5vS5ONI4kIaP5WYhKGhzVxvCZXkHK7/1s56pi5Yg4oGxH/Y6rr5HYKxrX1LfKe6j
         RaIcGswikv/Jjv1Eq7eMfmhWoR5hA/Ei1O9tv2IHA0jt4hJYtx5CnZHoNDpO/wcHhfae
         cgyqyy+kuF26SkpdzuHhRztWb28NFk5W9238qVMF0ay8qzlM9E3MzPg6kpIPZP8Uy0up
         CsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P70q56eNDzQKtjG8UahCST8YP9ABVa7yjoZzTsjOKTI=;
        b=pauNJRTEcXfapn+vUkIJHbgtKIcdKb1nC4h7J7WCyxsP3QECFLAnafPADbeQFz62L5
         8ZhYzu+bstoctDuqa2EJMb5OqJfEdlLvbV+rR/56ca0vij0ah5xK24tTeGLXOUwHH+bh
         Jfmff/jMak9UwqMrK9XttYHeWKIYINYNZYufwNk40AP9BmSorgCLJEHz39XsutaJfVJH
         z9EcVd6LJoQrB00ngq9tyE8pAU1x50bO1ZVS2eVIXTCm3C55avJRZ5DEdPTaLsJYAEN4
         uw8qhMrxVHfJj47Y087QCCG75xncc2jooCOObuUc19lx2oH8+9gLYS76H+DfTiAOXImv
         Yz+w==
X-Gm-Message-State: AFqh2kqo5Gp+ngQ3FnYunE3adX8JmtsjqVcFExTnJQsFzSZ/7WZTA2xz
	ZrrwZohyoqi9Eg+rUL+0PItIAA==
X-Google-Smtp-Source: AMrXdXsgPXH/K+jt/hCla1kkUxNQKdd+iFBNHNeGB4uwy54V+5FNMEZx+cjJj5KMZDjRxccpKGp/Ag==
X-Received: by 2002:a05:600c:54eb:b0:3c6:e63e:89aa with SMTP id jb11-20020a05600c54eb00b003c6e63e89aamr45854935wmb.6.1673268813559;
        Mon, 09 Jan 2023 04:53:33 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id y7-20020a7bcd87000000b003d997e5e679sm12805667wmj.14.2023.01.09.04.53.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Jan 2023 04:53:33 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 09 Jan 2023 13:53:26 +0100
Subject:  [PATCH v2 02/11] dt-bindings: nvmem: convert amlogic-efuse.txt to dt-schema
MIME-Version: 1.0
Message-Id:  <20221117-b4-amlogic-bindings-convert-v2-2-36ad050bb625@linaro.org>
References:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
In-Reply-To:  <20221117-b4-amlogic-bindings-convert-v2-0-36ad050bb625@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-pci@vger.kernel.org, netdev@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.11.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_045335_192158_972E3D70 
X-CRM114-Status: GOOD (  14.60  )
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

Convert the  Amlogic Meson GX eFuse bindings to dt-schema.

Take in account the used variant with amlogic,meson-gx-efuse.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/nvmem/amlogic,meson-gxbb-efuse.yaml   | 57 ++++++++++++++++++++++
 .../devicetree/bindings/nvmem/amlogic-efuse.txt    | 48 ------------------
 2 files changed, 57 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
new file mode 100644
index 000000000000..e49c2754ff55
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/amlogic,meson-gxbb-efuse.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Amlogic Meson GX eFuse
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: amlogic,meson-gxbb-efuse
+      - items:
+          - const: amlogic,meson-gx-efuse
+          - const: amlogic,meson-gxbb-efuse
+
+  clocks:
+    maxItems: 1
+
+  secure-monitor:
+    description: phandle to the secure-monitor node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
+required:
+  - compatible
+  - clocks
+  - secure-monitor
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    efuse: efuse {
+        compatible = "amlogic,meson-gxbb-efuse";
+        clocks = <&clk_efuse>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        secure-monitor = <&sm>;
+
+        sn: sn@14 {
+            reg = <0x14 0x10>;
+        };
+
+        eth_mac: mac@34 {
+            reg = <0x34 0x10>;
+        };
+
+        bid: bid@46 {
+            reg = <0x46 0x30>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt b/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
deleted file mode 100644
index f7b3ed74db54..000000000000
--- a/Documentation/devicetree/bindings/nvmem/amlogic-efuse.txt
+++ /dev/null
@@ -1,48 +0,0 @@
-= Amlogic Meson GX eFuse device tree bindings =
-
-Required properties:
-- compatible: should be "amlogic,meson-gxbb-efuse"
-- clocks: phandle to the efuse peripheral clock provided by the
-	  clock controller.
-- secure-monitor: phandle to the secure-monitor node
-
-= Data cells =
-Are child nodes of eFuse, bindings of which as described in
-bindings/nvmem/nvmem.txt
-
-Example:
-
-	efuse: efuse {
-		compatible = "amlogic,meson-gxbb-efuse";
-		clocks = <&clkc CLKID_EFUSE>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		secure-monitor = <&sm>;
-
-		sn: sn@14 {
-			reg = <0x14 0x10>;
-		};
-
-		eth_mac: eth_mac@34 {
-			reg = <0x34 0x10>;
-		};
-
-		bid: bid@46 {
-			reg = <0x46 0x30>;
-		};
-	};
-
-	sm: secure-monitor {
-		compatible = "amlogic,meson-gxbb-sm";
-	};
-
-= Data consumers =
-Are device nodes which consume nvmem data cells.
-
-For example:
-
-	eth_mac {
-		...
-		nvmem-cells = <&eth_mac>;
-		nvmem-cell-names = "eth_mac";
-	};

-- 
2.34.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
