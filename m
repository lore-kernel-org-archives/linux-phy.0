Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D033FC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wty2o/4Ht09iPeAOmrI74TCKsjijBwCktIz/AptzGok=; b=esga4gUPU635O0
	e1Da0cT2ObjUsBZzItT8Wk3JDaDOKn5OkTQ+QwIwC/ug2vIKTltw/7+Al8VeX25PyOp1Iq8Dp3OPb
	JGsTiL3m4Lgg1FIqD+CF5i27Xg2+WOTT6CG+7wOqBsxmErEoZdqI/sP8+FP+x5B0jYy41XZIYiN0B
	Tyijf9dDWPjO33yt97GFau0dUYX1cK6uOV3p1g+kVRZEi7Lb9eSD82EIJLojfzYpf9dK88H9mZVkn
	/xDsxFY+yOfzXThe3pPgUhtjHyr08NGXAxdgwvy3K04rGiw1JcoPZEgzaOJFV3FeRcsqBb36XFlhI
	u53vwFxlT7JT7J244ALw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHUCi-00F49s-So; Tue, 08 Feb 2022 17:23:00 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU9H-00F2Iz-I2
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:31 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 4A6D33F1E7
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340766;
 bh=4Kqc6L6Q9tC6aVZ4IcSd8iWDDGh3wUIB157CLAeaaFw=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=O1PmpqQwPIZrvIE1A5x/m5NFgG9XYL4KBweUbScZNb6gAMK0n66ygYDCYeMztalZM
 +rvKk2vPoRqkU80WuJ4OJJKhQNi70diw5PTEahW4tquzlhDH8xG2qpcRNIcJfxjdt6
 ieHsHMU1gA9xTiKG5Fi3AFLj92oFJXKy1wqk6Ff0ltGK0i9HO290WGoqtbNw7OYhmE
 grJYr8/dND1YPl4kp5hEgAkQzbqMdNqdz2ZXzJdBst7Mwokc8Z3CRRY8lMlbatjw2Q
 0mduc6i9jXYcrhElebz0C/PTRJeCB3cCi2bsyJAtpVnTJJ1E0jHm8z1ywyoZo90ojT
 LyUUSkhmkG/jA==
Received: by mail-ej1-f70.google.com with SMTP id
 13-20020a170906328d00b006982d0888a4so5990506ejw.9
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4Kqc6L6Q9tC6aVZ4IcSd8iWDDGh3wUIB157CLAeaaFw=;
 b=MLAyhPwEex55dxg7XXOvtHlmYmJWBLOYYM4vIxzWukMQRCrWdtGSNGlhCStAAb7Zwn
 vrt5aWRBICPnNNvo8A6EiAeLIt++3SlyxetiTqCeqy7d6CYhz8/31ExDuWvupgFcO9mh
 AO6IqCUhRgbGo8cMpn34LS5uspfKwW9K1YRPDYgN2u0hIFqOmEVjEdH4pFamcSJYBDYG
 efprfzuahhJbb05f09fAhzkcodiGgKxaTWCXwHtKEdg9NIJ6oDv6uEFe/lY9oaB1B5RV
 WAUFjaV9y7yWB7WrATpVCjPrru+bDr2QpY6zHRgHxqJupbNqOZPjgXegPv9EhnPFNe5S
 GglQ==
X-Gm-Message-State: AOAM530V5hWKAny5fB7/tLbvqr6/CGTWynjKkQQ8xGe9bnZDVya5pn1W
 CkdKTagj8ogO/4ZLxwg5w7bOC2XF66i4gfOnPe4gavO8oIW3QILuPzatQ0PZz6PVDqoj1OVlCZR
 USBJkvojAZt/b2+wn62SdC1sJGtpMeHWS1rJmRyZd2To=
X-Received: by 2002:a05:6402:510b:: with SMTP id
 m11mr5597632edd.290.1644340765075; 
 Tue, 08 Feb 2022 09:19:25 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxRZNXcZzMs0TAC2gPdxKPihRqli2IMBZU42Ls1ax0iChpkOJ4tgyVxzgjOsC0cDw2k6wkGXQ==
X-Received: by 2002:a05:6402:510b:: with SMTP id
 m11mr5597617edd.290.1644340764811; 
 Tue, 08 Feb 2022 09:19:24 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:24 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>
Subject: [PATCH 10/10] dt-bindings: display: samsung,
 exynos-fimd: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:23 +0100
Message-Id: <20220208171823.226211-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091927_934673_246AE630 
X-CRM114-Status: GOOD (  26.86  )
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

Convert the S3C/S5P/Exynos FIMD bindings to DT schema format.

The conversion includes also updates to the bindings, matching the
current DTS and Linux driver: adding optional iommus and power-domains.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/display/exynos/samsung-fimd.txt  | 107 ----------
 .../display/samsung/samsung,fimd.yaml         | 198 ++++++++++++++++++
 2 files changed, 198 insertions(+), 107 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt b/Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt
