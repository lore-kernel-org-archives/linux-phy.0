Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A34CECCD183
	for <linux-phy@archiver.kernel.org>; Thu, 16 Oct 2025 10:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsSsmPBCv9sGp/7i8ZWzDpf2r/ZXDaGY50uw8LSpHuA=; b=IkAQ0/TTIxDulT
	7jnz2hWXUk87W4w/2tI10NBvcwbSaDU2PQnWnI44H4UuyoRv+0OqNP+NS2TrKb3f6YRxGYN5BGe85
	qE8u/pAbeTwjxNTfRYOObVbvN2Upx8a7qhNATkQ1vsLKDFCQrLHEb8xCLzfjNHZwl6rF0ySKuVTmx
	qYjy4RAXfeoPmj2WE7oSCxOSU7J/L0r8XEdWZ/RAMiUnoQFQn1E2adKycl4u94m8SxnHG4OIn6YUo
	wNYfP5NYal2oeA1qMz43sLEjZmzro8Zh6CTJBh6g+qCA78SsAhjEWOCDdjye3p4UM+yIKTG7Rfz3A
	KaLXiIKCI25GCaDK+Ifw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Kv2-00000004L5s-1kE8;
	Thu, 16 Oct 2025 10:09:12 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9Kum-00000004Ks5-3YJw;
	Thu, 16 Oct 2025 10:08:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760609334;
	bh=TeAojYi5K2VePl3l0wjWKntYVL0CacFDEADdqE/Cfz8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DWSfiQqkwFHirM3/s+cNrgKb2sL7dVd97npEDMMFAlGZ0lFeG+KpeVhSo97eSM0CR
	 cPZvM69V84mvsqcjNMFy0H82N7PtvAIS/CyYgkjTU2SWf6PiewV13DIhPLIpJoiqnw
	 1eHpN7GsCX+QBsWLevq3d3/rkahzdjBdFz84p3EwnRZb3qY0V9JWLT5z5dKaxuPxhg
	 yhE7MyRUv9PEUttQkdsRwFXO4hGzhgKpxRjMB4lRG7upfS7+np3X+hwmS2r1EkcCku
	 ZZjBBCX+P+iwyedjYmmBZgBo+uT5Yai8L1LRz0fmrsoH2dv8oEVPAwC1PNKakamzho
	 8KhNNPcCeEQbA==
Received: from beast.luon.net (simons.connected.by.freedominter.net [45.83.240.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 71DAF17E1340;
	Thu, 16 Oct 2025 12:08:54 +0200 (CEST)
Received: by beast.luon.net (Postfix, from userid 1000)
	id B0DE310C9C790; Thu, 16 Oct 2025 12:08:53 +0200 (CEST)
From: Sjoerd Simons <sjoerd@collabora.com>
Date: Thu, 16 Oct 2025 12:08:44 +0200
Subject: [PATCH 08/15] arm64: dts: mediatek: mt7981b-openwrt-one: Enable
 PCIe and USB
MIME-Version: 1.0
Message-Id: <20251016-openwrt-one-network-v1-8-de259719b6f2@collabora.com>
References: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
In-Reply-To: <20251016-openwrt-one-network-v1-0-de259719b6f2@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Ryder Lee <ryder.lee@mediatek.com>, 
 Jianjun Wang <jianjun.wang@mediatek.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, netdev@vger.kernel.org, 
 Daniel Golle <daniel@makrotopia.org>, Bryan Hinton <bryan@bryanhinton.com>, 
 Sjoerd Simons <sjoerd@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_030857_063687_A1DD4673 
X-CRM114-Status: GOOD (  11.73  )
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

Enable the PCIe controller and USB3 XHCI host on the OpenWrt One
board. The USB controller is configured for USB 2.0 only mode, as the
shared USB3/PCIe PHY is dedicated to PCIe functionality on this board.

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>
---
 .../boot/dts/mediatek/mt7981b-openwrt-one.dts      | 43 ++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
index f836059d7f475..b6ca628ee72fd 100644
--- a/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7981b-openwrt-one.dts
@@ -20,9 +20,40 @@ memory@40000000 {
 		reg = <0 0x40000000 0 0x40000000>;
 		device_type = "memory";
 	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_5v: regulator-5v {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-5V";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_pins>;
+	status = "okay";
 };
 
 &pio {
+	pcie_pins: pcie-pins {
+		mux {
+			function = "pcie";
+			groups = "pcie_pereset";
+		};
+	};
+
 	uart0_pins: uart0-pins {
 		mux {
 			function = "uart";
@@ -36,3 +67,15 @@ &uart0 {
 	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
+
+&usb_phy {
+	status = "okay";
+};
+
+&xhci {
+	phys = <&u2port0 PHY_TYPE_USB2>;
+	vusb33-supply = <&reg_3p3v>;
+	vbus-supply = <&reg_5v>;
+	mediatek,u3p-dis-msk = <0x01>;
+	status = "okay";
+};

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
