Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5186CC48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 18:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5d4bpuP4pOtEW8yrOnx31/dt2sVqNkKNSCscF1Xcf7M=; b=FluzvKWllsPrYU
	51jfjUVpcJXDiCoQLXSOUFanmP9drGu85K5p55netnOY0WwHEvIZN7J9JdOQ8Vyl9W9awjWUKZihu
	tUsfpR5s37xt5RI/dPwFL619tpopDF5ApiGlxNw6mFoYjpEH1ykmYA69cW4wdZaYSgTY6LEtKH7c/
	R/XwOtiBC9cuN19Rzg+AiaPrIqWoX6gRphm/EodxLi9nTiK/LL+0n47iKfD2YtD1VVaXyp7FLk+je
	sO4ohDzzU6zS+QERVMCWK3+pmBQ1SeowqU48V8rl7Y6oXAVBbWe1/uQaH/k5mU23xY9oM28lBRxG1
	YMiQLqboynQhksdy4q4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSW-00000000Dms-4AwW;
	Fri, 09 Feb 2024 18:18:44 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYVSR-00000000Dij-3FR8;
	Fri, 09 Feb 2024 18:18:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707502713;
	bh=W78wJAlvixNiHCrlDx7Yf34X8zTmj0Mc93LVC6YUGHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VtOBVG1u257+IaxbL4kCb1BZvnebVBjMBRdk0bovXc7lTsHVRvyrKKb35oidH+Eoe
	 itPO+GWc9iKODx/G/DKDktLKcSucCwDSwEdoqqfZwu3Hl2Z4JK9Q+WEo5qdvweAsmT
	 PH793MjuHdk+yMFRVcUtiUm7lVhXmZgi4YK0RkW8ZrerPQYor2c59yAsInzOJMeA4N
	 TTdnbA1t5CroXZxEl8Qxy5YkeF+uZIyQ/b420cPCSoEl8eWC3L+Pe+q5bZElLfkxzW
	 vOS8BR8C2Dp99bskFvyuc389Qkd9Dq9yhxuI/trNzi+Ta85gR/P9kfYyyZ5xRue6aB
	 6V60As5VEZVYg==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 8BBB037820B7;
	Fri,  9 Feb 2024 18:18:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9990F4800D5; Fri,  9 Feb 2024 19:18:32 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 07/10] arm64: dts: rockchip: add USB3 DRD controllers on rk3588
Date: Fri,  9 Feb 2024 19:17:23 +0100
Message-ID: <20240209181831.104687-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240209181831.104687-1-sebastian.reichel@collabora.com>
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_101840_042669_26AD85DA 
X-CRM114-Status: UNSURE (   9.75  )
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

Add both USB3 dual-role controllers to the RK3588 devicetree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 22 ++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index c26288ec75ce..8b991da9db4f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -7,6 +7,26 @@
 #include "rk3588-pinctrl.dtsi"
 
 / {
+	usb_host1_xhci: usb@fc400000 {
+		compatible = "rockchip,rk3588-dwc3", "snps,dwc3";
+		reg = <0x0 0xfc400000 0x0 0x400000>;
+		interrupts = <GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru REF_CLK_USB3OTG1>, <&cru SUSPEND_CLK_USB3OTG1>,
+			 <&cru ACLK_USB3OTG1>;
+		clock-names = "ref_clk", "suspend_clk", "bus_clk";
+		dr_mode = "otg";
+		phys = <&u2phy1_otg>, <&usbdp_phy1_u3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3588_PD_USB>;
+		resets = <&cru SRST_A_USB3OTG1>;
+		snps,dis_enblslpm_quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		status = "disabled";
+	};
+
 	pcie30_phy_grf: syscon@fd5b8000 {
 		compatible = "rockchip,rk3588-pcie3-phy-grf", "syscon";
 		reg = <0x0 0xfd5b8000 0x0 0x10000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 553e1883cfe4..6ded159d6dc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -436,6 +436,28 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	usb_host0_xhci: usb@fc000000 {
+		compatible = "rockchip,rk3588-dwc3", "snps,dwc3";
+		reg = <0x0 0xfc000000 0x0 0x400000>;
+		interrupts = <GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru REF_CLK_USB3OTG0>, <&cru SUSPEND_CLK_USB3OTG0>,
+			 <&cru ACLK_USB3OTG0>;
+		clock-names = "ref_clk", "suspend_clk", "bus_clk";
+		dr_mode = "otg";
+		phys = <&u2phy0_otg>, <&usbdp_phy0_u3>;
+		phy-names = "usb2-phy", "usb3-phy";
+		phy_type = "utmi_wide";
+		power-domains = <&power RK3588_PD_USB>;
+		resets = <&cru SRST_A_USB3OTG0>;
+		snps,dis_enblslpm_quirk;
+		snps,dis-u1-entry-quirk;
+		snps,dis-u2-entry-quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		status = "disabled";
+	};
+
 	usb_host0_ehci: usb@fc800000 {
 		compatible = "rockchip,rk3588-ehci", "generic-ehci";
 		reg = <0x0 0xfc800000 0x0 0x40000>;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
