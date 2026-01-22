Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52D2DD3EE9F
	for <linux-phy@archiver.kernel.org>; Thu, 22 Jan 2026 17:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE7z4MlHYmBgEd4yGDMMIJrv2WyeVpe/0hJr/U8zs7c=; b=EZMsvB4yvosCk3
	SSwyqN7+/t4Sbj6MkF9BDPgj2oyoEIh9qByMOGtwOMT1sN55WQXQ3IMUPGC8Ha2uA0zCcr7Yj702J
	3qwRIMjrWXh5QSGNbOy9LfRAbUbFmM6Orv7h5/FeZbbdhe+f9DpPIKGviwR1WNmUcX8oReQ0RPSff
	P7vVWoroL8FXyXe9T3Jk9xIICZFNl/XmxnbzxkKPJAthiEllEEUc4khn3Ri8ngXOTd1ALTO2GtejX
	Z7nLgKxKJD8BBtnWVp4hL/Xpf/rhjPXSzfqq/18kco8owGVEeThCVMIm92x/8AQV+mP+1xxQpzdtH
	J//I/a9a+qxuqiFH0d7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viytA-00000007b35-0JsS;
	Thu, 22 Jan 2026 17:54:36 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viyt6-00000007b2Y-42Pk
	for linux-phy@lists.infradead.org;
	Thu, 22 Jan 2026 17:54:34 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so8983015ad.3
        for <linux-phy@lists.infradead.org>; Thu, 22 Jan 2026 09:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769104472; x=1769709272; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hr9aR0CWSK1c9Om5bLkEGlAjVnpQPsFLIXPSY4tyYVs=;
        b=X1IflrKAQNPmZxK21NDOW/D96Feps/O+wcqxbkgfd4aowdHyrtT8ZPSRjHr1N+Lrff
         hf1jSW6IaeAyT/zAGYGpsm/h4lcFffmw4T22bJrRSfrDHdUvwBAmUSvH1PKZZm1YFX5l
         L/1VwJBG43URigB6wvLjaT+DaN4cYJD6+2IANC43A1UEzWghft04YayWTiaC7/5vsOrP
         W36sw5XjBT2tAiTUDf90vzPnrEMnwoBQcvOihhup2zfTm4W+FLg/pnSQcRe5raDiLQdH
         mCULuhR4/+Y+yDMjfcPMQ1klddQyoImTJr6MOjpr6q/JlrY/17Vnu8PzTNx21xigtirj
         3+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769104472; x=1769709272;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Hr9aR0CWSK1c9Om5bLkEGlAjVnpQPsFLIXPSY4tyYVs=;
        b=nNeRvkzZCqlxeL/9ImMFosoZGAsXQfWJyu3lU2hxRa4YhwM4iIFRv0csQEvkzLspdi
         1gXQDeDqhWE/zqeLbbEcvZKotKxoXYWKPU55n6cTnZSdLS0OG0OlE26iqNkrGtXp0hLo
         8kpTjr9hmc2KDu3bkTP4b9tbbGQ94xJ+/9gLWgIWJv4Q0d+3/OfEmMZvHy4WNPFWFmRt
         rlTm7diwiP3Uf492Dinjq9QrVIaYFJcBEOdX1IBokyMAEUVolMialDok33xmrjGFTObJ
         2eyBG0wPA/LFeHFGRz20d/y049yb675fWXqVRzRl8YY/DlJDO5/XHA0wd4xvxLnZOvnr
         rFYg==
X-Gm-Message-State: AOJu0YzaG/uwZvoWH6zjKpddQ/gN8mC0P3SJYI6u9BI2xhEcy0KV+4JF
	y/IdIGwy/fAN0SCU/8I7HJlui0hNg13sODQ/g8BWjTEqg1kuLuMHy2Q1
X-Gm-Gg: AZuq6aKn6txkSNI11/+NHaM3+BqeLarLkkOEdQeruxe9CXf0UoMpz/aZ80B9Y0XJlxf
	O0NGuTyh8CSpbHbjy1mQl6Fmz1DlBwuyiz47eQDQFbBVsy36Ctu13gdHiW2CAthfY9LSi2KmjXi
	0gnQEAdNMHoXQAOMNSkCnk5NXfLMp70W73LfiFxiFtvqEYxDxmFx66/mqUrSTO4GdyPOu/684wx
	o9CMzp6wJcA4X6QySL/xGs6dvY7zl96i3a40vSJ0627i/BwqtzaAjkUdlOD691ks6etcYnK9xXZ
	IeQ02DHQlEF9PJ4CtFprXY43sknKZcP3QNELNLWSW39Lbqc7KF1CDjt5nUEdNLzqKFy9K8d9LI3
	q4anVk5vPG6MA+0lT/zsEP5BBHXXBdi4NW6uX7IldkgCLZ3hBNdgE/8SCNQd2WZupq8ufnMo5Qo
	tHNyFLTwUJP2CapJEa/7j09Za91HpPfIRDdYXoJzwn6L3r
