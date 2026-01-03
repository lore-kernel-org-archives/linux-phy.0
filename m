Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC94AFC617D
	for <linux-phy@archiver.kernel.org>; Sat,  3 Jan 2026 11:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kMIv4Zfbr2lBsYN2MLAzbVqFu0gWQbae8CjPppboLQ0=; b=Nk1V+jCOXduJsm
	NFtd07ulVMdsObipGEUPWoZtTHlO44KZEjXds/UdmJElpUgjSu4Vw7hg71KdP8E88xNJbkzTSvZcA
	1UGuirWVlJXwL5Nrl5q9rX+qSZKPu2B4ZKrDIgoo3dBAw2esNr0jHuW5y263a5DRIJhqTEeDmlp8c
	jCso/S1nr9C3Nu0mo1Jv8Fgltkw/13MRxuV5Op9V3+flJAhI/UvOuXEVACxCdOGRx5GqybE7XyGB/
	Dt8Y1gEqiolCz+HU/pQdNhfnXiZN6DHE73+xMqTYKhmplK7zOlF955vZJIImkO80pDV7Wmo9np5DT
	RGZeew7bAACMVJKnszuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbzTK-00000009IvI-0YW8;
	Sat, 03 Jan 2026 11:07:02 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbzTG-00000009Iui-3mB4
	for linux-phy@lists.infradead.org;
	Sat, 03 Jan 2026 11:07:00 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-803474aaa8bso268276b3a.0
        for <linux-phy@lists.infradead.org>; Sat, 03 Jan 2026 03:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767438418; x=1768043218; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/qXjdEM0PiM5e6vNdQXr41n+NvZL846nY2Dsa0NWVco=;
        b=jg9OMpW/PKdCacomWSL2tP9kI9Gfc51mWvO6gBhj9OiSxZNbgwg8hCQj5asMXr4YV4
         jkwAbG+mwV0apw/SKwvaTTd++89JpVmyuqO2NKd/2ygTUacQknCkJ5jbuoxZGAEFIzuc
         pKDlSnW4tUcVKOA5hDXYC1Ic1zyYFoyfOfmGYV1oe/Ky5nrUUvpgI+EVET3gSuEYd3p8
         IbVPl1PrBjWAfnC3gOiRM9d2gPibPdn0xyk1GgP31Wwx75NUSbtkhNefIpwDiBpda/Xy
         FlR+8/apMbuOjXlZD87t5HwpPCVF/rIYScRmY7bnUCLF9hLycaaqNI+2c/4UV7hs6Va0
         SEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767438418; x=1768043218;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/qXjdEM0PiM5e6vNdQXr41n+NvZL846nY2Dsa0NWVco=;
        b=PsQC54UTDbnzXT+NUltGN7tSFukqnAEYMEYCiyVRTPTeeY/z6O38Rqnpm1D6tkApmy
         21EsK1nu5VAVqaUjaF9RKXBC6cHwqsFOFpjsF/z2X+ofs3dPsOntuxJS/18zuGUVGD8T
         KnRIjsMyUDZBL8k1kvRX60BBWXf806w+Seci8XxzaN8/01QJ8y38ENEvD562VJ9DpjEj
         wOFSjLBDJ95q9j77r+2J4+Mxan87b0rl955FXpOecNrSnAw6CACre+fO5vf2S+KovRro
         f3L/gjLTmrdQSREpFjfHLJ4tLi1cTAOj493G2UzdM4HE2w6Tkhohlmoalk6ngkLXws7n
         sZTg==
X-Gm-Message-State: AOJu0Yzry2iiWPjHnfJVoxoVElcVvDaaUPqcjPB7kOzBmWQ9wjkbp4IJ
	4KDkETix4uzwDluharnVdcuspMNmWWBxryZOLbqIdptLstpOPnjgbHa8
