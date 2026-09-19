Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4857EC982CC
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crDZPtOjG5RQokcVkAqQ+QtmLBHParowOXEJ3xYYPsw=; b=Kt2f86UQWr+KIh
	jhXUs6W4Je9w1CFoSfKAhxyA9Si/tRuVoM8+wKyHZGO8uKwZOgX0pndn9D3SEIIGva2bvLFXnPMHR
	Hpj1Bp81jTILrTe4OPPNHAL8R3ZMsrqSFRC/fQ6ppKRIeBy/2hxF0qsNuiMCj5WwMGM5C22mgmdJA
	wUMmmjuBPS3PvNVC+LStm59qGCfcAEh6pItG7B8DaiGB0qi0UWvhUTICUsvO3ADkCOPvKEtu6Usa8
	0VWWaFsERYHi04UeK38uAnd9dzHWSsucWOWP5W/EniSIoHB7pjQy1kY2ZwHJPEzKntoYxhLlxcy3G
	5ChjaExJr2xo7f+ZxoWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uZ4-0000000GHzR-3bhJ;
	Sat, 19 Sep 2026 12:53:10 +0000
Received: from mail-pz2-x09.google.com ([2607:f8b0:4864:3b::9])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYz-0000000GHtT-2No2
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:53:09 +0000
Received: by mail-pz2-x09.google.com with SMTP id 41be03b00d2f7-cc1ddb3ba3eso836645a12.1
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822385; x=1790427185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=kFxL/fEmJu+sh8UZKggVJH5hpsD8le59sTUyY+vP6D+J1SCyoRrwUp1pIiLVkKP8KA
         +FY+7y/aNnf4kdotLUh6LZBcLeiZW0yTfO62TMhS2/hvorYYrIVVImAHZNH7y6DQwl5f
         He/90oZgYlMrX0of4pdnCk2U2WM8JZXT4zlMy7cvKngL1AOQYSfHTMu7PiGba3ePOlwy
         4ryO6PxUq3jPboA4WfL2OBUhPEdZ4X8TJZsUbbf2UtML9jPvGU2fsWOL2mbgrvqxTifa
         h2T9gUcuRRABJOhLIdzC5GDfz7xWENV8A5v4HtGTuahUv9tb6RwNpLTvXahDGqmyOylW
         OhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822385; x=1790427185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IeBd/f+KYPaUD3mTxXbAK7RiokjVClr9ke91eN5DQPw=;
        b=oasK7pSh3zj0cJAH4gblLUeziH0nevsrxEGrdBNkvvJ98NY12P695DTMsDJF0l9+VS
         fjKDcLIoa0+ZBJDeWZVPwKFxSXC8L5vrS4sy+qIp92Je5rteGzxX+AS65MBx4jBfDIXv
         uxPRdsgAg7Xb3LE+xIGPwG8wyKpgHndWAnEnMm5iFVH9o9JfavVW/BFMlWd6eE2I+RQ+
         MxIKcEQZZC2+BkiRU4GtmwlbUNDydqJvC0EB2bE9syPvXFdE7z/JzhiAE/Hnmuq0D47S
         wPThc1iMy6SxI71CEJIRuiMEmRlj57marQ9oG0DtanW/2oodeMBAGCBlrwf6GaaezLNL
         1Igg==
X-Forwarded-Encrypted: i=1; AKwUvBzCQt3+sotj6E+xQ319sdojWIePXblE2tNJmVr607HdwDMe3O1AyiuJF7c7+6tMAANKcQkf6TsAi5w=@lists.infradead.org
X-Gm-Message-State: AFuF++ktgsN/pBZZlTPwTVsRWiJB+NFpmFeF56gzHC2McHHUdRsqrA9b
	YQHQFl5ALHszoaxf7lJct/74+X6GWy4jerH6xZibKowUzqfC1KKnqBtt
X-Gm-Gg: AYBFou2wP3wWOrrESAkhmVlt0NArOeAjReM2ijgZ6aitwnLFx+DTy88m2tV2tVNX9A+
	xfuQ0wUg933qcq6930T3+jW+aDu3IYCkpQfGV4sW1Ueq9GMTT6hJwqyPwXmwOloMHUmDigvE4vq
	VJm3Luxu27yplHmhQ/Zl3IEyj/5njYWDio04exPQK1DoMVWFrdWIxAhLz6yIISThiFukdxL3Rx7
	AiTiP8RkmRs9pFq81CHzlRY6fMp8YEkcFuc5R34BP2nHmXu0UQ3V8us1G2r1B9JUi14Kwmw4Uwq
	gW0vNxrOTLRmyS+0T6ns5pr/kXgofFESB/9Wj5I3FA+hqqPkaDkgom4q8GfWPozpOUdGo3a+4M7
	Ha01TYMAkU8fSkY8UlSH7HjaCcpC+/AAM0iQrhUMOKPU8dH5gqsqnMXMZCyGXv8XUFnS219K1HC
	Rt5d9jlHOYf1x/DGA26qiCxZ6VgKyQCkcXNzCHDmmRg65QVmrT1RSl15EurBpEm3SDImptYqA=
X-Received: by 2002:aa7:88d0:0:b0:878:3538:8f80 with SMTP id d2e1a72fcca58-87835389b2bmr1364047b3a.46.1789822384851;
        Sat, 19 Sep 2026 05:53:04 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:53:03 -0700 (PDT)
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
Subject: [PATCH net-next v8 10/11] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Sat, 19 Sep 2026 20:51:17 +0800
Message-ID: <20260919125119.2107089-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055305_663777_3A1C33B2 
X-CRM114-Status: GOOD (  12.85  )
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
