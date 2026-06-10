Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD068CD8CB9
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 11:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZXfDjbi0UDP6ZHd7TCZWkNn7y0hwjkjdOw1MYHDEtk=; b=wYzRWZ0PWYVgLx
	eE7gcz7zDQhAplX64l+EUt31us3AZ2wdpEAdS8tfZ8U4WhmVEzeoNHiF2CUceZRc+94aH/N/UvcO3
	zTt14YfjzK+eKAr2L+/MjGSZffF2G2skkYT23YX+GXBYJOU6NXw95kbNzg1xp+kayapPXqqeLCaJB
	pXd1KqP/odt24VkYLnL3mm2cvm2ISN4aJAOfg3ZDxyycaqJQCmurc8iKqQuR1xx00NmPDv4FJoID1
	r8EoI8x4XH31LcJMw0xs3XT24NKcyu5nHMXRsibnksxVtQqWTLY5kPEbCiv4Wno7HsyVHiesMliFF
	rjKIBiNVLGz68ydw+DmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpM-00000007UrG-2MtN;
	Wed, 10 Jun 2026 11:10:32 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGpJ-00000007UqI-1TyX
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 11:10:31 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-36baec934b6so4306259a91.0
        for <linux-phy@lists.infradead.org>; Wed, 10 Jun 2026 04:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781089828; x=1781694628; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dePUqSBzKVLV+PoQEp9b+Ylpu4iFynHLielBVDVr8q0=;
        b=OJiZxm7QGowt9CI+A7pQZb9P9lW15S7z1xPyR2XyWdz3d80zSZUPYM7F3vqtC5qG3G
         XsWWS/TCtuNrjUnrGdVcN/ANpv1opoOhDDlrEZYzp6LM37/MJsR6a5v1bsF92tEdNNtx
         XXV24GGUDARAlPeU7ahwqVsr2c35zZDXHQdDFueinsb4bsZmteOGMUtbYAAQLo0aSgfu
         1JIvFTgMYwWxCZugzZqyCLlaHeu1lxNf3mziXLl7ny5CNJ15MAp0qxzOZtzx+bPkqgc9
         45j6978ChZfRwFafSt73ePCKWEENoSPexyTTFsyPdklkjPkFW+gcYnymxJxRvVtof2DU
         ORnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781089828; x=1781694628;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dePUqSBzKVLV+PoQEp9b+Ylpu4iFynHLielBVDVr8q0=;
        b=jVG4fxV3HrBLAwPK7eW3+gpHezFJNEjCIYxB0/hiWU/rVY6RRttk0sKeaghQ6AoVRe
         dNSjlDLSNogOzkxoIIbAm3zSLyqDDU12uSSLGK1lG3jbxs0M3AvzBo+mUr5m/15KAd59
         palSerQQ/be1RXUQDOnFGDNdOjJqsXkgx17dz5LnlzgCFOUuT28PWBic9cRf3+mMdGQf
         zrgSBxcXCiT3+b44PC38USsWwiVuE8kUJ/h1qZ8P4Sn2PwWM/NdjAFORwNR7qGbWKhF5
         NBwt1z8bk7Cckf30em4FRU4PqrOS+3TcFgeKdHZq9eh5PaB6Hdue4Ya5N3lvDRw5wVpT
         1jRw==
X-Forwarded-Encrypted: i=1; AFNElJ+GbpUXcOh3Qr8GGrOJVFAQ8GXIMfO1iJRjEE3KKpwIecnRUKtDYzxBgvG/ARod8PZGTvlFXNo5x54=@lists.infradead.org
X-Gm-Message-State: AOJu0YzoLibE2a+ed745RiXua2UNeF8FFuGvq7dPYOWrgTI4ktKnPeL4
	EQjmJgMvJDkxDMxoJJWkWS+JaUFn53Qj6NONGCMrWdM0DMI1g7QvuOlp
