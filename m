Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0272C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9tMlV7uxDM1pDeEVIr4Tz/iUuOmxIjrAMd8EiieL2DA=; b=NgxG5WJrLXCaE4
	+n/NtEs8XGB/MTqBOEQ2RhhqiwuRvOTLqz2D64R2noWtUnI0gRejAn397V89kEyrBUx309jepVNh+
	2qGKmcBxumZl3Ri8qr9EBn16EdTgDzYRytlQDWpN4h3EHW4cdejlwwfY1bmcgaDX6dyYsl3irFIfS
	IFuIOo0fGcDJttTWJmYuNnk6bwQVkh1BN/LYx/krlvNiJonxZc3Y8nfIxZGoT5a08zAb4ZaKu130q
	WbBTrKbX8iJxR0aCMLlikJtfaueqqCoWcSOjbH9WAkHPYtDVpSPtV17nQB2ZlUQYKoi1gTYAulfdl
	+8eMfP8U6/jiVSWQ1hfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtYh-005Kbq-V9; Sat, 29 Jan 2022 19:38:51 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtXC-005Jyo-NL
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:21 +0000
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 396E34076C
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485031;
 bh=v3MaE4YE81127QeF4TU2Qxtg0ok0vmr5F1s7ZnnGBgk=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=Mdcv8aHzmOU+HGPqXsl/p9v+P3RSOg8+ecPVqa1gYYsbC7pzlyaHBTjRI6QipRin/
 8L07fG2HyswAMXjSt99VtNqi/7gMpR21TTrVpjrRlTX3dFm0Bkly6pR59fYDQyo2Z9
 wWpLAwQp5dbQhkpEzlIw4u/ipyi0QygNMudb36HqhK56eNIGBWY6x4fjgRGE9UmS0x
 4oA75nxIALYRoCeT60o3Hfg+0QstJsefdJWN0uwxa/bnM9Eefe1I1xEzpqarblR4eC
 +oRhl+Y7pPLrXZEIT4jCW/UIrcsafkDJEJKs7s5eKQ5pwdU/BXpUr3qztEGbtEKdQ3
 Uwtt+qiXSW99w==
Received: by mail-ed1-f71.google.com with SMTP id
 j1-20020aa7c341000000b0040417b84efeso4764248edr.21
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:37:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v3MaE4YE81127QeF4TU2Qxtg0ok0vmr5F1s7ZnnGBgk=;
 b=fNAoU1HK0BGrcMoTUj2o13lZCse0xtWCBNMKZGJkbLfc1JZLH9aE08y0ZAPcNXo07n
 Xh6DNj9Vte3+znYyjS6JzIJQCK87LnL78LpmcPA6Uii9TNWKuNsoVYQCRQQsDhUoGzW/
 SVBglkQgdXxbfXK1gR6k0JgrASe/2FEI/u2DImMeQk2iwjKiJhatJv9NDsMKIyli+v26
 vSzvxhsMsuenV7CUApJWThrhO3Hcft36cfgrdG136uBf40iZsw/nm+psGtA0D14aRhG+
 AFmD0NCGeMm9DREQRKU1eO3s/81t5OfTwRRHxZqfpYNsv1JZBBvVPqOepue4/ycPRak7
 089A==
X-Gm-Message-State: AOAM530CG2xSK/zC3/+WP236Qm3tzLu153rW9wgp8U0KRqSVnecYNIpM
 +9g0WBQYF8xSHqPSV4m+tVke5ubWtl27nsp9kGv8pnY5/IVLajnBDqAe+DKMQu0VXGv9PztTW+P
 UthtMAE2BonTQ4vuRxEnBPPtHCrr8lQkPJ3EVF4mGVP0=
X-Received: by 2002:aa7:d709:: with SMTP id t9mr13957572edq.216.1643485019381; 
 Sat, 29 Jan 2022 11:36:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzxLkvcLW6BLxgIqLjTWWRLCLYPN6D4UhxKK1OqrkVsROsoJ44oBC30s8nc7egAVFljLNwTyw==
X-Received: by 2002:aa7:d709:: with SMTP id t9mr13957561edq.216.1643485019174; 
 Sat, 29 Jan 2022 11:36:59 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 8/8] dt-bindings: phy: samsung,
 usb3-drd-phy: convert to dtschema
Date: Sat, 29 Jan 2022 20:36:46 +0100
Message-Id: <20220129193646.372481-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113718_992035_F6D19DB5 
X-CRM114-Status: GOOD (  20.89  )
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

Convert the Samsung Exynos USB 3.0 DRD PHY bindings to DT schema format.

Except the conversion, add also vbus-supply and vbus-boost-supply
properties which were already used by the driver and DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/phy/samsung,usb3-drd-phy.yaml    | 126 ++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   |  53 --------
 2 files changed, 126 insertions(+), 53 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/samsung-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
