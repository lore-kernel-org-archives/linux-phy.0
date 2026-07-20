Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C4DC44527
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 10:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVE5oaC/NoBMmayAiSFRDtakAY1zfHyx2J7fSN+eYbY=; b=WqCtrMvQfQ7xRO
	cP2vvj0ccHFQ1Gz0J4vL+IZguCcz9GFQiPGEaG4SQieqbyJRC5BIpgT685nyo47trRgwV20fResea
	8PgoN2rxzI0ZpsFgWWJ8o4RRame2a16uMDZTaUu1hmeJ/30MA24gouOOLbqYVBbdS2wh4aAYpBCTR
	qaiStZn8YbgHQG9ptFQpH3nC4MfKFCeVUSfP72RnUAJUUgnl+f78DnDsXK7+RxM+NqgZ5f1N/tsEx
	rcOA8UB1dfi/bGKKQYgUTRe60Ri5PcESB+8Dub7f6UmMVl5WiX2d2JIvi/rgBA51pBgBNqdRjP5xW
	p6Qn5VFDa3UaN5KoqoHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll8x-00000006TZp-2dQm;
	Mon, 20 Jul 2026 10:22:39 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wll8u-00000006TYD-497Q
	for linux-phy@lists.infradead.org;
	Mon, 20 Jul 2026 10:22:38 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-38dfe910e9dso6762983a91.3
        for <linux-phy@lists.infradead.org>; Mon, 20 Jul 2026 03:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784542956; x=1785147756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zY7O09j1b/kYLX3ncq/pMHK0bqmzatxHIxsJQ5YPWmk=;
        b=XZnAguzHTYDXWFbhC/mmBbDbpx5eHr6npPwTRaalTvzN5XhLgYScr5LRUV4Z04XNfP
         7FJUZICT5u9ybR34pQr3wtrKNx5MJDT8IR1Y7+qEp3QCkOOxQN/Dxw58BEWpWuJ2c3Zn
         LJeEdmqYLUXYW7XuxEviV0bGvuSqLmZ88ZGlhzfFF7GwkzuAyzzh7oGFLsZ3xisLmKjK
         4prezSOMq6B2ovgW05B0YdM3cDJqxKA02yiesbKN6lcmN7nme515yQUUg3PAMmiN4pQA
         q+wZHpLBKLwIhT4eshxwpRiKGLCjPeaU1hjn7TjM01dMfcaMWPUg5LXG0xq4n0Yj/Fby
         jIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784542956; x=1785147756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=zY7O09j1b/kYLX3ncq/pMHK0bqmzatxHIxsJQ5YPWmk=;
        b=JyO0aRgW1ward2/r8NKWyoXezIfd9CSHQOdkGiXfAgRw+VzHr9S+IKZfOT/n6l6BUh
         ZSZSN4kMSz0zJp8OZEuF7glZpwjj/aZUM2/au88/uiEr2ArZQpCWjn29+iW+B/5qI2H2
         Dp6X7hccjxZkxGUdVVK4ILQ+Zb+td27ZNlM/uUWtS4IQIuSQPiLeT1A+oXL1t+QKMMD3
         A8TetqvUq70meKTQTatDsJI2V5CTYGMVDc6PEfP7uw/3eXz6k0YWZHNpNeEaAR8OhKzi
         rrrxdXGA2Wr8fuybGb222/0MzNnYfcZniRI45vAlML1n6PWVSheUqtYY85VginJxzq7d
         a9/Q==
X-Forwarded-Encrypted: i=1; AHgh+Ro8tO4QNkDHZJbFhDkCF0MmnUYm1Ig9PFJso9e0zMMSyhp8pOE842on4kwFS8V0tIAQfW7bHH35Wos=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ8bTnk7iIIlKqcJbt3Q/ZI4EbvTJfFNukaQYYIGH9/QiWIN41
	vWeml0Lps7hdnhxuPvfO3xRHirIdO4xv2THqMPUzXo4QXnXi1a5CYx7M
