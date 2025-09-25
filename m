Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D403CAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgUfVwU5RlhUkbDuUvNWD3CEfOfLl2NhW2c0lb4qQXc=; b=rtwEvN7Nh3FxSR
	EOY/Sf+yfhotM+4lAE/f8NIp4O0qMFOLcvbKyDqZ6oSheStiSynARZefb5L9T6YlWzZw74hWFqQT0
	0C/Pdqp4IztO1cJwXpXEhR4akTOqh5xe4wIXazt+p1i/GiuC5FJQhJW9yXGStUVk8HPsX+5sVgPcF
	OsytmK9CaL8zKCY+PEd9nlzaNLFO04VeCQY3Sy+wOsX4yLT6v9lZC9JS4j7v5hwASE5gtJtH/z921
	O11LTKsBOuxegIHE56WlfiywPM9Vak0PDgkNWXkKQxYvAqbIhfBj7xW/qhB8+ceVuxFonEX36tCnU
	9MuJvUYXe6grdPUUfF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iph-00000007u2J-3yQK;
	Thu, 25 Sep 2025 10:04:13 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipf-00000007tzN-1V1P
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:04:12 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3ece1102998so547427f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794649; x=1759399449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YyvVRav29kLqOT5Vy/6uWXxy4p2puZwG88xDDJQXI8=;
        b=rVfRUtf/KM881jbgih1xlJNE47ZFiFavuBaW4pmDF4XMcJwOQyi3CxTiFPg9oz3C3s
         ge4vU2DYFDOXo/7iSqB9Sjz2RukmMIytY+h5yb/7/2qgQKhbfSKKQalczevi5s2H4V3I
         XpUIy+p61qwRx4pFeaUgpb51hCQNyrWZNPjetc27jdkuKOhh9oywdx65rY41OM8iM4ll
         bz/BaJ8TXXnfJEJmWobLn1rxfxLC2jivY8ecTmZSxIj1+8aERIb43wIYNL+O6sDzNyHp
         IPwoMhivYg9nPLUrR7sREIk8of91DI05xOHoUDLKbCOap+J30/rhDROkxfdQgRqluM8m
         liUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794649; x=1759399449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8YyvVRav29kLqOT5Vy/6uWXxy4p2puZwG88xDDJQXI8=;
        b=kcWpGanc7SRHI+7Rr2V1fdj0sUhaiw0TXrHetlA+cLvNcT5VawoACiZWivLj/UWWcX
         ivnSP+TEijmvuxWcx8MPtA5d+Xug0P2PEHSoSY6xQz8+e/iYLoiJluJBx9VUDwCh5Xxv
         ngKi6Jc1QXYorpMpgE74GdppB95ciIMzXi4NQj2UfGNeAp8P0I1LqRSA3EGW7YLeWm8e
         +x+ajBFO4zHUUV6xL/wDmmmw0i/86hz6xg74vjENSJNAa5scolAjvVTBhmPTKrIjsZOy
         9+mEkaXa3bX1sG3T49TTgRsumnFCc/0Ktr0AJAEPbsfNJBalrH1nJ/jHOhf5DY44h9/g
         cdNg==
X-Forwarded-Encrypted: i=1; AJvYcCX/MK91ddpOnvfoKtVO8y3zYOv4Obt0AqOeKsXT58RJEvoI3WIZRZ5eRIRj5z0H8EltKxgbCO00KKg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyvd/PquRsoYphh0VM/P8GPKRPpdtC2PRjTxz3QqUSqUdPJRsY0
	GcDc961ftQ2/bhZ8KEDveZ5XTVHbjiDuUBdh0arQyNpqnezhPP6JdH6d1h8rweI7qT4=
X-Gm-Gg: ASbGncvi45afen+Xl7FeWLE4Kf5UQr4YxlwscygBNQfCCWAGBblgYnF0TYJTl7BzB1S
	2hfqw2A4cBsK4CT/TZGscpoUKa444SUWi6B/1iKcMuxWGJCqgA11zC48CBgqS+MuUfImNmAAzoY
	i0hG8kQ/Ini1xIgxy+bL7JL3lVCr2zxsn58r2BF31hltywW6bzDxqk6D/jprgeSp0Oz8fEQd4AU
	twgGHYbviqJd3n1b2u/15OAq3kZmccoBgmYp7dnOEzVrtnC7MyjB0zbMbSGYl82jaKfEZipA1gh
	NoGSGzC0xUImmEOba14EQeO9bHWqNVGbMHtjyLSQSy7bsgM4xeCKHpQlNOBPlosiCY28a7esgOm
	NLBN5JJtZ2UoB5A6tz8yNX7+lPosSjKjVVF2SQFEEQZkbP/EpyxpA
