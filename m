Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E779CCA470
	for <linux-phy@archiver.kernel.org>; Wed,  8 Oct 2025 06:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cRbNT3kyHYal/HSTyiLpfiCNUUUckSn4aFyme0jZNeE=; b=KcD1LtruOSvSahBqs29VKlhwOa
	Z31tVFFdS9vwL9XrLkLLZY1eroAKN/o9omCWHobp1Zx8bSvEIk9I+NU+Wr6/MkJTMIhZjq807PJoG
	ezCk+axr6TxOrWueHMNM3Dhm4rZ/Ns6jyDENENVUXKfZ30taMMS5A+fCfTl8fxr2As0BqWmZesQHG
	3a9EdJPrwfH7m5rULTnQkK0osvNqAnUVFtNOUgUlQunmEaYvu5kp7EOCl7Eu4rT6ogSBs1gwcYINo
	5E0Ogzdo6ZnRbtHgHUlm34oQoF0FSreNt5aRoGzOBdyDFbK96bBntnRLye78y62l+xeajWR0G6qWf
	9LytHngA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6NDl-00000003FEd-0fF2;
	Wed, 08 Oct 2025 06:00:17 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6NDi-00000003FCd-2TKB
	for linux-phy@lists.infradead.org;
	Wed, 08 Oct 2025 06:00:15 +0000
Received: by mail-pl1-x64a.google.com with SMTP id d9443c01a7336-27c62320f16so78363005ad.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 23:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759903213; x=1760508013; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=fKVxg4WoPrUf/1g2EJBbMsdrqJ7J4uyOel2ApqCtl4o=;
        b=pqtc1jj0Rh4+MCxmJt5VAcieeCf0OYLe4k/bKmb0omVy2RiSVtczHrMHoXH7mw2XQ9
         mAkTvqYu0t0uKjevi1Y3e/Upyo1Xvg3fAvPSXY/iIof6WRHqCFUL249k13eiS5I8xoZX
         UXoTpLJLunGu3LFmUzvo6biZs9AXtiyY29Ruj4+o5q/GdXo3Bi0SLRcI8LyUOocxwAL7
         K+1UBjezt/zdd2pTkIYMgvP50cTUBDCXhHMFOuCwMZxc0Dj/PdFGFFga/Xglbu7elRW0
         h2tUFEYYolJQLbCw6ZJdxSd9WQDtoDdT1gqI2HcppVrxV9AHP4tdKI8KGOOmKthw0tvp
         49tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759903213; x=1760508013;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fKVxg4WoPrUf/1g2EJBbMsdrqJ7J4uyOel2ApqCtl4o=;
        b=SJN0/GSE8PmWdOYXc+dCQdis/G7TZPJxqwaWNuTvU0CysYVcoBK4YIbqUo9pQmVx7I
         J3xiW41gxRSXGQh7TFzA0xA8zqMv4ibfDVI4fLUq5hAj1ah09UFetyyeIW6JdPRHaHVe
         01mXedoWdH3K/k40yGcLU27a1ZhmY/Moela7TTV9aWuKWMK/SlI7/Zgv4H3S8TGCUki8
         tHYPThb86ddRDal5Z6UbbyZbTRMMm4HI6nTYf9+KeYAnc59N7SG5dQuJjlFMVzxRx9iy
         K5oGU4n2hH8CgWYuzJDzpp3+AlkJfRJbQ1c2Tp6jc0bT5pUWv6BZ1X+oaB6mvyh5Wxv6
         ztoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTrrUl5VYN6nG71s1shdBgZLykSD40JFza/aLxFJKzzJpzt5wqOn8eA8GeFZGuOXAzzptHRc9QJ0k=@lists.infradead.org
X-Gm-Message-State: AOJu0YxRIIAWonr78LbPz/at8fD+dy/vOtzBqqVJLmSxcgGunhH9p8I+
	SVDvaEE0yd5LJtWcduQsmxpSkw+EScA+33MnfANal/FNo6WpjkSblDA5LRVCuo+g3gF1BzH+zHW
	pHNHWQg==
X-Google-Smtp-Source: AGHT+IEyo0B3o+ZPfKvOdrwXh59jKmgJAQXZpnESAfqmBlS0+CaamSvGek6ShAj0Lt8oc4gS4HOqEV0MfV4=
X-Received: from plhu17.prod.google.com ([2002:a17:903:1251:b0:28e:7f4e:dd17])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:903:3807:b0:269:8d16:42d1
 with SMTP id d9443c01a7336-290272e1e24mr28143825ad.50.1759903213112; Tue, 07
 Oct 2025 23:00:13 -0700 (PDT)
