Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE942C88E53
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IPqAObRJpGITZDZ4KLghDqViEFHtohkWGjotJILBJ8=; b=q+xzlRwTq/3hEw
	NLYZS3tsbl8PoNB8kEdMu1hfRsBXpbM4PcASP4o70jjP4ItZuWU7lSPPRQjKVg80y7fJ/7AwfkIu1
	nz/bWlRrijqNNDmqfTaw/RE8KPyXqbhteujKjQ8uiN9VazG2qrHMXThj/A5UcGoAbPL+tg7xXAnIU
	T31JOJfekAVHwxl95lLwPXQjobmqtlkpotHg40r7FDHZ3CD+alqSGYygrnjXVCV23bR2lf1hAmXMc
	GSxAv3ry6cHgvQ1EPBN/SSxfjioylCA1VDP2TnDI1ZCeHPrh2dstQnY03L2vR+2lxpum9pDG3GRau
	LXkshsWEhQEkJ4OMyQBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SS6-00000006YpW-1Ebw;
	Tue, 15 Sep 2026 12:39:58 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SS0-00000006YdC-0UY6
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:55 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-39dba377357so1910360a91.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475991; x=1790080791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IUBpSQaA91JU4u4hSD0CHnRFwoDOkNzew04B1AEq+dc=;
        b=LsxSOM9Jsln5TC2ZX9VGyDS0AOYJ0ll6IIZ5i0rLTqtvR3bZQ4kUGlw2XjewvMpZ7A
         gbX3WYQDtSzu3HzDWZNCduZylSXS/M7TbPGQIDfJHxSF1wr1QfzXVfjNEoXy7DlMMq82
         sZOPefGpoeYHF+dklJQ7Fsa4vuR/CpaB6lddeL9aQ/I3lKf/a2uqY34ZOvS5DRZ+YxGY
         6zrh3cRDYC1g8JQjUhGslIHEttNOA2EEvddQT0eW1sI2XW9QCo3419j4+9Q2TYNEJdIv
         4FJZUghEU/YW4PUd8gkUo39AjWL1QmCsqFG22NJBUIrUCabaXxMRNaHzpH95h1Np8+01
         txtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475991; x=1790080791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IUBpSQaA91JU4u4hSD0CHnRFwoDOkNzew04B1AEq+dc=;
        b=hKuMlvKjUE6OCqlPdgDn6fpPDO1/Q7BB5S2qi71BvyT4PbcZxR/POXHc5yKOgwF2hc
         ULD5zphcwk+i8btEspqab52/upMumtbnwaSt6njslaWo4NZjuq/4YOsGAn2kkVQnTI0f
         fTyrHxlfNSjZVbh3gOQt/JanYGGs/3nw8nCbuhOCmCnooKHnrM2H2H1Kw0dA5x1UsJIk
         1h+GubcUhgOQfmXtjRtH/hP37/MYb836Ue09wm2LYmdQdTFfaNEeenEZkUS10DjK7cyM
         RXWh9Dtu3VB2EA12FN4F0pfnAWXSIAX5L2/ZNCT1FCHJomAWG5fBXmgT1m/oHY4js5QC
         invA==
X-Forwarded-Encrypted: i=1; AKwUvBy7CQ+CjEL8nbxzIbxrBHsR/ERRZre2Vh+Qxl9+sp0IiU1nKUyx6yXrmW489+MPOu4JjlnMwkIUd+4=@lists.infradead.org
X-Gm-Message-State: AFuF++kfMNy+6letln8FVUHrBD+ga2lSTOss4+fmppWGmSC/omi/vSCS
	DrVkkrgtodHHRQgv6aRXNb1/WQbrK851NVR76yHbH7FEQUmiMSeMhFlG
X-Gm-Gg: AYBFou31rM2QHo+AOyDQI4lzm1YLdKt0ZVKFmSWxfNlRksBgixrdrJdPM+A7ukV4Ojo
	TBU8BO/3pouOjU4SHtyHYyd9OQ/VzfoN46QPaJeUXT0GJ0lJ3UdkYdfuoDZu4LQwRhx32ivmwsQ
	K3umy0K2hbAivZoCeLVzD2icesRvS5IJBjP0Wl+VaEBdZhuajB9DxhTVrDRtrKp1TUgW7AjAdsl
	k5IZ1ONC5/PlBuA73PYku7/g4EkjQ8gf/JyvuM5BObXiD4rFzmWf+S7B/jx93Z57YpPSNdmnqOO
	ZFOQJ7yVirCgiUmGH7MpBPVPxpAwFXBbJIf1S5VXsTnwxXZfOxU8Rl6tKyEBgNINiadkvaXrstD
	31sPl+5VcrhgMDaqpmrkBFtm+g8FyUwEj/ueHNeLeUbuRwSEJ6srCr1ZnG+2gvrLaXX/LNP2Krc
	DskCub+z2J2LeQ+RBiLeo9AAPfk2rhjLfFLqNKASCcbVlpheqCViY62eCERm7NKnyCgicChA==
X-Received: by 2002:a17:90b:5887:b0:39e:8d5:fcee with SMTP id 98e67ed59e1d1-39e08d5fe14mr4270765a91.17.1789475991205;
        Tue, 15 Sep 2026 05:39:51 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.39.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:50 -0700 (PDT)
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
Subject: [PATCH net-next v6 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Tue, 15 Sep 2026 20:37:59 +0800
Message-ID: <20260915123802.1561724-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_053952_217840_E5F52EE3 
X-CRM114-Status: GOOD (  12.80  )
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
