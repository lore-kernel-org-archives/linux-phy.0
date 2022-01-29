Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D35C433EF
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwyO5nY6f7noMOpOKMJMtYdWVxPX6oMKEV53h5w4q3k=; b=l3lCB2YZHEA0z9
	Jz3hhko0u5t54AXWw3ArgUHizfbPAJ95RPfdoYcFlvHwA5ymRLXu/KD5zuFdt5o3CA/5ty+LvbBMo
	3HIFp0YEfBZkUCHZya1KAPbcV/RTLE8VYLbkOgZyPHK6OEVHGYNXTdtLnHfE9F/RlmticXz2Pzjbt
	NHwBkNC2ip6pvZRkI2o0Et5zZfRzbSsT7h7/najSDiOMHaR6sJeaC8Lgs502tUl0Sh1H7sEpz7L80
	/vDXG821o60SiW+YzoeFohrB2CpKD08OOyqpQhyYjnox21YNr//oaQAvDFo5H47aszTCoPXe0QF09
	2FbK8KyFxWRG+JIbUS2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtYK-005KQH-Mz; Sat, 29 Jan 2022 19:38:28 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtXB-005JxH-8W
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:20 +0000
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 941D3405E9
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485026;
 bh=LyTtoI1YW7+oTxeL8M/tztYAXTSPk1l09vBr/yrLL8w=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=oDm1fCVMGZ8mvY6HPzqFTwnQmKemtu4kDbAdKJj3Kj+Cv/u6ePaHLt9NQU23oTO5B
 maV+56HKFE40YPC0+E/smIN+HvqQFTxsKpmRRdYEqYXJe5ZshIwghGJCs/gefG2yaW
 wOyENzrnBsYFyoFFbcB/rr3dUlM0/oInN15OEJ6mSE110AqCSBTpsUl6G9DQtK3FPH
 hQJ9ES1noLh/CUvfck09urelNS04/pYNLAy7dHgZRFAPNtnfx9PKKETSD08Q6R8YHD
 TYetEURGF2BmE3w504u6KZpdd8BHNLfXoVgF3w6dDTU8dLAWkzJln0shLxM5mCraWb
 7xklERp+8b9zA==
Received: by mail-ed1-f72.google.com with SMTP id
 k10-20020a50cb8a000000b00403c8326f2aso4793379edi.6
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:37:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LyTtoI1YW7+oTxeL8M/tztYAXTSPk1l09vBr/yrLL8w=;
 b=quKE2NwwLcBjR5gwGRmpmGBOgy/MWD5ib2d82zLvvPV8cFe1cQas9NjdZO+SYd6Mk8
 S/hCn27hGMNGncXC6XBVZDC++De2pNSKfImqpmwU6Lb0O9xyJuEvojzTzBPaHp9RdrI6
 h1/RwAdK9z1BbEaBOtatggh7rp48Ezv8mS39hbUNgccLC56bQph5qiMLDxwzFPOR2SGU
 U7ryBRGpRG5OXiU2wnWfCrlIQFaGuNvJnvlP8fMv7SLe3fQ3Iv41B2fbrMRd7Uo+uupd
 LtcWpe+VBywlN+IIDzKHqCyiNCVxG2xfE5cDQhS0xKK8l9kB2CczvF8vQM+bqZXjhS2v
 +Uxw==
X-Gm-Message-State: AOAM5318scNOOHqMcxAz6sDKf8B6QZ3AGyFz5Y/GOwXmjFOfojFor1de
 AbXkgswWv1hUD7QXl8sFy9VljWYLGvrhUDMq1M+TCK9UlP2rhjX5+ZTL2l7aRKe54eThi6HtQjl
 q9LFzu34vr7aRWMF7o3Z1AJbX2B+YyIadWOOnVAOaYlY=
X-Received: by 2002:a17:907:94d1:: with SMTP id
 dn17mr11331185ejc.79.1643485014982; 
 Sat, 29 Jan 2022 11:36:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyhzfd/xglI5jZWhrnmvGmbIdIE9B6L8oszbLHSQI9bjRqWCja/h/zdfcLDY7eJzLx7Op0Xrw==
X-Received: by 2002:a17:907:94d1:: with SMTP id
 dn17mr11331165ejc.79.1643485014717; 
 Sat, 29 Jan 2022 11:36:54 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:53 -0800 (PST)
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
Subject: [PATCH 5/8] dt-bindings: phy: samsung,usb2-phy: convert to dtschema
Date: Sat, 29 Jan 2022 20:36:43 +0100
Message-Id: <20220129193646.372481-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113717_483904_D98EF249 
X-CRM114-Status: GOOD (  24.08  )
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

Convert the Samsung SoC USB 2.0 PHY bindings to DT schema format.

Except the conversion, add also vbus-supply property which was already
used by the driver and DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/phy/samsung,usb2-phy.yaml        | 102 ++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   |  60 -----------
 MAINTAINERS                                   |   2 +-
 3 files changed, 103 insertions(+), 61 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,usb2-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb2-phy.yaml
