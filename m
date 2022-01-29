Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D49C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 29 Jan 2022 19:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cI2AkGBnJT7yB7IQphYwwZJNy2360wycQI2s8Xqj3EE=; b=kRgFB1n62kPfqr
	XJxrWtfT9ZP9IU5cxQrTrY+w5TN7rZP/onLLmfQUbj40wNpIKS4v2RRk5vbzYsFDgVZye3DLAWGTg
	r1gbfRunJQH55G2nYM5fkVBeA4xt27YUAs1/ivoWmGlkB4/czCp3oUuLHrfxhLMDggtDnIZ/JusBh
	5dszEyGHPGa7Pb4gNrfUX5dhBghnSVYc5ZXZAshC5s5l+s6NqcFrI/+pyHNIsQRCm8L6K79r9hz98
	5F4fIDzus0fLicyYFHCaw+uXQwZIaHzYJhGRSeuBshbrJD9GPGWQZdc1rDSdq83Lv08+fF+uzcstb
	exsToIU4pJLHK5f2gtnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDtXk-005KAY-Fy; Sat, 29 Jan 2022 19:37:52 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDtX7-005JvN-PL
 for linux-phy@lists.infradead.org; Sat, 29 Jan 2022 19:37:17 +0000
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5838040315
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 19:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1643485026;
 bh=wEL89/ynvDT+atuZL4csG/pFwiNgDZ9SBr5HgtriJD4=;
 h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=Ijg7hslmQ2QMNqyOZG231syx5KMpd3jfLwPtPa58pRGlFXMQiO+tC2Ttfdh3BlSIi
 103oTWND1A4yw30NDi9hFCmSCrA3VP3Vm7qG3yjtNlsFaa6xZUqne7DsuXakPaiXLI
 xO0o8X5lPry9VbWa6uslH+StoJN/quQfx0S2+/MQxMcCtldCMuZZgsTbKkR5nPT7FO
 gPr/BzqxlM8AupN9iZMVBqEj6/ioOI9KPY3GW9HZe1LtR2LUX2iNFySIeKbJ3UeN0i
 xH8wGFAwjwE6LiPzWtHCcs1aQ0bKkTk+QR032MmhSUx96LyWeHJCbwToNKvlaErSQ3
 Q4wXD1ugirWaQ==
Received: by mail-ed1-f70.google.com with SMTP id
 f21-20020a50d555000000b00407a8d03b5fso4742615edj.9
 for <linux-phy@lists.infradead.org>; Sat, 29 Jan 2022 11:37:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wEL89/ynvDT+atuZL4csG/pFwiNgDZ9SBr5HgtriJD4=;
 b=3f+ltsimhAsr38gCzltFTUGxLsN94vYfjI43ggpY2yLx7qRgSk9uL0teq6H5ebWzon
 bpp9B+pw7jkmDNvH2qNg4FbEzbBxQqTNNTKELcqELaZksGgvY66g7INxZqCbavxQBu80
 yedlMMP6uULGYcHF2tVGtvDssjHinMH17v9+P0xrkkFYLamBMt3PAq4EA0uGxYh2JsDO
 38iGuAWsUEQ3kBMf5NS3gG9v3c5jCjvzhumGTNFAhf7hgPCa+HAugbeQ+mdhd3LpNEzL
 +DO/jmnhfQAiIE1nW0BIgScAjDoBta6CphkmQLCOwR3XNZ6fOctliTuq1pAlh5/wQdXS
 P/Lw==
X-Gm-Message-State: AOAM530MamtB4H2E0XVYHMCjMrG+2H7wrKNEL0GG3PbR9sX/6ZckRROS
 +YWlQak3c/qCW33DJGnZHJfeOxSk7SiKBFiO3DfCp3KJgU4Rx8JPTs4BqqAAf03x607gltZIWb6
 wZg9r16r+gagXFY/ieheLkdSrxaAWtSHH7i+qRiP+Qlc=
X-Received: by 2002:a17:907:7f88:: with SMTP id
 qk8mr7708999ejc.622.1643485016439; 
 Sat, 29 Jan 2022 11:36:56 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIgwaMH7JjSWPd08LTkb2moQW6C24pusHL1cGkG0T2qvrd39Ci/vgQ+6J35I6bR1JyOn/FSw==