X-Gm-Gg: Acq92OEKT3Y/eqiIbLtTcV21yXutg/u2mUoOeh6sbo2iIfiBRj85i09vIfOFwZoyzzB
	S4ASQfdbLsvwYVfFlMpRf9eD5yT5/31aYL9ExOEObzI5rvQCoGvcvMuxWSu4IE7z0mIORtiBk/5
	bElWXgndXvSB58KGFU1u4F7x3Xr0dKmaOZiTvpYIVTf1giNtPbiVtBGJwBCZmWJ7Gh/k25padUb
	iBrkQ8zs4bEMWLIRYw+XDqtNcX+dm/No8aNKbNxTMyrfe8AqxoEL/MtXmnZVUX38bB1CRUGaZmb
	qyA1fpN4l0fw/k4oIMX/FgFUCsnGbpmFUOWqjlEFIPj1EYxbjNyRh5mZD2FC3NBDbRwmzzBKF1d
	jJTk6MM7AsYTqQW1S8K5kCbVqDMu8dHvKoIpxcK/2jrZxNuCVyO+efct0PA3sCwLQVqJ1gSIluy
	aBpsMVC28VMcqyY2WR4oClV8TXrbEa20JfE3qU84UmiDH4NcZs
X-Received: by 2002:a17:902:ecd0:b0:2c0:b31b:b19 with SMTP id d9443c01a7336-2c1ec7d946fmr212617895ad.21.1781089828462;
        Wed, 10 Jun 2026 04:10:28 -0700 (PDT)