X-Google-Smtp-Source: AGHT+IERDCaOmw/P4P4Q05MdqPZfQ/2WYHrkfe9FFxi8U8hYp4D61H14IVLledsfc4L4egI5ILaAzA==
X-Received: by 2002:a05:6000:2285:b0:3ed:e1d8:bd72 with SMTP id ffacd0b85a97d-40e4364289amr2980328f8f.17.1758794649045;
        Thu, 25 Sep 2025 03:04:09 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:08 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v7 6/7] arm64: dts: renesas: r9a08g045: Add USB support
Date: Thu, 25 Sep 2025 13:03:01 +0300
Message-ID: <20250925100302.3508038-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_030411_424834_8ADB23D9 
X-CRM114-Status: UNSURE (   9.96  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add USB nodes for the Renesas RZ/G3S SoC. This consists of PHY reset,
host and device support.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- collected tags

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- dropped renesas,sysc-signals from usb2_phy0, usb2_phy1 nodes
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g

Changes in v3:
- changed the nodes order to keep similar nodes toghether

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 118 +++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 16e6ac614417..ab29b8365e26 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -717,6 +717,124 @@ eth1: ethernet@11c40000 {
 			status = "disabled";
 		};
 
+		phyrst: usbphy-ctrl@11e00000 {
+			compatible = "renesas,r9a08g045-usbphy-ctrl";
+			reg = <0 0x11e00000 0 0x10000>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>;
+			resets = <&cpg R9A08G045_USB_PRESETN>;
+			power-domains = <&cpg>;
+			#reset-cells = <1>;
+			renesas,sysc-pwrrdy = <&sysc 0xd70 0x1>;
+			status = "disabled";
+
+			usb0_vbus_otg: regulator-vbus {
+				regulator-name = "vbus";
+			};
+		};
+
+		ohci0: usb@11e10000 {
+			compatible = "generic-ohci";
+			reg = <0 0x11e10000 0 0x100>;
+			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			phys = <&usb2_phy0 1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ohci1: usb@11e30000 {
+			compatible = "generic-ohci";
+			reg = <0 0x11e30000 0 0x100>;
+			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			phys = <&usb2_phy1 1>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci0: usb@11e10100 {
+			compatible = "generic-ehci";
+			reg = <0 0x11e10100 0 0x100>;
+			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			phys = <&usb2_phy0 2>;
+			phy-names = "usb";
+			companion = <&ohci0>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		ehci1: usb@11e30100 {
+			compatible = "generic-ehci";
+			reg = <0 0x11e30100 0 0x100>;
+			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			phys = <&usb2_phy1 2>;
+			phy-names = "usb";
+			companion = <&ohci1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy0: usb-phy@11e10200 {
+			compatible = "renesas,usb2-phy-r9a08g045";
+			reg = <0 0x11e10200 0 0x700>;
+			interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H0_HCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2H0_HRESETN>;
+			#phy-cells = <1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		usb2_phy1: usb-phy@11e30200 {
+			compatible = "renesas,usb2-phy-r9a08g045";
+			reg = <0 0x11e30200 0 0x700>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2H1_HCLK>;
+			resets = <&phyrst 1>,
+				 <&cpg R9A08G045_USB_U2H1_HRESETN>;
+			#phy-cells = <1>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
+		hsusb: usb@11e20000 {
+			compatible = "renesas,usbhs-r9a08g045",
+				     "renesas,rzg2l-usbhs";
+			reg = <0 0x11e20000 0 0x10000>;
+			interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD R9A08G045_USB_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_USB_U2P_EXR_CPUCLK>;
+			resets = <&phyrst 0>,
+				 <&cpg R9A08G045_USB_U2P_EXL_SYSRST>;
+			renesas,buswait = <7>;
+			phys = <&usb2_phy0 3>;
+			phy-names = "usb";
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@12400000 {
 			compatible = "arm,gic-v3";
 			#interrupt-cells = <3>;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