X-Gm-Gg: AfdE7cmSajVJqdOK1KK4NfZ7G8sOWHVfsjAev6x2KJdzX+vNMWohKNSMW18C+g2uLqd
	D2Or7f0SG4XZ5BI78imde5/605iSK98gp/yxYkSmoe/bmwsBO11hVhJkG2E2unVffyyKVonAvOk
	Z0skhxeod9QGy3jxThHoeXNow3zkVA7x0RHKlzJSe1KLaVfgdDi1NmxY+vmrysS3uUovl4eP5Kl
	fs6+aMRqAvlvEKD9N4h2r2p16NpoVWp5SFfGrtM9Sn3UZLpOG0Dv25cG1ef6YQOuD8fPm+RIQMk
	MI6zR7S4w0zJ5N/53CWBhJ1QyA+XED3K5CD6429fcmcjUhziGHFmvC8I+hvQg38Ap7JAOvYL1wN
	Y74TULNJBWmruJoFarrOWe/WHi9Xa9gFUh2s4ASgVMd3DnsBsN1R75kE96Fa6CFbXGuSGZzS0po
	jpnNtld5xQ/mP6E11ZngMNw4yXB7sxrl1wPTN2xwe1jnieVZ0jAm9XRxZr9/csvUU=
X-Received: by 2002:a17:90b:55c5:b0:37e:a09:2640 with SMTP id 98e67ed59e1d1-38e4b41713bmr14114572a91.7.1784542956061;
        Mon, 20 Jul 2026 03:22:36 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38e4b20df7esm5616125a91.13.2026.07.20.03.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 03:22:35 -0700 (PDT)
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
Subject: [PATCH v4 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
Date: Mon, 20 Jul 2026 18:22:21 +0800
Message-ID: <20260720102222.251179-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720102222.251179-1-a0987203069@gmail.com>
References: <20260720102222.251179-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_032237_040505_1CC967A9 
X-CRM114-Status: UNSURE (   9.69  )
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

Add the USB subsystem nodes for the MA35D1 SoC and boards:

  - usb_phy: standalone PHY node with #phy-cells = <1>, covering both
    the OTG port (PHY0, index 0) and the host-only port (PHY1, index 1).
    Uses nuvoton,sys phandle and HUSBH0_GATE clock per the binding.

  - usb (DWC2 gadget, USB0): phys = <&usb_phy 0>, dr_mode = peripheral.
  - ehci0/ohci0 (USB0 host): phys = <&usb_phy 0>, companion pairing.
  - ehci1/ohci1 (USB1 host): phys = <&usb_phy 1>.

Board files (ma35d1-som-256m.dts, ma35d1-iot-512m.dts) add pinctrl for
VBUSVLD, PWREN and OVC signals and enable all USB nodes.

Signed-off-by: Joey Lu <a0987203069@gmail.com>
---
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      | 36 ++++++++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 36 ++++++++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 65 +++++++++++++++++++
 3 files changed, 137 insertions(+)

diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
index 78534d613486..0a068abda6e0 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
@@ -97,6 +97,16 @@ pinctrl_uart14: uart14-pins {
 			power-source = <1>;
 		};
 	};
+
+	hsusb {
+		pinctrl_hsusb: hsusb-pins {
+			nuvoton,pins = <5 15 1>, /* VBUSVLD */
+				       <11 12 9>, /* PWREN */
+				       <11 13 9>; /* OVC */
+			bias-disable;
+			power-source = <1>;
+		};
+	};
 };
 
 &uart0 {
@@ -151,3 +161,29 @@ eth_phy1: ethernet-phy@1 {
 		reg = <1>;
 	};
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
index a029b660e8dc..7f1e6d2a1fc2 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -100,6 +100,16 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+
+	hsusb {
+		pinctrl_hsusb: hsusb-pins {
+			nuvoton,pins = <5 15 1>, /* VBUSVLD */
+				       <11 12 9>, /* PWREN */
+				       <11 13 9>; /* OVC */
+			bias-disable;
+			power-source = <1>;
+		};
+	};
 };
 
 &uart0 {
@@ -153,3 +163,29 @@ eth_phy1: ethernet-phy@1 {
 		reg = <1>;
 	};
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
index 7228ad4735b5..5a7a39b1b514 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -88,6 +88,14 @@ sys: system-management@40460000 {
 			#reset-cells = <1>;
 		};
 
+		usb_phy: usb-phy {
+			compatible = "nuvoton,ma35d1-usb2-phy";
+			clocks = <&clk HUSBH0_GATE>;
+			nuvoton,sys = <&sys>;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+
 		clk: clock-controller@40460200 {
 			compatible = "nuvoton,ma35d1-clk";
 			reg = <0x00000000 0x40460200 0x0 0x100>;
@@ -431,5 +439,62 @@ mdio1: mdio {
 				#size-cells = <0>;
 			};
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
+		ehci1: usb@401c0000 {
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
+		ohci1: usb@401d0000 {
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
