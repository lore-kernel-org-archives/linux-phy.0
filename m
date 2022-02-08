Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86D5BC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:21:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bgq+tlgLoPSVW7Or3TzGY40JMcIul+37oyDCA7XAQcI=; b=lQ9Uqwo7TqYC8x
	aVPa2aSmYeYVIXT+NsDp/u+mg2ggvwjts2LAYR/b4rdXA6s86lneSKC69YyyVB9ygFO7hA7RHm2qC
	zBzDA/wQ7UFQWfCoCXhr2LhnzspaQoPdzT67ORX/mLngAndT5DMwyu1PGRUqjx3TSju79EBeLtQXQ
	ZmcdwpnwzgCS7pzTc4vlQPoTOqis2FtmN8AnmCO3gEfXg6Yur9YY+EEKey96ISj67lZu/e1SLuCJX
	Ote/rryutlRxn2jsflZK4SDJLr6+1k9S1I3rSwFrvr/dKtPvI2YVplvm09t9IJc7suznEyI9o6g6m
	W6wXfcvAUbbCEudppnSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHUAn-00F36h-Td; Tue, 08 Feb 2022 17:21:01 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU9A-00F2DT-Au
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:23 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 05D413FFDF
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340759;
 bh=wsWLsYLohqc24CY+DvCwQmjmrJB1cZZyKqkEteo8zKw=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=rFngePbBZXmlj75FzYYUkG45jxZ5ZBcJWogc5fjlmv+5+L5tuK3BwBgqnw9m6tFpr
 EG6IW+sKhOOfVQPxT2zIx7T3N/zBMo1LD0PN19bpwBI0I5JAh7I9eZTlMBnR05WmM5
 ctEq/E6kG0Hh8zUjCq5qsbyaZRnNNAkictGcd3z3qVOpJ1I+oH1VfwhB2TZIUni88A
 /+dd5QPy3GV14YuNO2KuFJ71nopqzc4/bHLHnH0Pv3C5dn9D6XRP8t/SAkp1Ds0xba
 cq2iyaMIBsP3VjGfh7jQ1LAW6Z/N6wjvpINjjJt2MhalasGf/2/6cd9+F9nmN2Mp+7
 d2iSfGRHSUkSA==
Received: by mail-ed1-f70.google.com with SMTP id
 k11-20020a50c8cb000000b0040f84c5bc66so3164400edh.4
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wsWLsYLohqc24CY+DvCwQmjmrJB1cZZyKqkEteo8zKw=;
 b=ce6qft9YHhL0l4q61dq7ad7D75u/U9CwkCFcb7WlSS3nnmXHL9+ymxGAyMS1ArJfYG
 cMOlXKsxPQV8sl7/RolifAfgH128vdP7iXtH9pe02cA5nqkN/jEf5+4lQIrYayII09/3
 2k2akB/7c4zgXEcc2wk5IbhSrQTLzuDONE1JlHRT4laFEAvcgDBb/uVj8dYHj9YH6k77
 weEPCbxju5OEn649ARHMWOs9HdJw7pQn2EyYCVmRbS3cHVpsIrO7+Bfz0qb65F5kob4+
 z3No3x4IpGFe6zqXLr7NTxJJeA5iAseexLqdkABA1Ltq1GZfP66wLp5Uu9Mvb4ytV6lA
 uTRQ==
X-Gm-Message-State: AOAM531u5bEnWoiilFMFklpqezQVtdilqYjKNWF92bAUhThBnb6qNRK2
 3Mekiiw7f7yI4Ru2fEqk/Bq5NMxgdrPBRwPFdkap/oxaXOO1tO23J0B6EUwUsrcnygoH9MxcZc7
 hXXH6jOYHcMCSi629HYdvG+kRb7PZsoHAuqw2CtOLmus=
X-Received: by 2002:a17:906:9b87:: with SMTP id
 dd7mr4512022ejc.552.1644340758529; 
 Tue, 08 Feb 2022 09:19:18 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzY0F7r0kLyPgMZZGqkUbCU8KjDhU3RXIohWlNO6hLTLuOou/cnXcs5p5tX1Nu6bOpKpEpjlg==
X-Received: by 2002:a17:906:9b87:: with SMTP id
 dd7mr4511993ejc.552.1644340758311; 
 Tue, 08 Feb 2022 09:19:18 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:17 -0800 (PST)
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
Subject: [PATCH 06/10] dt-bindings: display: samsung,
 exynos-hdmi-ddc: convert to dtschema
Date: Tue,  8 Feb 2022 18:18:19 +0100
Message-Id: <20220208171823.226211-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091920_547287_66BA0CA8 
X-CRM114-Status: GOOD (  16.75  )
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

Convert the Exynos HDMI DDC bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../display/exynos/exynos_hdmiddc.txt         | 15 -------
 .../samsung/samsung,exynos-hdmi-ddc.yaml      | 42 +++++++++++++++++++
 2 files changed, 42 insertions(+), 15 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt
 create mode 100644 Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml

diff --git a/Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt b/Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt
deleted file mode 100644
index 41eee971562b..000000000000
--- a/Documentation/devicetree/bindings/display/exynos/exynos_hdmiddc.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Device-Tree bindings for hdmiddc driver
-
-Required properties:
-- compatible: value should be one of the following
-	1) "samsung,exynos5-hdmiddc" <DEPRECATED>
-	2) "samsung,exynos4210-hdmiddc"
-
-- reg: I2C address of the hdmiddc device.
-
-Example:
-
-	hdmiddc {
-		compatible = "samsung,exynos4210-hdmiddc";
-		reg = <0x50>;
-	};
diff --git a/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
new file mode 100644
index 000000000000..f998a3a5b71f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/samsung/samsung,exynos-hdmi-ddc.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/samsung/samsung,exynos-hdmi-ddc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC HDMI DDC
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
+      - const: samsung,exynos4210-hdmiddc
+      - const: samsung,exynos5-hdmiddc
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
+        ddc@50 {
+            compatible = "samsung,exynos4210-hdmiddc";
+            reg = <0x50>;
+        };
+    };
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
