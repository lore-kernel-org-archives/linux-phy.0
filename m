Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36573CA6007
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 06:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2lXEk5LGC7WBnlLNX3O6U9Eobx9DgNAUIatyjT/iYY=; b=HnDAg2vHO9dIa5
	Gt+i0/9hWi0MZ/IiU+bSMiTNy8oACO+5H2LZ6HeTW8XaKWQK3dN0jVij3hoNfomxWw+ylTy6X2m31
	1iijp6CokdGfq/c5jtnPjJRk7JzKBJ3NUCiVAX/zBux5Ck2YXk1vTSBcWz9tME3+AAZIWgtH0rELQ
	uok+FY6UPvAVkLo13u5TPeOCZ6TYLDYf6Rpxlk0vfnExPtfhfXRU/scPhmOMmWUgHFQWYOgybU2Yw
	dtehN7wo6FrI3RLUT2chxvx+27l5kfoG9/1867pqdKeAABBMPQKnldp+bg1P5dz7JdJRs0rSnAfeS
	i+6GSqT/uap1DXrLAImw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEhHE-00000003c3R-3GgN;
	Thu, 08 Oct 2026 06:06:48 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEhHB-00000003c1Z-3GsE
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 06:06:46 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-3a4d455ace3so2714320a91.0
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 23:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791439605; x=1792044405; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=c0Q1lb4Qqoljlh+F9k2cVtvGnbnmDGMBxQf3ZK0rUb8=;
        b=PgQ1lN5dKhCoWZvlkkuJFjQp9IAA35ZjjE1/Lv1yS76wHGBdxU/xeWYDsZIqLVWilz
         OyWSPJXO9198jEydXlGVoLv1nLHa8FboGfsnn9WojFcaPSAKlAIIjGRKAVXYw8DxIdIx
         kNbaPT30+h9UuVQfH67BoI635+L7QXp3otNV7fmKnWuU9UMQqPDiq09VC0VcBQC9VRef
         CUzNT4o4N8s8u11pfR2yIkPj1NJsuRyrquTG9UH1HtCVhSgv4FJAzVhRw00xx5HVu4cZ
         +wwuNWsYVvKDukKRmC9ijOBoWmLqWf0WT9EdbPVMWnS8L8AgiXUGjLQecyiZdEx99Vw1
         SUYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791439605; x=1792044405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=c0Q1lb4Qqoljlh+F9k2cVtvGnbnmDGMBxQf3ZK0rUb8=;
        b=yx9EeoPbA/ogAbJgHYdM/a+SIZugiLMljK1icoCAnNNyWPeQcSIMXn1wiYGfPa7RBG
         ywVxnSBMv1SkDoTKkPVcwaOOWNngolV/iDFqUeryEN7Z/XiK6ATIyX33I+WmG29bzRwY
         qQiglml2SjcBR4lCSWVL5eipVaqQXZNcP/3153/vfc02u4xGMlmEmLX2xNp1a1IsU04z
         m4NpUHKwHuZEe0ZuMrp7BZvm8ijCgif4b5nmJRpUbr9NvxKu87NGXmmw9gfDiDs6YINL
         BewkTXL8tjkSMd0UHuvYbepzrBtck8xktiT5Z45k1VT33AqC/r7Kg0eRfysanr5W8vxT
         TwIw==
X-Forwarded-Encrypted: i=1; AKwUvBxoUsMK8YMmQIVDb7c0xN4oxNCUbmlk0UWCuWVVggIe8JcB2dIxH1IWhRH/Vlh9w0LFPATLLT3w9hs=@lists.infradead.org
X-Gm-Message-State: AFq9FYImRFEgPAenbYd4jxWot/UahiWEjAPuN4CUWMuhCUeWDmBKxDfs
	m9KPlOEE7Ivedf92ofbIxX0xsrEMoCyL6VabDf7VuH9fe+CVPOoH3Uq2
X-Gm-Gg: AYBFou01EFByptCPy9RNNxR5chEcz0BPOVVYTcOhvfNnCNLOO5MO4hrU5bHxHr27kfa
	T1Qxyqc90C6HrYForlfyukO2CMGDYkm5iReMU+N++RDJDT48Ifoxc+UX9xUwQumeYTMMQEBSZ5g
	AXAAI54Z01b1SAFHmsu734We9PWDfNsr14KVNfAMQiuKzHCohVEcveVfHsTR4LjeaihcGd84G/c
	qbhgcXtT9xuThaHSh6DdwRFlt+eCy11itPJbHudW5JIeMkWjuc00RYXAVFvGZRUQcSI6igYV/yx
	TPCK28mqjgBlbr7jcRid3PZfilipAc5BBdTpdg+HkiYZUaOFIYqrdTJoGj7Hz83iA2gLvWoCXZV
	IhGvWIVhPlNPjQ2b2qdM7NczdJ4F5sT5X6TNGim0Y0g/6BsYo/M/fZWUFKiYPRVoFRHHdcG98wH
	umh9LraIuSxPtOabV5tPAYE2wY0+B5pHlZZ0SuL5XmYcLCYA6geGi+eawhjnt8xoGRpXX8jv0xj
	7UsDXoBBpBTW4AjpBNHZgcuTGUajv9rZipdIrgoN9XWeJ7BTI8B9TBZc9r9Oh4=
X-Received: by 2002:a17:90b:4a89:b0:3a4:f6b0:7de with SMTP id 98e67ed59e1d1-3a8a08515acmr4079800a91.22.1791439604675;
        Wed, 07 Oct 2026 23:06:44 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3aa0cbccea3sm2632203a91.15.2026.10.07.23.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 23:06:44 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>
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
Subject: [PATCH v7 2/4] arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
Date: Thu,  8 Oct 2026 14:06:27 +0800
Message-ID: <20261008060629.2736806-3-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008060629.2736806-1-a0987203069@gmail.com>
References: <20261008060629.2736806-1-a0987203069@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_230645_832614_F0DCC362 
X-CRM114-Status: UNSURE (   9.99  )
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
Reviewed-by: Jacky Huang <ychuang3@nuvoton.com>
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
