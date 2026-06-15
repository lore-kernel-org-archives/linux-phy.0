Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E83FCCD98CE
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 05:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXporQ/l6ogi4NlnC1/9Fvo+ERfipmYY3OaaYJ9KDqM=; b=xPDiyscUQ/eF69
	W7vMKFlbtBTbARO6SKwv7xrIXz5a9X/rPTyocGXxlBE9C8RenSiK5hV2ok3exWF0c2iiGguETAh2H
	URZ1BnSNdszXnInewJkmBiu8YIXgVzdr/V9swmue2cL2E1XknO9eCuYefty8HutbKZz5Pd8FPNnRm
	lgwIxv+H4JzbCL/cYewysIzy7T2z0V9/kW+B9GTEvY8d4s3d1VZm1WyBpwZUKQmFtqOp1y3Hao9MQ
	jVS8hM0xS81VulOvYFW1h8kawdtTZVKUmHBu7fauBMkOXJypayhdTHS09e4vOjbUbE/hfF4/wTIEG
	caKAEEKAmjntg0WRFK0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0CO-0000000De1G-2vtm;
	Mon, 15 Jun 2026 05:49:28 +0000
Received: from mail-dy1-x132d.google.com ([2607:f8b0:4864:20::132d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ0CM-0000000DdzM-2d6h
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 05:49:27 +0000
Received: by mail-dy1-x132d.google.com with SMTP id 5a478bee46e88-304d7f31215so2683158eec.1
        for <linux-phy@lists.infradead.org>; Sun, 14 Jun 2026 22:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781502566; x=1782107366; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0UWtt4coThKyPKnZ5mqdOHry2K2IKnmgBl0O8XMrW0=;
        b=rOfC4uOUvyhht9HdAhjk6R55fgPpetTBgYPBp71ZCpmIVkY+jbVHQGEKl6KSvErFYc
         8WB0duuvkVwkV3M9pmXu3IBEzuUqwmWaGs+a8IoNGK/Ax87jxRNkmykSi336b1BLcK3U
         wRIJXPCiT2fzoxBnY0EIWyr+KOsKmWgvPqeh74jXpUZWwl31gW4/Rrk3dFR1FjfjEY8h
         eaji/OTI1hIPVK08VJyAnSjCBK52DY+SJclN/RzCM3v/EQmRs7DPrS4bdPrx00S/9mJi
         UhH/rFas5ozcVPnNa2ZWltBSIQ0IEHBdLnicSCLZX1DMhqes9EI7sCtLRmEfGibJ9SVT
         NwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781502566; x=1782107366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=S0UWtt4coThKyPKnZ5mqdOHry2K2IKnmgBl0O8XMrW0=;
        b=qZ2Oyia4NuDqjFCr7lZGdO0ZvvVUH7yYUQSXz2AISh6o5LnzYe/Vz5Oy/quwzmJVKb
         NUgVigGHxKLinz4q2I6DMMqUs7N1i7eYfE0GJkedROsiharCp5ZMNzr894/1e++LP+AP
         wKgsHWDWmY+LBkG4XKvSJoI2cyNpuv/umQBI0xG3D+wCQgPf3ZSgbFpBjzmcK+bUseYk
         iRmoRJoZPcRh6YrC/nV0An7zdr/INh+mffeSat8yYMtzyxlI4/3TWKLUUXWk6KpCTlk/
         WGJRR2xewnGHTX0d0J+Hp6h3m7kfu7Xo/nwwbwnNHlGyqvNxaYfgoWa5s4DVgSblyTw2
         jEkg==
X-Forwarded-Encrypted: i=1; AFNElJ+MqY57899MrsTrDibfbyjJI0ZI/EVGkuAV6NBJNddSvN1FFA9mlY1en6NkJ/5VEsR/IQUks8J2xBo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzReF9B8RQmwHXM+Q9DSaRW6AZF7aIutQTNS62uvvKjfNAGwaGj
	JffLgpoVBNhxbbwf53tcZzWBdwqZHF3JZxCC++xER6lepD+tj6ZwdAX7
X-Gm-Gg: Acq92OG/QaGTlLEyRgJmS05AMGbeLLUeHLMgmDiAoWY1lUBh0psI7rX7Mwegoa/PA9V
	HgIMi3RP8Yf+PYV6XWs5LZubgP9DrRedqQiRhnjkuoW1fPP9F4+Mnyv2RRHynStSsM2+se1cpj6
	F/a2QuwLgpCghTdB9tWHBzNDNUAH8MrjPy7Z6K+3iNYKgwl8WPaRnYXjtKU50KMMR1/92SCCHTP
	ji+rZoU+HMPNUQSyq0gMZA0nJjmTAOWkvDN9IRb8/ba/YPToGelzHufgfbIECjpJlTRIN1Kz3qP
	e/nxHXdcDQJfSfAc/pZFP8/1/71Bi1CBhPlKHKIfkwaReaF89Po8gWKnkdvzmYDzsN1LAzy62by
	X+jmB6CSc8REtA7nN8iXSXZhSnP2crV0flvyBD0viDeI5n3Hqa1hy+Ntb8ff8hg4ONnZKvPEFAm
	3VdGdnaf8XBrRAL91tt423S9O8S+NXgwfHt6cQx7zNyfZm8iZCekLu8h8aEJMpc8NFTdRWRT0Pv
	TT3bBfIFtpx
X-Received: by 2002:a05:7300:3202:b0:304:d788:ac5 with SMTP id 5a478bee46e88-308200c9097mr8011634eec.35.1781502565474;
        Sun, 14 Jun 2026 22:49:25 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081ddaf69asm14295300eec.0.2026.06.14.22.49.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 22:49:25 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
Date: Mon, 15 Jun 2026 13:49:10 +0800
Message-ID: <20260615054911.48821-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615054911.48821-1-a0987203069@gmail.com>
References: <20260615054911.48821-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_224926_714118_9EFD226C 
X-CRM114-Status: GOOD (  12.11  )
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

Add device tree nodes for the MA35D1 USB subsystem:

  - sys node gains simple-mfd + address/size-cells so it can contain
    the usb-phy@60 child.

  - usb-phy@60 is added as a child of sys, using the combined
    nuvoton,ma35d1-usb2-phy driver with #phy-cells = <1>.  No clock
    properties: clock gating is handled by each controller node.

  - DWC2 gadget (usb@40200000), EHCI0/1, and OHCI0/1 nodes are
    added.  Each controller names its clock gate directly and
    references the PHY by index (0 for the OTG port, 1 for the
    dedicated host port).

  - Board files (ma35d1-som-256m.dts, ma35d1-iot-512m.dts) enable the
    PHY, dwc2, ehci0/1, and ohci0/1 nodes and add pinctrl for the
    HSUSB signals (VBUSVLD, PWREN, OVC).

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      | 36 ++++++++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 36 ++++++++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 68 ++++++++++++++++++-
 3 files changed, 139 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
index 9482bec1aa57..32fea36da7f4 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
@@ -95,6 +95,16 @@ pinctrl_uart14: uart14-pins {
 			power-source = <1>;
 		};
 	};
+
+	hsusb {
+		pinctrl_hsusb: hsusb-pins {
+			nuvoton,pins = <5 15 1>, /* VBUSVLD */
+				       <11 12 9>,    /* PWREN */
+				       <11 13 9>;    /* OVC */
+			bias-disable;
+			power-source = <1>;
+		};
+	};
 };
 
 &uart0 {
@@ -126,3 +136,29 @@ &uart14 {
 	pinctrl-0 = <&pinctrl_uart14>;
 	status = "okay";
 };
+
+&usb_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hsusb>;
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
index f6f20a17e501..85d1c5db8bd9 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -98,6 +98,16 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+
+	hsusb {
+		pinctrl_hsusb: hsusb-pins {
+			nuvoton,pins = <5 15 1>, /* VBUSVLD */
+				       <11 12 9>,    /* PWREN */
+				       <11 13 9>;    /* OVC */
+			bias-disable;
+			power-source = <1>;
+		};
+	};
 };
 
 &uart0 {
@@ -129,3 +139,29 @@ &uart16 {
 	pinctrl-0 = <&pinctrl_uart16>;
 	status = "okay";
 };
+
+&usb_phy {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hsusb>;
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+};
+
+&ehci0 {
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&ohci0 {
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
index e51b98f5bdce..73ff1d78d284 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -83,9 +83,18 @@ soc {
 		ranges;
 
 		sys: system-management@40460000 {
-			compatible = "nuvoton,ma35d1-reset", "syscon";
+			compatible = "nuvoton,ma35d1-reset", "syscon", "simple-mfd";
 			reg = <0x0 0x40460000 0x0 0x200>;
 			#reset-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			usb_phy: usb-phy@60 {
+				compatible = "nuvoton,ma35d1-usb2-phy";
+				reg = <0x60 0x14>;
+				#phy-cells = <1>;
+				status = "disabled";
+			};
 		};
 
 		clk: clock-controller@40460200 {
@@ -379,5 +388,62 @@ uart16: serial@40880000 {
 			clocks = <&clk UART16_GATE>;
 			status = "disabled";
 		};
+
+		usb: usb@40200000 {
+			compatible = "snps,dwc2";
+			reg = <0x0 0x40200000 0x0 0x1000>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk USBD_GATE>;
+			clock-names = "otg";
+			phys = <&usb_phy 0>;
+			phy-names = "usb2-phy";
+			dr_mode = "peripheral";
+			g-np-tx-fifo-size = <16>;
+			g-rx-fifo-size = <0x100>;
+			g-tx-fifo-size = <256 256 64 64 64 32 32 32>;
+			status = "disabled";
+		};
+
+		ehci0: usb@40140000 {
+			compatible = "generic-ehci";
+			reg = <0x0 0x40140000 0x0 0x1000>;
+			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk HUSBH0_GATE>;
+			phys = <&usb_phy 0>;
+			phy-names = "usb";
+			companion = <&ohci0>;
+			status = "disabled";
+		};
+
+		ehci1: usb@401C0000 {
+			compatible = "generic-ehci";
+			reg = <0x0 0x401c0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk HUSBH1_GATE>;
+			phys = <&usb_phy 1>;
+			phy-names = "usb";
+			companion = <&ohci1>;
+			status = "disabled";
+		};
+
+		ohci0: usb@40150000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0x40150000 0x0 0x1000>;
+			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk HUSBH0_GATE>;
+			phys = <&usb_phy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
+		ohci1: usb@401D0000 {
+			compatible = "generic-ohci";
+			reg = <0x0 0x401d0000 0x0 0x1000>;
+			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk HUSBH1_GATE>;
+			phys = <&usb_phy 1>;
+			phy-names = "usb";
+			status = "disabled";
+		};
 	};
 };
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
