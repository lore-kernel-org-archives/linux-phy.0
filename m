Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB3BCC6B1A
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 07:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvD4JionXQg5+psWSve4tFMB497dEbDmbLthOzdk8hQ=; b=RrkMJZ/XmyHkWS
	yoxAEmadWsowSakicrrM6QJJYGNwAaXUSYnH+Ujm8P8h4DY2d4VOuys3BDHi3jNV5LmFcIGH6Nude
	+kQiTGqscbvJBjNj/v1xtzX7FpIlpB4jxJsyY7WyTankpmJ7lx9oJw+gIZ5rfcJHTgELu8BlntayV
	m2iSgBwQ4gZWTxWx+4UduiMg2WnaethPvcIANatGAMJKmJNla+6erFWEXvC6qIwAqChyhJ2DXGuYZ
	JD0PgQYiWmkqavC2nehflS1x9GJW9UFUyYrkWQoHZ2G0cuE2cVM4cgOM3YoYBsr7liaIAbyYIk9pP
	xcB/nAyOjXYsstFYeJZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGtKe-0000000EjVs-10DF;
	Wed, 14 Oct 2026 07:23:24 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGtKK-0000000EjFj-0d78
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 07:23:08 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-48c411d6615so2673527f8f.3
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 00:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791962582; x=1792567382; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HJ88z5GPX8b+VXAqaP3/v3qo/EtaXQO2geHV+4a1+Gc=;
        b=CocUF8qg9pp2Gr8SoEIdAGuKDwYubGYeY/wVwAN1PzCnZqdtqk+reW6xyRYdrdXKB2
         9BenJmXzx4KhKlcKCWnSpJNiugL/0vl3M8/3q/ivlZvqN+bi6JbrIaTnx2yzC7V8UTlL
         OSqMHxtjpYkMlCsRlN93vEngN4eblmmiRYDVvr96FW4MkbYICpNohilB/4OoU9JXmAJJ
         OMR73MYZGQNAD6T/ARzoOzG+DgQ2Uv5C59q6HcYbfNmVvuoWRNzNfzb6YmvHmrdvG4ZL
         4j1hISG/AY/8NNbsEdErn5UHEJjyF2jl4zGKVDI24y9IkR44Mu6v4RoMoL2exD1kwChc
         HbKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791962582; x=1792567382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HJ88z5GPX8b+VXAqaP3/v3qo/EtaXQO2geHV+4a1+Gc=;
        b=2Z5xGDJSXk4ZsYmHXZVDJCeUh01jHA66BaLHpx2BGXHlL8MhkI+xd69j6dXST6hhe/
         MwKpJBRigH+3928o+qgBeZ42kuE6pu+vT+mVgLq6w6OH+zWH+0z3hqh3MvTo9Cu+udu8
         UM0zrQuL9bCxCxEbKKkmTc7AMpDmLhhQTJHacNjkUVLfAOfXbxzIBjey8RE/hqxnhdXC
         dGW1gS85Q2X83fC0Lr91hLKUcnh8hvFvRBE0qrDhaVjQgB6eUfarrgLT2sBMYZqgt2Ku
         P4eWzNguKnnilN2guXl7WW5mye7hVR+JpLu9iXW3nBsvSyayoYF/CysoCknAPLZOgZU7
         8z3w==
X-Forwarded-Encrypted: i=1; AKwUvBy8vrLrS0IQ/4w+GKC+ixrYMHPXBWbIO4Bhg+B8CAprhoguKxSeJ3YBYxw6NDqh5OO6AtAvFan7kbA=@lists.infradead.org
X-Gm-Message-State: AFq9FYLc0cSjvzZKjiHJ6dQahv1RKNrWSga7ICoROalYDqLWIkzQcDHE
	ZmBmioaRpK9MmXWn6eF/CuvtRW1ahYCjzQowgOZuwkvhF7d0Eei0m9U9
X-Gm-Gg: AYBFou24xDEdVbSb5G2aqPQHzlPGdYlCmd876sVEWQ5ChvK05OI7zoc4gW9JNFdcS92
	zw1l4HnoyVi50LOuEyDUw7IKiO5qFGbr1ldvWTMCGf4xurWMGrfcXNrzSwC8IxLEbqrPPl/6WIk
	w2st7Ts7XOC7qAFB0XB/kqiClPxZTQbbZeB8mqDpUr0nABzbt4t//h78Lt0ytakTzcZvY8Qbtt/
	NRUScft9FqcwG/YRI31G/j9uojowSrB528L9LOamWSYJ/qBHAf/rhDT/ZygbYQA9KToecdpNH/3
	tR9z1j6SVA6tJpy7CkFGxdee+adF28/zTDg8aEC0iR4LuMkrXk0QZTDbHJ7R+M5FjuqpamP9Ib3
	bUTdhBwcZnmgBoULdAzOmhGOaeaCDNiX82sKQiuAkH1jIgeIIcMHnMWZRiiUAIF0wuI8B4jXuA+
	AB5vv6OQrtloPiziXkJGz6FArfpTgrWaenNbZdoI9KcBdKf0B8II1YJ4H5Q0KAIySOMru3AbjGu
	pxKA50wZU9hLVGZmyeVF1hi4+XxvyPDq8txW5QabEQW1RYDjrookLooYsb542I+26dzz9Kk5I2K
	cJTIx1NOniv54AVD3SOqMwYN52pNBCLI0KHB50+ZrEXQZyGOxTgxd9Ms+aAa+A==
X-Received: by 2002:a05:6000:2dc5:b0:48a:fb26:23a4 with SMTP id ffacd0b85a97d-48dd6517828mr15172799f8f.31.1791962582334;
        Wed, 14 Oct 2026 00:23:02 -0700 (PDT)
Received: from navid-pc ([2a01:4b00:a856:6220::a11])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de3f7f8b8sm8500933f8f.35.2026.10.14.00.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 00:23:01 -0700 (PDT)
From: Navid Ghahremani <ghahramani.navid@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: arnd@arndb.de,
	stefandoesinger@gmail.com,
	krzk@kernel.org,
	Navid Ghahremani <ghahramani.navid@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/24] dt-bindings: phy: Add ZTE ZX279128S PCIe PHY binding
Date: Wed, 14 Oct 2026 08:20:50 +0100
Message-ID: <20261014072109.1759502-11-ghahramani.navid@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261014072109.1759502-1-ghahramani.navid@gmail.com>
References: <20261014072109.1759502-1-ghahramani.navid@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_002304_258242_97118962 
X-CRM114-Status: GOOD (  11.85  )
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

Add Device Tree binding for the PCIe SerDes PHY found inside the
topcrm block of the ZTE ZX279128S SoC.

Signed-off-by: Navid Ghahremani <ghahramani.navid@gmail.com>
---
 .../bindings/phy/zte,zx279128s-pcie-phy.yaml  | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml
new file mode 100644
index 0000000000..7bfa363294
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/zte,zx279128s-pcie-phy.yaml
@@ -0,0 +1,40 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/zte,zx279128s-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ZTE ZX279128S PCIe PHY
+
+maintainers:
+  - Navid Ghahremani <ghahramani.navid@gmail.com>
+
+description:
+  PCIe PHY block inside the ZTE ZX279128S Top CRM.
+
+properties:
+  compatible:
+    const: zte,zx279128s-pcie-phy
+
+  reg:
+    description: Port index (0 or 1)
+    items:
+      - enum: [0, 1]
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@0 {
+        compatible = "zte,zx279128s-pcie-phy";
+        reg = <0>;
+        #phy-cells = <0>;
+    };
-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
