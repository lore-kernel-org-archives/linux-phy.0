Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69400C55175
	for <linux-phy@archiver.kernel.org>; Sat,  1 Aug 2026 14:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emUg2DCOfxrT15qkBzVVbjJEZE4jS6MBQndjX/En8Pg=; b=RH0/igvWoJ2eZp
	r4/254BLQHuq6/juwlNck7CTUpxKO8I37teSyykESCn69GpMuOcJ8LKOax/tKDnCkYVSco/pinQiW
	TB9u0zubg8om+9EfgB/mCwwIxjpPbJExFDCuKxNKUgmfvK+DPH0QZNLnmssrONYoNGAV8Nzim8kxk
	U4o35Z9lk6SfbjuqCTKLn4CcAhn3mkM2tpni+7GWm8tqHdnm+HDKKIQNJXL1QbMvRUPZyuopTVe1M
	N8UA/nFq3qFC8Idd/3S1NPswiqVVVJ1IK94dn0Ft58QYWJ4lPRuyRBP6qsuUlbe2FTmtVwf4DpSPL
	wRA/QftBjjAAlCi8feQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAdO-0000000EjAq-0HT7;
	Sat, 01 Aug 2026 14:24:18 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAdK-0000000Ej3s-2Gox
	for linux-phy@lists.infradead.org;
	Sat, 01 Aug 2026 14:24:16 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2ceb5a39c48so6118535ad.1
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 07:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594253; x=1786199053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=90YVBhfMIaP8zND+DZv16Kjus0az0KSmnbZxqz5Zjos=;
        b=a5deTUSca6k+POILaFZqjFY29qD1M6GvqAn2lMypAoZkLRYLbggHItXkizoxv3lHgs
         jTexPM3D4Yt80sutRHS0YSWf3medldT7+VhQNH7XCCou2i7agOAxYNuVuL1byBY9nLx3
         s3IeMNS7RpKu6uULv69/m16HEtS/0TEZCckfR8xuhxg/2x0FB0lAWSE1cOba6t2VLa2X
         xu6gpqEClxFINZVDIJTmpM/CmNaMJD1qhdKv/Veh2aMsTSkU5sk1yUx5txJ/NwJRH67n
         1gnTDYjuCyuQYRTXElNE+Rbae63ChleYUmPbQPIRTXYlFcJxKhp8Nr2Vt6uKFt9DzwhV
         U2Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594253; x=1786199053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=90YVBhfMIaP8zND+DZv16Kjus0az0KSmnbZxqz5Zjos=;
        b=GBBkCIyXHHC2ZfgaXnurz9TSpXdI2iK2kGXZu5o+mBHQQ6k53Iv0CGot0BVu0nhFOj
         pmXzEMeJdgH0+PtnVNxmmNJi/Yq3qVVDzJ3sGrD8uhOIQRPI6ZJw45Wa38Zrp26GJnhG
         nSzDaFr7ndFHEyX0cGwtxI9OUM8SW5xwq2TWMofN1FfGXleWF9a4ZJM6fjeNGmWTj0Yh
         jOPls1ANGIdcwu5jqpj3PO4LwRbEpDzSi7e+I3P0b2plSPd2lrTUN+pRVqn5TWigzE0+
         cSYp42UbcbWm8zGd4WWWRrRg4AdXYYRTaF5xskS2+4bXqnQHSEp/4jwPtUw9iu2sb2Eu
         XdGQ==
X-Forwarded-Encrypted: i=1; AHgh+RpcIzGR3sa+9dirGK+UbYG2IiCqILEjT8+I/nKEbgQ7Ji6XpBPKpPmeiXJyeYk1lCZ7k6TAwHNagfw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxEYjKkeeUXyRKSRLF9X3smnLilJg9wox85VwKGQCUXLbo+3Z/1
	BRwt7ih4F0I/bUq8JBG7pZ2si4UbQIh0xS7adqap2xDCJ1unVZnCUofk
X-Gm-Gg: AR+sD10S7FaG7VqFeDz+DmVYOAdHpovyo+VMGwfQk87VDHAfz8cpG1Hdc9657RbhWaf
	+4j5pt8DoKFcO6AfPOXUs9WedKMaud6eXB8WtVFq1KZqzm/UfS3PF/APOFykuCaPuqpabfqy+Xj
	fKiZGb+z9lk9V6spFHjDqIM4J+EO8+NAtZ2plRhDXrTCIKiC7eHHu8fzAOoJL71Rk8Sy738bPPo
	ubzK4TLj98Ppe/FsyLZ4O34JmNanGWbjZXlbPSnta5FJ1lZ3YJH9HuNOd186vI0cVLYZ1SHWzp6
	GXiRUxtA6I+0AMDvMXvFpumAmhQSaL/ihcChOTxY6L6eIkYAWPnRLUTk0KKLNucFl0lOc5J+NJk
	Viq/B7i4WNbYG3LW4OWorzvCpUTaqjmtk13nCespLKcb1J1pUogdZJgqB+2DaKmvax45h9GOLIY
	eV1r/XMwakkK4Ph2auBltf6bQe5hwwaURWizT/72UkGW1bava4HF4XICo=
X-Received: by 2002:a17:902:da89:b0:2cf:4505:6bcf with SMTP id d9443c01a7336-2d052297a46mr38452135ad.29.1785594253494;
        Sat, 01 Aug 2026 07:24:13 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:24:13 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 09/10] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Sat,  1 Aug 2026 22:22:33 +0800
Message-ID: <20260801142244.679437-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072414_625668_024A2687 
X-CRM114-Status: GOOD (  12.88  )
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

The Ariaboard Photonicat has a Motorcomm YT8521SC Gigabit Ethernet PHY
connected to GMAC0 via XPCS SGMII.  Enable the necessary nodes to make
this port functional.

Enable combphy2 with rockchip,sgmii-mac-sel = <0> to route the SGMII
interface to GMAC0.  Enable the xpcs node and its port 0 sub-node,
referencing combphy2 as the SerDes PHY.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.  Also add LED configuration for the
existing RGMII PHY on mdio1 for consistency.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 77 ++++++++++++++++++-
 1 file changed, 75 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..91c17b624fd17 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -242,6 +243,7 @@ &combphy1 {
 
 &combphy2 {
 	status = "okay";
+	rockchip,sgmii-mac-sel = <0>;
 };
 
 &cpu0 {
@@ -260,9 +262,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&xpcs_gmac0_clk>;
+	pcs-handle = <&xpcs_mii0>;
+	managed = "in-band-status";
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -341,6 +352,39 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-id0000.011a";
+		reg = <0x3>;
+		max-speed = <1000>;
+		eee-broken-10gt;
+		eee-broken-10gkx4;
+		eee-broken-10gkr;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PC6 GPIO_ACTIVE_LOW>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_LAN;
+				default-state = "keep";
+			};
+		};
+	};
+};
+
 &mdio1 {
 	rgmii_phy: ethernet-phy@3 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -350,6 +394,25 @@ rgmii_phy: ethernet-phy@3 {
 		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
 		rx-internal-delay-ps = <1500>;
 		tx-internal-delay-ps = <1500>;
+
+		leds {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			led@1 {
+				reg = <1>;
+				color = <LED_COLOR_ID_AMBER>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+
+			led@2 {
+				reg = <2>;
+				color = <LED_COLOR_ID_GREEN>;
+				function = LED_FUNCTION_WAN;
+				default-state = "keep";
+			};
+		};
 	};
 };
 
@@ -586,3 +649,13 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	status = "okay";
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	phy-names = "serdes";
+};
+
+&xpcs_mii0 {
+	status = "okay";
+};
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
