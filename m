Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7FF7C88E65
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 19:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IPqAObRJpGITZDZ4KLghDqViEFHtohkWGjotJILBJ8=; b=Nwo0OodOShcDyK
	g/Vbq1IJ3cCQ8ARFh04UphiGBvyOA02kmizBbVFmmdxcvmbS4snakm5Xz/nuERH5YEAUTTLHQCpCS
	z16pPHHgMM9lzU6Xo+Zc/83rvILUyQULj5QTHWstXEP6hRoj/6jh5B19mUFVGNGRHiaE58DWs5xfX
	Icgy/CKBthwlr3vRhBEfPfyPzgWpuUMMB2c4UhqIeAbppvK3ymoJM0E1e1a2YKevUSksQmC2TqGtl
	60it0z8YOwTR8XhlnI+eYI3mYQSf+RN/kUbWzzCnEpNyax+VZ2z6mvgQckt8k9EO9kQqVo97GdvGD
	g+MwEXoF0RrqypWys9YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pS0-00000001y2u-23EY;
	Sun, 13 Sep 2026 19:01:16 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRw-00000001xzB-2z6a
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 19:01:15 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d942de6574so15901805ad.0
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 12:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326072; x=1789930872; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IUBpSQaA91JU4u4hSD0CHnRFwoDOkNzew04B1AEq+dc=;
        b=O37c14BBitRmcVnUmaQC3GQe88X1lxfODOTUcl8Mwr50yRHp+NsurkpZTXxiE4T0H9
         y6I0blY6gzTP8+dWv4tZtqfxm8DocgqiPHwpuxRGRYvUhMf3Fpl5DukHETkuJz+wOy3I
         TYiDZSye8B9vGtICe6ST+kHc1tOkZLwmmMe2WIyUjxVkTiqTAbe3rkBtpXFZ5KmI+WIG
         KYTmw5hdW/p8FVm/1e4SA7i6sdJDcldnQLGGkApe3Fnx62BcsvAEWOOyrpvTTbxOgTXz
         +rrWLe/YA2X2lkYQDE/BnJr4NBmJ69Af28NVhpUiIpr6A2N0rvddgPZJxzp8xRlPPD90
         POIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326072; x=1789930872;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IUBpSQaA91JU4u4hSD0CHnRFwoDOkNzew04B1AEq+dc=;
        b=CdWOL95tKLqnlYKdLFpC+nqNHvtEx0CJ090HE3I9xxquzxbG/TvBt9hmQbHenc0kFX
         fBxgkwxh1x9Mitv8CCKFXtu+dSjSdbWu2+JftNQLPL53qYWfitvYbM/6n3FxOThU21vH
         CHzUn5SobzOSKh5Ab9uekvFRDLa5B5onyuBhF2GzoObkb3/phPSLIlULmoeiGAsj5oS7
         3urBl6NKR1AFv1IQZKEYb7EZ5eIKfM7KC4XYTvUkh5BYRV1cwRFrqKbn6mezWr5uaIAV
         MkOkbvgnrBrjDgnHZrjrE4w6npAvwTc4mOr7Mlnn5cXwAwh1eVz/uwuryEA1ijUcfdMj
         JWxA==
X-Forwarded-Encrypted: i=1; AKwUvBxWNsOHyUW/Qqfyg0t4MEteie2weXx+xb2jeWmgxbi0EDFUMfpZvaFZ6tC94/bAYcbfZKrQV81y6xw=@lists.infradead.org
X-Gm-Message-State: AFuF++n6vBSfMRujeDPAYwu0p7VTxOV0cTBsc+5cJ9Um6b8VhjPMEZxe
	XCcgs1JfaG9nt6eJ0ufOEUIxVDJU1eqR4CNAoKLMKG+S2Bbfx84dBA3R
X-Gm-Gg: AYBFou3G++yCU8DywIr4jfOX9qgn8kgFOlrL4WaJhWJOeSZR1xPZEfCES4Lwz9jNZyw
	YFhWd/2P8axg3Mc8mhUFbqb0hbDV0bF4wkqVLX8o+m/60zj3OB0zlY4Pw4J9GYyT430/tfc5awH
	JQXZcNvl5BKKOqQKSjeFD0podwg3VnUuBWbjYXiZjhCPoNxNpgxDEATIVsM1n5tpO4lSgYiopfs
	fbN/ts1xpY/WDf0sdRWxBcKR1IEGPBKVySpdvz/Mr5Z818Lev9sB7cStwUa5+a64PmbLlRqpqC9
	BbK8qKOteIkOwD1/gRMvhIbkkJgbzIfUGpbw9zQL8Jd8QoWni86LKD45hMLUNMqCMOppjdbL9VT
	0SpEOrctmz8yvJBysHXgKqIMBcsUZEKzISymMwmC3JOXXaNM9/ltxfZwrGJ8PQwVhL0NosCayd9
	RoEGA4DTCVyHf9c5HULeg4WQyNpRY7WcxJ3aYP7eyr9I+unw6DR70wuKdl6Y3F3A7qBWnogQ==
X-Received: by 2002:a17:903:298f:b0:2d9:43f5:b462 with SMTP id d9443c01a7336-2dd2a1ce8d4mr275603645ad.5.1789326072035;
        Sun, 13 Sep 2026 12:01:12 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:01:11 -0700 (PDT)
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
Subject: [PATCH net-next v5 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Mon, 14 Sep 2026 02:58:45 +0800
Message-ID: <20260913185849.907479-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120113_062267_18360A68 
X-CRM114-Status: GOOD (  12.31  )
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
to route the SGMII interface to GMAC0.

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
