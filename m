Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48D64CCD1BE
	for <linux-phy@archiver.kernel.org>; Thu, 23 Oct 2025 13:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPY5DB8wkd6QDUo0FSfl7KZPrgHnCh5Y8gNii6KxsPI=; b=O2N8HO5PDp/MZ2
	ZI+4nlOeFC0j/k+DzrmfClhP5K+3ecSyO+twXb7BaxELN6Tf8f/XW8blsWLrxXDT/BKZAfBDo/h2p
	jc78ViShkPcmjMUESCt73L5h23QWu1zslFKS9C88HFYcotMWe0ILB+RHQaK85D0YBXiAX7wp1uXfM
	9JNHP1MCkydch201FE/KG0XDa+ZzV9nzwTEX8W2LQXNDxy8DeutXlnGoFkBcqQxBeZA4CujfpeXp1
	P1pHM+w/wUOKy/v5DZ94zDUtr+NDwJ5GZht4Mi4ORwpOMQvIGeLxKLDNdHH9SyRDkBtl8u/uBRoDG
	6w+GVRIO1zL6TOodPetw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpx-00000006V3O-0Bak;
	Thu, 23 Oct 2025 13:58:41 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBvpu-00000006V1Y-2qzh
	for linux-phy@lists.infradead.org;
	Thu, 23 Oct 2025 13:58:39 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b403bb7843eso176975766b.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Oct 2025 06:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227917; x=1761832717; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S7yahp7GEuZbCGPELhsza9+agCEdI0nJz4aKJxPM9QA=;
        b=Hm4FbZRUXk7e3OdLp3QJioOS8vOWqrHXmTU7ac/zfKIoMdpS1VIqxiY+mkkPu5wpuf
         jn6lLjZgM0KJFl3QCEykPBut0c5vomdnjwkw2OE1Ts+I0EqEX59mqRR2WxAOt+pSpjVB
         GFqforNXcoERAuE2GVuHVBop/TzzUcU2PBBg5x3tHzeckUPzhK69wT79jd0suHxv8twW
         HlFF9i+BwnzN4+Tv7ALVAkQM+vJqe/aL3EHlyCevtTCgnwGbati8iRmd4P3nN5JKmAdX
         Z6zNong6i23CtTySAYRvoL3hshBS5eMCCjhYcsCj7lOMH7s64zb1y3d584gpiXT3/VY3
         su1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227917; x=1761832717;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S7yahp7GEuZbCGPELhsza9+agCEdI0nJz4aKJxPM9QA=;
        b=d534z/ENAQh8sRlyzdRSOA9PUIUDL/ZCSI5mOVsSB13cw6KY9gSj3PJEG+8JCxSyM8
         1pzKzMQh84YRhjANDLogu9W0SA3DvmFqTAgvsDyKhiA9zRrP7kmFF4fNYjoPrqlUZ+YP
         WOQ0cHEXbzYaRy9jDaCymXXOZKQS2McqAh6T0pMGOKMHQz4OCRMfF+/76DayBBOdpeWN
         zGbG0lq+bOi2jhqSfy8cthybJ1MHT1j3Js0hxesFLZqruRN6ajrGWrt1Zm3ZZV+UD4Ma
         aJZb1MQ1KfS7VEpfRdBXX8DufzTwW67c8IZorvbEMizGtPBFP3pBoDEEPIaf8GSNGVf3
         wLeQ==
X-Forwarded-Encrypted: i=1; AJvYcCU192gyip5h1hz7lVhUQmqyQEBgVe//2cjkUlv2NebTenPVvjI8aRXlNA34KIAB2rbU24MvMljPmiw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2MqFv/PZwNJI4gvXvV7IBnVg3sWC5K1RQgiazqgg5E8EXlJcz
	KWbOe9xoPXkCXeaEqvNou+ulfWB9VMYsu0Crv193NW7IhB4OucTkgFdZh9qF5psOo/g=
X-Gm-Gg: ASbGncv1lqaNqCx5SwcSBo9M9fmn+QWHr+7O0iTFpl3UBfmSwCY239LU64sVIFMYyst
	FbM/LoaMT2BuSIBMBKmtgEoOtZnzqN1lCc8b9y67e1S/Y7oVSso88RWgwxx2sGsDV9lKrj+Cv0v
	roDDe+PzCLLdHZDXyEalSLyTFglCJx8UkO/FzuZpnj1DPzu8fTr5sZAfjFLyvb3rSQrZbXIWQjt
	92Q1N6XEXXEJ7wfX1xjJVmoEDpGFej4uKSchcEhaj7Lx9SHIdHmfbVgFiUaCPBsMRLz5WQuAqSH
	2ErZ40ZOU+RA8aVG8B5OkB07z0cQ7Sgte10SxnyPRZOva2JblKhaVx1XmjZzVRBHe/GbAWq9yMV
	UznVjwlmgD9hno9/CiavY+XHzCGwKG8I8tcAeMqW3V5aYCpQEQgpJQ0GjJ/mVZ7QnDXAslk5Nm7
	UNookKArtzl7TzEzVSNR1mPmnO6CTL7w==
X-Google-Smtp-Source: AGHT+IERQSaNZ8XWnCMAWS4myPYBzmO3iaaDa9WU1IStoe35MF/GtpgRwoWc/lAKsVo6nO1iKmmTLg==
X-Received: by 2002:a17:906:ef04:b0:b31:ec30:c678 with SMTP id a640c23a62f3a-b647482d9c3mr3234596766b.57.1761227917037;
        Thu, 23 Oct 2025 06:58:37 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:36 -0700 (PDT)
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
Subject: [PATCH v8 6/7] arm64: dts: renesas: r9a08g045: Add USB support
Date: Thu, 23 Oct 2025 16:58:09 +0300
Message-ID: <20251023135810.1688415-7-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_065838_750115_C40DC4B6 
X-CRM114-Status: UNSURE (   9.27  )
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

Changes in v8:
- none

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
index dd9c9c33d9d6..876de634908e 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -727,6 +727,124 @@ eth1: ethernet@11c40000 {
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