Received: from [127.0.1.1] ([2409:40f4:4111:52c8:138e:8096:a8df:e68b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c164f6d37esm317175205ad.9.2026.06.10.04.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 04:10:28 -0700 (PDT)
From: Ramshouriesh <rshouriesh@gmail.com>
Date: Wed, 10 Jun 2026 16:39:26 +0530
Subject: [PATCH 1/9] arm64: dts: qcom: x1-asus-zenbook-a14: Add on OV02C10
 RGB sensor on CSIPHY4
MIME-Version: 1.0
Message-Id: <20260610-a14-himax-hm1092-v1-1-0c9907da47ed@gmail.com>
References: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
In-Reply-To: <20260610-a14-himax-hm1092-v1-0-0c9907da47ed@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Aleksandrs Vinarskis <alex@vinarskis.com>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-phy@lists.infradead.org, Ramshouriesh <rshouriesh@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4082; i=rshouriesh@gmail.com;
 h=from:subject:message-id; bh=ExaW/CgRG0HAtMjfXaofM76A3HEZ9NweHa0eL8KHYN0=;
 b=owEBbQKS/ZANAwAKARWVil4RHAXeAcsmYgBqKUYNHeRo8C16a/eQs+ObZDs5Xo5SL21lIPOY/
 Tm3XHkc+cqJAjMEAAEKAB0WIQS/0QuzNKVfvUNlNAkVlYpeERwF3gUCailGDQAKCRAVlYpeERwF
 3mO/EACioDVqwwL0R5nMPC0+fQ3U6mxKkXRbIEJQwb17WeR8zy/5VJxVTVluMl9PWgVyD0Kveef
 6JnONYCqscivv0zqrj24Sw+JTk6SExuQkePDj7atKMZxFca2Nu5HXpQEAXWbqp5tKwiVWt7GWtj
 FieXbKrSM4Yp3eyOYEIC2e3q+D13idPqfG4jqpExYg59pythhUI+gbgVIQB3dyZkMHtON85SaYX
 zZfWZFoFsiFKDEzIAfh3g7TsU4J8/vp9jSA/J+7KXd3c5kMcyjUFRG2BW2wXcQhQZ3tV4qnfqkV
 ZO4FkWbYzIs6arGWhIcrDRlEtaVDb9vLN0UC+RlOdiU4Lw645d91VQUhe0ImObf3c59rXdnfbU8
 XPOdkVUYm8MPwDFnfWBIkWthblyaQ2hi/f+dBtXF1+5QFNb4Tq8jVkxVks2i1vfQJ2gTnlwB1u5
 2Af2VBTrQlm4TWu0S7LJ6fuhZn11d4carS1TTDUMvizNhqxkSy1MIxjb7vdhR9tje8O4uA4nBUQ
 U8Si9Ijv54wF3PEanBQaAZcspl8xp8g62L09GbM8EYcBseVlXraavDBtj2qh6mW/lq5Ke8WqH0t
 iOgoPxfbj4SUmw9+W2W3qJ2G/bqupsL+F5qCZB3YiJLCi1vQwEowDhfqoOd60T+wk5uvOjp60oW
 XKHXeefssu7uD1g==
X-Developer-Key: i=rshouriesh@gmail.com; a=openpgp;
 fpr=BFD10BB334A55FBD4365340915958A5E111C05DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_041029_407652_191C24B3 
X-CRM114-Status: GOOD (  10.98  )
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

From: Aleksandrs Vinarskis <alex@vinarskis.com>

The device uses Omnivision ov02c10 RGB sensor. Reset GPIO, privacy LED
GPIO, LDOs are extracted from decompiled AeoB files.

Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
Signed-off-by: Ramshouriesh <rshouriesh@gmail.com>
---
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi | 109 +++++++++++++++++++++-
 1 file changed, 105 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
index 66d566808f58..388737eaa624 100644
--- a/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
@@ -108,14 +109,11 @@ leds {
 		pinctrl-0 = <&cam_indicator_en>;
 		pinctrl-names = "default";
 
-		led-camera-indicator {
-			label = "white:camera-indicator";
+		privacy_led: privacy-led {
 			function = LED_FUNCTION_INDICATOR;
 			color = <LED_COLOR_ID_WHITE>;
 			gpios = <&tlmm 110 GPIO_ACTIVE_HIGH>;
-			linux,default-trigger = "none";
 			default-state = "off";
-			/* Reuse as a panic indicator until we get a "camera on" trigger */
 			panic-indicator;
 		};
 	};
@@ -546,6 +544,13 @@ vreg_l6b_1p8: ldo6 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
+		vreg_l7b_2p8: ldo7 {
+			regulator-name = "vreg_l7b_2p8";
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <2800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l8b_3p0: ldo8 {
 			regulator-name = "vreg_l8b_3p0";
 			regulator-min-microvolt = <3072000>;
@@ -796,6 +801,86 @@ vreg_l3j_0p8: ldo3 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
+
+	regulators-8 {
+		compatible = "qcom,pm8010-rpmh-regulators";
+		qcom,pmic-id = "m";
+
+		vdd-l3-l4-supply = <&vreg_s4c_1p8>;
+		vdd-l7-supply = <&vreg_bob1>;
+
+		vreg_l3m_1p8: ldo3 {
+			regulator-name = "vreg_l3m_1p8";
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+	};
+};
+
+&camss {
+	status = "okay";
+
+	ports {
+		/*
+		 * port0 => csiphy0
+		 * port1 => csiphy1
+		 * port2 => csiphy2
+		 * port3 => csiphy4
+		 */
+		port@3 {
+			csiphy4_ep: endpoint@4 {
+				reg = <4>;
+				clock-lanes = <7>;
+				data-lanes = <0 1>;
+				remote-endpoint = <&ov02c10_ep>;
+			};
+		};
+	};
+};
+
+&cci1 {
+	status = "okay";
+};
+
+&cci1_i2c1 {
+	camera@36 {
+		compatible = "ovti,ov02c10";
+		reg = <0x36>;
+
+		reset-gpios = <&tlmm 237 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cam_rgb_default>;
+		pinctrl-names = "default";
+
+		leds = <&privacy_led>;
+		led-names = "privacy";
+
+		clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clocks = <&camcc CAM_CC_MCLK4_CLK>;
+		assigned-clock-rates = <19200000>;
+
+		orientation = <0>;
+
+		avdd-supply = <&vreg_l7b_2p8>;
+		dvdd-supply = <&vreg_l7b_2p8>;
+		dovdd-supply = <&vreg_l3m_1p8>;
+
+		port {
+			ov02c10_ep: endpoint {
+				data-lanes = <1 2>;
+				link-frequencies = /bits/ 64 <400000000>;
+				remote-endpoint = <&csiphy4_ep>;
+			};
+		};
+	};
+};
+
+&csiphy4 {
+	vdda-0p8-supply = <&vreg_l2c_0p8>;
+	vdda-1p2-supply = <&vreg_l1c_1p2>;
+	phy-type = <PHY_TYPE_DPHY>;
+
+	status = "okay";
 };
 
 &i2c0 {
@@ -1283,6 +1368,22 @@ cam_indicator_en: cam-indicator-en-state {
 		bias-disable;
 	};
 
+	cam_rgb_default: cam-rgb-default-state {
+		mclk-pins {
+			pins = "gpio100";
+			function = "cam_aon";
+			drive-strength = <16>;
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio237";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+	};
+
 	edp_reg_en: edp-reg-en-state {
 		pins = "gpio70";
 		function = "gpio";

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
