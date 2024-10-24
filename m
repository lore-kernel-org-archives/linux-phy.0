Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F9F6CE8E99
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 17:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FueUyktyGffcEc3wu909p6v5XAq4UQSghMn0rz26X8=; b=UGyIWhWmIoXvG8
	SwSdAl3UDtvlhhMIwReyJ1VDvfTsYcdl6/Bl++VpuOKKdjvIxK9CGcQpkjbZfdyg79nCPFrRr3e3w
	F2aHwF/ifvYyXMwltVyVVfBK4BjQbLxl4B5FL34Do1CwZqZKyNLPqPCT62ZTeqO62IPSqylB1i8Dx
	Xf00inpGXQN9QArYBU5YHkaiVYKh2RH4mtA6qs7Wzw7+HOkvk2MS3lDXdgVMh+NvOF8xLyhDj0LzG
	PUT7GpmvohnXpeycNaOn97yn+itbIj7IBSNQBBqzUZPCFwwIMKKLrdlA6hAyurn9K5womB44jWLKa
	gjrvu0CoDKocsij8ysKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t41Wa-00000001G3G-3jS3;
	Thu, 24 Oct 2024 17:21:28 +0000
Received: from thales.epochal.quest ([51.222.15.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t41LI-00000001DnQ-1RWY;
	Thu, 24 Oct 2024 17:09:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1729789786;
	bh=uyVlu0mrU5giK8mByMabW5323mqDUvUUrK92udeSLP4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TYpnzYM6Nsgb3H2I2pZjXhQGGCagJ5EygyfXnDxW07DZFpZ5LGeG1SnU5zczXZKYJ
	 cWcf6Y/gbU/AIxClBs3VbAgTFlSU4A1kgGqs5u+TYM6wys37/6jqlM3BN6J15h9And
	 gd4smAwOhFF/WOoRlE55n2N5+1ZxPdsT8aubCNWSCVhQVQ01Uc1L+PfJJKPNS33FYt
	 tUehpu6PhxJn+IvwNQ8lnJBxFPPmJ4VWQAQ4eepcX0InkXjQ/pjRttcHEoWVr5zrzQ
	 XjwalF8LXBeF9DFbVl2bX6hlItiZXqLGcN5rKYQIx8u1NNtcqaw/csNHplRheiBlpO
	 vtWpx5PYQmlSw==
X-Virus-Scanned: by epochal.quest
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Andre Przywara <andre.przywara@arm.com>,
	Parthiban <parthiban@linumiz.com>,
	Yangtao Li <frank@allwinnertech.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <treding@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Maxime Ripard <mripard@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>
Subject: [PATCH 08/13] arm64: allwinner: A100: enable EHCI, OHCI and USB PHY nodes in Perf1
Date: Thu, 24 Oct 2024 14:05:26 -0300
Message-ID: <20241024170540.2721307-9-masterr3c0rd@epochal.quest>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_100948_633641_84F42525 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
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

From: Yangtao Li <frank@allwinnertech.com>

Add USB support on A100 perf1 board, which include two USB2.0 port.

Signed-off-by: Yangtao Li <frank@allwinnertech.com>
Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
---
 .../allwinner/sun50i-a100-allwinner-perf1.dts | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts b/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts
index f5c5c1464482..c6d8264b91b7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100-allwinner-perf1.dts
@@ -7,6 +7,8 @@
 
 #include "sun50i-a100.dtsi"
 
+#include <dt-bindings/gpio/gpio.h>
+
 /{
 	model = "Allwinner A100 Perf1";
 	compatible = "allwinner,a100-perf1", "allwinner,sun50i-a100";
@@ -18,6 +20,35 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	reg_usb1_vbus: usb1-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1-vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&pio 7 10 GPIO_ACTIVE_HIGH>; /* PH10 */
+		enable-active-high;
+	};
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
+&usb_otg {
+	status = "okay";
 };
 
 &pio {
@@ -178,3 +209,10 @@ &uart0 {
 	pinctrl-0 = <&uart0_pb_pins>;
 	status = "okay";
 };
+
+&usbphy {
+	usb0_id_det-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>; /* PH8 */
+	usb0_vbus-supply = <&reg_drivevbus>;
+	usb1_vbus-supply = <&reg_usb1_vbus>;
+	status = "okay";
+};
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
