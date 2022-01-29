Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD0C0C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vibZLtLwfTXJisWfZkOmbGU3vGbFqEj9jNScNb1upHI=; b=3D+S6CQ9MRAeWP
	uBxwwtLzVYO9ay5qqG/oRNkq+a0c5hgYjbcrnsXiY4QmQS6RD6y7HbzB9bGzzF0jgECotvaF2irpj
	/3/R6QqM9PP4nMtR3SlXGcYl4z64SwlK2QoO8TTcOB5xpJ+xT6jlEzgBNhGAptuyx76+p0df+B5We
	UNM00gzStsrFJjtHeinHKu0yDkuwO4/DVPU2ER8uCPQwfw9VmqT+hXxIIAl9VYpFj+vBU7Ah3p46n
	0FCZSLFkLIvU1WX9Du1KOqGbVXiMxGLudQxKGXUP2hCqwRVw31Dh52o4LGwq3d2lk6h398ZT1UgaW
	szYp5u7SRw2QQSfg8TDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtXW-005K5u-SP; Sat, 29 Jan 2022 19:37:38 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtX7-005JvL-PP
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:16 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BA1E740055
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485022;
 bh=aWs9MFAf4+mGeKyXFFmmho+fwz/+ZD3RFsWsucBweiU=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=fWazipQ6I6hJ49Q1422WrUaO/rlVjgciZVEA2kZEsKvGg5VBCf8zwGH5pF9xFvV7d
 pZfIZ/ec+4rGNptqIHCiyA0LDYMe1eA+oA4/TyT/cxRADRvrvxPW3/ElpCYyGBohay
 kQf/o5q26Uzp4mnSPujKh/LLJk5NruLp15lK/IicYIzdNvG8K+kQfcuEbxfOtu024n
 5LTB642aaGekEyiPjCT1VbQ4iI03ckP5MSYOWQAVzQpK3e8sSIQhbLEauQWHRNrvvu
 k+QD1FD1OfJrPw2o/nTqm0hOKlFr5bD+fsC/CeG+rm+buef6hxNvFjoU5ltTZmuBbP
 zWLu7nVhH1mlA==
Received: by mail-ed1-f70.google.com with SMTP id
 i22-20020a50fd16000000b00405039f2c59so4787319eds.1
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:37:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aWs9MFAf4+mGeKyXFFmmho+fwz/+ZD3RFsWsucBweiU=;
 b=ZIZYmM7iQTnD2bkXJUmM3fcSRBYqBBGAMZ0RjdQHnZW7pXcgPjqup3U3zLzV5QPvW6
 TaAUrnn4UjtxXR7F58CC/mMOdftiUjq4Mt2cpQPdt2J3xLYSw5w+J2mqcje6r5Dh7IHs
 wVZhF9DYNVgh+KaaJ5P9cynKvzfFPcV8eTGnTX03GXui1+HZyr2zsupS1HpbcrAz3zFO
 A4jrDzHMgvGxeaSuO9mygFo8aZNnuF6EWPkCuU5fZtLaceh5+MT45f8MKo3tSsB9QXM5
 lPTjWf7b3v+/eLgOZAGzExvuJyOKiCI7HvRLNYNEv7WhQkniKymS793ERB1HKWI6BPRf
 P+Gg==
X-Gm-Message-State: AOAM532PFquw96HB7rqzpJmCwqKXYp0rw5X1GXGS4lLxywZ0RvCs+4um
 9hQPaAKQXiS+9Wcu5/9mge3/Z95KjhHxdQReDdntjcTV3Vs6Qb2xfaYbG3MPEqLTeJ8+pWrDj1H
 laQ+FK2kBTtA/akbvyRyYGkDXR2vJXUd7Ul7oi2OCXRY=
X-Received: by 2002:a17:906:58d4:: with SMTP id
 e20mr11497476ejs.769.1643485012504; 
 Sat, 29 Jan 2022 11:36:52 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyK4GEK3O3dtaeIo1993o51uYQOxqNVlu9jOjRfve+nnNRq3R7aTnPPnhTn/1e2TTrcGT1/Uw==
X-Received: by 2002:a17:906:58d4:: with SMTP id
 e20mr11497455ejs.769.1643485012324; 
 Sat, 29 Jan 2022 11:36:52 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:51 -0800 (PST)
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
Subject: [PATCH 3/8] dt-bindings: phy: samsung,
 mipi-video-phy: convert to dtschema
