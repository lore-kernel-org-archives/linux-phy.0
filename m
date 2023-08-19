Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2249EE49A6
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APaxvsTWzSAEB1XpWIFLJ4V9ZCts4dPtbGmbYg4NtVs=; b=VasXq92lFyXpzt
	RWAx0Jt94nveYYNrPufwxgBnm3rzjw0F3XhXiM4bbrD4nMrfGTsPy9NSXaEIHTttAz1ISjGhb0h/f
	LLUKbG1y2u/i6+XUbUB4G76WG2srYOqLspr9izBfPHsGLnqI8J6Poy7XMUPcrHcszeaHqgXjhdmnx
	ygC+rrZYwyHEY51QoQufPNw5LYZMf5iG3qg6GplznE7vpBjnZaMF1xOT3DbVau6fMIn5wPA0p48QI
	4wxolc6DQotZ6TcwcwIjkWdUyCrVP5Kx7RaNj/vdm7iIsKV3KUnW2DGGPz3IIPH88MHMMZQ2athQr
	/Ie7UmL6nsCgkLrT0MmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCrs-00AMKT-2B;
	Sat, 19 Aug 2023 03:43:16 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCrp-00AMK6-0d
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:43:15 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-564b6276941so1142132a12.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692416586; x=1693021386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EK4lc13hsQBieya89oWIFB0P2uDWj3MviewwKrAjxRw=;
        b=aHvRlCkkldAVjgxJed43fUAB4O8Yu2RTBTeVKEapTfFs6Wtbbm9smv2YoQDk8JIffv
         JzXInefCBSNrFTor6/oez2PQ7gIDKC3zGcl+N/I2OcAQ8voqv5iDqbof2Fa2OxY2BGNK
         HQH2yZlvfFE1Oh6GvEjT4Y9qe8Qy+pWXRtbC5WScyaigXKqNU92t7eimmMeGO0Z0gMZF
         GTWvPFvWTRW9a/HCTEdyWX4RUrJkU6id7SmHYQmKa6m65WMQ3DnSUHCUeI7keIwou61j
         jAMevKkM+85Spz46EOcDGg9efUJ+t1pfHJPShXEFy8QZ8Xf3iSJ7DlzGxRZFOg0SJ0XW
         0YFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692416586; x=1693021386;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EK4lc13hsQBieya89oWIFB0P2uDWj3MviewwKrAjxRw=;
        b=C7wingDNHTyogjh30h69k8tCucXzKpjoc/FbVsr7YC8k0cd2sL6qq7PKc5YoyvPrAW
         RrHrIzdgNkOQe+Ll1FuFt486bMU/4QgyvXbj1HjJoJ6WfyMuzk54CNTenj0szHNX4glp
         9auBEsWmna/7MKLVXkj62XUXVwMPFcpdWdc0qbgWa5qOq2AQ1N1BjyifIQTGyN5Txhc5
         bIS56a5CdXO3vwRGoOqjMRIZvpS4/x//srjUKVMSPAtb+fBEC2M3ujl2LBqMTuJk9EKl
         xVhk72PloGBFLH4NiqGvZjgaRFvj4RmnWV2I1dUPvTg6M5FlwCgnsEqcdZK7X9LIC3Lb
         /rag==
X-Gm-Message-State: AOJu0Yyun4OENEdzzTWzYpBWWhsxGwCAvZJy2duUudIBBoalYVPpfJXq
	8QZwQ7ZmpKye//RWN/z24dphZqeKXAWwrLQdT7g=
X-Google-Smtp-Source: AGHT+IEQ3BwqLE3HDnHpyCiEwIbHJOPXfPkwHfhNQFFL1+Q07JcVrXASX49TluX1i2SH3iY6U9p5kw==
X-Received: by 2002:a05:6870:1d0:b0:1bb:c946:b80e with SMTP id n16-20020a05687001d000b001bbc946b80emr1102346oad.28.1692415059832;
        Fri, 18 Aug 2023 20:17:39 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id q2-20020a9d7c82000000b006b89dafb721sm1424375otn.78.2023.08.18.20.17.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:39 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 8/8] arm64: dts: exynos: Enable USB support on E850-96 board
