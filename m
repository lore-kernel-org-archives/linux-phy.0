Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CC76C4332F
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jan 2022 15:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSLt90lcRl/qQUBNIzwrhCqfBoWyl8KjR0kM46PwWtU=; b=gW9/GbkQ4ekv3m
	XunYy62J+FxPAF2xzfGaZdxzIul9tj8wihicI4XsJUEKOlyspo7SAoSWprJAymaBO3O88o7PT4zHv
	AAf9pfkjAiPkGs8V49lYUbbJE5ZaXsyehHiMyAt7bvGHqWp3viqBnPHPNThKCpqJXNiHtwEWRSp8S
	b6XzwJZzQnFFcv/a/1bnRONoKVDzGosn/a5jkwZaDIXp77Hi9VRL6AGfoJL4SvFhWJEvaL6WgZz3V
	YRErf5BdgmGEgmbxA9mxUnmUQ1Vka01J06K1C2/3rmLvRvNf94M33YLCchd1fdlbbZLy8Htj53Iy2
	TBQuB7Im159ROLR63KQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5qnx-004O1a-Tv; Fri, 07 Jan 2022 15:05:21 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5qnu-004Nyd-H8
 for linux-phy@lists.infradead.org; Fri, 07 Jan 2022 15:05:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id t28so4823724wrb.4
 for <linux-phy@lists.infradead.org>; Fri, 07 Jan 2022 07:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PxD5eSuoVNmuy9uK+8ImVic/9oJqQQRTmLdQoVDSq7Y=;
 b=allaRBuE+NfgOYcgaqBMlz6bKoIKZa8JYncqLI5T6/Xtm6s6P6phIFYcUa0rvypbvu
 sFWrlfMVftIjPl3vzagIyy/M2Idct/NJQ65Dt4MsVWkaQSY22o8Ng5+G0JTDaiGnEgTf
 D8J6bt/LQ3SE+l1KzZVb2l+lTAhO8AMfv3n5rhWYYg58uYnBEjk6MmYqr0fDMv8OCQqL
 cZmgZ0QKnnBsZUQZMXVsdI0Ux9IhoNlMKgOpvpiRquPdzKj8cwuewopvpioacSyMWw7W
 UbszOOEDbO8iGME//IQGBRZz1x5MPd6TWSz3gZMnUs1WZ39ZYmdPetza2HDkmKNZE9hi
 8Kow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PxD5eSuoVNmuy9uK+8ImVic/9oJqQQRTmLdQoVDSq7Y=;
 b=SkxcxJUkR3wijYfNtdIjctZ4D+Bwl35hhnnqPjkr2L+I00cCjtiS3Vo+Th1CC0+mC0
 noLVugPjFqLp9H782m/jjezVHjXfjFsi7TbPvGlu6IfLCi+0y1iHPWx5i5YO/rMUVRuy
 x0GGX/gCetc4RKTaXrO/83yzio/JQEvsCF2ahXlNlX9uJo8sWNI9srxcX0vJHh6c3rm2
 UJrPomg4uaMOIs+CYKgCUjG17L7hL92XhRrhLIXIIy9Ouh1/jQ/RDHHigGh6BeQ8dbwj
 2hdK+MJ/09PAGDeoWIu2UMx+7cZQK/fN1rFo4w6V4W+vaa0bUdDs1WG/bEYqmti2qNT+
 hrkQ==
X-Gm-Message-State: AOAM530qq95kUHmbiEUwmNMXVqD3xatZKu/zn6BkFDygYbeH57fiZtrM
 xYEDC7W2GmdPx/L93rWNFlrNeg==
X-Google-Smtp-Source: ABdhPJzx5sj2gYh1ULvzxGJ7yFMUUqcDmoHIYl0Ac4TNb3gQXehLf7eOzhw8ByfX64VEo3qPUrx8HA==
X-Received: by 2002:a5d:554e:: with SMTP id g14mr53969208wrw.353.1641567917145; 
 Fri, 07 Jan 2022 07:05:17 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:fc89:e826:8938:cbde])
 by smtp.gmail.com with ESMTPSA id s194sm1848246wme.45.2022.01.07.07.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Jan 2022 07:05:16 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com,
	vkoul@kernel.org,
	devicetree@vger.kernel.org
Cc: linux-phy@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v3 1/2] dt-bindings: phy: add Amlogic G12A Analog MIPI D-PHY
 bindings
Date: Fri,  7 Jan 2022 16:05:11 +0100
Message-Id: <20220107150512.614423-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220107150512.614423-1-narmstrong@baylibre.com>
References: <20220107150512.614423-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_070518_596607_1AA81305 
X-CRM114-Status: GOOD (  11.51  )
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

The Amlogic G12A SoCs embeds an Analog MIPI D-PHY to communicate with DSI
panels, this adds the bindings.

This Analog D-PHY works with a separate Digital MIPI D-PHY.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../phy/amlogic,g12a-mipi-dphy-analog.yaml    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
new file mode 100644
index 000000000000..7aa0c05d6ce4
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/amlogic,g12a-mipi-dphy-analog.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic G12A MIPI analog PHY
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+
+properties:
+  compatible:
+    const: amlogic,g12a-mipi-dphy-analog
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@0 {
+          compatible = "amlogic,g12a-mipi-dphy-analog";
+          reg = <0x0 0xc>;
+          #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
