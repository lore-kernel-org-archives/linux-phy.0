Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06D8BC87FCD
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jul 2025 02:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jNDTcIGuhN3euvSzm7aU6cZQB7A+6Jsn2J7/XzvaXkY=; b=NgP65OM/p6tIrW
	dUgyyxHWieKILVNBtQ6VAw8HtLR75ao5BxirMRnjVotGVzZRUSDJ7iQT51FlK/8p2Kxj+R6ln3Ja6
	5UPCcpc0fDaGp5v09csx1Pt5ls86/YMDOEmdJPJIiba0UAf9gu4wOIDCUWf7zG78PSgsVTr2bSS9g
	N89QwoLpFhOC40uLLutW/kF6nRbxghAkDmK0Lv9JDxGpq/ljnazDi4/dVLjzjOXTGhjW7vwWzAn9Z
	SCsnczV+NTeeReaLcgv8z+A5577yBv6Se2Wx5vNlvQTv5UXjFx/s5BRvXSyPI/wo8UsFB8x43l5vg
	0NzC1wZirkCS0OtpcHrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5q-0000000FxW8-3CkU;
	Mon, 21 Jul 2025 02:17:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udg5j-0000000FxLn-00uE
	for linux-phy@lists.infradead.org;
	Mon, 21 Jul 2025 02:17:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A52FE5C571F;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C964C4CEFC;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753064241;
	bh=0Sl9ne1fNA79gjabf0syuWDSWv557+WLdkh+UrDoEwc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=iEBvMVGdnmrpx3Gorr8MU9SBlunmSv+vZj9fsDtcAeC0Bw8XXdxqiWxZi08LSbRGY
	 az9vNgK8NarxoRl4Y3E5RC2OVQLMk+EW+/r6rt0V+THT1g6wBilMDqsW8d4TmDutnN
	 TO93MYMT+HfrgiWF7uRpa63xTFr8tuLi8NMxk83lulxzatf0uDssNsTuCDZ18J+d4G
	 5PX6VEKR3jvkVXYmB5j+7Ur/QjxyQgVxVwEWlC9O3gfSc+ohJDGJEhCoMmKG7S3gjG
	 p16IamcvwtNCoTrauC6wtIDbN0J/2TP5KHwZNZ9ntpeDNQhjL5AMXTYMoaZ1VPKUN8
	 SpafUfr2VGuQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63029C87FC6;
	Mon, 21 Jul 2025 02:17:21 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Sun, 20 Jul 2025 21:15:11 -0500
Subject: [PATCH v2 17/17] arm64: tegra: Add support for NVIDIA Shield TV
 Pro 2019
MIME-Version: 1.0
Message-Id: <20250720-t210b01-v2-17-9cb209f1edfc@gmail.com>
References: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
In-Reply-To: <20250720-t210b01-v2-0-9cb209f1edfc@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, 
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753064238; l=3522;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=lBbPA4YnfIve2RzYnMMZrMuioshaXo0K/YzU1CSGgG0=;
 b=uZ18x9hPOETwB5r3x1VYui41gkdHxgunkMehPDkapwffmjyk9Z9GL845wi0QzejmISzNQ7Qte
 Wh8pVLrwHUIC3gw1diFucLnJPehp2XDs65AuWnzCj/LV+jaGFCmrF1V
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_191723_190190_7B6F2304 
X-CRM114-Status: GOOD (  12.26  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Add initial device-tree support for NVIDIA Shield TV Pro 2019 (a.k.a
MDarcy) based up the Tegra210B01 SoC with 3 GiB of LPDDR4 RAM.

This is very basic, intended for checking initial Tegra210B01 support.
More complete support for the device will be added later.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 arch/arm64/boot/dts/nvidia/Makefile                |  1 +
 .../boot/dts/nvidia/tegra210b01-p2894-0050-a08.dts | 10 ++++
 arch/arm64/boot/dts/nvidia/tegra210b01-p2894.dtsi  | 70 ++++++++++++++++++++++
 3 files changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/Makefile b/arch/arm64/boot/dts/nvidia/Makefile
index 0fbb8a494dba5089d9b7243e766bd6028b7f3744..bc6f3e268020b6fdbc90b2fb2ec1daf30c80af0e 100644
--- a/arch/arm64/boot/dts/nvidia/Makefile
+++ b/arch/arm64/boot/dts/nvidia/Makefile
@@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_TEGRA_210_SOC) += tegra210-p2571.dtb
 dtb-$(CONFIG_ARCH_TEGRA_210_SOC) += tegra210-p3450-0000.dtb
 dtb-$(CONFIG_ARCH_TEGRA_210_SOC) += tegra210-smaug.dtb
 dtb-$(CONFIG_ARCH_TEGRA_210_SOC) += tegra210-p2894-0050-a08.dtb
+dtb-$(CONFIG_ARCH_TEGRA_210_SOC) += tegra210b01-p2894-0050-a08.dtb
 dtb-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186-p2771-0000.dtb
 dtb-$(CONFIG_ARCH_TEGRA_186_SOC) += tegra186-p3509-0000+p3636-0001.dtb
 dtb-$(CONFIG_ARCH_TEGRA_194_SOC) += tegra194-p2972-0000.dtb
diff --git a/arch/arm64/boot/dts/nvidia/tegra210b01-p2894-0050-a08.dts b/arch/arm64/boot/dts/nvidia/tegra210b01-p2894-0050-a08.dts
new file mode 100644
index 0000000000000000000000000000000000000000..f18266b3d8ae341feaef5a1a911752f6a5ce2d0f
--- /dev/null
+++ b/arch/arm64/boot/dts/nvidia/tegra210b01-p2894-0050-a08.dts
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+
+#include "tegra210b01-p2894.dtsi"
+
+/ {
+	model = "NVIDIA Shield TV Pro 2019";
+	compatible = "nvidia,p2894-0050-a08", "nvidia,darcy", "nvidia,tegra210b01",
+		"nvidia,tegra210";
+};
diff --git a/arch/arm64/boot/dts/nvidia/tegra210b01-p2894.dtsi b/arch/arm64/boot/dts/nvidia/tegra210b01-p2894.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..97c9bd8f293539e76d57b6cfee49c60fb482d6ab
--- /dev/null
+++ b/arch/arm64/boot/dts/nvidia/tegra210b01-p2894.dtsi
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0
+#include "tegra210b01.dtsi"
+
+/ {
+	aliases {
+		serial0 = &uarta;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x0 0x80000000 0x0 0xc0000000>;
+	};
+
+	serial@70006000 {
+		/delete-property/ dmas;
+		/delete-property/ dma-names;
+		status = "okay";
+	};
+
+	pmc@7000e400 {
+		nvidia,invert-interrupt;
+		nvidia,suspend-mode = <0>;
+		nvidia,cpu-pwr-good-time = <0>;
+		nvidia,cpu-pwr-off-time = <0>;
+		nvidia,core-pwr-good-time = <4587 3876>;
+		nvidia,core-pwr-off-time = <39065>;
+		nvidia,core-power-req-active-high;
+		nvidia,sys-clock-req-active-high;
+		status = "okay";
+	};
+
+	mmc@700b0600 {
+		bus-width = <8>;
+		non-removable;
+		status = "okay";
+	};
+
+	clk32k_in: clock-32k {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
+	};
+
+	cpus {
+		cpu@0 {
+			enable-method = "psci";
+		};
+
+		cpu@1 {
+			enable-method = "psci";
+		};
+
+		cpu@2 {
+			enable-method = "psci";
+		};
+
+		cpu@3 {
+			enable-method = "psci";
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+};

-- 
2.50.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
