Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4790CDE006
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 02:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QF8S9Idw5nkS6DPr/60xcmdtQt0xvFW25jwDfstE8rs=; b=dgROpp+s7jTovO
	6DORg+CsolAqj9PU9MEfocwLkiDiyGlVJuCEBr0iAFwFYtr/dsLWGVmMen7C+VFDCwgEm7xfpLNN6
	owatPk2DHwjGz2tQsm7mFr3rwyssQSxqDKTu3Tfz68TQ7OYZRG4wyarVKo7E8+U0WdCqSQCP7kFww
	a+tX8y4FeDey/4sU3Ws8o3uNMQlz63K2mjBUSTCC2SQ8dcShqkHdpDaCeK4SoFq4DZFlhHtXIVp7W
	1VJd7A+UbI4imUmIeFaZ3JNbKoDxva2mTCVAtNApcA9usqAMKYWGD3KkjZPkR9xiBgHK0aoVQih2a
	Lx9W1kdxc8116idMrunA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wca0q-00000008Zr5-2GAF;
	Thu, 25 Jun 2026 02:40:20 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wca0m-00000008ZoZ-2xAH
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 02:40:17 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2c7f1db3ad2so3537685ad.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 19:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782355216; x=1782960016; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdqmnYCmQ1lcOs8KCal+gHa/OKDAbNtziDqh652nnts=;
        b=oZgA0ySQ3MmvZVuMO0l4NK8xBWgm4+5XYNLyRLgjdlTVQVsEZnwNg7Ko+LInMUQuVw
         Vn+jdQm88IsjtrTG8k0uBq46V5difXFgO3A5ckbC3kjuuUWHBvHtBV+ke6k0ey9B+tUH
         Kx13y4OORau14fx6PLiB6SVpGnTyrTzorM7r2wdBReYgncY/eQRx8Eq0v3BeJm6QtDQj
         V436tFd/uzh/wu7cpj8itAfCv90wPoCmh7FlD45wV09ZuhSZk6jC1sIDUMM9K/gkLadm
         Bvoxc73KHv6HLH9gGkr7Cja9fOhD4Fx39Ql7TOblxn7utGMDd2+RKjmXJ7xHFhfU3nS7
         0XIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782355216; x=1782960016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UdqmnYCmQ1lcOs8KCal+gHa/OKDAbNtziDqh652nnts=;
        b=b79J6TlfQiUNlOf386ejpFY91r5ZJSFub+plJA8vVjoIUbtDgGhAan+jizInLc3bdo
         1NajfIzz1KnttGrEJBvyyHSU4Cv9soriYfpTxfv4leqNaf4gQqYzHOyQ8An7DH497cfq
         GxNUzanM8twZdM2EQQizh88kiO/qOsUm+j1/NmwBvC7pX7/qReBHv+M+rqtrBt2hDmV2
         EOnQuqgoVxGhLDLaou4bCeCx/98rc6iW0Np8DmhemGe02SIYwGQuJ5PFqH4j8unWqZRy
         /OiL6pdwScrTcFvWK2C86u9dLNQDbLnkXz1cPOdwrki69mitcaBaeQyRCv2ZeZKnTqyC
         vAAg==
X-Forwarded-Encrypted: i=1; AHgh+RoloJwNpD0JzZ27jIW9dIsJPz4V/0C4E+5zGdjjp418wx3xcFqCZb0Sg3xvb6jyQJrKwdKU3hl71qU=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywdn4mOpYHKhOzTvxn4ae/flVUoX7v5X1Y8uJXfAupUPoNwrzHd
	wAu7at32kpftz7I1nLUabXR2TR/xXgCdYgRH9lON+pdqLdDNWEb8pPhr
X-Gm-Gg: AfdE7cktFXLdzDWhlPiaBtXr02c9VMLPhj1tqx7F35lB9lhMGFjGCf+MY8lVdzd6MgX
	2Anw6ogmE2O+Vw7GZnC3gJaY24WprnEO9UndQRBrxqKk9kAmkpCNkDH2VMQLllrz3zkyyKVscFz
	h5myWEVt+ltmDOJXzLmZv6+L6WyNIvfoFyRHdQCsb3rOrdC4AoexTAf0ZOBLcwbE0ftbi8qz/jn
	AVpaY58YoCwRFSCpvEPMafywAF0cplV9wtlNcVh+VKadElIWC9W5hP270grd1sXQXGCvB1yWsf+
	zsQ6sbOYl9L2WZHw4GV1QJZTH/fVnsGZXazcft2cSfDIxL+JEjTlY1Y8k/QJfbgv1H6sQCD51N7
	SRO/V9gCD1amF/BG5f8JlxB6zm/WTNbtY9IrovbA206sv41nNpMBRAk8ivct5nPgtS9Fl9DxckR
	zsW1M9l84dwCM8VLOqL/UpPsoNwGx9NO4uLiQBCG6mGifYx3ksZ6XjKtqMMiYerq9NYwwYLXjVm
	PbtRBJ2A4jZ
X-Received: by 2002:a17:902:db0e:b0:2b0:b016:773f with SMTP id d9443c01a7336-2c7fc730bfdmr7156625ad.11.1782355215677;
        Wed, 24 Jun 2026 19:40:15 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c7f64dc839sm8538545ad.68.2026.06.24.19.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 19:40:15 -0700 (PDT)
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
Subject: [PATCH v2 3/4] arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
Date: Thu, 25 Jun 2026 10:39:57 +0800
Message-ID: <20260625023958.569299-4-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260625023958.569299-1-a0987203069@gmail.com>
References: <20260625023958.569299-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_194016_751092_A1956DC7 
X-CRM114-Status: GOOD (  12.13  )
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
index e51b98f5bdce..a6a354f28311 100644
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
