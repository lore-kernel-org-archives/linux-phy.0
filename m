Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5695FC433EF
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0W7F0i1yL8gQ6HY3VYiSpzAuEM2tSDqkTa6D9BLmrC0=; b=Qjo9w/Kak0In0T
	shEDPgzZlDDGq/ctGIzE4SAxN6z7j+IC9wrmknrT9J0q9/djp98O0TnNrRugZ5KMAO9YzHMHSvgkl
	jAuJ9f5VCPZVKfk270MMVGQcpXZFn9WLAruYMgaEk2ZBf/gcFxXywsYbsqxW2eCU2uQqSfoce9081
	E9Cli2gDqMw9zXxLx+GjomVpl18e99QWNB+N4zKGs5Sw5c57JP/JPeVSYI5jilfEqLMvIIIMPfygD
	sihPzQy9QbeY+yEV5tXfcm5/GWa7jVhUnVRvosbQxHfOHjbrsPcRuOzBW4h26W9CiqMkKajqUjGM7
	2AgiA62L52+xrO2GUYtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtXW-005K5r-Oo; Sat, 29 Jan 2022 19:37:38 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtX7-005JvM-PN
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:15 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D1C7640056
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485022;
 bh=okF8bn5kqmciTynWklIDfopxJdHcfxeyGhxpgYWxZes=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=LXOhUh1MUH7wUWvvgAhxhGTKexcz5kCv7ME8C+m5v4KmsLD0tk9l9NjWkZWV1j3+v
 fdPfo6SgCoBmxR3OMZoWH8VoAlug3p//zsXKBqMUHR/jCG1acGacQ3f4kQItJL5K1e
 5TRQeru29UO6eo3har8Ljyw3977mjivXzVnVOfnhePVkHcr/M+OjLvNmjLh+GNGfRI
 P6NYwcIRGPtfQ5/jsNMQLQR6adjc2Xt7UchsGbEvYS6akKrJ/nur06erao7yFktx9z
 XX119t33cVHOEgYDzh9ETTcCPkUwbr6/af19KM3L7X4qFUoaaadzvmXQC6C1/fFIeW
 EHqwzQvuHOhkA==
Received: by mail-ed1-f70.google.com with SMTP id
 v15-20020a50a44f000000b004094f4a8f3bso4809547edb.0
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:37:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=okF8bn5kqmciTynWklIDfopxJdHcfxeyGhxpgYWxZes=;
 b=Up0wxeZdQNmyLDLKkXLpWJNdhXr3P5J3qvrHKt05s10wmEHHZm31n9qahIM0n1X4tf
 uYqI9x469OurOsCnb6F/1tyhkwEDfFcnU352CEcKwsjLsF/SQj2q8WBkPf6Qap4h3Ecr
 dDG0vzrJHcf8Eb0cdhDUcxl8NevujWCPrtAX0eniagfKWrS7z+5PrZ7mJCmTjPLBS6wk
 OAKxNDLSo9vP5nWrxrV+Bu9nlBj/0Ixhh2AqEpB3sPUPfTf3rH0d4KaNaFlcU/CKc6uv
 aFy8MeYGSSFdTXv7eCKezQml7Eg/vkh8Bg0Su+iHDJYoaW1lPLa9x+Sh62byNJmc8Nzh
 4xbQ==
X-Gm-Message-State: AOAM533ZkLdaGrESQa6j3ehuxP91rOepX+COb+Y2p3BXcdgND4IQOO7L
 UyxOqti2/90CYFIQYCzC/SE3MMghPrp1UzwFgrVqNhpdz64LnlkpyW/8Q4gspCs738qDj94BBwY
 yHSTtt4bM23/FuJNI4cFCXRORbg26uL2sezfqG0kcRz8=
X-Received: by 2002:a17:906:99c6:: with SMTP id
 s6mr12264110ejn.522.1643485013702; 
 Sat, 29 Jan 2022 11:36:53 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy1xIjBHvse+WpQf8zil2xcWN1KmBQHJXw/Zj/fjql+p0Fm4NLryVA+s2m708rnsfFL8b/imw==
X-Received: by 2002:a17:906:99c6:: with SMTP id
 s6mr12264102ejn.522.1643485013529; 
 Sat, 29 Jan 2022 11:36:53 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:52 -0800 (PST)
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
Subject: [PATCH 4/8] dt-bindings: phy: samsung,
 dp-video-phy: convert to dtschema
Date: Sat, 29 Jan 2022 20:36:42 +0100
Message-Id: <20220129193646.372481-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113714_052022_294E8E66 
X-CRM114-Status: GOOD (  16.02  )
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

Convert the Samsung SoC DisplayPort PHY bindings to DT schema format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/phy/samsung,dp-video-phy.yaml    | 41 +++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   | 11 -----
 2 files changed, 41 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
new file mode 100644
index 000000000000..838c6d480ce6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,dp-video-phy.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,dp-video-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC DisplayPort PHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos5250-dp-video-phy
+      - samsung,exynos5420-dp-video-phy
+
+  "#phy-cells":
+    const: 0
+
+  samsung,pmu-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface.
+
+required:
+  - compatible
+  - "#phy-cells"
+  - samsung,pmu-syscon
+
+additionalProperties: false
+
+examples:
+  - |
+    phy {
+        compatible = "samsung,exynos5420-dp-video-phy";
+        samsung,pmu-syscon = <&pmu_system_controller>;
+        #phy-cells = <0>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 6ab16734eb65..839ffe2a2d05 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,14 +1,3 @@
-Samsung Exynos SoC series Display Port PHY
--------------------------------------------------
-
-Required properties:
-- compatible : should be one of the following supported values:
-	 - "samsung,exynos5250-dp-video-phy"
-	 - "samsung,exynos5420-dp-video-phy"
-- samsung,pmu-syscon: phandle for PMU system controller interface, used to
-		      control pmu registers for power isolation.
-- #phy-cells : from the generic PHY bindings, must be 0;
-
 Samsung S5P/Exynos SoC series USB PHY
 -------------------------------------------------
 
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
