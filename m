Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E178ACCD18C
	for <linux-phy@archiver.kernel.org>; Fri, 10 Oct 2025 20:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:From:Subject:Message-ID:
	References:Mime-Version:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pH4z+y46FLkLICigDdkFlSSS4N3HzoJ4Dh/iWRanDXc=; b=hTFcCvOrjlRr/l9Gj16cazPBmb
	78nqjn5gglBgSgTsRCurVlkWVHAcg0UrZBzGiZXzyVIfz/WGhnZU8tUjoPKqlIl9uNVlDf9bmt5g9
	7Zd8evbvfW/s83WrJpV9JNrPahKdTNUEEVPpkQGilRKHPMujb6/zmsfF97gZFP/vt+uoXVgjzrr27
	iDR2prqAdBhgi1Dap76uvhKLTWYrTtHAicSZnswI+c0bFYGCWSq3rDXjh0fMQxsSlrwsMYTL/LY9B
	/1woiB2gAdzkNZMyQhZK7+l6bXSAMByYr7MkD3y0z8kky8rrySqyM0G38b6cmS1AxxvxQLZyHJHrj
	Ggt2Q2Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7JXO-00000009ITg-2hWe;
	Fri, 10 Oct 2025 20:16:26 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v7JXL-00000009IRN-3TvG
	for linux-phy@lists.infradead.org;
	Fri, 10 Oct 2025 20:16:25 +0000
Received: by mail-pg1-x549.google.com with SMTP id 41be03b00d2f7-b632471eda1so5486513a12.0
        for <linux-phy@lists.infradead.org>; Fri, 10 Oct 2025 13:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760127383; x=1760732183; darn=lists.infradead.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wl+K3dr5aF0u4Q2P+9MDk1HHOxlzdHXYY9jrwJSxmqs=;
        b=2ZNFAsZ0GJ5q4ydVtENQ5SKD3p5cv16Cp0ZpqRlF/Ro404IhfznAMi3UeH4o39jmhX
         ZqHyXv7fVynLm/taQAbPkx2kliVgiamAU4iwWLCUh+y/oHhED8FymF75dT7UuORr7VAg
         4H7HUPhKOBvscHGdEcwH3jxyyheZ0iJHfevsl/xABqfRaYLwvkuHRGc2JHCiBPhqnNjr
         h0f1xWyzQGlzAP6jnsLWjkzgzXRh+tOz6hKfq3F7luclK6vGy/ByWq6UFCRy/50YTCrk
         hM0U7OXDxZLDWHUbx9KQ0l1xFByegmKdxZp3+gHi4rDIK/CVgPVZVdLld0R/NeBdVQHe
         3ebA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760127383; x=1760732183;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wl+K3dr5aF0u4Q2P+9MDk1HHOxlzdHXYY9jrwJSxmqs=;
        b=dmbzkClfzfDrUFKo1UzMnMNLKRUxnB71XoQAe0LcIY69wuGxJkXw285GceR6+L//R8
         SfMGh37tTODs3Wj9+LJc1DI5zVHCEI4ivjK6wTmWHPLDxzjk0Nr+3MbKa8UfG2cgntBm
         IwSei80Ru6zFrh5LxdWPr8U6NqSD0mdiwU8KYLptfiANMVgGxdyrIs/8UJg/2kGU/5Gj
         ZsLvogwTeXy+LdXgLmY83rVOc70YC4oHBepWAmLPem8Y58KPn7gNQueLty6GF2Xha+pc
         0CFKPVaSF+HKayrbG8fOW7mCDQtzxkCdQKpFNlqElSJQw3i93ZtKGKVFYb7Dh2nirsCP
         WYEg==
X-Forwarded-Encrypted: i=1; AJvYcCW1Pl0bjEVB6CpzZTfMDTjew9Bv0xler89OL8/JwMXvY9AUBiS8xNvotJiacdpUkOONuwGfGp43XQs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwOEc0+i9RQgTLWsSFQ4QmdtDhMVHp4aoYdXY5IVezXr3O4mBXa
	37hKAv984tCz5mfW/6THrMuQGg0poSg76jb/a4QiWqG9WZMCdFkT87hVv2Y+Ez3Qq1uhJ6n5MFZ
	Wuou5sQ==
X-Google-Smtp-Source: AGHT+IFk8ClGIAy+ZveXDAUA46gMVmfQcViJcyf3PjbmPLP8E3Q60Y+VuC/rLX+rN4bo089j/56MJ/qKNBU=
X-Received: from pjbfr18.prod.google.com ([2002:a17:90a:e2d2:b0:33b:51fe:1a90])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a17:90b:1e07:b0:339:f09b:d372
 with SMTP id 98e67ed59e1d1-33b513b4c91mr19379313a91.23.1760127382638; Fri, 10
 Oct 2025 13:16:22 -0700 (PDT)