X-Gm-Gg: AY/fxX7m+m5PFgotRGLNIuDUsFYnuHQyKKgJVgtAPIB444rMSXjK7C89mm4hB6JFhcz
	qqUItLBd8Z2Y6wwk8Vpq0QWQZUlaFqzO/EI7/6H2UiP/TnLHg2g/UV+fj9hmZx71SjkGFOHw9h6
	MIFwTvZkKYrmmmZDLdCFLbAv2//4Kpaa/3PXowRxNuLcg5LuSHsskHnyDLn+mMIcN8xssgUtElC
	zHwWd2q/Bd7cFVPVZ6XSKYKKll9IvRzW3bEEPisSwSXMQDpIwSkuDLgFM5QCjjuSGYzd83MrLps
	s3uRMuCcgi/IhPiOcSMPUeYfHQnf5/Uqr3TyQSoYgLFcrmSE28Umyuhl6QOEDm3a3O10CXynCHi
	d/ktj2iJ+c/y1WvVIp54IGkacOFoGB89caeA3Hht7AIWi0XJML9Rbi3yVtM+49M45K6Ewb/uV9t
	pbVxFWvLsYVgY6ON5KLl66R/DvbJWh3mKwFw==
X-Google-Smtp-Source: AGHT+IHBTpuqCkcGdKPEZcXGW5io0CXIBbVL2fvT6qgAxrAZ7lPVD9hE8XhbGTqOQ9gl7T++4U1kUQ==
X-Received: by 2002:aa7:9f4c:0:b0:7e8:3fcb:9b03 with SMTP id d2e1a72fcca58-8148c00b373mr1481328b3a.25.1767438417926;
        Sat, 03 Jan 2026 03:06:57 -0800 (PST)
Received: from Black-Pearl.localdomain ([122.181.60.165])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f300sm42961246b3a.54.2026.01.03.03.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 03:06:57 -0800 (PST)
From: Charan Pedumuru <charan.pedumuru@gmail.com>
Date: Sat, 03 Jan 2026 11:06:10 +0000
Subject: [PATCH] dt-bindings: phy: ti,control-phy-otghs: convert to DT
 schema
MIME-Version: 1.0
Message-Id: <20260103-ti-phy-v1-1-8c3f5e2cbd63@gmail.com>
X-B4-Tracking: v=1; b=H4sIACL4WGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDI2ND3ZJM3YKMSl1Ti6Qky1Rji+S0ZEsloOKCotS0zAqwQdGxtbUAkD4
 ckFgAAAA=
X-Change-ID: 20251231-ti-phy-58bb9e38cfc9
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Charan Pedumuru <charan.pedumuru@gmail.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_030658_979274_F1CC73A2 
X-CRM114-Status: GOOD (  21.77  )
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

Convert TI OMAP Control PHY and PIPE3 PHY binding to YAML format.
Changes during conversion:
- Define a new pattern 'pciephy'and 'control-phy' to match nodes
  defined in DT.

Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
---
 .../bindings/phy/ti,control-phy-otghs.yaml         | 206 +++++++++++++++++++++
 Documentation/devicetree/bindings/phy/ti-phy.txt   |  98 ----------
 2 files changed, 206 insertions(+), 98 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
