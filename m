Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE64EC88E50
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 03:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfssRLaG4vMgmKjx+6yCphh1VV5R+Ouc8xlKw+8+kYo=; b=MVj0OTF6Z8yovL
	k/cxdq8YbugiRTI5IM5zNcc0jhhTq8N9MU3gMAkCqtU+tfhtl4osj5N25iGkk1d9tMWX42Rn+trES
	hfNw94cZ77O3O4UqdmWbCG4O+Za3ClafWFXHhXMkFi+LbzuwU/1OEsjVR7UCMoD1VmGg92B6NpaW2
	fQtu111pqzJGN5t6qyGSzWnz1HDJ7Uxv72C7YookkK29cc63KoPkFvtIO1bJSFcWk8A/k+TcVz0p1
	EjWEKdL0iV5R/Zqk9qAIeHQksi2S4sQlnp4KCb8c2LeUeU4jqcULLwx8cKr480NeXWmg5ZG7qu4N0
	Hk7dQfmhKxEpEnabRP8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xDw-00000002G87-0wQq;
	Mon, 14 Sep 2026 03:19:17 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xDu-00000002G6j-0vC4
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 03:19:15 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2dd1dcdcf95so20687525ad.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 20:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789355953; x=1789960753; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0lFtXijizYAouWVN9+dy0kDOQ2hTGkK/90hktZxmu1c=;
        b=hi4XOjYLxgH5dCledjK/eaCQyAX++v1n2HQjwE4tLW3kKwBlWjwsqHSvqGGwPXsasG
         bcxEbzss0w7UXdg0ipeOkOUTM7mzKg7D1PkD0r68Cxt0paMxMe85oCqFCzwk1euCHTcp
         UKE6ykElTptjeHDygogKIz5gOp0DuxiQJGiNPiZolUybuIqlIb/5KQ0jw/HxvRmgv4nt
         TyGzTrTCg+/eBxEqjhtW1/N34A6UwqGMno6kC5NwbXIBSdoZsT8gqQZZwqwq+roUdLU7
         pQ7cc9QHhI29cDvnxmr5rkIwursG/whE7ydc6KOOv1Ju6CprSif8HYL1qnvdDaACXtDB
         cetg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789355953; x=1789960753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0lFtXijizYAouWVN9+dy0kDOQ2hTGkK/90hktZxmu1c=;
        b=oSdyt4m1f7scXF9Br1gVvzZ6JGtfoymHzhtBOhbs33x57TKMcnFOOqcfjAShpxMS3/
         +z4fAlAEAs1R7wLCUVyK2sWeYBoFRdSeSyNhmbITY+LzypelrwZlBWZmibuVQ2vlha2j
         LUxZfR0uX3VTOrbTXwaIMGwriG98zDUtMJsPZv2Omdm6DB/0yCCDsXKHey4fxfUu7zPJ
         7ETbQAWTagXSord1LHthXApf4VlGiEfk36y5qFqKrTbX9YA+btY1OxpH7rZqCIvjhgPJ
         QaYVSRVV2hR9KP2G2oXOJFCa2o92jmuEwyxmzkztm69THh4/UPRz+JPabN4XQy2U3fov
         qtHA==
X-Forwarded-Encrypted: i=1; AKwUvBwrjg7wQpLu50lCZI2RwOozUC2wAtx/nagh8xOLof6hy36efB/zYXESoAx5k/kSIaAm4+rQz6jAS7M=@lists.infradead.org
X-Gm-Message-State: AFuF++kTtXclH/oBbbgBopZQTlqo0Khg74bcA9doSCWPhuKrcKtadgHG
	VLjj1N+RnJUnwOn3ilJG9Mc7gKQONfbtnEt3ZDUwN4WWqYFYkuWeKl/j
X-Gm-Gg: AYBFou0ynlCwt5DLF4xTsmQiV6+bCsCUQWTPt8+niIB96VWshGeJYGZ0HsDcY14abbR
	G4+Ic/NbSCIQx3JkRoPXL9Rx2bcOusb/3lvIkB/NxjqTQ2movtvGRzcOWVBIame/w9zrKeVB5as
	KE+QSEsPnUHztf0fxAXTOLgFgGn1Q2Rntx0qp62FAAv9WxEEgZ3R+KsYKVMPzSVRG+3/HtlPO7N
	GC1lqP+gdwznhO9mAULLvXyzc0S+EojQ/r4DELrYJliDQ6SU6MR2KTQztWBY+yKVvs051u+5Ye5
	YhaF58NF2lUTikOhZbCg5xtWSPts/ZsaFCO463CtMLcBlqnmkKdFh6TH0bVz5Pqj/ZIK3uULeTb
	3F6IDWOK3Y38Awc3xDq2MOWb2hw8qhBRxWMh/5pqYC9CaYKgCYxfkxci5GE+3epLEBNfRXxGxaP
	6f5jqgniGet9wZWe7p9ksQOGjM1BW7NEvHjrefaw97U+l4gVZPTIuwSsoRJAX5+18LYcRV1BWvq
	2YOaIXchLF4J6AzEk13RMefZolqYUw5HgIFeWnZNlW7BbTN/95LVO7RncHG1gY=
X-Received: by 2002:a17:903:38d0:b0:2cf:6e5d:23e9 with SMTP id d9443c01a7336-2dd5f16b17bmr58734135ad.14.1789355953180;
        Sun, 13 Sep 2026 20:19:13 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cfc2d3bsm41355145ad.48.2026.09.13.20.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 20:19:12 -0700 (PDT)
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
Subject: [PATCH v5 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
Date: Mon, 14 Sep 2026 11:18:58 +0800
Message-ID: <20260914031859.385224-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260914031859.385224-1-a0987203069@gmail.com>
References: <20260914031859.385224-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_201914_272607_08A9A11E 
X-CRM114-Status: GOOD (  10.16  )
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