Date: Fri, 18 Aug 2023 22:17:31 -0500
Message-Id: <20230819031731.22618-9-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_204313_459170_1FB252D1 
X-CRM114-Status: GOOD (  16.22  )
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

The E850-96 board has a micro-USB socket and two USB 2.0 host sockets.
The USB role (host or peripheral) is selected automatically depending on
micro-USB cable attachment state:
  - micro-USB cable is attached: USB device role
  - micro-USB cable is detached: USB host role

USB can't act simultaneously as a device and a host, because Exynos850
SoC has only one USB controller and there are no external USB
controllers on the E850-96 board. So the USB switch chip (specifically
TS3USB221A) connects SoC USB lines either to micro-USB connector or to
USB hub chip (LAN9514), w.r.t. micro-USB cable attachment state.

When USB works in the host role, Ethernet capability becomes available
too, as LAN9514 chip (providing USB hub) also enables Ethernet PHY and
Ethernet MAC.

Dynamic role switching is done in gpio-usb-b-connector, using current
micro-USB VBUS line level as a trigger:
  - VBUS=high: SoC USB lines are wired to micro-USB socket
  - VBUS=low: SoC USB lines are wired to USB hub chip

In order to make USB host functional when the board is booted with
micro-USB cable disconnected, role-switch-default-mode = "host" is used.

One can look at E850-96 board schematics [1] to figure out how exactly
all related USB hardware connections and lines reflect into
corresponding device tree definitions.

As PMIC regulators are not implemented yet, we rely on USB LDOs being
already enabled in the bootloader, and a dummy regulator is provided to
"usbdrd" vdd nodes for now.

[1] https://www.96boards.org/documentation/consumer/e850-96b/hardware-docs/

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 .../boot/dts/exynos/exynos850-e850-96.dts     | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
index 6ed38912507f..8d733361ef82 100644
--- a/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
+++ b/arch/arm64/boot/dts/exynos/exynos850-e850-96.dts
@@ -29,6 +29,22 @@ chosen {
 		stdout-path = &serial_0;
 	};
 
+	connector {
+		compatible = "gpio-usb-b-connector", "usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+		vbus-supply = <&reg_usb_host_vbus>;
+		id-gpios = <&gpa0 0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&micro_usb_det_pins>;
+
+		port {
+			usb_dr_connector: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
+	};
+
 	/*
 	 * RAM: 4 GiB (eMCP):
 	 *   - 2 GiB at 0x80000000
@@ -111,6 +127,20 @@ bt_active_led: led-5 {
 		};
 	};
 
+	/* TODO: Remove this once PMIC is implemented  */
+	reg_dummy: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "dummy_reg";
+	};
+
+	reg_usb_host_vbus: regulator-1 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_host_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpa3 5 GPIO_ACTIVE_LOW>;
+	};
+
 	/*
 	 * RTC clock (XrtcXTI); external, must be 32.768 kHz.
 	 *
@@ -172,6 +202,12 @@ key_volup_pins: key-volup-pins {
 		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
 		samsung,pin-drv = <EXYNOS5420_PIN_DRV_LV1>;
 	};
+
+	micro_usb_det_pins: micro-usb-det-pins {
+		samsung,pins = "gpa0-0";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_INPUT>;
+		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;
+	};
 };
 
 &rtc {
@@ -186,6 +222,28 @@ &serial_0 {
 	pinctrl-0 = <&uart1_pins>;
 };
 
+&usbdrd {
+	status = "okay";
+	vdd10-supply = <&reg_dummy>;
+	vdd33-supply = <&reg_dummy>;
+};
+
+&usbdrd_dwc3 {
+	dr_mode = "otg";
+	usb-role-switch;
+	role-switch-default-mode = "host";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&usb_dr_connector>;
+		};
+	};
+};
+
+&usbdrd_phy {
+	status = "okay";
+};
+
 &usi_uart {
 	samsung,clkreq-on; /* needed for UART mode */
 	status = "okay";
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
