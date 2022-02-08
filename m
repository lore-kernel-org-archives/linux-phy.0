Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 486E1C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN2qWcMDzchUl8pVBbc0HUI3GdxF1DemlHIQcIMDijA=; b=uJEp9JW2J1dqoG
	orvJcofbi9Ygnmz44O8r8BMSpXgW/brg+Uj2i/XRKp4xNaELBpLoqA37c1Fp8OmAQs+yLOpt2ronK
	lPwG515HXDJTrLuQn0ZObD5droc1Q8bbtNrVsT9eiaeFuVaw3CKozddy9sB2ihj2gahFxDeDri3pa
	cjG3w49s6hDk4TpAF7AF6dGLJjFKHDj+3RWP5MLLqZEyStMcyQ2gp7HMDEzxJSqgcmcxLMD5rOqqx
	GcsZHy9Z4yjBcjxQWJIi0kItEC86LjL45emCxorO3g91LlrVn6OBzYeDrk0szFn93HxC5jh6AJTlf
	bd3okYP7g2oBES0YAd3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHUBz-00F3m4-HA; Tue, 08 Feb 2022 17:22:15 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU9F-00F2Gh-4e
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:29 +0000
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D669D40012
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340763;
 bh=kMaTNaBI2iO4IYdjvaEgTk0fgCfiFl3MO+VYGfyVvmE=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=lnBdMxEWMYw7AaM8GtmPI2mq4l9HHdv92EUan5YECg5hr/6jkwQRCnnzvySe2y/y7
 CpiDA5xnf2DIHS6du1h/7LHqAFvHelfpoJLMW+XUe/jeoz1y1us9eTJzY05dWhMG1g
 vmA1BWE5o7sTnkNXf2Za8N3FuOKdnXn8G6auP6Uw0HYwCgC5l9kbCkWuaAUWtC7arz
 zTbHFJSWhO5rVxRHCSUUed3ZYWMEScU7DNLUcoQ9KDd759Ih2YJ9KrwKKvz3gdcueR
 4WrTU+5TBVST4GxCteBRkMgPDmN1NTam28m//WN2KkXMvaUZd3CW4gC9mCVYZL043d
 6GDXkU4c2DIYQ==
Received: by mail-ej1-f69.google.com with SMTP id
 kw5-20020a170907770500b006ba314a753eso6026095ejc.21
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kMaTNaBI2iO4IYdjvaEgTk0fgCfiFl3MO+VYGfyVvmE=;
 b=kvB5Z/45f/aUr0kpStU49z4Qbl08OFC0CjTHLjmN+MeOrX42oQ/X+vMjXmbeBHqJAW
 tKEnjO0AgoQah4Xis+wyJfqlAt12Mm8Qr2EyMsHiwpPnKxkRoAeLXXmkGccGdBP71bM8
 y65gvaM+vhITjhVOyKoOgManNYiSs+rRUAs8so5F7JOBoB+LH2TNy00r+RBu+U3LEvsa
 j+W1gJoQAEYr9b0v9L4fWuYN698enaDfOMbwgbLgy0NkjcWQhtppsw/wuZTzvBSPfamo
 3qU80SqtWncwZmb8p0m7oAcz78VnkEP3ezWpK0mio9h9y4a2d2/Ah2X6tztfSWIaZys7
 Kt1Q==
X-Gm-Message-State: AOAM530p7QHMP32/8zPn1n48E6BTPMNsOHnoQfiyhIftFuYoXRPp9bT8
 XtlSmCmpGdKiyjDCpsy77Be5cEWuJSYIMZhfk9FRlcy6NLQMZiZ5rsLrL/bvbspjRmyIG3gwcz9
 MG5COz2JIUpDFQ+Qh0tiRuSMODw8YSzfTzBiGkUMJVD0=
X-Received: by 2002:aa7:d809:: with SMTP id v9mr5652428edq.2.1644340763465;
 Tue, 08 Feb 2022 09:19:23 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwlLGYgUd+Cr4yCQlVE0VWHIHMy+r8JCbb5AQJa47VNi9iyYKn2B1Q1E+kn15abkGcHd22WRg==
X-Received: by 2002:aa7:d809:: with SMTP id v9mr5652400edq.2.1644340763212;
 Tue, 08 Feb 2022 09:19:23 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:22 -0800 (PST)
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
Subject: [PATCH 09/10] dt-bindings: display: samsung,
 exynos5433-mic: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:22 +0100
