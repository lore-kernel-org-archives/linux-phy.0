Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6771FCA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 02:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHPAP2pEomdHNLZRO/2b8gQnh/vW9xF2SIePSx/4wVI=; b=cXJ7wL7BUT9C3G
	/cBxyzzz3qfsttfZeDxc96YDefelVkikCXVdJPHmFumniADFaf6PFUYV54akzvS4ZcJAkXCqrgbbP
	+iDQsFAqTD2YWQv9a8tD+fC6Ba984E2KQngu2+dUvTn0QtSfHCRo4NldOpFBmYFpiKh6LLf7dZBnD
	wCLytahbQeBZ/0Xav0KWJ0w/h9KIKOh9GUHAaDVHGA/i6EtSbdEhE6iVJngFO112Qc6K6a80UQVyO
	jBmu+B46S7VpVx0T7g8fllwnbWjG034dTjhDDDU4nuC/m2hm5NK980edoQ/pSDO/sQoajF5QmqYXX
	WI3/XfhiqWMOPUyVtDaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNHP-000000026GK-0Dnx;
	Tue, 29 Sep 2026 02:09:15 +0000
Received: from mail-pz2-x0c.google.com ([2607:f8b0:4864:3b::c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBNHI-000000026D8-19wQ
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 02:09:09 +0000
Received: by mail-pz2-x0c.google.com with SMTP id d2e1a72fcca58-8804b59404aso1702814b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 19:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790647748; x=1791252548; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Eiu/HyfS6gfk4IAm6JgNDtsAZdG+SE6Eq+y4phDFY2k=;
        b=RrAbnkoN3nvLaPwqaCbc7rCEJpWk1TiIMDLk9AP55fuF3SrO/G3WqVECuK5ZIEz6er
         JZgJdT7p7WZuuE1B3P6caE4NZLJQOztyeeDGEEn5Tt5DYvam167X8rKDpf4VVe8ezTGD
         qTFUOUjSxLy5Ns+c/W4tpjWmTTI+HNQf9efDuT/tk401vtaTs4opw29bm9eA0/tspdeb
         48zDg8HZQE1Lqb4H4H6lV4vzWHehERvTjoEEVhg8AoP+dcIL6cIbZaHcVsWzahegNO9n
         Lh/smnkgJ63ZL22BGGp7dtHmHG+sBVfrbsnN3rnOSxi//Uo0p0nTGoZHGoJe5cFD9KHk
         2UvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790647748; x=1791252548;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Eiu/HyfS6gfk4IAm6JgNDtsAZdG+SE6Eq+y4phDFY2k=;
        b=H3vxxFL7SB2gMHPLd9qSjYFj3iGU7o0hr+v7AdtOsYLRKW4WOaA2oRxh8cdhO/ad4Y
         DTL8YweyRLE3N/0Xh5pMtQ2rZhzW5ECeV1qnAHxBrimuJsmnhVS6/73tqwlOwhQiGBaR
         nhs0aIWZX604E9NBG0oMD+XbQ8aKOvJydTVm7rJEzZJiC6r/uvQuN0JZq4J2+pblbxUQ
         eEl34yOKuberYS3YeuV5vh0fd8Ihdr9/IrSwqygSez3yqn/ZTiHFuRnfncvvRa/KRgul
         deOt1fryBo60wLHPezTOloqzagK8DYkdAr6ohLNjEWQTTHwXd7qZZH/XNrTAl6vNg6Vn
         qxZw==
X-Forwarded-Encrypted: i=1; AKwUvBxLGTOErZl0wKZffCPM3OGyrjsXy0QEh5n9lGAy2pq6lSP2zaYUkEkhO5d9BJinTmGOXGb4PO4cSjE=@lists.infradead.org
X-Gm-Message-State: AFuF++knDYx49raJpUwGlxhK66wAr6TqqT2lqfmB9iLIzxKxfKuzLAjL
	VLfmTxWhqLmqwLpNbYn64Ia9deTig7wkrc9Jq6zC9M6hz7hsufNy8W6l
X-Gm-Gg: AYBFou2rfX0gYdVb/V5DAuGc2jdIa2lXBsfEs5aLaIdq8V0khXvmvj6CVNyQUQx7DZb
	YkMyFOzsVzOUwmKQnRe4MVi643pprahZ40jScLGc/nuDxn7hw84IJ5knLmyg0yN5We8EC1bGxIl
	vzGpBTvVhs+3ltUbhl0S05DPXVO7pRXgp6SDvcFC8KDj2Brn27oAWRRloiCA7CK2BF7DrokQ6w+
	MJkQHJ9OLdMvjEp/wdc9/Fe7bXKlTQcSE+ZezZ08p91KzwgM/rprpM51OuCy1nUjJVG9IpVw9iH
	kOX75+jRceZ1qKv0fgUMsNeiLccpzIXMEi3ngr8Oj0rbiILfiIIcJJNxmJU/DdiwB/X/S6itvvE
	W+C9HkjsSQLZpTYYEvzQYNrQebRfg8dkXURZWjVeqvoGhi8EMAnxslewt6bbM8YcIQa7cl28mXf
	YbXjnrGLhgZelbOkkhdmhPR3qm41egGZVQ/LLMo55gl3VRhEX5tDXiGzYUbpXMdFEaRx3fgixNG
	rgIjx3/yQhd7P1lTi6DRicuaSZarSGX1ej32ek2/yKyv7mDwhHpXa43euf560I=
X-Received: by 2002:a05:6300:6698:b0:3dd:d91d:e2c2 with SMTP id adf61e73a8af0-3de0e7f4a2fmr13272194637.48.1790647747603;
        Mon, 28 Sep 2026 19:09:07 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc78796cf39sm5448596a12.32.2026.09.28.19.09.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 19:09:07 -0700 (PDT)
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
Subject: [PATCH v6 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
Date: Tue, 29 Sep 2026 10:08:53 +0800
Message-ID: <20260929020854.1282339-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260929020854.1282339-1-a0987203069@gmail.com>
References: <20260929020854.1282339-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_190908_326120_083DA7F0 
X-CRM114-Status: GOOD (  10.59  )
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
index 78534d613486..b2f25de2ae44 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
@@ -97,6 +97,16 @@ pinctrl_uart14: uart14-pins {
 			power-source = <1>;
 		};
 	};
+
+	hsusb-grp {
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
index a029b660e8dc..58349470bc64 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
@@ -100,6 +100,16 @@ pinctrl_uart16: uart16-pins {
 			power-source = <1>;
 		};
 	};
+
+	hsusb-grp {
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
index 7228ad4735b5..72a1659207fa 100644
--- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
+++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
@@ -76,6 +76,14 @@ IRQ_TYPE_LEVEL_LOW)>, /* Virtual */
 		interrupt-parent = <&gic>;
 	};
 
+	usb_phy: usb-phy {
+		compatible = "nuvoton,ma35d1-usb2-phy";
+		clocks = <&clk HUSBH0_GATE>;
+		nuvoton,sys = <&sys>;
+		#phy-cells = <1>;
+		status = "disabled";
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
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
