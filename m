Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2DA6C98302
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 20:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crDZPtOjG5RQokcVkAqQ+QtmLBHParowOXEJ3xYYPsw=; b=4EACFAPfgaii0p
	OEi9Gg5+pqva+CupcxjbAijZo+9DeFoV+2YfPdFrxmtixZvCBWko1SdH42EiDOyTRmAlNmZgcXqEM
	UVUiLJpmVR7ABZwI6JjeWOn6aS0ysISXQ2ur6OSDFdCbY0Y8ZCl2BXZ1yHKoUGH9mN8syZ6Fg96Gj
	BrqHAchYE1MeW1xdlIeF1+Mncww094FW/3D4XRANf/kf+m3YAeZVcs+NzlHojn83cmJGcpkRSYxmI
	7I/DGBhcOL3GgGmT4JW5vSiiOx9svr8URK695gSUdBltblK5oqhELgDA1x5Jmf+c0P2yOjbdgBRBq
	Hry8OoH8qA9vs4Jo9LtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jp-00000006UtZ-1gUm;
	Tue, 22 Sep 2026 20:05:13 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jg-00000006Ujm-3fFM
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 20:05:07 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d6f9dddd99so963205ad.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 13:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107504; x=1790712304; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=gDWGiHLYAQV377K4yhXUvyA5R8oKvVk00TTtAXz3I102GXPEL5mQ+j3PoF81G5F+zM
         ciYuQV7wgCN8M/ybO4gP6mGhQKLtE8sb03BNutuTxLzDYjZ89IYjm17t5D5S0rfd5Msl
         tO3D6g/9OJIYjwAJZoyAq4Vd341fPGwqEklVOQRhFKwYJq38fBpKEBcwBNTuG/dQmCD7
         8UFWa3qIZZF646qQ6/zOVCZrPAEqg+9ALlXX60+NFrc5YGdr/d1p//0HJgPTpVup71gV
         lMpZ8NcL2eSu+tgTIo4aJX2fMd3ryI/pjfniZWRVHkEIFLLiAksktCmLWr0c5pZ2KHoB
         TlxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107504; x=1790712304;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=GI8Sx8Jvz/dzOrna5Ixz9BbFhtTrR2tXq8BJpnwEfgJT5qWNTkOfjPmeUjxfoc/DPs
         5LTRn1io6gNLLKFUawVKQFkGIcX6iQMm9OXxD03tSsMSHcFyddcL1asar4Ac97bTldLj
         pvBqWWoV96Aqlzm44YKpmxQMY/klSoMLYZUcptrA80uhC9TPSkAHQ2g/9pgRdUA9Sg+f
         npcP2TrBNQkN4okMflKtp+8dE0oueRzsWJAy5q8U4YL/ihPnQBkHpO3C/yVFNz0ipQFJ
         kdtYTHaTrx1AOmL0e7veUopY6ex53WGoRKsmVBn/MK1EWZMsBQlk1BolSd4bV7PcISOv
         HWoA==
X-Forwarded-Encrypted: i=1; AKwUvBxMmNtT3aLFFODc3n11wPaNrUmr1R5zyoOxX1dJmWdiw2zleWuT/z+zitezggZ9vjjFq7mLKKy7Hk0=@lists.infradead.org
X-Gm-Message-State: AFuF++l9B+UQxR8BNLjj2/HAlf36DmcXizi6ioCfAmDxXtFM6iYDalOO
	xF5XYeVYu/jivnLCKMAMrHqzWKTl7PwcMlKuGVFmB1+U4G/HK+++67B9
X-Gm-Gg: AYBFou0ZacMm1jS1+w0ClxGQhJt6eeGdIFUokr0vRXhnLwGu/ipTIVwXNHRTXJmE4Bk
	/S+K2VQAH7JDXmSjdtm1piY5y7qyU/vr1IqOxwYbYwJVdI9M+Gqp5Kqt1gG3aZOPFcS3R+2KdFQ
	sbVzQNLc+2gY2Xh8W9+B6RCvT0dQVs9kFO3A3+dNIP1xP5tUGig6lqJ/Xsmh1h9pnYB2tTmbbby
	S5Vhfn1Uj5Cg4DOyR0MPw7D8MgtUBNv5P+g8XNsW+RfRWXTd7FB8ucWjNb6zL5gsfI9K14869jy
	Uri9vUdjVdZErkB2HtauFh/GHlQyARPpGI2t/Fx4N2ggmypp/hNtX7xJEbgo8/2cUYYm4BdqvIn
	JhLiWPdQJD15qMi96Egiwj3YfE30Cc5owb7TYdVTxmiCCdbeHg69SmTJlKens4j15KorzsEuQan
	OoMQcC/40XpLSnOLXn6cmsBjKBlNYhxWK35qudLIsa2zwPS15jWlgIpVIpLQ8AqH0FMmuG
X-Received: by 2002:a17:903:228e:b0:2dd:ad73:c984 with SMTP id d9443c01a7336-2df69d5ac91mr4126585ad.28.1790107504081;
        Tue, 22 Sep 2026 13:05:04 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:05:03 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Wed, 23 Sep 2026 04:03:34 +0800
Message-ID: <20260922200336.2201212-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130504_993989_D00E66B8 
X-CRM114-Status: GOOD (  12.69  )
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

Add rockchip,sgmii-mac-sel = <0> to the already enabled combphy2,
to route the SGMII interface to GMAC0.  RK3568 has three Combo PHYs
that can carry SGMII; which one is wired to the XPCS is a board-level
choice, and Photonicat uses combphy2.

Enable the xpcs node and its port 0 sub-node, referencing combphy2
as the SerDes PHY.

Add the mdio0 node with the YT8521SC PHY at address 3, including its
reset GPIO and LED configuration.  Also add LED configuration for the
existing RGMII PHY on mdio1 for consistency.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 74 ++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..fdaa4a2a4328b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3568.dtsi"
@@ -241,6 +242,7 @@ &combphy1 {
 };
 
 &combphy2 {
+	rockchip,sgmii-mac-sel = <0>;
 	status = "okay";
 };
 
@@ -260,9 +262,18 @@ &cpu3 {
 	cpu-supply = <&vdd_cpu>;
 };
 
-/* Motorcomm YT8521SC LAN port (require SGMII) */
+/* Motorcomm YT8521SC LAN port */
 &gmac0 {
-	status = "disabled";
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>;
+	assigned-clock-parents = <&clk_gmac0_xpcs_mii>;
+	managed = "in-band-status";
+	pcs-handle = <&xpcs_mii0>;
+	phy-handle = <&sgmii_phy>;
+	phy-mode = "sgmii";
+	phy-supply = <&vcc_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim>;
+	status = "okay";
 };
 
 /* Motorcomm YT8521SC WAN port */
@@ -341,6 +352,36 @@ &i2s0_8ch {
 	status = "okay";
 };
 
+&mdio0 {
+	sgmii_phy: ethernet-phy@3 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x3>;
+		max-speed = <1000>;
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
@@ -350,6 +391,25 @@ rgmii_phy: ethernet-phy@3 {
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
 
@@ -586,3 +646,13 @@ &xin32k {
 	pinctrl-names = "default";
 	pinctrl-0 = <&clk32k_out1>;
 };
+
+&xpcs {
+	phys = <&combphy2 PHY_TYPE_SGMII>;
+	phy-names = "serdes";
+	status = "okay";
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
