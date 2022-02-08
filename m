Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0258DC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ON07m/aX27Bc09Noukd71j7Bd3TPVDekF1GauDWdL8=; b=oNb1ikcKSf2pqx
	pXEwzVqZs2HS3GhCUyb7k2CYR3WgRbptqjINSw0MZXooIUalArI6ByYE/LtxOUzVV2qzIg+vXLnY8
	4F/Pu1hj73RKPd2SGg7kaOcKaWKeoAeTkGSiv/bxcIP729luzaeQb93lmnFTTzggvggSy6C4U5L0V
	JT8ekl53T/GODX7ePbA00WGRDE5pLeBTrRL77TtWMtNwcHLwxgJ4FTWHXJm7zhuPfB2SsNakGf5ec
	ueiY7Mz12Lpb24aDrhNE8IgHbJOebOuJUuZ2cV4tlSWzcNd6WUtUiBupv4GFXvbkPz39V0JXl4vTT
	atjB/8BaQSWx0kg55s2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHU9d-00F2Vc-GC; Tue, 08 Feb 2022 17:19:49 +0000
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU96-00F29i-7G
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:18 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0DEDE4004B
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340755;
 bh=lAYCF0oFl9nGAtjZLrRDfxUB8PgsnopuWgeZlWJgjg4=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=pWhoAI4BEKfG6myvGiVvW3y8BEpvFPmJat5Fg4Mku0TJIWY4fmENfuTrsj1Ux7jqg
 NpKBbtGOlaeI5kM0xyzyyAFRLuvtfmK5nz5mnPJ0CMCQ1fOa0DOlgefwyF1Xfg4qb0
 1hMEdoUzbgo2XFVj+IARzdSlC9S50jf8PKAt719saUNdXJmGFuvwgAMrx8K6wLGPyb
 8Pd2P9D/t24jEXS0ojh8OzFE+QWiogWlNXO+VKct/JkFMZ9fDWkEk7GXdF5/cmMQPg
 7M8kb63lcDnv6dB0DIN0iq5SKlJjnjNSxx9t3WPRdgS3Nwu/ZDolf6we/J4PomX+qt
 9X6h2OW5oQHIQ==
Received: by mail-ed1-f72.google.com with SMTP id
 dn20-20020a05640222f400b0040f8cdfb542so2589445edb.3
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lAYCF0oFl9nGAtjZLrRDfxUB8PgsnopuWgeZlWJgjg4=;
 b=NKBtoPDNRkjj7qYXJ37cPDboOfAkJLiEiAzq3PkD29lcAYXsl/FaAyGFKy+G1vmB7T
 sSNdgEB4C6YciMV0YqGBGDgZZ7X267qYpW4D3O4aKQopU9rlUP4+a+JZmxa2hmQlPKOq
 UZADqYRN5rxWPTR/Y7YRpiCZOsz0OUDO79xUmXQOCsatwaZ4n9+47P35xhPTpdEXhbbR
 tIhg//mW1OSXL8uoWi6DDC4+leZNLffvWJw6baaO+/LeL79yDKynGq8u+WiPeRCy2G75
 KARedtT5RG9XSfFJu1LcPb+58/dsHbD1OjdlhIn3UN1P8zVUroV/g1SOh3knZzQG+wyf
 M2RA==
X-Gm-Message-State: AOAM532hlpqDvpdR2D7BssLxEWiFO7B4r18N8XSwFdGLGaW3ydgJnGAj
 sYFUID98ojKaTb1xOZY2LUALFL1/Hb05POjfZqUIsTm802vM387sirhFJ+84l3wygBmMS0Qh8CF
 /+QgcmZKXoacIl3Rqfct8Q+u8y075KovNlVzhu0r9bq4=
X-Received: by 2002:a05:6402:26c8:: with SMTP id
 x8mr5675172edd.80.1644340754538; 
 Tue, 08 Feb 2022 09:19:14 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyGbFLwRrBY5BwHpSgBbXGOoRElSE/B0TmO0zX/pZeqJzCVowi5xXNxxbrl6PdvIGlV9Er9gw==
X-Received: by 2002:a05:6402:26c8:: with SMTP id
 x8mr5675152edd.80.1644340754363; 
 Tue, 08 Feb 2022 09:19:14 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:13 -0800 (PST)
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
Subject: [PATCH 03/10] dt-bindings: phy: samsung,
 exynos-hdmi-phy: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:16 +0100
Message-Id: <20220208171823.226211-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091916_482668_626809F7 
X-CRM114-Status: GOOD (  17.23  )
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

Convert the Exynos HDMI PHY bindings to DT schema format and put them
next to other PHYs.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../display/exynos/exynos_hdmiphy.txt         | 15 -------
 .../bindings/phy/samsung,exynos-hdmi-phy.yaml | 44 +++++++++++++++++++
 2 files changed, 44 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt b/Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt
deleted file mode 100644
index 162f641f7639..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos_hdmiphy.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Device-Tree bindings for hdmiphy driver
-
-Required properties:
-- compatible: value should be one of the following:
-	1) "samsung,exynos5-hdmiphy" <DEPRECATED>
-	2) "samsung,exynos4210-hdmiphy".
-	3) "samsung,exynos4212-hdmiphy".
-- reg: I2C address of the hdmiphy device.
-
-Example:
-
-	hdmiphy {
-		compatible = "samsung,exynos4210-hdmiphy";
-		reg = <0x38>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
new file mode 100644
index 000000000000..c61574e10b2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,exynos-hdmi-phy.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,exynos-hdmi-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC HDMI PHY
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
+    oneOf:
+      - enum:
+          - samsung,exynos4210-hdmiphy
+          - samsung,exynos4212-hdmiphy
+      - const: samsung,exynos5-hdmiphy
+        deprecated: true
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        hdmi-phy@38 {
+            compatible = "samsung,exynos4210-hdmiphy";
+            reg = <0x38>;
+        };
+    };
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
