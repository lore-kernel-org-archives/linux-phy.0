Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FA2C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 09:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k6/yq/ipA2Lh3wXbuLhaxanP5p7rhGT7lZYd0Zxmp/c=; b=ar1AqsCw0GlBKz
	5wLI5RpmudCnd6MmQUX/bbwIY9YK0x6HUbdBHQ5SsLHEbCfwQQhwPC1JIMH4Q/4coYvBgNWhjbfhE
	hc91DpeAuknCNpCZBQaWHbyNWkcHK20VTfFc2Dd+9U0Ic9l/NO/u4iH1gPaCyyeqqUjTtLuNIUv6H
	w0O1+uSzOR+qN4rtYBSLbJGuraUW0pbONrXQPYWuKttEGSl3+S7tf0hfn+978aLOKxbymZtQOLZJv
	cQg1AKC2KtrHZmFqoqilIjBNQOqVPSYGYf7ZjFJ/k+p+pJf5f7DIrruIsJGaLSVhUV62uyiqg/sul
	cdPJyS1GbpBBBpbBHdrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otmhe-004bok-Co; Sat, 12 Nov 2022 09:21:30 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otmg9-004avq-8o; Sat, 12 Nov 2022 09:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=public-files.de;
	s=s31663417; t=1668244776;
	bh=EFTc8ml71NiOoLpZSlq4kV4Xj+5F58wBe2nrIlhU4fI=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=De+CrI5IIhcUXColhO2SmCcmii26Fg0zH8EiLNGUbGftZ69q10+mMR39Gaoh3t8Xg
	 wxIS2o5OKu7Hh0km9wn0IUE+jBKtKXMbAY/rERzeVvyLNcdbAVnulTwu3dK8g0Qhwr
	 2j7sxh2r395RyEgWuMMdDDlhjDtxN8rx4v2Bhn9GQLd7AODyHJJlHFZP0cQPWaPFYV
	 sFKSnlAP0z0dOLMeU388c6nk3sfFcS3X5K4yU4uNMwcn6Gh8eDQ4D2eKIjtAJ4Skon
	 ijLb4jnypAdEhMzpcAx7J/tNyUAwJf/o6yzC/6PYO8jV+pUFLOCIMVsCzhm5aSl830
	 Apo0n8XkkFk1g==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from frank-G5 ([157.180.227.41]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N95e9-1p56it12Sl-0167zl; Sat, 12
 Nov 2022 10:19:36 +0100
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Bo Jiao <Bo.Jiao@mediatek.com>,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: [PATCH v4 10/11] arm64: dts: mt7986: add Bananapi R3
Date: Sat, 12 Nov 2022 10:19:22 +0100
Message-Id: <20221112091923.9562-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LgtwvKEza8FNmdvecOoHBliR6zsleX9iGhwVrvbOphmwtCeOWYl
 8eZ/W215V8oxdewoRmv8jJldXI7DS7ue/Xba471hy9/9acpldwGEJTQXEe1UTE6bEIxj5RU
 4aJUcrsWUkrJMpfbuJEmZLRZU9VKRXxqSOCQ33KYsG0Ycm+AxaYsGJ2xovhBG8/H71oBzcm
 Ot1jW0ZfeoGAEM/twPp+w==
UI-OutboundReport: notjunk:1;M01:P0:ihB9D0fK4z8=;wnMhT+5RjgsfVGLc+aU7XNCVmlz
 NE1sRnlLupR2BUWZVNY0PCckus5cA00Fj4495vNeFGy6Tj+2MDN90w+wpXQ4oT0GoqJh8tQHZ
 1UwIld36HsudPpvw7igJyysuiHbWqWtCuMCN3+8FrC8TvK2DuZ2ex3LOyvyVeIP/Po9eOUaLD
 9YKw3MLOiXd250RbWAUXPU4oGe+miI7dlmUbsG43oqNotZB3wX99ST22I4gzZotus87kqzLCi
 j1IRBWvfXLjpfr/SpciGWolm1blGChyDw+4xhNUzWWztFM9eUOVZGGFdKVs8UYEa9P+KR517a
 gjMZffT/ShtcxamE39MMeSSn84hWxdN5Uj8P9QJHab+hsMkO6CvIEeQGoOH+ZutsIJtRscAis
 RjOJCKzTSNkjO1/y7z1Q99LVVtNq1CH0WRecjK4iSRFFWgc3lOt1tZF34xo/qnky8wCpWI3kB
 wyxCsbSDLlBW15hf8GWg5ICgDVgGhKnaNFES3WGnURBYYwLWjhDgVIAQHM38UtAp4RrpRNEWE
 IcyCygfjps02QzOsUmoOu2FG+p+PUeDRZFVpBishFGOyE01bsqbcb92lounCHtbm/lZ3DFrjf
 q92LWWd6Z4pnE6hlNwkDchAU2Qy6S3K0I3wtsvNvNiUJfq6at8tccWCRuO3XG9DV3ysNZdEiZ
 rRQYN0dFwEWesOyPLtvtRxgh/vQV39aob++1NqtPCyZ9KXxgJgKIHY3IxWyp3Sg1+4kQpys0/
 0GQ0aFwXz6H/EWIKDQPQLPg7wRLmE78K8ya/gMK8gt/SohUEYpyuLv7KoT9EfHGGqyilc+7Df
 dQfn1rpChk1ylOeltnYyxx3/nJKKJZY+wRASGKfkcNSZhS9xbmaXlfjZOCuFza2igCh/n7f6l
 33H2g9Y0QSG7nf1tDX5HDwhqn3S83JtaL6ijYPDuQ61kX+3fMZvrJdAL+e5/zEHI6LAKpaG1y
 KRlODhMOilINVnNwK718ImkfDFU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_011957_759046_5B9E2C37 
X-CRM114-Status: GOOD (  17.55  )
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

Add support for Bananapi R3 SBC.

- SD/eMMC support (switching first 4 bits of data-bus with sw6/D)
- all rj45 ports and both SFP working (eth1/lan4)
- all USB-Ports + SIM-Slot tested
- i2c and all uarts tested
- wifi tested (with eeprom calibration data)

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
SPI-NAND/NOR switched (CS by sw5/C) not yet included
  this is done with DT-Overlays in my tree, don't know how to do it
  in upstream the right way...added dts files for dtbo and added them
  with dtbo extension to Makefile works.

changes:
v4:
- add PCIe nodes
- fix sfp-properties of sfp-1 (need to be plural)
  thx to Denis Odintsov for this

v3:
- rename factory-key to reset-key
- add dcin regulator and add it as input for 3v3 (with renaming)
- remove memory-node
- dropped wifi eeprom (calibration) data
- move mmc0 pinctrl to common dtsi and drop sdcard comment
- change mmc pull-up/down to have generic bias-pull*

v2:
- remove pcie to be added later (discussion about clocks)
- some fixes based on suggestions on ML
  - add key suffix like it's done in mt7622-bpi-r64 devicetree
  - add dash in sfp node names
  - use reg as unit for switch-node
  - drop "-3-4" suffix from i2c-pins node name
  - fix order in Makefile
---
 arch/arm64/boot/dts/mediatek/Makefile         |   2 +
 .../mediatek/mt7986a-bananapi-bpi-r3-emmc.dts |  31 ++
 .../mediatek/mt7986a-bananapi-bpi-r3-sd.dts   |  25 +
 .../dts/mediatek/mt7986a-bananapi-bpi-r3.dtsi | 458 ++++++++++++++++++
 4 files changed, 516 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 0ec90cb3ef28..e8902f2cc58f 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -7,6 +7,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt6797-x20-dev.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-rfb1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7622-bananapi-bpi-r64.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-emmc.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-bananapi-bpi-r3-sd.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986a-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt7986b-rfb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8167-pumpkin.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dts
new file mode 100644
index 000000000000..a0ca35b5977e
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2021 MediaTek Inc.
+ * Author: Sam.Shih <sam.shih@mediatek.com>
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+
+#include "mt7986a-bananapi-bpi-r3.dtsi"
+
+/ {
+	model = "Bananapi BPI-R3 (emmc)";
+};
+
+&mmc0 {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	hs400-ds-delay = <0x14014>;
+	vmmc-supply = <&reg_3p3v>;
+	vqmmc-supply = <&reg_1p8v>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	status = "okay";
+};
+
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dts
new file mode 100644
index 000000000000..06e4691cb815
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-sd.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2021 MediaTek Inc.
+ * Author: Sam.Shih <sam.shih@mediatek.com>
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/gpio/gpio.h>
+
+#include "mt7986a-bananapi-bpi-r3.dtsi"
+
+/ {
+	model = "Bananapi BPI-R3 (sdmmc)";
+};
+
+&mmc0 {
+	bus-width = <4>;
+	max-frequency = <52000000>;
+	cap-sd-highspeed;
+	vmmc-supply = <&reg_3p3v>;
+	vqmmc-supply = <&reg_1p8v>;
+	status = "okay";
+};
+
diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtsi
new file mode 100644
index 000000000000..def16e36f1e6
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtsi
@@ -0,0 +1,458 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2021 MediaTek Inc.
+ * Authors: Sam.Shih <sam.shih@mediatek.com>
+ *          Frank Wunderlich <frank-w@public-files.de>
+ *          Daniel Golle <daniel@makrotopia.org>
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/mt65xx.h>
+
+#include "mt7986a.dtsi"
+
+/ {
+	model = "Bananapi BPI-R3";
+	compatible = "bananapi,bpi-r3", "mediatek,mt7986a";
+
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	dcin: regulator-12vd {
+		compatible = "regulator-fixed";
+		regulator-name = "12vd";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		reset-key {
+			label = "reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&pio 9 GPIO_ACTIVE_LOW>;
+		};
+
+		wps-key {
+			label = "wps";
+			linux,code = <KEY_WPS_BUTTON>;
+			gpios = <&pio 10 GPIO_ACTIVE_LOW>;
+		};
+	};
+
+	/* i2c of the left SFP cage (wan) */
+	i2c_sfp1: i2c-gpio-0 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&pio 16 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&pio 17 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+
+	/* i2c of the right SFP cage (lan) */
+	i2c_sfp2: i2c-gpio-1 {
+		compatible = "i2c-gpio";
+		sda-gpios = <&pio 18 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		scl-gpios = <&pio 19 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+		i2c-gpio,delay-us = <2>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		green_led: led-0 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_POWER;
+			gpios = <&pio 69 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		blue_led: led-1 {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&pio 86 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+
+	reg_1p8v: regulator-1p8v {
+		compatible = "regulator-fixed";
+		regulator-name = "1.8vd";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&dcin>;
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "3.3vd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&dcin>;
+	};
+
+	reg_5v: regulator-5v {
+		compatible = "regulator-fixed";
+		regulator-name  = "fixed-5p1";
+		regulator-min-microvolt = <5100000>;
+		regulator-max-microvolt = <5100000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&dcin>;
+	};
+
+	/* left SFP cage (wan) */
+	sfp1: sfp-1 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp1>;
+		los-gpios = <&pio 46 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&pio 49 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&pio 20 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&pio 7 GPIO_ACTIVE_HIGH>;
+	};
+
+	/* right SFP cage (lan) */
+	sfp2: sfp-2 {
+		compatible = "sff,sfp";
+		i2c-bus = <&i2c_sfp2>;
+		los-gpios = <&pio 31 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&pio 47 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&pio 15 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&pio 48 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&crypto {
+	status = "okay";
+};
+
+&eth {
+	status = "okay";
+
+	gmac0: mac@0 {
+		compatible = "mediatek,eth-mac";
+		reg = <0>;
+		phy-mode = "2500base-x";
+
+		fixed-link {
+			speed = <2500>;
+			full-duplex;
+			pause;
+		};
+	};
+
+	gmac1: mac@1 {
+		compatible = "mediatek,eth-mac";
+		reg = <1>;
+		phy-mode = "2500base-x";
+		sfp = <&sfp1>;
+		managed = "in-band-status";
+	};
+
+	mdio: mdio-bus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+	};
+};
+
+&mdio {
+	switch: switch@31 {
+		compatible = "mediatek,mt7531";
+		reg = <31>;
+		reset-gpios = <&pio 5 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&mmc0 {
+	pinctrl-names = "default", "state_uhs";
+	pinctrl-0 = <&mmc0_pins_default>;
+	pinctrl-1 = <&mmc0_pins_uhs>;
+};
+
+&i2c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c_pins>;
+	status = "okay";
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_pins>;
+	status = "okay";
+};
+
+&pcie_phy {
+	status = "okay";
+};
+
+&pio {
+	i2c_pins: i2c-pins {
+		mux {
+			function = "i2c";
+			groups = "i2c";
+		};
+	};
+
+	mmc0_pins_default: mmc0-pins {
+		mux {
+			function = "emmc";
+			groups = "emmc_51";
+		};
+		conf-cmd-dat {
+			pins = "EMMC_DATA_0", "EMMC_DATA_1", "EMMC_DATA_2",
+			       "EMMC_DATA_3", "EMMC_DATA_4", "EMMC_DATA_5",
+			       "EMMC_DATA_6", "EMMC_DATA_7", "EMMC_CMD";
+			input-enable;
+			drive-strength = <4>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>; /* pull-up 10K */
+		};
+		conf-clk {
+			pins = "EMMC_CK";
+			drive-strength = <6>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>; /* pull-down 50K */
+		};
+		conf-ds {
+			pins = "EMMC_DSL";
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>; /* pull-down 50K */
+		};
+		conf-rst {
+			pins = "EMMC_RSTB";
+			drive-strength = <4>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>; /* pull-up 10K */
+		};
+	};
+
+	mmc0_pins_uhs: mmc0-uhs-pins {
+		mux {
+			function = "emmc";
+			groups = "emmc_51";
+		};
+		conf-cmd-dat {
+			pins = "EMMC_DATA_0", "EMMC_DATA_1", "EMMC_DATA_2",
+			       "EMMC_DATA_3", "EMMC_DATA_4", "EMMC_DATA_5",
+			       "EMMC_DATA_6", "EMMC_DATA_7", "EMMC_CMD";
+			input-enable;
+			drive-strength = <4>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>; /* pull-up 10K */
+		};
+		conf-clk {
+			pins = "EMMC_CK";
+			drive-strength = <6>;
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>; /* pull-down 50K */
+		};
+		conf-ds {
+			pins = "EMMC_DSL";
+			bias-pull-down = <MTK_PUPD_SET_R1R0_10>; /* pull-down 50K */
+		};
+		conf-rst {
+			pins = "EMMC_RSTB";
+			drive-strength = <4>;
+			bias-pull-up = <MTK_PUPD_SET_R1R0_01>; /* pull-up 10K */
+		};
+	};
+
+	pcie_pins: pcie-pins {
+		mux {
+			function = "pcie";
+			groups = "pcie_clk", "pcie_pereset";
+		};
+	};
+
+	spi_flash_pins: spi-flash-pins {
+		mux {
+			function = "spi";
+			groups = "spi0", "spi0_wp_hold";
+		};
+	};
+
+	spic_pins: spic-pins {
+		mux {
+			function = "spi";
+			groups = "spi1_0";
+		};
+	};
+
+	uart1_pins: uart1-pins {
+		mux {
+			function = "uart";
+			groups = "uart1_rx_tx";
+		};
+	};
+
+	uart2_pins: uart2-pins {
+		mux {
+			function = "uart";
+			groups = "uart2_0_rx_tx";
+		};
+	};
+
+	wf_2g_5g_pins: wf-2g-5g-pins {
+		mux {
+			function = "wifi";
+			groups = "wf_2g", "wf_5g";
+		};
+		conf {
+			pins = "WF0_HB1", "WF0_HB2", "WF0_HB3", "WF0_HB4",
+			       "WF0_HB0", "WF0_HB0_B", "WF0_HB5", "WF0_HB6",
+			       "WF0_HB7", "WF0_HB8", "WF0_HB9", "WF0_HB10",
+			       "WF0_TOP_CLK", "WF0_TOP_DATA", "WF1_HB1",
+			       "WF1_HB2", "WF1_HB3", "WF1_HB4", "WF1_HB0",
+			       "WF1_HB5", "WF1_HB6", "WF1_HB7", "WF1_HB8",
+			       "WF1_TOP_CLK", "WF1_TOP_DATA";
+			drive-strength = <4>;
+		};
+	};
+
+	wf_dbdc_pins: wf-dbdc-pins {
+		mux {
+			function = "wifi";
+			groups = "wf_dbdc";
+		};
+		conf {
+			pins = "WF0_HB1", "WF0_HB2", "WF0_HB3", "WF0_HB4",
+			       "WF0_HB0", "WF0_HB0_B", "WF0_HB5", "WF0_HB6",
+			       "WF0_HB7", "WF0_HB8", "WF0_HB9", "WF0_HB10",
+			       "WF0_TOP_CLK", "WF0_TOP_DATA", "WF1_HB1",
+			       "WF1_HB2", "WF1_HB3", "WF1_HB4", "WF1_HB0",
+			       "WF1_HB5", "WF1_HB6", "WF1_HB7", "WF1_HB8",
+			       "WF1_TOP_CLK", "WF1_TOP_DATA";
+			drive-strength = <4>;
+		};
+	};
+
+	wf_led_pins: wf-led-pins {
+		mux {
+			function = "led";
+			groups = "wifi_led";
+		};
+	};
+};
+
+&spi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi_flash_pins>;
+	cs-gpios = <0>, <0>;
+	status = "okay";
+};
+
+&spi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spic_pins>;
+	cs-gpios = <0>, <0>;
+	status = "okay";
+};
+
+&ssusb {
+	vusb33-supply = <&reg_3p3v>;
+	vbus-supply = <&reg_5v>;
+	status = "okay";
+};
+
+&switch {
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			label = "wan";
+		};
+
+		port@1 {
+			reg = <1>;
+			label = "lan0";
+		};
+
+		port@2 {
+			reg = <2>;
+			label = "lan1";
+		};
+
+		port@3 {
+			reg = <3>;
+			label = "lan2";
+		};
+
+		port@4 {
+			reg = <4>;
+			label = "lan3";
+		};
+
+		port5: port@5 {
+			reg = <5>;
+			label = "lan4";
+			phy-mode = "2500base-x";
+			sfp = <&sfp2>;
+			managed = "in-band-status";
+		};
+
+		port@6 {
+			reg = <6>;
+			label = "cpu";
+			ethernet = <&gmac0>;
+			phy-mode = "2500base-x";
+
+			fixed-link {
+				speed = <2500>;
+				full-duplex;
+				pause;
+			};
+		};
+	};
+};
+
+&trng {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2_pins>;
+	status = "okay";
+};
+
+&usb_phy {
+	status = "okay";
+};
+
+&watchdog {
+	status = "okay";
+};
+
+&wifi {
+	status = "okay";
+	pinctrl-names = "default", "dbdc";
+	pinctrl-0 = <&wf_2g_5g_pins>, <&wf_led_pins>;
+	pinctrl-1 = <&wf_dbdc_pins>, <&wf_led_pins>;
+};
+
--
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