Date: Fri, 10 Oct 2025 20:16:04 +0000
In-Reply-To: <20251010201607.1190967-1-royluo@google.com>
Mime-Version: 1.0
References: <20251010201607.1190967-1-royluo@google.com>
X-Mailer: git-send-email 2.51.0.740.g6adb054d12-goog
Message-ID: <20251010201607.1190967-2-royluo@google.com>
Subject: [PATCH v3 1/4] dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
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
X-CRM114-CacheID: sfid-20251010_131623_866342_AA113D03 
X-CRM114-Status: GOOD (  13.39  )
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
existing Samsung/Exynos DWC3 USB bindings are incompatible, necessitating
this new device tree binding.

The USB controller on Tensor G5 is based on Synopsys DWC3 IP and features
Dual-Role Device single port with hibernation support.

Signed-off-by: Roy Luo <royluo@google.com>
---
 .../bindings/usb/google,gs5-dwc3.yaml         | 141 ++++++++++++++++++
 1 file changed, 141 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml

diff --git a/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml b/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
new file mode 100644
index 000000000000..6fadea7f41e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
@@ -0,0 +1,141 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2025, Google LLC
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/google,gs5-dwc3.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Google Tensor Series (G5+) DWC3 USB SoC Controller
+
+maintainers:
+  - Roy Luo <royluo@google.com>
+
+description:
+  Describes the DWC3 USB controller block implemented on Google Tensor SoCs,
+  starting with the G5 generation. Based on Synopsys DWC3 IP, the controller
+  features Dual-Role Device single port with hibernation add-on.
+
+properties:
+  compatible:
+    const: google,gs5-dwc3
+
+  reg:
+    items:
+      - description: Core DWC3 IP registers.
+      - description: USB host controller configuration registers.
+      - description: USB custom interrrupts control registers.
+
+  reg-names:
+    items:
+      - const: dwc3_core
+      - const: host_cfg
+      - const: usbint_cfg
+
+  interrupts:
+    items:
+      - description: Core DWC3 interrupt.
+      - description: High speed power management event for remote wakeup from hibernation.
+      - description: Super speed power management event for remote wakeup from hibernation.
+
+  interrupt-names:
+    items:
+      - const: dwc_usb3
+      - const: hs_pme
+      - const: ss_pme
+
+  clocks:
+    items:
+      - description: Non-sticky module clock.
+      - description: Sticky module clock.
+      - description: USB2 PHY APB clock.
+
+  clock-names:
+    items:
+      - const: non_sticky
+      - const: sticky
+      - const: u2phy_apb
+
+  resets:
+    items:
+      - description: Non-sticky module reset.
+      - description: Sticky module reset.
+      - description: USB2 PHY APB reset.
+      - description: DRD bus reset.
+      - description: Top-level reset.
+
+  reset-names:
+    items:
+      - const: non_sticky
+      - const: sticky
+      - const: u2phy_apb
+      - const: drd_bus
+      - const: top
+
+  power-domains:
+    items:
+      - description: Power switchable domain, the child of top domain.
+          Turning it on puts the controller into full power state,
+          turning it off puts the controller into power gated state.
+      - description: Top domain, the parent of power switchable domain.
+          Turning it on puts the controller into power gated state,
+          turning it off completely shuts off the controller.
+
+  power-domain-names:
+    items:
+      - const: psw
+      - const: top
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
+  - clock-names
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
+            reg-names = "dwc3_core", "host_cfg", "usbint_cfg";
+            interrupts = <GIC_SPI 580 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 597 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 598 IRQ_TYPE_LEVEL_HIGH 0>;
+            interrupt-names = "dwc_usb3", "hs_pme", "ss_pme";
+            clocks = <&hsion_usbc_non_sticky_clk>,  <&hsion_usbc_sticky_clk>,
+                     <&hsion_u2phy_apb_clk>;
+            clock-names = "non_sticky", "sticky", "u2phy_apb";
+            resets = <&hsion_resets_usbc_non_sticky>, <&hsion_resets_usbc_sticky>,
+                     <&hsion_resets_u2phy_apb>, <&hsion_resets_usb_drd_bus>,
+                     <&hsion_resets_usb_top>;
+            reset-names = "non_sticky", "sticky", "u2phy_apb", "drd_bus", "top";
+            power-domains = <&hsio_n_usb_psw>, <&hsio_n_usb>;
+            power-domain-names = "psw", "top";
+            phys = <&usb_phy 0>;
+            phy-names = "usb2-phy";
+            snps,quirk-frame-length-adjustment = <0x20>;
+            snps,gfladj-refclk-lpm-sel-quirk;
+            snps,incr-burst-type-adjustment = <4>;
+        };
+    };
+...
-- 
2.51.0.740.g6adb054d12-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