new file mode 100644
index 000000000000..056e270a4e88
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,usb2-phy.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,usb2-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S5P/Exynos SoC USB 2.0 PHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+description: |
+  The first phandle argument in the PHY specifier identifies the PHY, its
+  meaning is compatible dependent. For the currently supported SoCs (Exynos4210
+  and Exynos4212) it is as follows::
+    0 - USB device ("device"),
+    1 - USB host ("host"),
+    2 - HSIC0 ("hsic0"),
+    3 - HSIC1 ("hsic1"),
+  Exynos3250 has only USB device phy available as phy 0.
+
+  Exynos4210 and Exynos4212 use mode switching and require that mode switch
+  register is supplied.
+
+properties:
+  compatible:
+    enum:
+      - samsung,exynos3250-usb2-phy
+      - samsung,exynos4210-usb2-phy
+      - samsung,exynos4x12-usb2-phy
+      - samsung,exynos5250-usb2-phy
+      - samsung,exynos5420-usb2-phy
+      - samsung,s5pv210-usb2-phy
+
+  clocks:
+    items:
+      - description: PHY module gate clock.
+      - description: Reference rate clock of PHY module.
+
+  clock-names:
+    items:
+      - const: phy
+      - const: ref
+
+  "#phy-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  samsung,pmureg-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface.
+
+  samsung,sysreg-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to system registers interface.
+
+  vbus-supply:
+    description:
+      VBUS power source.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - reg
+  - samsung,pmureg-phandle
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos4x12-usb2-phy
+              - samsung,exynos5250-usb2-phy
+              - samsung,exynos5420-usb2-phy
+    then:
+      required:
+        - samsung,sysreg-phandle
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5420.h>
+
+    phy@12130000 {
+        compatible = "samsung,exynos5420-usb2-phy";
+        reg = <0x12130000 0x100>;
+        #phy-cells = <1>;
+        clocks = <&clock CLK_USBH20>, <&clock CLK_SCLK_USBPHY300>;
+        clock-names = "phy", "ref";
+        samsung,sysreg-phandle = <&sysreg_system_controller>;
+        samsung,pmureg-phandle = <&pmu_system_controller>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index 839ffe2a2d05..d26ac7401258 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,63 +1,3 @@
-Samsung S5P/Exynos SoC series USB PHY
--------------------------------------------------
-
-Required properties:
-- compatible : should be one of the listed compatibles:
-	- "samsung,exynos3250-usb2-phy"
-	- "samsung,exynos4210-usb2-phy"
-	- "samsung,exynos4x12-usb2-phy"
-	- "samsung,exynos5250-usb2-phy"
-	- "samsung,exynos5420-usb2-phy"
-	- "samsung,s5pv210-usb2-phy"
-- reg : a list of registers used by phy driver
-	- first and obligatory is the location of phy modules registers
-- samsung,sysreg-phandle - handle to syscon used to control the system registers
-- samsung,pmureg-phandle - handle to syscon used to control PMU registers
-- #phy-cells : from the generic phy bindings, must be 1;
-- clocks and clock-names:
-	- the "phy" clock is required by the phy module, used as a gate
-	- the "ref" clock is used to get the rate of the clock provided to the
-	  PHY module
-
-Optional properties:
-- vbus-supply: power-supply phandle for vbus power source
-
-The first phandle argument in the PHY specifier identifies the PHY, its
-meaning is compatible dependent. For the currently supported SoCs (Exynos 4210
-and Exynos 4212) it is as follows:
-  0 - USB device ("device"),
-  1 - USB host ("host"),
-  2 - HSIC0 ("hsic0"),
-  3 - HSIC1 ("hsic1"),
-Exynos3250 has only USB device phy available as phy 0.
-
-Exynos 4210 and Exynos 4212 use mode switching and require that mode switch
-register is supplied.
-
-Example:
-
-For Exynos 4412 (compatible with Exynos 4212):
-
-usbphy: phy@125b0000 {
-	compatible = "samsung,exynos4x12-usb2-phy";
-	reg = <0x125b0000 0x100>;
-	clocks = <&clock 305>, <&clock 2>;
-	clock-names = "phy", "ref";
-	#phy-cells = <1>;
-	samsung,sysreg-phandle = <&sys_reg>;
-	samsung,pmureg-phandle = <&pmu_reg>;
-};
-
-Then the PHY can be used in other nodes such as:
-
-phy-consumer@12340000 {
-	phys = <&usbphy 2>;
-	phy-names = "phy";
-};
-
-Refer to DT bindings documentation of particular PHY consumer devices for more
-information about required PHYs and the way of specification.
-
 Samsung SATA PHY Controller
 ---------------------------
 
diff --git a/MAINTAINERS b/MAINTAINERS
index ddcee331dc09..46f6ced8370a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17168,7 +17168,7 @@ SAMSUNG USB2 PHY DRIVER
 M:	Sylwester Nawrocki <s.nawrocki@samsung.com>
 L:	linux-kernel@vger.kernel.org
 S:	Supported
-F:	Documentation/devicetree/bindings/phy/samsung-phy.txt
+F:	Documentation/devicetree/bindings/phy/samsung,usb2-phy.yaml
 F:	Documentation/driver-api/phy/samsung-usb2.rst
 F:	drivers/phy/samsung/phy-exynos4210-usb2.c
 F:	drivers/phy/samsung/phy-exynos4x12-usb2.c
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