new file mode 100644
index 000000000000..f83f0f8135b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -0,0 +1,126 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,usb3-drd-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC USB 3.0 DRD PHY USB 2.0 PHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+description: |
+  For samsung,exynos5250-usbdrd-phy and samsung,exynos5420-usbdrd-phy
+  compatible PHYs, the second cell in the PHY specifier identifies the
+  PHY id, which is interpreted as follows::
+    0 - UTMI+ type phy,
+    1 - PIPE3 type phy.
+
+  For SoCs like Exynos5420 having multiple USB 3.0 DRD PHY controllers,
+  'usbdrd_phy' nodes should have numbered alias in the aliases node, in the
+  form of usbdrdphyN, N = 0, 1... (depending on number of controllers).
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos5250-usbdrd-phy
+      - samsung,exynos5420-usbdrd-phy
+      - samsung,exynos5433-usbdrd-phy
+      - samsung,exynos7-usbdrd-phy
+
+  clocks:
+    minItems: 2
+    maxItems: 5
+
+  clock-names:
+    minItems: 2
+    maxItems: 5
+    description: |
+      At least two clocks::
+        - Main PHY clock (same as USB DRD controller i.e. DWC3 IP clock), used
+          for register access.
+        - PHY reference clock (usually crystal clock), used for PHY operations,
+          associated by phy name. It is used to determine bit values for clock
+          settings register.  For Exynos5420 this is given as 'sclk_usbphy30'
+          in the CMU.
+
+  "#phy-cells":
+    const: 1
+
+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Any connector to the data bus of this controller should be modelled using
+      the OF graph bindings specified.
+
+  reg:
+    maxItems: 1
+
+  samsung,pmu-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface.
+
+  vbus-supply:
+    description:
+      VBUS power source.
+
+  vbus-boost-supply:
+    description:
+      VBUS Boost 5V power source.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - reg
+  - samsung,pmu-syscon
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5433-usbdrd-phy
+              - samsung,exynos7-usbdrd-phy
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+        clock-names:
+          items:
+            - const: phy
+            - const: ref
+            - const: phy_utmi
+            - const: phy_pipe
+            - const: itp
+    else:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: phy
+            - const: ref
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5420.h>
+
+    phy@12100000 {
+        compatible = "samsung,exynos5420-usbdrd-phy";
+        reg = <0x12100000 0x100>;
+        #phy-cells = <1>;
+        clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBPHY300>;
+        clock-names = "phy", "ref";
+        samsung,pmu-syscon = <&pmu_system_controller>;
+        vbus-supply = <&usb300_vbus_reg>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
deleted file mode 100644
index b0abeb4ac0a2..000000000000
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ /dev/null
@@ -1,53 +0,0 @@
-Samsung Exynos5 SoC series USB DRD PHY controller
---------------------------------------------------
-
-Required properties:
-- compatible : Should be set to one of the following supported values:
-	- "samsung,exynos5250-usbdrd-phy" - for exynos5250 SoC,
-	- "samsung,exynos5420-usbdrd-phy" - for exynos5420 SoC.
-	- "samsung,exynos5433-usbdrd-phy" - for exynos5433 SoC.
-	- "samsung,exynos7-usbdrd-phy" - for exynos7 SoC.
-- reg : Register offset and length of USB DRD PHY register set;
-- clocks: Clock IDs array as required by the controller
-- clock-names: names of clocks correseponding to IDs in the clock property;
-	       Required clocks:
-	- phy: main PHY clock (same as USB DRD controller i.e. DWC3 IP clock),
-	       used for register access.
-	- ref: PHY's reference clock (usually crystal clock), used for
-	       PHY operations, associated by phy name. It is used to
-	       determine bit values for clock settings register.
-	       For Exynos5420 this is given as 'sclk_usbphy30' in CMU.
-	- optional clocks: Exynos5433 & Exynos7 SoC has now following additional
-			   gate clocks available:
-			   - phy_pipe: for PIPE3 phy
-			   - phy_utmi: for UTMI+ phy
-			   - itp: for ITP generation
-- samsung,pmu-syscon: phandle for PMU system controller interface, used to
-		      control pmu registers for power isolation.
-- #phy-cells : from the generic PHY bindings, must be 1;
-
-For "samsung,exynos5250-usbdrd-phy" and "samsung,exynos5420-usbdrd-phy"
-compatible PHYs, the second cell in the PHY specifier identifies the
-PHY id, which is interpreted as follows:
-  0 - UTMI+ type phy,
-  1 - PIPE3 type phy,
-
-Example:
-	usbdrd_phy: usbphy@12100000 {
-		compatible = "samsung,exynos5250-usbdrd-phy";
-		reg = <0x12100000 0x100>;
-		clocks = <&clock 286>, <&clock 1>;
-		clock-names = "phy", "ref";
-		samsung,pmu-syscon = <&pmu_system_controller>;
-		#phy-cells = <1>;
-	};
-
-- aliases: For SoCs like Exynos5420 having multiple USB 3.0 DRD PHY controllers,
-	   'usbdrd_phy' nodes should have numbered alias in the aliases node,
-	   in the form of usbdrdphyN, N = 0, 1... (depending on number of
-	   controllers).
-Example:
-	aliases {
-		usbdrdphy0 = &usb3_phy0;
-		usbdrdphy1 = &usb3_phy1;
-	};
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
