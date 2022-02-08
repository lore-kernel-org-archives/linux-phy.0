Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27E51C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWFWRYDTgPXSkRhKLGqkVdmQl7yy5aX6dEifXBFD7WQ=; b=pynOdbw53viEAt
	BHsM9RwSfnJjsn3uXMDpwfuFJcQttRio4NLhB2qoeL+bs+tXLEAe6FMdYdIVAb4D4x24Hr/qFAcei
	WcGejmPx6Qc8Hq1ROC3doIP/vuq5NXebjnuxIgcRmu8ZqVMiWgjF+BqAdvvAmpqDvmu950kKvE9nt
	FS6H/BryLO0+kIPkhq980KoclbGY9UDWEJiJMb2yn+eYj8zscAMxpES6WT4pEqECZtPd7b914/JN/
	PE30QuuEEqYdt2KIpFjClvOdt4rO8zf1WYfCH+MZVAT53vzTk9FrHmMl8tFzbZjOBp4kBUeo+IEO3
	hsqX8S8Lg9Kr3Yg9IJkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHUBF-00F3MX-Ax; Tue, 08 Feb 2022 17:21:29 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU9C-00F2Eo-6c
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:26 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D932C3F4B6
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340760;
 bh=zKv8gauits5ukYdt+GlkU4SbbWKxjDr1UeNqiIb9Zls=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=hDLNF/Qxf1b2cK1gs+NRh4m0ckWJ7gPbb0eedZoLJd/wQKZ2aKP0uqab4SkRPTBxm
 zi7QAVcVRyDD0STYBxcNU1hsH6z6yLlDqs3l14DN24HF/EHKUpcRb+OvVTOyFwBRjg
 B1pYCfWlPZlaERtjn41rtpodoLq//nA4ucA+x8/etMOfuDv8S/6krW9/qHEvsyJF6w
 DbAGnK2NEj4gB3vOyIYTt+00+nK7lUkI3qiVg1jooyzdtQaK7gJrywrC1CAM+AI3Zt
 X/Cgf8Mi1uwA0pdag51FoNypkOArmv+MzlU3D55wegmCMwn4kUEEUSlv+u4rZawIlz
 rqkwoT9jKoqBg==
Received: by mail-ed1-f69.google.com with SMTP id
 q11-20020a5085cb000000b0040f7eceaf7aso3388744edh.14
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zKv8gauits5ukYdt+GlkU4SbbWKxjDr1UeNqiIb9Zls=;
 b=tlVvEThTYWYYfuUgovUPLKRjg6DUMZd2h4EqR/n5lTa5Vs3J/fL3LNeq/q/xHYMKdq
 2RwqD2byScj+TKKbgjMS/0+969c3Q0sX8HXmCL0kRIAHTK4XnA/jeb1Y6aZNqp8jr99q
 xyT76g+TIGe3lxDYnoGoX+ozBDFTZZNVU/UCuVcECDvm9Ezn2uMcgZUhw2Qmcx/lOtny
 0lcIhCqxHK2rPmOnwen1i55FGQ+q0HdjaZW6SHwVZhySoeCHUlNM3OJ1pyt1uD51ahu9
 F5jCttIJ+5qsPNuJSmGDk9wT/25BXFe2TGISU0bnHvAgM5BoxgVr5oGhpEOdqDVIOWUw
 h3Nw==
X-Gm-Message-State: AOAM530G3NEbu6AYnFpHApRpAqaDPp7qmb+tVSidqLV6wotbofLkGV31
 YENym6lg7b8qccjW7LshzSx7+rrPd/DRnM+GsDGHpbLQ6epLjPV+E057XoTVy/e0W5SmHa1IWMn
 9KY+sNcK842CJm7IhN0Mp5dHgvbn/gW3yx0s2X94vIdw=
X-Received: by 2002:aa7:dc05:: with SMTP id b5mr5584288edu.197.1644340760489; 
 Tue, 08 Feb 2022 09:19:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx5U/k25/8s1sueBd00X1rkGthbT4Ef9V6gRU6yCaSFNfPA93thayxH5pRQbpTCyNtcFU9hqQ==
X-Received: by 2002:aa7:dc05:: with SMTP id b5mr5584269edu.197.1644340760289; 
 Tue, 08 Feb 2022 09:19:20 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:19 -0800 (PST)
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
Subject: [PATCH 07/10] dt-bindings: display: samsung,
 exynos-mixer: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:20 +0100