Date: Wed,  8 Oct 2025 05:59:57 +0000
In-Reply-To: <20251008060000.3136021-1-royluo@google.com>
Mime-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.710.ga91ca5db03-goog
Message-ID: <20251008060000.3136021-2-royluo@google.com>
Subject: [PATCH v2 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_230014_625299_5F000C5D 
X-CRM114-Status: GOOD (  14.76  )
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

Document the device tree bindings for the DWC3 USB controller found in
Google Tensor SoCs, starting with the G5 generation.

The Tensor G5 silicon represents a complete architectural departure from
previous generations (like gs101), including entirely new clock/reset
schemes, top-level wrapper and register interface. Consequently,
existing Samsung/Exynos DWC3 USB bindings and drivers are incompatible,
necessitating this new device tree binding.

The USB controller on Tensor G5 is based on Synopsys DWC3 IP and features
Dual-Role Device single port with hibernation support.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/usb/google,gs-dwc3.yaml          | 145 ++++++++++++++++++
 1 file changed, 145 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml b/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml
new file mode 100644
index 000000000000..9eb0bf726e8d
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/google,gs-dwc3.yaml
@@ -0,0 +1,145 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/google,gs-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series (G5+) DWC3 USB SoC Controller
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description: |
+  Describes the DWC3 USB controller block implemented on Google Tensor SoCs,
+  starting with the G5 generation. Based on Synopsys DWC3 IP, the controller
+  features Dual-Role Device single port with hibernation add-on.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - google,gs5-dwc3
+
+  reg:
+    minItems: 3
+    maxItems: 3
+
+  reg-names:
+    description: |
+      The following memory regions must present:
+        - dwc3_core: Core DWC3 IP registers.
+        - host_cfg_csr: Hibernation control registers.
+        - usbint_csr: Hibernation interrupt registers.
+    items:
+      - const: dwc3_core
+      - const: host_cfg_csr
+      - const: usbint_csr
+
+  interrupts:
+    minItems: 3
+    maxItems: 3
+
+  interrupt-names:
+    description: |
+      The following interrupts must present:
+        - dwc_usb3: Core DWC3 interrupt.
+        - hs_pme_irq: High speed remote wakeup interrupt for hibernation.
+        - ss_pme_irq: Super speed remote wakeup interrupt for hibernation.
+    items:
+      - const: dwc_usb3
+      - const: hs_pme_irq
+      - const: ss_pme_irq
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    minItems: 3
+    maxItems: 3
+
+  resets:
+    minItems: 5
+    maxItems: 5
+
+  reset-names:
+    items:
+      - const: usbc_non_sticky
+      - const: usbc_sticky
+      - const: usb_drd_bus
+      - const: u2phy_apb
+      - const: usb_top_csr
+
+  power-domains:
+    minItems: 2
+    maxItems: 2
+
+  power-domain-names:
+    description: |
+      The following power domain must present:
+          - usb_psw_pd: The child power domain of usb_top_pd. Turning it on puts the controller
+                         into full power state, turning it off puts the controller into power
+                         gated state.
+          - usb_top_pd: The parent power domain of usb_psw_pd. Turning it on puts the controller
+                         into power gated state, turning it off completely shuts off the
+                         controller.
+    items:
+      - const: usb_psw_pd
+      - const: usb_top_pd
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - clocks
+  - resets
+  - reset-names
+  - power-domains
+  - power-domain-names
+
+allOf:
+  - $ref: snps,dwc3-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        usb@c400000 {
+            compatible = "google,gs5-dwc3";
+            reg = <0 0x0c400000  0 0xd060>, <0 0x0c450000 0 0x14>, <0 0x0c450020 0 0x8>;
+            reg-names = "dwc3_core", "host_cfg_csr", "usbint_csr";
+            interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH 0>;
+            interrupt-names = "dwc_usb3", "hs_pme_irq", "ss_pme_irq";
+            clocks = <&hsion_usbc_non_sticky_clk>,  <&hsion_usbc_sticky_clk>,
+                     <&hsion_u2phy_apb_clk>;
+            clock-names = "usbc_non_sticky", "usbc_sticky", "u2phy_apb";
+            resets = <&hsion_resets_usbc_non_sticky>, <&hsion_resets_usbc_sticky>,
+                     <&hsion_resets_usb_drd_bus>, <&hsion_resets_u2phy_apb>,
+                     <&hsion_resets_usb_top_csr>;
+            reset-names = "usbc_non_sticky", "usbc_sticky",
+                     "usb_drd_bus", "u2phy_apb",
+                     "usb_top_csr";
+            power-domains = <&hsio_n_usb_psw_pd>, <&hsio_n_usb_pd>;
+            power-domain-names = "usb_psw_pd", "usb_top_pd";
+            phys = <&usb_phy 0>;
+            phy-names = "usb2-phy";
+            snps,quirk-frame-length-adjustment = <0x20>;
+            snps,gfladj-refclk-lpm-sel-quirk;
+            snps,incr-burst-type-adjustment = <4>;
+        };
+    };
+...
-- 
2.51.0.710.ga91ca5db03-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