X-Received: by 2002:a17:902:f652:b0:2a3:1b33:ae11 with SMTP id d9443c01a7336-2a7fe75705fmr1806385ad.53.1769104471890;
        Thu, 22 Jan 2026 09:54:31 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a7190eee4fsm187745195ad.42.2026.01.22.09.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 09:54:31 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Thu, 22 Jan 2026 17:52:58 +0000
Subject: [PATCH v3 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
MIME-Version: 1.0
Message-Id: <20260122-ti-phy-v3-2-751619729433@gmail.com>
References: <20260122-ti-phy-v3-0-751619729433@gmail.com>
In-Reply-To: <20260122-ti-phy-v3-0-751619729433@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Roger Quadros <rogerq@ti.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
 Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_095433_013604_DFBCFF1A 
X-CRM114-Status: GOOD (  12.22  )
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

Convert TI PIPE3 PHY binding to DT schema.
Changes during conversion:
- Define a new pattern 'pcie-phy' to match nodes defined in DT.
- Drop obsolete "id" property from the schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 135 +++++++++++++++++++++
 1 file changed, 135 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
new file mode 100644
index 000000000000..605f12f0f79a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -0,0 +1,135 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI PIPE3 PHY Module
+
+maintainers:
+  - Roger Quadros <rogerq@ti.com>
+
+description:
+  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
+  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
+  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
+  interface standard, which defines a common physical layer for
+  high-speed serial interfaces.
+
+properties:
+  $nodename:
+    pattern: "^(pcie-phy|usb3-phy|phy)@[0-9a-f]+$"
+
+  compatible:
+    enum:
+      - ti,omap-usb3
+      - ti,phy-pipe3-pcie
+      - ti,phy-pipe3-sata
+      - ti,phy-usb3
+
+  reg:
+    minItems: 2
+    maxItems: 3
+
+  reg-names:
+    minItems: 2
+    items:
+      - const: phy_rx
+      - const: phy_tx
+      - const: pll_ctrl
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 7
+
+  clock-names:
+    minItems: 2
+    maxItems: 7
+    items:
+      enum: [wkupclk, sysclk, refclk, dpll_ref,
+             dpll_ref_m2, phy-div, div-clk]
+
+  syscon-phy-power:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset controlling PHY power
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset of CTRL_CORE_SMA_SW_0
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset for PCS delay programming
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of control module for PHY power on.
+    deprecated: true
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: ti,phy-pipe3-sata
+    then:
+      properties:
+        syscon-pllreset: true
+    else:
+      properties:
+        syscon-pllreset: false
+
+required:
+  - reg
+  - compatible
+  - reg-names
+  - "#phy-cells"
+  - clocks
+  - clock-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    /* TI PIPE3 USB3 PHY */
+    usb3-phy@4a084400 {
+        compatible = "ti,phy-usb3";
+        reg = <0x4a084400 0x80>,
+              <0x4a084800 0x64>,
+              <0x4a084c00 0x40>;
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        #phy-cells = <0>;
+        clocks = <&usb_phy_cm_clk32k>,
+                 <&sys_clkin>,
+                 <&usb_otg_ss_refclk960m>;
+        clock-names = "wkupclk", "sysclk", "refclk";
+        ctrl-module = <&omap_control_usb>;
+    };
+
+  - |
+    /* TI PIPE3 SATA PHY */
+    phy@4a096000 {
+        compatible = "ti,phy-pipe3-sata";
+        reg = <0x4A096000 0x80>,  /* phy_rx */
+              <0x4A096400 0x64>,  /* phy_tx */
+              <0x4A096800 0x40>;  /* pll_ctrl */
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        clocks = <&sys_clkin1>, <&sata_ref_clk>;
+        clock-names = "sysclk", "refclk";
+        syscon-pllreset = <&scm_conf 0x3fc>;
+        #phy-cells = <0>;
+    };
+...

-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