Message-Id: <20220208171823.226211-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091922_442454_6F4DF111 
X-CRM114-Status: GOOD (  19.70  )
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

Convert the Exynos Mixer bindings to DT schema format.

The conversion includes also updates to the bindings, matching the
current DTS and Linux driver:
1. Add clocks required on Exynos4210 and Exynos4212 types of Mixer.
2. Add second memory range on Exynos4210 and Exynos4212.
3. Add interconnects, iommus and power-domains.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/display/exynos/exynos_mixer.txt  |  26 ----
 .../display/samsung/samsung,exynos-mixer.yaml | 143 ++++++++++++++++++
 2 files changed, 143 insertions(+), 26 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt b/Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt
deleted file mode 100644
index 3e38128f866b..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos_mixer.txt
+++ /dev/null
@@ -1,26 +0,0 @@
-Device-Tree bindings for mixer driver
-
-Required properties:
-- compatible: value should be one of the following:
-	1) "samsung,exynos5-mixer" <DEPRECATED>
-	2) "samsung,exynos4210-mixer"
-	3) "samsung,exynos4212-mixer"
-	4) "samsung,exynos5250-mixer"
-	5) "samsung,exynos5420-mixer"
-
-- reg: physical base address of the mixer and length of memory mapped
-	region.
-- interrupts: interrupt number to the cpu.
-- clocks: list of clock IDs from SoC clock driver.
-	a) mixer: Gate of Mixer IP bus clock.
-	b) sclk_hdmi: HDMI Special clock, one of the two possible inputs of
-               mixer mux.
-	c) hdmi: Gate of HDMI IP bus clock, needed together with sclk_hdmi.
-
-Example:
-
-	mixer {
-		compatible = "samsung,exynos5250-mixer";
-		reg = <0x14450000 0x10000>;
-		interrupts = <0 94 0>;
-	};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
new file mode 100644
index 000000000000..ba40284ac66f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-mixer.yaml
@@ -0,0 +1,143 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,exynos-mixer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC Mixer
+
+maintainers:
+  - Inki Dae <inki.dae@samsung.com>
+  - Joonyoung Shim <jy0922.shim@samsung.com>
+  - Seung-Woo Kim <sw0312.kim@samsung.com>
+  - Kyungmin Park <kyungmin.park@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description:
+  Samsung Exynos SoC Mixer is responsible for mixing and blending multiple data
+  inputs before passing it to an output device.  The output is passed to HDMI.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - samsung,exynos4210-mixer
+          - samsung,exynos4212-mixer
+          - samsung,exynos5250-mixer
+          - samsung,exynos5420-mixer
+      - const: samsung,exynos5-mixer
+        deprecated: true
+
+  clocks:
+    minItems: 3
+    items:
+      - description: Gate of Mixer IP bus clock.
+      - description: Gate of HDMI IP bus clock, needed together with sclk_hdmi.
+      - description: HDMI Special clock, one of the two possible inputs of
+          mixer mux.
+      - description: Video Processor clock.
+      - description: Mixer mux clock.
+      - description: Mixer Special clock.
+
+  clock-names:
+    minItems: 3
+    items:
+      - const: mixer
+      - const: hdmi
+      - const: sclk_hdmi
+      - const: vp
+      - const: mout_mixer
+      - const: sclk_mixer
+
+  interconnects:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  reg:
+    minItems: 1
+    items:
+      - description: Mixer memory region.
+      - description: Video Processor memory region.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - interrupts
+  - reg
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos4210-mixer
+              - samsung,exynos4212-mixer
+    then:
+      properties:
+        clocks:
+          minItems: 6
+          maxItems: 6
+        regs:
+          minItems: 2
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: samsung,exynos4212-mixer
+    then:
+      properties:
+        clocks:
+          minItems: 4
+          maxItems: 4
+        regs:
+          minItems: 2
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5-mixer
+              - samsung,exynos5250-mixer
+              - samsung,exynos5420-mixer
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        regs:
+          minItems: 1
+          maxItems: 1
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5250.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    mixer@14450000 {
+        compatible = "samsung,exynos5250-mixer";
+        reg = <0x14450000 0x10000>;
+        interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&clock CLK_MIXER>,
+                 <&clock CLK_HDMI>,
+                 <&clock CLK_SCLK_HDMI>;
+        clock-names = "mixer",
+                      "hdmi",
+                      "sclk_hdmi";
+        iommus = <&sysmmu_tv>;
+        power-domains = <&pd_disp1>;
+    };
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