deleted file mode 100644
index b3096421d42b..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/samsung-fimd.txt
+++ /dev/null
@@ -1,107 +0,0 @@
-Device-Tree bindings for Samsung SoC display controller (FIMD)
-
-FIMD (Fully Interactive Mobile Display) is the Display Controller for the
-Samsung series of SoCs which transfers the image data from a video memory
-buffer to an external LCD interface.
-
-Required properties:
-- compatible: value should be one of the following
-		"samsung,s3c2443-fimd"; /* for S3C24XX SoCs */
-		"samsung,s3c6400-fimd"; /* for S3C64XX SoCs */
-		"samsung,s5pv210-fimd"; /* for S5PV210 SoC */
-		"samsung,exynos3250-fimd"; /* for Exynos3250/3472 SoCs */
-		"samsung,exynos4210-fimd"; /* for Exynos4 SoCs */
-		"samsung,exynos5250-fimd"; /* for Exynos5250 SoCs */
-		"samsung,exynos5420-fimd"; /* for Exynos5420/5422/5800 SoCs */
-
-- reg: physical base address and length of the FIMD registers set.
-
-- interrupts: should contain a list of all FIMD IP block interrupts in the
-		 order: FIFO Level, VSYNC, LCD_SYSTEM. The interrupt specifier
-		 format depends on the interrupt controller used.
-
-- interrupt-names: should contain the interrupt names: "fifo", "vsync",
-	"lcd_sys", in the same order as they were listed in the interrupts
-        property.
-
-- pinctrl-0: pin control group to be used for this controller.
-
-- pinctrl-names: must contain a "default" entry.
-
-- clocks: must include clock specifiers corresponding to entries in the
-         clock-names property.
-
-- clock-names: list of clock names sorted in the same order as the clocks
-               property. Must contain "sclk_fimd" and "fimd".
-
-Optional Properties:
-- power-domains: a phandle to FIMD power domain node.
-- samsung,invert-vden: video enable signal is inverted
-- samsung,invert-vclk: video clock signal is inverted
-- display-timings: timing settings for FIMD, as described in document [1].
-		Can be used in case timings cannot be provided otherwise
-		or to override timings provided by the panel.
-- samsung,sysreg: handle to syscon used to control the system registers
-- i80-if-timings: timing configuration for lcd i80 interface support.
-  - cs-setup: clock cycles for the active period of address signal is enabled
-              until chip select is enabled.
-              If not specified, the default value(0) will be used.
-  - wr-setup: clock cycles for the active period of CS signal is enabled until
-              write signal is enabled.
-              If not specified, the default value(0) will be used.
-  - wr-active: clock cycles for the active period of CS is enabled.
-               If not specified, the default value(1) will be used.
-  - wr-hold: clock cycles for the active period of CS is disabled until write
-             signal is disabled.
-             If not specified, the default value(0) will be used.
-
-  The parameters are defined as:
-
-    VCLK(internal)  __|??????|_____|??????|_____|??????|_____|??????|_____|??
-                      :            :            :            :            :
-    Address Output  --:<XXXXXXXXXXX:XXXXXXXXXXXX:XXXXXXXXXXXX:XXXXXXXXXXXX:XX
-                      | cs-setup+1 |            :            :            :
-                      |<---------->|            :            :            :
-    Chip Select     ???????????????|____________:____________:____________|??
-                                   | wr-setup+1 |            | wr-hold+1  |
-                                   |<---------->|            |<---------->|
-    Write Enable    ????????????????????????????|____________|???????????????
-                                                | wr-active+1|
-                                                |<---------->|
-    Video Data      ----------------------------<XXXXXXXXXXXXXXXXXXXXXXXXX>--
-
-The device node can contain 'port' child nodes according to the bindings defined
-in [2]. The following are properties specific to those nodes:
-- reg: (required) port index, can be:
-		0 - for CAMIF0 input,
-		1 - for CAMIF1 input,
-		2 - for CAMIF2 input,
-		3 - for parallel output,
-		4 - for write-back interface
-
-[1]: Documentation/devicetree/bindings/display/panel/display-timing.txt
-[2]: Documentation/devicetree/bindings/media/video-interfaces.txt
-
-Example:
-
-SoC specific DT entry:
-
-	fimd@11c00000 {
-		compatible = "samsung,exynos4210-fimd";
-		interrupt-parent = <&combiner>;
-		reg = <0x11c00000 0x20000>;
-		interrupt-names = "fifo", "vsync", "lcd_sys";
-		interrupts = <11 0>, <11 1>, <11 2>;
-		clocks = <&clock 140>, <&clock 283>;
-		clock-names = "sclk_fimd", "fimd";
-		power-domains = <&pd_lcd0>;
-		status = "disabled";
-	};
-
-Board specific DT entry:
-
-	fimd@11c00000 {
-		pinctrl-0 = <&lcd_clk &lcd_data24 &pwm1_out>;
-		pinctrl-names = "default";
-		status = "okay";
-	};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
new file mode 100644
index 000000000000..9cf5f120d516
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,fimd.yaml
@@ -0,0 +1,198 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,fimd.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S3C/S5P/Exynos SoC Fully Interactive Mobile Display (FIMD)
+
+maintainers:
+  - Inki Dae <inki.dae@samsung.com>
+  - Joonyoung Shim <jy0922.shim@samsung.com>
+  - Seung-Woo Kim <sw0312.kim@samsung.com>
+  - Kyungmin Park <kyungmin.park@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+properties:
+  compatible:
+    enum:
+      - samsung,s3c2443-fimd
+      - samsung,s3c6400-fimd
+      - samsung,s5pv210-fimd
+      - samsung,exynos3250-fimd
+      - samsung,exynos4210-fimd
+      - samsung,exynos5250-fimd
+      - samsung,exynos5420-fimd
+
+  '#address-cells':
+    const: 1
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: sclk_fimd
+      - const: fimd
+
+  display-timings:
+    $ref: ../panel/display-timings.yaml#
+
+  i80-if-timings:
+    type: object
+    description: |
+      Timing configuration for lcd i80 interface support.
+      The parameters are defined as::
+      VCLK(internal)  __|??????|_____|??????|_____|??????|_____|??????|_____|??
+                        :            :            :            :            :
+      Address Output  --:<XXXXXXXXXXX:XXXXXXXXXXXX:XXXXXXXXXXXX:XXXXXXXXXXXX:XX
+                        | cs-setup+1 |            :            :            :
+                        |<---------->|            :            :            :
+      Chip Select     ???????????????|____________:____________:____________|??
+                                     | wr-setup+1 |            | wr-hold+1  |
+                                     |<---------->|            |<---------->|
+      Write Enable    ????????????????????????????|____________|???????????????
+                                                  | wr-active+1|
+                                                  |<---------->|
+      Video Data      ----------------------------<XXXXXXXXXXXXXXXXXXXXXXXXX>--
+
+    properties:
+      cs-setup:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Clock cycles for the active period of address signal is enabled until
+          chip select is enabled.
+        default: 0
+
+      wr-active:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Clock cycles for the active period of CS is enabled.
+        default: 1
+
+      wr-hold:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Clock cycles for the active period of CS is disabled until write
+          signal is disabled.
+        default: 0
+
+      wr-setup:
+        $ref: /schemas/types.yaml#/definitions/uint32
+        description:
+          Clock cycles for the active period of CS signal is enabled until
+          write signal is enabled.
+        default: 0
+
+  iommus:
+    minItems: 1
+    maxItems: 2
+
+  iommu-names:
+    items:
+      - const: m0
+      - const: m1
+
+  interrupts:
+    items:
+      - description: FIFO level
+      - description: VSYNC
+      - description: LCD system
+
+  interrupt-names:
+    items:
+      - const: fifo
+      - const: vsync
+      - const: lcd_sys
+
+  power-domains:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  samsung,invert-vden:
+    type: boolean
+    description:
+      Video enable signal is inverted.
+
+  samsung,invert-vclk:
+    type: boolean
+    description:
+      Video clock signal is inverted.
+
+  samsung,sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to System Register syscon.
+
+  '#size-cells':
+    const: 0
+
+patternProperties:
+  "^port@[0-4]+$":
+    $ref: /schemas/graph.yaml#/properties/port
+    description: |
+      Contains ports with port with index::
+       0 - for CAMIF0 input,
+       1 - for CAMIF1 input,
+       2 - for CAMIF2 input,
+       3 - for parallel output,
+       4 - for write-back interface
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5420-fimd
+    then:
+      properties:
+        iommus:
+          minItems: 2
+          maxItems: 2
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos4.h>
+
+    fimd@11c00000 {
+        compatible = "samsung,exynos4210-fimd";
+        interrupt-parent = <&combiner>;
+        reg = <0x11c00000 0x20000>;
+        interrupt-names = "fifo", "vsync", "lcd_sys";
+        interrupts = <11 0>, <11 1>, <11 2>;
+        clocks = <&clock CLK_SCLK_FIMD0>, <&clock CLK_FIMD0>;
+        clock-names = "sclk_fimd", "fimd";
+        power-domains = <&pd_lcd0>;
+        iommus = <&sysmmu_fimd0>;
+        samsung,sysreg = <&sys_reg>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        samsung,invert-vden;
+        samsung,invert-vclk;
+
+        pinctrl-0 = <&lcd_clk>, <&lcd_data24>;
+        pinctrl-names = "default";
+
+        port@3 {
+            reg = <3>;
+
+            fimd_dpi_ep: endpoint {
+                remote-endpoint = <&lcd_ep>;
+            };
+        };
+    };
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
