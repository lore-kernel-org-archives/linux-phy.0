Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E77B6CFD65B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 16:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNs8Kh0ml6XhUytlG04TQ/E37mpLorWi12EY1sYniOM=; b=TkAzEVoT736YXj
	GZGDco/qgxSSw5pYE/P36zJpx5gNfsepLdobgFFKv4GzY+2TnqIWF7MVKFr6U+BmV9WdPahvIitC+
	fcr9wnaYdV1BvH5kFmqFzSXc45K0UmgpyAIWxTNOwVexgXaVC7WHDTv4PCzGl7+dPZi4EOaPhT9MG
	B6oWFnWp/i3X2i2ZhxF0mtg+kKXqD38jLVI7FJ3K2HLf9DOWd1Pj7GHVjaNoPh8uOdn7j+NKgoUuF
	LBKq183bVGIoqrCO4nZmlbsk1TrJ0C0ICs0w02I6VwG6OmPDF56UuduVTMLjezKAPaAbduLCmND0L
	FqmWzYa+PDwTllgkSFww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdW8K-0000000FEmN-2ltR;
	Wed, 07 Jan 2026 16:11:40 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdW8G-0000000FElL-1O7y
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 16:11:37 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-7b75e366866so696727b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 07 Jan 2026 08:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767802295; x=1768407095; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pe34QthE2chIVUbWGjUbfbDZatyb2j7KncedE+Emmac=;
        b=YcbNIoWPd22XZY36i+gej39cEa76nWyi4b0ZQRH0107YGnvZEveTjqVIeLmh/fFKda
         i+tngEnRH4Mb22d0ZcnvDh5BwBa7f1LWZ8RAu0qv7sWc1juBu+fmAlbSh+tX+WaxaocF
         0VK8VO1z+LW9xqiVICQh/s4uwaBBxjwogScHq5mjyYINQgrrzHBxYpuVbugjgTMK6u+H
         o8491HpWOHDc9xRPmktC/GuWqdXBhFQfNOoWWC0KMz/sd4/jCY++fztZTa7GlfhjxuwX
         qbY/YyD24FCBlxF728O4ZYtiIHr1DJPOEME4sjKAIqWbMtjZWxdxmxzLp9anYHDDMNGD
         WiSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767802295; x=1768407095;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pe34QthE2chIVUbWGjUbfbDZatyb2j7KncedE+Emmac=;
        b=p1h8FS9142UYcVRfHMv8aF9jVGyjvOBV+1WPskhaLPVZrxSBB9TwWPdgW8xCz4a+Zh
         ONmSlJgKzNwfLj7ab+qz9uUUJd9u5uvLyCG8daki9BNyqAAXjRQPjuWoymqYb8KjYHhi
         ID31kPapIDOehuB2W5nPrdjttNLjhV1Wjc5xkuydFYwG8PkunWWQ0GA4ohevCC0yROWS
         tyFV2tpSKrNZogtOQVUYPbb67hrya1wYcq7iAYk3CWS8PCPQrQ6eaU9nM+Z2MP1ZhzJq
         cI7lgE9jTW4AWe4Jz2yebHguMVB7HrcGLpHFh9eizy1KP4sE7ZFWld6GakzoMy6+u6qC
         BLlA==
X-Gm-Message-State: AOJu0Yz8suBqFbSU3T/nJvMyV1NpySFW7XnpyKPFJdoV6tEn6s1st0do
	CpEHnKlZhKonPD5n3FPrD5wUWFs5BlL1QAibR6B3jv/6wmdnDH6SZLCgsH2cDg==
X-Gm-Gg: AY/fxX4hSzTM2m0NxbPqc9eB9zCqPIPaiystSZilsSi2YxBcvtHMfFmBT4mRUCWWFuq
	/dG01o82PJdD/01gCXI2VKvycZfUl5ZmhY4IEaA6lm90F9zatVNt0V4T2oLGgmlsR0B+Ysdvo9/
	DWqIBrwJVqcQH2uf20fASndnezgGSwa1U83KPxt17WhrQTX3rXi4rudbB4ovBZIReXZYTnmpwmd
	ZKa7Dxkl1sAmSLpwJ//y1k99GvH/dWfVTs4zkw3uW5m82kunnKUBXkhca6ReG119Jd+YkgG9LaR
	7r+YMPOZ/WIr8MwFlweBuagcYh/xWNfv4jHoSOTbc4dmNnf3QgBuJhmlOYDh9rz9gbAbJXvpmj5
	zYyhRkavlk8LTw1DnVdGQCMWwJ8GHM1ros6AqpvyKPjK1r0NDf08p9mwGpod7AggKvZxYNQziXh
	4q/X6RC4wm7XXyOPsOdPlaciLwNOxHkgcatILF1A==
X-Google-Smtp-Source: AGHT+IGcBv2Xui1pdUOXBGHztQKHuZvOmj7hk3Q/NO9rK95ub6dbTkDiwRAZBtLsvG5kC7WXvMErgQ==
X-Received: by 2002:a05:6a00:bc2:b0:81c:717b:9d38 with SMTP id d2e1a72fcca58-81c717ba501mr369105b3a.47.1767802295232;
        Wed, 07 Jan 2026 08:11:35 -0800 (PST)
Received: from Black-Pearl.localdomain ([157.50.178.147])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-819bafe98d5sm5373079b3a.21.2026.01.07.08.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 08:11:34 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Wed, 07 Jan 2026 16:11:15 +0000
Subject: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT schema
MIME-Version: 1.0
Message-Id: <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
In-Reply-To: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_081136_379340_7DD5AA87 
X-CRM114-Status: GOOD (  12.73  )
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
- Define a new pattern 'pciephy' to match nodes defined in DT.
- Drop obsolete "id" property from the schema.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
new file mode 100644
index 000000000000..41b3828723ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
@@ -0,0 +1,127 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI PIPE3 PHY Module
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
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
+    pattern: "^(pciephy|usb3phy|phy)(@[0-9a-f]+)?$"
+
+  compatible:
+    enum:
+      - ti,phy-usb3
+      - ti,phy-pipe3-sata
+      - ti,phy-pipe3-pcie
+      - ti,omap-usb3
+
+  reg:
+    minItems: 2
+    maxItems: 3
+
+  reg-names:
+    minItems: 2
+    maxItems: 3
+    items:
+      enum:
+        - phy_rx
+        - phy_tx
+        - pll_ctrl
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
+    description:
+      Phandle/offset pair to system control module register for PHY
+      power on/off.
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
+      SATA_PLL_SOFT_RESET bit (SATA PHY only).
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module for writing PCS delay value.
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of control module for PHY power on.
+    deprecated: true
+
+dependencies:
+  syscon-pllreset:
+    properties:
+      compatible:
+        contains:
+          const: ti,phy-pipe3-sata
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
+    usb3phy@4a084400 {
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
