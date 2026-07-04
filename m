Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4C01C43458
	for <linux-phy@archiver.kernel.org>; Sat,  4 Jul 2026 07:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rxDI8ZVag7f3mj6V19tQDyI/4VrLAe9Nk1+ORRSIsPM=; b=DIEii99z+0lzPo
	Ex1kzaTzHMbQPSNJeokfuc2uTOQE28j5YkRY+o7oBqH/Ng2mcYANpzp0ghLrtebWzTXdWPN/u7fxZ
	HuH5+wy+Pra0W259WmbYHOUpS0FJ8+LKDIg+liGpoB63Orkk1lJLBPM9QoeklfqT7NrkudrMvNVaW
	aOKVdkflYWrLcUcTZxjYaqhzRvMnxR6UeySKjSpPMUtJdg2cid3fRg/us/YMfEiuTiXzpQtUZi1V7
	vapvlEBC0jD5zxA3SgigmfqnHajmSnILoPcGXrW7Gc7pKHyMKttA5wO2LY/46mIKnRxxdz9J1E/A2
	knl8LMf86eOO9aMwacKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuyC-00000008GRm-1YLf;
	Sat, 04 Jul 2026 07:39:24 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfuy9-00000008GPr-3uIs
	for linux-phy@lists.infradead.org;
	Sat, 04 Jul 2026 07:39:22 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-493c55d5c7aso11916955e9.1
        for <linux-phy@lists.infradead.org>; Sat, 04 Jul 2026 00:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783150760; x=1783755560; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Ujun7RB7FUF9dZLPZwQwz/fZN6r2PvMJI73ZhiW7os=;
        b=YI+8Kb9OvxYyD2AVxgMH5u5ofCrXlC6jDNF+pOO9jsbhHmBOo7l17NNZnUC4jOa8BA
         mNp/rKzKd0lvKasCHM2ymntusTbNfAleoiHy2E5FUrxePU5kkc4I5Xwj82FAtziV6yWp
         OwRTmEK3aD8Ge+7FzBPL2X6gepKVpwT/Jnohr5/WBx/HDzucLvgB6fpLoS0+/Lkcm6a+
         iVufKvUKCdSDj4Rv4/VMZgPrYNX2xjXGKzUvCvh8GDywrL0dE+WLbHcBrr2dab/WvH6j
         WgzeJZfFPIshBJOTVUr1qNiHGihVRf++OFXz3zkYLRmIdxUaJC46ZP4nooiQXWWRZpop
         8UbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783150760; x=1783755560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0Ujun7RB7FUF9dZLPZwQwz/fZN6r2PvMJI73ZhiW7os=;
        b=ZXS4jhigZG5rGfiWwZvFjSOrGemLRireB+HiCmpDMJwVkGA+M5lg2kBVZvbr31mwfi
         A5Oqas93RhLgRj1/cc8/GDfDBQd3GQtej2gybMmdwmNUmD+YW6KUPA5jfNOxV/NYuvr3
         iiVck7Y/SrhW9UWMKnhBEaue3AUinOxrD5/GcYwjWw4lpxuJzwE1Ni/eo0Wpn7KX/1If
         Clls71TnsOItovE0X2tkqemrhgWT0x4b72DFtGUmIO5mEmBQxV4AF88nLQZo8Ko1Rbna
         IB8Ozy/1peF5938vacYywXJ5z6Dr4tyzKlsOp4vAIpJqv+uAC27IMCIbgMrv+Z17qdgQ
         ukvA==
X-Gm-Message-State: AOJu0Yyv8MDrdpZw9GEByyJ/CbpjlBA8lCx+hkLK4t+gYPTi0BqIpC04
	dGlIVNDpswIUySXG/2SBn983gtT3tVhK/vWvYWDDtvUiBNn/v+1cBBTd
X-Gm-Gg: AfdE7ckINa8+1KXDqz2GoGAB/SL+rlisFzqAgdDdl5n+RaTLvg7h2trA68kJfPXOvOv
	ydQoq+ffWYn5kCHWIMjH9y2TGroJLEh5EN7J7DIQQgkSU/OZkVrjDRNTFn2JRm6J+rXJTpU5Oen
	uUSkQ0+VJKwvwuoJ5mePy1bzOaXyiNjb3OKUp38k6uorpEBTqLByoGKWO6BAc0peN2FZ8/y1zQn
	h43UPeBbmyiZPI1UQZJN0qNSbPaNiAnp7xqyBFhfMS2ttb3nH/zWe6yW2xG8fqUMjVo1RqWoIe+
	bTSraobyUIndJEWXCM27OMgqkJiC3jJIrGqYFxsnFu7IInwSSR7IzzkCYZnBljA0qTOPlpIBgM0
	4wB3U1Ezsi91qfAaugHd955imKCcXptJOhdQVLLDGi0CgfjxEEWtRVNjX+RfKXN59ifm9W6LToK
	4f4iZ4kubR+G/NC8j7MwNmXEhElEsNJG5BJSqVLj4+k3vX
X-Received: by 2002:a05:600c:a00c:b0:490:d38c:7836 with SMTP id 5b1f17b1804b1-493d11d26d5mr25933205e9.3.1783150759893;
        Sat, 04 Jul 2026 00:39:19 -0700 (PDT)
Received: from localhost.localdomain ([95.43.220.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9de1e736sm6565488f8f.7.2026.07.04.00.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 00:39:19 -0700 (PDT)
From: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>,
	Tony Lindgren <tony@atomide.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Subject: [PATCH 3/5] dt-bindings: phy: motorola,cpcap-usb: replace se1 interrupt with chrg_det
Date: Sat,  4 Jul 2026 10:38:41 +0300
Message-Id: <20260704073843.1750458-4-ivo.g.dimitrov.75@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
References: <20260704073843.1750458-1-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260704_003921_979822_9E0FDF2F 
X-CRM114-Status: GOOD (  10.03  )
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

The CPCAP USB PHY driver uses the CPCAP charger detection interrupt
for DCP detection rather than the SE1 interrupt.

Update the binding and example DTS to use the corresponding
"chrg_det" interrupt name.arch: arm: dts: cpcap-mapphone: xxx

Signed-off-by: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
---
 .../devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml   | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
index 0febd04a61f4..81c5f3b5997b 100644
--- a/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/motorola,cpcap-usb-phy.yaml
@@ -27,7 +27,7 @@ properties:
       - description: vbusvld interrupt
       - description: sessvld interrupt
       - description: sessend interrupt
-      - description: se1 interrupt
+      - description: charger detection interrupt
       - description: dm interrupt
       - description: dp interrupt
 
@@ -40,7 +40,7 @@ properties:
       - const: vbusvld
       - const: sessvld
       - const: sessend
-      - const: se1
+      - const: chrg_det
       - const: dm
       - const: dp
 
@@ -90,11 +90,11 @@ examples:
         #phy-cells = <0>;
         interrupts-extended = <
             &cpcap 15 0 &cpcap 14 0 &cpcap 28 0 &cpcap 19 0
-            &cpcap 18 0 &cpcap 17 0 &cpcap 16 0 &cpcap 49 0
+            &cpcap 18 0 &cpcap 17 0 &cpcap 13 0 &cpcap 49 0
             &cpcap 48 1
         >;
         interrupt-names = "id_ground", "id_float", "se0conn", "vbusvld",
-                          "sessvld", "sessend", "se1", "dm", "dp";
+                          "sessvld", "sessend", "chrg_det", "dm", "dp";
         io-channels = <&cpcap_adc 2>, <&cpcap_adc 7>;
         io-channel-names = "vbus", "id";
         vusb-supply = <&vusb>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
