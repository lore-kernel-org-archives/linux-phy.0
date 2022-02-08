Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3A20C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePm89LpwitF5EPjGupvAXhYqd9qJX5WJ1CHKSWTRtvI=; b=GfpNT6lnGigFZr
	gNlZDlLxaGp74ax5VbeJ0rGml0afxU3SrRXFjqCkhSAQYKedgx4MWkCDZEcx3z8W9oqnuEl8oCrDK
	bAYqn1a8qUPCaTL9JlFIFKyCosZkfCFmL21UyR+8v6lphDIbxY7SVJjEwb9ig3c7c5tLOvbRjSxWG
	5EP+/WeyLIbCky8u042VVsTC/USp1AHqW3McVMCpLMGIN8UIUDc+Fq4c/Qm0l4IxhBLv1CmFOUuqV
	TXsFtY+/I3AZGJcoCEIsRQGCX7TU6/UfLrnEXZE9ASMebUTfXhIjSuYDCdCprNtC3fk3MUhAkamTv
	m8BzJNOEA4QPWiHLO+eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHUBz-00F3lu-8f; Tue, 08 Feb 2022 17:22:15 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU9E-00F2GN-Ti
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:28 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9810D40049
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340763;
 bh=H62uakMhiNj8wsN7JyhkhL3hR65WQAa3xO8BWW9DtO8=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=LRb2RmT0WZqp9Rl//mznnzmNSOS2/DQpjQuSMF89J8VAWUEcwXGHQzFWZn0ehKIwv
 NHXp1nE2l0Mq6opktLmaNrIwZZPTcGEuLpr4z4tt09LooD0t3gsnslWOmLBqbM1vcT
 6XEv7WlumlnaJCN0IeS3/MZ6pfdD01AHc8ujvkKZ8u5WwE8yvfumVCK2kwhYMyXo7h
 A2SyZX16NwRAT9CfpeQUfbGEXx/Tk6+zLR99IlFhs9ab41oL1sizTeJ3oY+64oPxBU
 9vvnkfsCH/AGaXgJgBady4L+2vxHbSFGBasA/J+VVWNUmrcgQUxNWRUHYXextIW/MX
 zaP9AHZsPyzqw==
Received: by mail-ed1-f69.google.com with SMTP id
 en7-20020a056402528700b00404aba0a6ffso10080808edb.5
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H62uakMhiNj8wsN7JyhkhL3hR65WQAa3xO8BWW9DtO8=;
 b=TBQcw9eLydYmgFGOZLpViEM4xEUf5nt9YSTLZl87sNaTjqGq0uKqe0M9WFPmxq4O46
 BZghvStylwQbmhuCngWLEy3ivpx5DbapM88O0kPGWeaHsPY/ood0feYTxBd0a4ozIZAH
 cAqdrtOyuV0J8sVAEDtXgKWEKydiunQ/qV/d1MgMOwizEnxOjAMgEIDLhJ+oqVe3yYz/
 ghUMqeQzP/wmQwP742j6RLi2PpVWxseDFF3MvsBkYLirmPcX17jQuJLuc30DwQY13Fdx
 KzJPrfIa15KUfD7BY/bAdrSNXFkWojBmMLT/qwUZD4+lgbxoZltL99R1f1IvpwQVR0zk
 41vA==
X-Gm-Message-State: AOAM5306ycgNntWHmRJx3lDpqEjXc+gZW3pjIO7SwXfylM0OL3GbzSgQ
 zTlPvlznUytiKLjcUJcbNbDRNqc2pKy/yB2I7R2fTGtWzFMky4ThJyHH1C0inrl9WofhAw800no
 9z9ngWKgeq+EtazAffY+5Tq7sS/mHS52OMmM9yNRqVdU=
X-Received: by 2002:a17:907:7d8e:: with SMTP id
 oz14mr4703508ejc.230.1644340762025; 
 Tue, 08 Feb 2022 09:19:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw64e71WROn4h7109M/ZIMvunExF5YO7bPY7dTOW0eRqIfnLB4BRRxNfmJ8+pMki5++CxBUkA==
X-Received: by 2002:a17:907:7d8e:: with SMTP id
 oz14mr4703482ejc.230.1644340761740; 
 Tue, 08 Feb 2022 09:19:21 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:21 -0800 (PST)
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
Subject: [PATCH 08/10] dt-bindings: display: samsung,
 exynos-hdmi: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:21 +0100
Message-Id: <20220208171823.226211-9-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091925_294969_543CEA09 
X-CRM114-Status: GOOD (  26.19  )
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

Convert the Exynos HDMI bindings to DT schema format.

The conversion includes also updates to the bindings, matching the
current DTS and Linux driver:
1. Add required properties: VDD supplies, power-domains.
2. Add optional properties: HDMI-EN supply, ports.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/display/exynos/exynos_hdmi.txt   |  64 -----
 .../display/samsung/samsung,exynos-hdmi.yaml  | 227 ++++++++++++++++++
 2 files changed, 227 insertions(+), 64 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt b/Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt
deleted file mode 100644
index 58b12e25bbb1..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos_hdmi.txt
+++ /dev/null
@@ -1,64 +0,0 @@
-Device-Tree bindings for drm hdmi driver
-
-Required properties:
-- compatible: value should be one among the following:
-	1) "samsung,exynos4210-hdmi"
-	2) "samsung,exynos4212-hdmi"
-	3) "samsung,exynos5420-hdmi"
-	4) "samsung,exynos5433-hdmi"
-- reg: physical base address of the hdmi and length of memory mapped
-	region.
-- interrupts: interrupt number to the cpu.
-- hpd-gpios: following information about the hotplug gpio pin.
-	a) phandle of the gpio controller node.
-	b) pin number within the gpio controller.
-	c) optional flags and pull up/down.
-- ddc: phandle to the hdmi ddc node
-- phy: phandle to the hdmi phy node
-- samsung,syscon-phandle: phandle for system controller node for PMU.
-- #sound-dai-cells: should be 0.
-
-Required properties for Exynos 4210, 4212, 5420 and 5433:
-- clocks: list of clock IDs from SoC clock driver.
-	a) hdmi: Gate of HDMI IP bus clock.
-	b) sclk_hdmi: Gate of HDMI special clock.
-	c) sclk_pixel: Pixel special clock, one of the two possible inputs of
-		HDMI clock mux.
-	d) sclk_hdmiphy: HDMI PHY clock output, one of two possible inputs of
-		HDMI clock mux.
-	e) mout_hdmi: It is required by the driver to switch between the 2
-		parents i.e. sclk_pixel and sclk_hdmiphy. If hdmiphy is stable
-		after configuration, parent is set to sclk_hdmiphy else
-		sclk_pixel.
-- clock-names: aliases as per driver requirements for above clock IDs:
-	"hdmi", "sclk_hdmi", "sclk_pixel", "sclk_hdmiphy" and "mout_hdmi".
-
-Required properties for Exynos 5433:
-- clocks: list of clock specifiers according to common clock bindings.
-	a) hdmi_pclk: Gate of HDMI IP APB bus.
-	b) hdmi_i_pclk: Gate of HDMI-PHY IP APB bus.
-	d) i_tmds_clk: Gate of HDMI TMDS clock.
-	e) i_pixel_clk: Gate of HDMI pixel clock.
-	f) i_spdif_clk: Gate of HDMI SPDIF clock.
-	g) oscclk: Oscillator clock, used as parent of following *_user clocks
-		in case HDMI-PHY is not operational.
-	h) tmds_clko: TMDS clock generated by HDMI-PHY.
-	i) tmds_clko_user: MUX used to switch between oscclk and tmds_clko,
-		respectively if HDMI-PHY is off and operational.
-	j) pixel_clko: Pixel clock generated by HDMI-PHY.
-	k) pixel_clko_user: MUX used to switch between oscclk and pixel_clko,
-		respectively if HDMI-PHY is off and operational.
-- clock-names: aliases for above clock specfiers.
-- samsung,sysreg: handle to syscon used to control the system registers.
-
-Example:
-
-	hdmi {
-		compatible = "samsung,exynos4212-hdmi";
-		reg = <0x14530000 0x100000>;
-		interrupts = <0 95 0>;
-		hpd-gpios = <&gpx3 7 1>;
-		ddc = <&hdmi_ddc_node>;
-		phy = <&hdmi_phy_node>;
-		samsung,syscon-phandle = <&pmu_system_controller>;
-	};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
new file mode 100644
index 000000000000..cb8e735ce3bd
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi.yaml
@@ -0,0 +1,227 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,exynos-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC HDMI
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
+      - samsung,exynos4210-hdmi
+      - samsung,exynos4212-hdmi
+      - samsung,exynos5420-hdmi
+      - samsung,exynos5433-hdmi
+
+  clocks:
+    minItems: 5
+    maxItems: 10
+
+  clock-names:
+    minItems: 5
+    maxItems: 10
+
+  ddc:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the HDMI DDC node.
+
+  hdmi-en-supply:
+    description:
+      Provides voltage source for DCC lines available on HDMI connector. When
+      there is no power provided for DDC epprom, some TV-sets do not pulls up
+      HPD (hot plug detect) line, what causes HDMI block to stay turned off.
+      When provided, the regulator allows TV-set correctly signal HPD event.
+
+  hpd-gpios:
+    maxItems: 1
+    description:
+      A GPIO line connected to HPD
+
+  interrupts:
+    maxItems: 1
+
+  phy:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the HDMI PHY node.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    description:
+      Contains a port which is connected to mic node.
+
+  power-domains:
+    maxItems: 1
+
+  reg:
+    maxItems: 1
+
+  samsung,syscon-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the PMU system controller node.
+
+  samsung,sysreg-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to DISP system controller interface.
+
+  '#sound-dai-cells':
+    const: 0
+
+  vdd-supply:
+    description:
+      VDD 1.0V HDMI TX.
+
+  vdd_osc-supply:
+    description:
+      VDD 1.8V HDMI OSC.
+
+  vdd_pll-supply:
+    description:
+      VDD 1.0V HDMI PLL.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - ddc
+  - hpd-gpios
+  - interrupts
+  - phy
+  - reg
+  - samsung,syscon-phandle
+  - '#sound-dai-cells'
+  - vdd-supply
+  - vdd_osc-supply
+  - vdd_pll-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos5433-hdmi
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Gate of HDMI IP APB bus.
+            - description: Gate of HDMI-PHY IP APB bus.
+            - description: Gate of HDMI TMDS clock.
+            - description: Gate of HDMI pixel clock.
+            - description: TMDS clock generated by HDMI-PHY.
+            - description: MUX used to switch between oscclk and tmds_clko,
+                respectively if HDMI-PHY is off and operational.
+            - description: Pixel clock generated by HDMI-PHY.
+            - description: MUX used to switch between oscclk and pixel_clko,
+                respectively if HDMI-PHY is off and operational.
+            - description: Oscillator clock, used as parent of following *_user
+                clocks in case HDMI-PHY is not operational.
+            - description: Gate of HDMI SPDIF clock.
+        clock-names:
+          items:
+            - const: hdmi_pclk
+            - const: hdmi_i_pclk
+            - const: i_tmds_clk
+            - const: i_pixel_clk
+            - const: tmds_clko
+            - const: tmds_clko_user
+            - const: pixel_clko
+            - const: pixel_clko_user
+            - const: oscclk
+            - const: i_spdif_clk
+      required:
+        - samsung,sysreg-phandle
+    else:
+      properties:
+        clocks:
+          items:
+            - description: Gate of HDMI IP bus clock.
+            - description: Gate of HDMI special clock.
+            - description: Pixel special clock, one of the two possible inputs
+                of HDMI clock mux.
+            - description: HDMI PHY clock output, one of two possible inputs of
+                HDMI clock mux.
+            - description: It is required by the driver to switch between the 2
+                parents i.e. sclk_pixel and sclk_hdmiphy. If hdmiphy is stable
+                after configuration, parent is set to sclk_hdmiphy else
+                sclk_pixel.
+        clock-names:
+          items:
+            - const: hdmi
+            - const: sclk_hdmi
+            - const: sclk_pixel
+            - const: sclk_hdmiphy
+            - const: mout_hdmi
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5433.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    hdmi@13970000 {
+        compatible = "samsung,exynos5433-hdmi";
+        reg = <0x13970000 0x70000>;
+        interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&cmu_disp CLK_PCLK_HDMI>,
+                 <&cmu_disp CLK_PCLK_HDMIPHY>,
+                 <&cmu_disp CLK_PHYCLK_HDMIPHY_TMDS_CLKO>,
+                 <&cmu_disp CLK_PHYCLK_HDMI_PIXEL>,
+                 <&cmu_disp CLK_PHYCLK_HDMIPHY_TMDS_CLKO_PHY>,
+                 <&cmu_disp CLK_MOUT_PHYCLK_HDMIPHY_TMDS_CLKO_USER>,
+                 <&cmu_disp CLK_PHYCLK_HDMIPHY_PIXEL_CLKO_PHY>,
+                 <&cmu_disp CLK_MOUT_PHYCLK_HDMIPHY_PIXEL_CLKO_USER>,
+                 <&xxti>,
+                 <&cmu_disp CLK_SCLK_HDMI_SPDIF>;
+        clock-names = "hdmi_pclk",
+                      "hdmi_i_pclk",
+                      "i_tmds_clk",
+                      "i_pixel_clk",
+                      "tmds_clko",
+                      "tmds_clko_user",
+                      "pixel_clko",
+                      "pixel_clko_user",
+                      "oscclk",
+                      "i_spdif_clk";
+        phy = <&hdmiphy>;
+        ddc = <&hsi2c_11>;
+        samsung,syscon-phandle = <&pmu_system_controller>;
+        samsung,sysreg-phandle = <&syscon_disp>;
+        #sound-dai-cells = <0>;
+
+        hpd-gpios = <&gpa3 0 GPIO_ACTIVE_HIGH>;
+        vdd-supply = <&ldo6_reg>;
+        vdd_osc-supply = <&ldo7_reg>;
+        vdd_pll-supply = <&ldo6_reg>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                hdmi_to_tv: endpoint {
+                    remote-endpoint = <&tv_to_hdmi>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                hdmi_to_mhl: endpoint {
+                    remote-endpoint = <&mhl_to_hdmi>;
+                };
+            };
+        };
+    };
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
