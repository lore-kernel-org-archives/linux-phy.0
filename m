Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8DAAC79FA3
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 15:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHNmJQVmSeEa3jfhasFsQFFbFx5pFU316MfCjFsDz7A=; b=4mgfqNnaX3N8PX
	vwl+287p0lZX/TW4ZAt44NeF95keW6JVkRp+00yhEENEoBP+dyW1wCTovRI72lP22VVGh//TPGG7E
	TH7L+f2oh273F9JmyWZ44dNl5g47po3RN5fqL4C/1NdP227j1kT3lssZlTcd9gpj8RgPV+jNivEMl
	9xffqBZxZbtvjzAw7aRfphPHoRAVFZ4eIiW3uHKo6W71J/PJu3NXa6NSz55aP9N1n5DNXKQp4vKnn
	sdGFM03xeg2QARRM3Peyt32cYrWlpdqowx2Bw3kihRra+JjnbtSnf9FnszlGz0jr+B0pKkHhsy+em
	HarCRMUw5kPaJWr+O8Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRr-00000007Cy7-0mjY;
	Mon, 07 Sep 2026 15:39:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bRp-00000007Cv9-19vI
	for linux-phy@bombadil.infradead.org;
	Mon, 07 Sep 2026 15:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=; b=VSSPYA9fY+Kgzdoeuey+NxQkRz
	Wk/DbZ8E0afk/9FKccd3jV+Q1dvP8l2F3g+YZLeteYeGEANAYXTbPuB5gfy+aH9B+aLno1YHq/g00
	1cYsUJFG8n0/MwHepsw7vUg+mND5Qs8iYn/QKabu/ZPfOVOqQP6pO/tk8Vx+nLS5CoSAGt7XB2t7X
	EAL3ZU4DGU2J4wbln+s3tmd8vcg8TKpF1cSZDyrmxiq1t4p8vkiFm1ls12OkoZSs+uorVnqiLeNV5
	YTnO33w5oBmQKbAjfGNucvs3Y+fxkLOtaWNOiGdje0rNtJmsXMf7q7w625c184lTHF/pTI8QqXNXM
	XkXChN8w==;
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x3bRj-0000000GNyI-4Boo
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 15:39:50 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-39569e136f9so2170392a91.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 08:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795585; x=1789400385; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=;
        b=rRPb7/EITLHYaVHFXg4odwCBoLVfKivZzaz2vkO33AfQ0MhxCW0lJz8Ehr8tnMudcR
         Fhwegnvyl4CdF+D8y9C3SAOz9+FEU9cU0TImmFs4FKAeog8OEHLDa6yK8pf6FXPwVNLQ
         AzedB3erAdjnWNG8TR+nwtZw9diTqxFgbMjFmjfpLRFf6FiNZC81oHgHhZpstANJ/AYg
         uC45VlPcPpawJ2Q/njUr7KUpKTwgXD+J4erapyr6J/dSeTz4xCuOcEFo2mDPxpcb2Om8
         hKnanG+0ik+JgbJE6P3yTCDT62pSN+LjW0QhyEuiMqUkogILjJmNLm1cPA5prbIY9wXY
         vpeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795585; x=1789400385;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=2srrqsfvZcRiNitfhUr7DhaIgxeXboMwTknQApvQL7A=;
        b=q7dlh/9DkA0yEWURKbIv2wvGy81ABt5n35zgjhWRIpETQdHxeI0nMpjKPfT+vT5hn5
         X8g8Y0aFod2YPzW22D3sMyUMld2EBqel96HRj5G04zcPGkeHEN8UI2MZU3S6rL8JBcD8
         ZqxKFKzKv05w5Idr7+mpYdlIlWrnQGsgF9UXdy9sOqwkpcEHdT3PibYYI02igDOhwKyL
         aeCN3nM8SdjP3Wn0QSzZ+UR+IHbVEv2q6gJglTwGn+msUzqW6wJlsC4gtQfCTWY7+8IX
         +Wy3hT/V1h14aktQgLHP4pCg0oeYN+W97U3OjIMDDEsoCxif0qTFbxfbElrKlMPuInzw
         k6uw==
X-Forwarded-Encrypted: i=1; AKwUvBwIBlEBHwsAeS7Bb/pOEYJWvaDbADdm6nL/Inx0AD06lVm+89rPFuecCvvwhN9RqsCRA9wFFilGgx0=@lists.infradead.org
X-Gm-Message-State: AFuF++m/OaRnTdCKIPUj1QLJ7AJbhE/gfwiYLrRGFcRBBAO1+uJNHzWh
	c7e0K52brtwt+LBkRIAt9mvjFSWJ/IkI88g/twIcOANRhfHRuNH743og
X-Gm-Gg: AYBFou3GolaG+eBkbi6JN/J+0wY4unokyUUFFh+iuOFvFDmZKEqJabY6ZZrX1xq2dcB
	Kg+KjfwL6AY5j5iIp9wksWmy1HWH8Aku2fvjkCh7BW0XO8SKQNxwyIRGWC+dNok19Tpp36FNOSC
	lyN6ZUhsItN6FxwiVZ2/j2WGjvRVf/BBsiVRSZLT7jFrN0KGm8c0/PRu54Q9wu0n6FpzWsqGfQ3
	fmxT+Pe2BL/9oruQK8Wt/3K9KlNrYRDZDrihcPl/Jw17PplNY7i+LsR7K1bsq0hVwUTbq25PTrp
	jRdwso5J+McZJd/tzouSapWGCvdThZBPDbOjewJ7gVbx5h5PLwiOebJ4DNX0AVf/LzqEkA+3l8E
	gBMd6mEMX2awQ9Ne/55ZxUc0bK4uprHjuN4/9nc9bEhbKYhbSnTLylcE1//JDXnsAlX8kHWf+O7
	TeygyeaLGZSqdqK+cQBSHDqekPQawDzgVV1I9sx+SaLNo1mss/OnmykaQpTYKG
X-Received: by 2002:a17:90b:3c42:b0:38e:fea2:df53 with SMTP id 98e67ed59e1d1-39b260d2977mr35605265a91.4.1788795584940;
        Mon, 07 Sep 2026 08:39:44 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b260fdf9asm21690121a91.9.2026.09.07.08.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 08:39:44 -0700 (PDT)
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
Subject: [PATCH net-next v4 09/10] arm64: dts: rockchip: rk3568-photonicat: enable SGMII LAN port
Date: Mon,  7 Sep 2026 23:37:12 +0800
Message-ID: <20260907153713.2572547-11-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260907153713.2572547-2-coiaprant@gmail.com>
References: <20260907153713.2572547-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_163948_100617_DFA9F8F3 
X-CRM114-Status: GOOD (  12.65  )
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
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 74 ++++++++++++++++++-
 1 file changed, 72 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts b/arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts
index 58c1052ba8ef3..25caa44198843 100644
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