Message-Id: <20220208171823.226211-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091925_472528_8D283A5D 
X-CRM114-Status: GOOD (  21.13  )
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

Convert the Exynos5433 MIC bindings to DT schema format.

The conversion includes also updates to the bindings, matching the
current DTS and Linux driver: adding optional power-domains.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/display/exynos/exynos-mic.txt    | 51 ----------
 .../samsung/samsung,exynos5433-mic.yaml       | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 51 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos-mic.txt b/Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
deleted file mode 100644
index 0fba2ee6440a..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos-mic.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-Device-Tree bindings for Samsung Exynos SoC mobile image compressor (MIC)
-
-MIC (mobile image compressor) resides between decon and mipi dsi. Mipi dsi is
-not capable to transfer high resoltuion frame data as decon can send. MIC
-solves this problem by compressing the frame data by 1/2 before it is
-transferred through mipi dsi. The compressed frame data must be uncompressed in
-the panel PCB.
-
-Required properties:
-- compatible: value should be "samsung,exynos5433-mic".
-- reg: physical base address and length of the MIC registers set and system
-       register of mic.
-- clocks: must include clock specifiers corresponding to entries in the
-	  clock-names property.
-- clock-names: list of clock names sorted in the same order as the clocks
-	       property. Must contain "pclk_mic0", "sclk_rgb_vclk_to_mic0".
-- samsung,disp-syscon: the reference node for syscon for DISP block.
-- ports: contains a port which is connected to decon node and dsi node.
-	 address-cells and size-cells must 1 and 0, respectively.
-- port: contains an endpoint node which is connected to the endpoint in the
-	decon node or dsi node. The reg value must be 0 and 1 respectively.
-
-Example:
-SoC specific DT entry:
-mic: mic@13930000 {
-	compatible = "samsung,exynos5433-mic";
-	reg = <0x13930000 0x48>;
-	clocks = <&cmu_disp CLK_PCLK_MIC0>,
-	       <&cmu_disp CLK_SCLK_RGB_VCLK_TO_MIC0>;
-	clock-names = "pclk_mic0", "sclk_rgb_vclk_to_mic0";
-	samsung,disp-syscon = <&syscon_disp>;
-
-	ports {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		port@0 {
-			reg = <0>;
-			mic_to_decon: endpoint {
-				remote-endpoint = <&decon_to_mic>;
-			};
-		};
-
-		port@1 {
-			reg = <1>;
-			mic_to_dsi: endpoint {
-				remote-endpoint = <&dsi_to_mic>;
-			};
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
new file mode 100644
index 000000000000..01fccb138ebd
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos5433-mic.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,exynos5433-mic.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos5433 SoC Mobile Image Compressor (MIC)
+
+maintainers:
+  - Inki Dae <inki.dae@samsung.com>
+  - Joonyoung Shim <jy0922.shim@samsung.com>
+  - Seung-Woo Kim <sw0312.kim@samsung.com>
+  - Kyungmin Park <kyungmin.park@samsung.com>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+
+description: |
+  MIC (Mobile Image Compressor) resides between DECON and MIPI DSI. MIPI DSI is
+  not capable of transferring high resoltuion frame data as DECON can send. MIC
+  solves this problem by compressing the frame data by 1/2 before it is
+  transferred through MIPI DSI. The compressed frame data must be uncompressed
+  in the panel PCB.
+
+properties:
+  compatible:
+    const: samsung,exynos5433-mic
+
+  clocks:
+    minItems: 2
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: pclk_mic0
+      - const: sclk_rgb_vclk_to_mic0
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
+  samsung,disp-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to DISP system controller interface.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - ports
+  - reg
+  - samsung,disp-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5433.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    image-processor@13930000 {
+        compatible = "samsung,exynos5433-mic";
+        reg = <0x13930000 0x48>;
+        clocks = <&cmu_disp CLK_PCLK_MIC0>,
+                 <&cmu_disp CLK_SCLK_RGB_VCLK_TO_MIC0>;
+        clock-names = "pclk_mic0",
+                      "sclk_rgb_vclk_to_mic0";
+        power-domains = <&pd_disp>;
+        samsung,disp-syscon = <&syscon_disp>;
+
+        ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
+                mic_to_decon: endpoint {
+                    remote-endpoint = <&decon_to_mic>;
+                };
+            };
+
+            port@1 {
+                reg = <1>;
+                mic_to_dsi: endpoint {
+                    remote-endpoint = <&dsi_to_mic>;
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
