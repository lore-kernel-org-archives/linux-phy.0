Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F663C87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  8 Aug 2025 06:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7kEXn00QSrvHmNCXOjG6d4n5cOJatFPd8RKuynGlZI=; b=BMxr3cbEELGayj
	4LmJ8hBGPK77Kwzrm2aKtHZz3oHTUg6DrlSIjr2KQbsAU9ixY/hyiOICRnkX+bgleefrFbLyL6vFE
	fcpkA4huPi5WaeydFFBVixG4vJAKWI2jRwb9SNFBUjqfqnP94p9044IITMyV6zN/dSA1SKUDoa3Tj
	VjurtYT9EcTejp48ZOaAkd6sDI1PyC1hVnwJKU6YILPM9z8volqs3aGpBL4hqz4RslLPbgSeDshF8
	61dSQHOpJd+tQAH9VnMHrhIXvmHzjaNVJcerSxi0VoocWLoRxHjwYdkS7hTrqYzfzX5y93C2IUI/H
	O4322GI7F4zv+DCSAdpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR3-000000025cL-3io2;
	Fri, 08 Aug 2025 06:18:37 +0000
Received: from mail-ed1-f47.google.com ([209.85.208.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ukGR1-000000025Zx-1XLE
	for linux-phy@lists.infradead.org;
	Fri, 08 Aug 2025 06:18:36 +0000
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60bfcada295so2903073a12.1
        for <linux-phy@lists.infradead.org>; Thu, 07 Aug 2025 23:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1754633913; x=1755238713; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=84OQbF9bYCLGD5qOco97q4MqiLnZ3GTtaXjZIqPyEhc=;
        b=gHWebf+hZ2TQz9SZyvYufUhgC7kzbeNUL9pLKo0yaqJA8ZpK7E9BczzbNKWc607GeR
         YTME8RGEjzSGaxbKIEjADWb74Cd3H2PFtUSYnO1yHtIc6nOcB945dzK0PeKLTsKH29dI
         /SDc1OvJEMuNPHnRE2PZkyP0Qb+S/zviIkhErPtKNF1nnllnPZoUU65K+QcH4i2u52IW
         ivO2+uEacpj//wd4l9dAw7iJzIopTX9I2p/1DT5/5zCCZmJPmwZm26qN94/NZGKEtvLD
         WWlm8WxLGmuYcQuqpMLQXw3f2TWjh4luHJTI07j6iaThqA7cZ4nKvupIF8Hbl3cZ4yHf
         S7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754633913; x=1755238713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=84OQbF9bYCLGD5qOco97q4MqiLnZ3GTtaXjZIqPyEhc=;
        b=mtCrOxICkYchWDqC853H9nxnLOEHGLA8/pPTpq1Z5HhO4cPeqoDfJEN+uzkIN149H3
         cC+jGl0/uZrL13aIitK968HDcevZwEpkXqxfLgjE9NgEsEvekYFjnOFRKSMZ/ue2zO24
         uTqkUvbCxVDvGmhpceihBiMRAvA9nIrvmiscEWh5H5DIL85c8FzzC1Za/1ciFt2jwCpS
         AbN7IAq1Np16K+nY0xMTErTDenKozbTRaLAR1h1/OtVHEItuQQaYKqzP/oEJ4Ug/yZJH
         4FP9Dw/qgF71q5Y0DQbnoybutFYvePo32KXDPrMLfq2kfnRgovjUMO9Oo5yB4WMFFvG7
         eUWA==
X-Forwarded-Encrypted: i=1; AJvYcCUGr6K8fVTqXsTokLFeJdh+fMICRl9gCwfhDa49Ta032z78bXo/zVkpTVgoEQ3dVmCQpxfIKiRAy40=@lists.infradead.org
X-Gm-Message-State: AOJu0YyUSWFc+g14VPrN9th4cIa0QW5Gk42yZnS4Fmc6v/7wb35AzM8P
	in+MKRgvyHgH90f5x7GBYi+5p3dsYkL5kgjiPPFpXJtQdOV4npJFZIvSKJUFnS0w1xY=
X-Gm-Gg: ASbGncuGBLIn0MGgDqCjDj3K6R8+HnvnsWUWLsibovqxPZN/bTy4nY7bZ2DRCpBjtLO
	gR/nUD+m6WjGijJQKz5dCsDqCLip56cqlL0cI187SKikiJq6X06Bfla4MqKj2CQZyZDZ3chdECS
	id4KDe0Z6xhG23bhew4E1xAbbeU9RrZHTeoLhDFp51KX2GwgZ3IxI9ENGKgxaCy6kj5Teukm6dd
	joNs6cEADG3ZttgDlv5QLMBmsTXL9Lm4+k64sSRO/kT2Plrfj7hS6cj5HrCLmE1ziGsHd6NpxSq
	INm8zI+5nPddOv+eNI8NGXmX4uDjshcpZ2TS2FT9Vt3WxXSOe9ZLIFagd45WOnG8vDt9bvugYcv
	BJIeiqr+nsYpE+21cF3sizrpR53fXxqzyLVwtXdfVMBpHhh4e8exf
X-Google-Smtp-Source: AGHT+IFRExz9PVRj8Swpu3e4S+x0Mbbto15T51WR62cF1Ysrntq6xKyRbn6W7QUObuHiH8l/+I0zIQ==
X-Received: by 2002:a17:907:7f18:b0:ae9:b800:2283 with SMTP id a640c23a62f3a-af9c6452471mr150843166b.15.1754633913295;
        Thu, 07 Aug 2025 23:18:33 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a218ab4sm1440488566b.92.2025.08.07.23.18.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Aug 2025 23:18:32 -0700 (PDT)
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
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 7/8] arm64: dts: renesas: r9a08g045: Add USB support
Date: Fri,  8 Aug 2025 09:18:05 +0300
Message-ID: <20250808061806.2729274-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_231835_409797_D950F4EB 
X-CRM114-Status: GOOD (  10.75  )
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

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- dropped renesas,sysc-signals from usb2_phy0, usb2_phy1 nodes
- s/renesas,sysc-signals/renesas,sysc-pwrrdy/g

Changes in v3:
- changed the nodes order to keep similar nodes toghether

Changes in v2:
- this was patch 14/16 in v1
- added renesas,sysc-signal properties to USB PHYs
- collected tags
- Geert: I kept your tag; please let me know if you consider otherwise 

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 118 +++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 0364f89776e6..b7ad6db0174b 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -681,6 +681,124 @@ eth1: ethernet@11c40000 {
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