X-Received: by 2002:a17:907:7f88:: with SMTP id
 qk8mr7708987ejc.622.1643485016259; 
 Sat, 29 Jan 2022 11:36:56 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id bf21sm14968026edb.2.2022.01.29.11.36.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Jan 2022 11:36:55 -0800 (PST)
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
Subject: [PATCH 6/8] dt-bindings: phy: samsung,
 exynos5250-sata-phy: convert to dtschema
Date: Sat, 29 Jan 2022 20:36:44 +0100
Message-Id: <20220129193646.372481-6-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
References: <20220129193646.372481-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_113714_037715_4F71C801 
X-CRM114-Status: GOOD (  16.81  )
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

Convert the Samsung Exynos5250 SoC SATA PHY bindings to DT schema
format.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../phy/samsung,exynos5250-sata-phy.yaml      | 64 +++++++++++++++++++
 .../devicetree/bindings/phy/samsung-phy.txt   | 26 --------
 2 files changed, 64 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/samsung,exynos5250-sata-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/samsung,exynos5250-sata-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,exynos5250-sata-phy.yaml
new file mode 100644
index 000000000000..62b39bb46585
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/samsung,exynos5250-sata-phy.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/samsung,exynos5250-sata-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos5250 SoC SATA PHY
+
+maintainers:
+  - Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
+  - Marek Szyprowski <m.szyprowski@samsung.com>
+  - Sylwester Nawrocki <s.nawrocki@samsung.com>
+
+properties:
+  compatible:
+    const: samsung,exynos5250-sata-phy
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: sata_phyctrl
+
+  "#phy-cells":
+    const: 0
+
+  reg:
+    maxItems: 1
+
+  samsung,syscon-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to PMU system controller interface.
+
+  samsung,exynos-sataphy-i2c-phandle:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to I2C SATA interface.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - "#phy-cells"
+  - reg
+  - samsung,syscon-phandle
+  - samsung,exynos-sataphy-i2c-phandle
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/exynos5250.h>
+
+    phy@12170000 {
+        compatible = "samsung,exynos5250-sata-phy";
+        reg = <0x12170000 0x1ff>;
+        clocks = <&clock CLK_SATA_PHYCTRL>;
+        clock-names = "sata_phyctrl";
+        #phy-cells = <0>;
+        samsung,syscon-phandle = <&pmu_system_controller>;
+        samsung,exynos-sataphy-i2c-phandle = <&sata_phy_i2c>;
+    };
diff --git a/Documentation/devicetree/bindings/phy/samsung-phy.txt b/Documentation/devicetree/bindings/phy/samsung-phy.txt
index d26ac7401258..1ee78016dc72 100644
--- a/Documentation/devicetree/bindings/phy/samsung-phy.txt
+++ b/Documentation/devicetree/bindings/phy/samsung-phy.txt
@@ -1,29 +1,3 @@
-Samsung SATA PHY Controller
----------------------------
-
-SATA PHY nodes are defined to describe on-chip SATA Physical layer controllers.
-Each SATA PHY controller should have its own node.
-
-Required properties:
-- compatible        : compatible list, contains "samsung,exynos5250-sata-phy"
-- reg : offset and length of the SATA PHY register set;
-- #phy-cells : must be zero
-- clocks : must be exactly one entry
-- clock-names : must be "sata_phyctrl"
-- samsung,exynos-sataphy-i2c-phandle : a phandle to the I2C device, no arguments
-- samsung,syscon-phandle : a phandle to the PMU system controller, no arguments
-
-Example:
-	sata_phy: sata-phy@12170000 {
-		compatible = "samsung,exynos5250-sata-phy";
-		reg = <0x12170000 0x1ff>;
-		clocks = <&clock 287>;
-		clock-names = "sata_phyctrl";
-		#phy-cells = <0>;
-		samsung,exynos-sataphy-i2c-phandle = <&sata_phy_i2c>;
-		samsung,syscon-phandle = <&pmu_syscon>;
-	};
-
 Device-Tree bindings for sataphy i2c client driver
 --------------------------------------------------
 
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