Date: Sat, 29 Jan 2022 20:36:41 +0100
Message-Id: <20220129193646.372481-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113714_046222_463077B8 
X-CRM114-Status: GOOD (  16.82  )
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

Convert the Samsung SoC MIPI CSIS/DSIM DPHY bindings to DT schema
format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/phy/samsung,mipi-video-phy.yaml  | 113 ++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   |  29 -----
 2 files changed, 113 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
new file mode 100644
index 000000000000..54aa056b224d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,mipi-video-phy.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,mipi-video-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5P/Exynos SoC MIPI CSIS/DSIM DPHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+description: |
+  For samsung,s5pv210-mipi-video-phy compatible PHYs the second cell in the
+  PHY specifier identifies the PHY and its meaning is as follows::
+    0 - MIPI CSIS 0,
+    1 - MIPI DSIM 0,
+    2 - MIPI CSIS 1,
+    3 - MIPI DSIM 1.
+
+  samsung,exynos5420-mipi-video-phy and samsung,exynos5433-mipi-video-phy
+  support additional fifth PHY::
+    4 - MIPI CSIS 2.
+
+properties:
+  compatible:
+    enum:
+      - samsung,s5pv210-mipi-video-phy
+      - samsung,exynos5420-mipi-video-phy
+      - samsung,exynos5433-mipi-video-phy
+
+  "#phy-cells":
+    const: 1
+
+  syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface, valid only for
+      samsung,s5pv210-mipi-video-phy and samsung,exynos5420-mipi-video-phy.
+
+  samsung,pmu-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+  samsung,disp-sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to DISP system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+  samsung,cam0-sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to CAM0 system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+  samsung,cam1-sysreg:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to CAM1 system controller interface, valid for
+      samsung,exynos5433-mipi-video-phy.
+
+required:
+  - compatible
+  - "#phy-cells"
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,s5pv210-mipi-video-phy
+              - samsung,exynos5420-mipi-video-phy
+    then:
+      properties:
+        samsung,pmu-syscon: false
+        samsung,disp-sysreg: false
+        samsung,cam0-sysreg: false
+        samsung,cam1-sysreg: false
+      required:
+        - syscon
+    else:
+      properties:
+        syscon: false
+      required:
+        - samsung,pmu-syscon
+        - samsung,disp-sysreg
+        - samsung,cam0-sysreg
+        - samsung,cam1-sysreg
+
+additionalProperties: false
+
+examples:
+  - |
+    phy {
+        compatible = "samsung,exynos5433-mipi-video-phy";
+        #phy-cells = <1>;
+        samsung,pmu-syscon = <&pmu_system_controller>;
+        samsung,cam0-sysreg = <&syscon_cam0>;
+        samsung,cam1-sysreg = <&syscon_cam1>;
+        samsung,disp-sysreg = <&syscon_disp>;
+    };
+
+  - |
+    phy {
+        compatible = "samsung,s5pv210-mipi-video-phy";
+        syscon = <&pmu_system_controller>;
+        #phy-cells = <1>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 390065f49b62..6ab16734eb65 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,32 +1,3 @@
-Samsung S5P/Exynos SoC series MIPI CSIS/DSIM DPHY
--------------------------------------------------
-
-Required properties:
-- compatible : should be one of the listed compatibles:
-	- "samsung,s5pv210-mipi-video-phy"
-	- "samsung,exynos5420-mipi-video-phy"
-	- "samsung,exynos5433-mipi-video-phy"
-- #phy-cells : from the generic phy bindings, must be 1;
-
-In case of s5pv210 and exynos5420 compatible PHYs:
-- syscon - phandle to the PMU system controller
-
-In case of exynos5433 compatible PHY:
- - samsung,pmu-syscon - phandle to the PMU system controller
- - samsung,disp-sysreg - phandle to the DISP system registers controller
- - samsung,cam0-sysreg - phandle to the CAM0 system registers controller
- - samsung,cam1-sysreg - phandle to the CAM1 system registers controller
-
-For "samsung,s5pv210-mipi-video-phy" compatible PHYs the second cell in
-the PHY specifier identifies the PHY and its meaning is as follows:
-  0 - MIPI CSIS 0,
-  1 - MIPI DSIM 0,
-  2 - MIPI CSIS 1,
-  3 - MIPI DSIM 1.
-"samsung,exynos5420-mipi-video-phy" and "samsung,exynos5433-mipi-video-phy"
-supports additional fifth PHY:
-  4 - MIPI CSIS 2.
-
 Samsung Exynos SoC series Display Port PHY
 -------------------------------------------------
 
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
