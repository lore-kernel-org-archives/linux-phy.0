Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C382DCA0EE9
	for <linux-phy@archiver.kernel.org>; Tue, 19 Aug 2025 05:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0U6SuBNipsZ+tSKNbyBEeRwxGaER7Exc9wobQyT5Ow=; b=S/H/CMKMPRL4RO
	1CurWdkaSLDOhPdTWXsBwDBECqpfAr3LdEykCauqGU46+qZClMR6zUtSv6x8QHPjJ1uFTEfwdOgrS
	P6MBwZxfxNrSNJXdY7fbsYH1dIzGxCETWGzwHiIIiDQrkrJsBdxeLHS4oJ+k4wWOKh/1Ctu9Dz74n
	O9sRrgjJH3qjlRMxxiAuyAZak11p4ceLT6/pGNAHOJ8YvtIAqpbiLoLyt25fJWSybJOeahwU9uk38
	mjCpY0RiL72Ba8hmNE1BzhMJAcCmWszvYDeQroQGxzoC3LHhASYiq456+4LpN7OEyGZakrmYyDgq7
	VzfIJXuSE7Qn9x6ydGDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF7A-00000009SCc-1oei;
	Tue, 19 Aug 2025 05:42:32 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoF78-00000009SBe-2l2n
	for linux-phy@lists.infradead.org;
	Tue, 19 Aug 2025 05:42:31 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3b9df0bffc3so3281509f8f.1
        for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 22:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1755582149; x=1756186949; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Cj5e9ujZibB123jMncpAMtWn8qKgxY22z4IJdc5luY=;
        b=fp+1b/V4YxylKqfiOImk2zlmyBSHkLlvz7Gld4INI1jqsBlU0+uJZd3W/7hoHGadg7
         XYI8i2IfhN3eUaJtBIleIfR06UIaMfgw1+PvZRHRewScn0S9k1rllk2GVJH/0Abi4o0c
         6PHJaLTzJBX8jPJQLVPbk4AiruZFyu5+dVk5t3qXr0jGW9zbmSx6yCngT0K491UIyRLD
         PnRoofo75A593pRDfYfqmhhrN2KS6iXsowy6kvGFQuWxIKLqEdbVcogGn1kN9ovR5H7L
         9hfOufGCYB68DNPWXNp+Dz+flBzvIuMh48cTIOlwK8eJg7PPJJg40wEj9sRC0J39HVKs
         J2Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755582149; x=1756186949;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Cj5e9ujZibB123jMncpAMtWn8qKgxY22z4IJdc5luY=;
        b=ig3jh3KaFLZuD8sYt1yMCP9/WfxQzZe7SrhRukNNUwZcs67o6S4wXoCV89kz9RZCEq
         g1zlXztt8CypepPa5nQRbKHZVSez7TbW5oHJyZIjn+3w1xp2XNQspiidp4B18N0R8xAn
         o/srIGKmRaHB+Ok5Gepn23cK8XVWeOE3gSJx/QKFy5ezE44P86eEMu/UEwJwFKCPOQkh
         E+PQPfV1egHPOKPzBnpDLTCT44+sLgMyb3O3OxpPzURpc+fOrASmDD+6cNgmojAMuewX
         r04U7OjNCgiHVN4D1s07bgHpl+WUp3+yy8POOzAoyjU9UF/+91nnShS08HSAr1pWi0Qv
         6wpQ==
X-Gm-Message-State: AOJu0YyxEtzsS45hVR7Fw5CDQPQ91lUHKGZ5PvXioIk/PGwwHpdPS0rY
	BCk/D/ia+nIkKs0dC66nDYlXptMnYn6we9Kng4GkFEEK/rmwlPwPkRmUgEGYFR8Agco=
X-Gm-Gg: ASbGncsVjkAKc3G+xiedUnVujl3VWrXRIX6g5R0Ydh9Q1frnKhEnfdZXeiF28+g72Qk
	EnNGL4S/pBaDEdT7QUnCeldxFPUum8u0abwmw/nexNiBaOmB4mMH0ju3ntPF2ydCRFze5XCNUwT
	nYxP5bpgWzdKC107syZdSL77+AexMqaqlUz4GVV5C/Y1RChaG2HHPORdVjaMHdd46JJPlr4aSHe
	GcKRzohrOIExhFZuAEOMbeX3ZzQ0bG2iAjvKnb+INub2stwvRU4lJBr8l2pWGk15j5OH6InzNFI
	CFZ7RaNQrbBKJJScEvkItVQLsVnIZzP2VJt3Ed2mtfDb0gTAb5MIEbs8aHTd3TzFIurE/WPIJbh
	O1av7KF2R6uY3P8bRhSY1LrkVZjivjzBNyGvSyV5UKQIWmg5mg9fSZazDdd2XoS2qr1q3S1J0aG
	pl4WLiJ+Y=
X-Google-Smtp-Source: AGHT+IHFPZ1WYS1TRNOJs1PLvKhd+CAfSBA92Wzrc+e9qbctLs8+wOrzubrfZ9b75mBvHWVLfR187w==
X-Received: by 2002:a05:6000:288b:b0:3b7:8d33:81ea with SMTP id ffacd0b85a97d-3c0ebcc6e99mr669917f8f.29.1755582149270;
        Mon, 18 Aug 2025 22:42:29 -0700 (PDT)
Received: from claudiu-TUXEDO-InfinityBook-Pro-AMD-Gen9.. ([2a02:2f04:620a:8b00:4343:2ee6:dba1:7917])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b42a9847fsm25097345e9.26.2025.08.18.22.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 22:42:28 -0700 (PDT)
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
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v5 6/7] arm64: dts: renesas: r9a08g045: Add USB support
Date: Tue, 19 Aug 2025 08:42:11 +0300
Message-ID: <20250819054212.486426-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250819054212.486426-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_224230_698826_7FF3CBF6 
X-CRM114-Status: GOOD (  11.11  )
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

Changes in v5:
- none

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
