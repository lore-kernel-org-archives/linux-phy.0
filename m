Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C57CD74EED
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 15:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQgbnK8qleLCydfN10kh+5AlOh+HRz5tjQfAqr42DPs=; b=O1Lk/rirAjzUNs
	tgqhYGJ9FswE3Dv38H4bRkZ5b0l2IKARwkCby8HTwmHmkNUt6ea8etAeca0uMowq7Gt84JIB96TFc
	9zR8uqEWThQnjk/iqyEXjBbEpfWRBWHfObRBG9M8otkH5FGp8uvCjcH65Vrlvcl/5H1kHA+4RbHr+
	2fPulU1qS1Fqd4HyoyESXrm0nTEAIgW0kHaURnzZq3E8wz4V/22Mf4QlMkcqDKsN6vwob4YXTMyLk
	O1v0f+ehQZUEWfx4rFmz3NmqZSvZNmXaR7lHlebtSKQlONAclvNluVqaZqcBGWhAPH/iupXH+v8bl
	Eggl/DVH4m2ihec/HRLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJG4-0000000972E-0ONy;
	Fri, 23 Jan 2026 15:39:36 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjJG0-0000000971X-3ykt
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 15:39:34 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-c62239decbeso808093a12.2
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 07:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769182772; x=1769787572; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SaQlFGJc3VjbA6sYXTYZs4MxTaxJLLlXJGLonhTWD3Y=;
        b=O4POFIfEKm3cTsdwy8HAWqnR30a940Jbnr+5QL7FJW7+MACilN6fnG8jOjoYzaHShI
         F6LyUIK5FYj9h/PnCmiWfyn23FGqCEYNJXy6KhcMN6zwIP+YfCq+bJrIckp56BH1GITa
         5Q664tb3YWDrPBZ1uwh3wpoNVy5pXbc0bP5ug/qF8KOARloSOppFFequBOU26setdb6C
         kVSwLtaM5tMvAQ56Tc2GDJzySmdgEx3sfy+7cxEAS3UVaWBElLCauikCjCfTIyK6CG0L
         OiTa8n1RX3nh+ZnUlQzhp9Ft8Asn14ufI06CVoYplXVsYQ0LoACVTQVTx8wHgpredQvK
         R20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769182772; x=1769787572;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SaQlFGJc3VjbA6sYXTYZs4MxTaxJLLlXJGLonhTWD3Y=;
        b=KcVnHQbwEg8LiPdKgMkyw12I681vXumdQE6eOLsGG+u2dgISM1JGLRaN8RCzuS/VhI
         mv/+J1PXU2SRYF9kbVJu6uJTr30LLYaw9fs52mwHuqPXshlWfdToljj8nS8l3z9SFHmN
         KfHCeeZjveMK5m/BOjCHTuvRiKxNMQnrb9zd03+kJsIZ+QcS+0nVUZpxI6SusvpJRu9u
         ofBe9vjbGLL7DxoPzCCi3S3+ymuazadz9t8ViIPGupPx7F8avCIhue29rd0cn5rIqi+k
         LsbbSnTViXuvRwEURry/7uWW1VqeHIHdpLkin3z2X2TNYcB4GGfYdO1iYJvdiGMJMU1t
         noyQ==
X-Gm-Message-State: AOJu0Yy/xZ691ZO9rV9fTCORbmmTNS0x2rmgAd861v45sfvo0UeLSZ9E
	PJN1dBJ1CIa5RjrmP7yc+ge710+RgsOW4TV7NWARtdj9j6zNfEVWaFUC
X-Gm-Gg: AZuq6aKlzRqzpzvPxMoUVDHJ11XNd63Z0GkH73XyEQq77tr40ntV/+gmXXtqLFran3/
	sgCkN9lArCoDE9NjkuDW0FNf77cKiaTLzat7cxJOwurrMlYdQFuIj1+4vRQT7ngfrORnWsgGj8m
	8NOAnGXpgxwD05IpNvWc3uHN36MjUOe78F3DviFOFIjp6Yvg+tZW7XY/Hc4XKKyJvzBKsFfDBMJ
	Nd97WgrVo6s9XNyTOh7cF+5nTz6iTzwVh9DrskmEiFzFDJzJzAOdgwv40j2+FBI6PoT3t7ypxyL
	6L0+j0x1an/Y6E46Lc5n01TRi1nBhz5T6W3b4pBXUEDT2npuisFpNbDaEdyrCCi6DB2j5OBX6/p
	Vc12Qe2FvP4dQmvtZkG8oZ9z1Dw0msoGlfQIhHVkkh3kd5BBGYnWmpryocK+EB/LzP0lz5J9nj/
	Tj2HDTxig3E0L69U8aXkvbHFqqcGtICA+tPg==
X-Received: by 2002:a17:903:32c9:b0:29f:3042:407f with SMTP id d9443c01a7336-2a7fe5740b5mr34186845ad.21.1769182772016;
        Fri, 23 Jan 2026 07:39:32 -0800 (PST)
Received: from Black-Pearl.localdomain ([115.99.251.203])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f9769esm23732205ad.60.2026.01.23.07.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:39:31 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Fri, 23 Jan 2026 15:39:03 +0000
Subject: [PATCH v4 2/3] dt-bindings: phy: ti,phy-usb3: convert to DT schema
MIME-Version: 1.0
Message-Id: <20260123-ti-phy-v4-2-b557e2c46e6f@gmail.com>
References: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
In-Reply-To: <20260123-ti-phy-v4-0-b557e2c46e6f@gmail.com>
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
X-CRM114-CacheID: sfid-20260123_073932_997254_4A1586C9 
X-CRM114-Status: GOOD (  12.09  )
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
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 138 +++++++++++++++++++++
 1 file changed, 138 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
new file mode 100644
index 000000000000..84f538aa587c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -0,0 +1,138 @@
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
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset controlling PHY power
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+    items:
+      items:
+        - description: Phandle to the system control module
+        - description: Register offset of CTRL_CORE_SMA_SW_0
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
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
+        reg = <0x4a096000 0x80>,  /* phy_rx */
+              <0x4a096400 0x64>,  /* phy_tx */
+              <0x4a096800 0x40>;  /* pll_ctrl */
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