new file mode 100644
index 000000000000..830be2af5fb6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
@@ -0,0 +1,206 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI PHYs for TI Platforms (OMAP Control PHY and PIPE3 PHY)
+
+maintainers:
+  - Vinod Koul <vkoul@kernel.org>
+
+description:
+  This device tree binding describes the TI PHYs used in TI platforms.
+  Two types of PHYs are supported.
+  1. OMAP Control PHY - Simple control PHYs for power control
+  2. PIPE3 PHY - High-speed PIPE3 PHYs for USB3, SATA, PCIe
+
+properties:
+  $nodename:
+    pattern: "^(pciephy|control-phy|usb3phy|phy)(@[0-9a-fA-F]+)?$"
+
+  compatible:
+    oneOf:
+      - description: OMAP Control PHY compatibles
+        items:
+          enum:
+            - ti,control-phy-otghs
+            - ti,control-phy-usb2
+            - ti,control-phy-pipe3
+            - ti,control-phy-pcie
+            - ti,control-phy-usb2-dra7
+            - ti,control-phy-usb2-am437
+      - description: PIPE3 high-speed PHY compatibles
+        items:
+          enum:
+            - ti,phy-usb3
+            - ti,phy-pipe3-sata
+            - ti,phy-pipe3-pcie
+            - ti,omap-usb3
+
+  reg:
+    minItems: 1
+    maxItems: 4
+
+  reg-names:
+    oneOf:
+      - description: OMAP Control PHY
+        items:
+          enum: [otghs_control, power, pcie_pcs, control_sma]
+      - description: PIPE3 high-speed PHY
+        items:
+          enum: [phy_rx, phy_tx, pll_ctrl]
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    minItems: 2
+    maxItems: 7
+
+  clock-names:
+    minItems: 2
+    maxItems: 7
+    items:
+      enum: [wkupclk, sysclk, refclk, dpll_ref,
+             dpll_ref_m2, phy-div, div-clk]
+
+# Optional Properties
+  id:
+    description:
+      Instance ID for multiple instances of same PHY type.
+      Used for multi-lane PCIe PHYs.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 1
+
+  syscon-phy-power:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module register for PHY
+      power on/off.
+
+  syscon-pllreset:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
+      SATA_PLL_SOFT_RESET bit (SATA PHY only).
+
+  syscon-pcs:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandle/offset pair to system control module for writing PCS delay value.
+
+  ctrl-module:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle of control module for PHY power on.
+    deprecated: true
+
+dependencies:
+  syscon-pllreset:
+    properties:
+      compatible:
+        contains:
+          const: ti,phy-pipe3-sata
+
+allOf:
+  # OMAP Control PHY validation
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-otghs
+    then:
+      properties:
+        reg-names:
+          const: otghs_control
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-pcie
+    then:
+      properties:
+        reg-names:
+          items:
+            - enum: [power, pcie_pcs, control_sma]
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,control-phy-usb2
+              - ti,control-phy-usb2-dra7
+              - ti,control-phy-usb2-am437
+              - ti,control-phy-pipe3
+    then:
+      properties:
+        reg-names:
+          const: power
+
+  # PIPE3 PHY validation
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - ti,phy-usb3
+              - ti,phy-pipe3-sata
+              - ti,phy-pipe3-pcie
+              - ti,omap-usb3
+    then:
+      required:
+        - "#phy-cells"
+        - clocks
+        - clock-names
+
+required:
+  - reg
+  - compatible
+  - reg-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    /* OMAP Control PHY (USB OTG HS) */
+    control-phy@4a00233c {
+        compatible = "ti,control-phy-otghs";
+        reg = <0x4a00233c 0x4>;
+        reg-names = "otghs_control";
+    };
+
+  - |
+    /* TI PIPE3 USB3 PHY */
+    usb3phy@4a084400 {
+        compatible = "ti,phy-usb3";
+        reg = <0x4a084400 0x80>,
+              <0x4a084800 0x64>,
+              <0x4a084c00 0x40>;
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        #phy-cells = <0>;
+        clocks = <&usb_phy_cm_clk32k>,
+                 <&sys_clkin>,
+                 <&usb_otg_ss_refclk960m>;
+        clock-names = "wkupclk", "sysclk", "refclk";
+        ctrl-module = <&omap_control_usb>;
+    };
+
+  - |
+    /* TI PIPE3 SATA PHY */
+    phy@4a096000 {
+        compatible = "ti,phy-pipe3-sata";
+        reg = <0x4A096000 0x80>,  /* phy_rx */
+              <0x4A096400 0x64>,  /* phy_tx */
+              <0x4A096800 0x40>;  /* pll_ctrl */
+        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
+        clocks = <&sys_clkin1>, <&sata_ref_clk>;
+        clock-names = "sysclk", "refclk";
+        syscon-pllreset = <&scm_conf 0x3fc>;
+        #phy-cells = <0>;
+    };
+...
diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
deleted file mode 100644
index 7c7936b89f2c..000000000000
--- a/Documentation/devicetree/bindings/phy/ti-phy.txt
+++ /dev/null
@@ -1,98 +0,0 @@
-TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
-
-OMAP CONTROL PHY
-
-Required properties:
- - compatible: Should be one of
- "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
- "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
-                        e.g. USB2_PHY on OMAP5.
- "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
-                        e.g. USB3 PHY and SATA PHY on OMAP5.
- "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
-			set PCS delay value.
-			e.g. PCIE PHY in DRA7x
- "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
-                        DRA7 platform.
- "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
-                        AM437 platform.
- - reg : register ranges as listed in the reg-names property
- - reg-names: "otghs_control" for control-phy-otghs
-	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
-	      "power" for all other types
-
-omap_control_usb: omap-control-usb@4a002300 {
-        compatible = "ti,control-phy-otghs";
-        reg = <0x4a00233c 0x4>;
-        reg-names = "otghs_control";
-};
-
-TI PIPE3 PHY
-
-Required properties:
- - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
-   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
- - reg : Address and length of the register set for the device.
- - reg-names: The names of the register addresses corresponding to the registers
-   filled in "reg".
- - #phy-cells: determine the number of cells that should be given in the
-   phandle while referencing this phy.
- - clocks: a list of phandles and clock-specifier pairs, one for each entry in
-   clock-names.
- - clock-names: should include:
-   * "wkupclk" - wakeup clock.
-   * "sysclk" - system clock.
-   * "refclk" - reference clock.
-   * "dpll_ref" - external dpll ref clk
-   * "dpll_ref_m2" - external dpll ref clk
-   * "phy-div" - divider for apll
-   * "div-clk" - apll clock
-
-Optional properties:
- - id: If there are multiple instance of the same type, in order to
-   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
-   PHY). If "id" is not provided, it is set to default value of '1'.
- - syscon-pllreset: Handle to system control region that contains the
-   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
-   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
- - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
-   register offset to write the PCS delay value.
-
-Deprecated properties:
- - ctrl-module : phandle of the control module used by PHY driver to power on
-   the PHY.
-
-Recommended properties:
- - syscon-phy-power : phandle/offset pair. Phandle to the system control
-   module and the register offset to power on/off the PHY.
-
-This is usually a subnode of ocp2scp to which it is connected.
-
-usb3phy@4a084400 {
-	compatible = "ti,phy-usb3";
-	reg = <0x4a084400 0x80>,
-	      <0x4a084800 0x64>,
-	      <0x4a084c00 0x40>;
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_usb>;
-	#phy-cells = <0>;
-	clocks = <&usb_phy_cm_clk32k>,
-		 <&sys_clkin>,
-		 <&usb_otg_ss_refclk960m>;
-	clock-names =	"wkupclk",
-			"sysclk",
-			"refclk";
-};
-
-sata_phy: phy@4a096000 {
-	compatible = "ti,phy-pipe3-sata";
-	reg = <0x4A096000 0x80>, /* phy_rx */
-	      <0x4A096400 0x64>, /* phy_tx */
-	      <0x4A096800 0x40>; /* pll_ctrl */
-	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
-	ctrl-module = <&omap_control_sata>;
-	clocks = <&sys_clkin1>, <&sata_ref_clk>;
-	clock-names = "sysclk", "refclk";
-	syscon-pllreset = <&scm_conf 0x3fc>;
-	#phy-cells = <0>;
-};

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20251231-ti-phy-58bb9e38cfc9

Best regards,
-- 
Charan Pedumuru <charan.pedumuru@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
