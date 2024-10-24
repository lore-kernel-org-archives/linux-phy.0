Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 350B8CE8E96
	for <linux-phy@archiver.kernel.org>; Thu, 24 Oct 2024 17:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jnizi7V1QPwW6IE3bzJnAXk6s4hp9tWzwPvX8Jp7BBU=; b=CAuQdHc3vC7Vdy
	/W4OpVbw21rSTI+MiYdu0jOg6+0Y268BQ/6LiUSnlLCRWytbZ3JLmAYX/VUWhYfM0si5pqoAvthI7
	rbVAr65FWT+dHivjuquG9xct46e6RBqVj3GkBNhXt8i5mX5vUNwyCME6iAM67UUtANpHAXxcigsZ8
	BSl1EUzsIil+gGc7GLW6RuXB7QPKo53XHR29RTulN9rsenXk76EYuibb2dI52+h32la02CCMQxoyD
	noiR9a0LaG19M50hYzNIzhHeDZ60Rm4YwdPWUxRdVxUJIz5l95AXS/5gOO1ZFhO7diXTiD9i8AWfe
	DXiafqbvt5y9ToUjOgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t41Rd-00000001FDH-2vRB;
	Thu, 24 Oct 2024 17:16:21 +0000
Received: from thales.epochal.quest ([2607:5300:205:200::3a30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t41LF-00000001Dlo-3NeT;
	Thu, 24 Oct 2024 17:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1729789781;
	bh=8tBNvio1ObQTdhVztprL74DuHbZpuJ/042vXRGsdyBc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gBpbT0s4l/mH/5QaMbAWMR9X/xoQ2LxH8ZCno0hvGjlhDc0U6Qp28p8TrQ6cLjCPt
	 2JdrefvdU6KCkLy0g7yzngC/ECTV18sfnhi3F5dLI1qoil3nT/rXYzu6aIJ0m35q3+
	 AZPfQdcVTq7ZeKK3gTHKbBSADrQmFoeehWhsb2RAq5BsjuYcjo/y6IoeXVA7Ju+Sjj
	 /fsawnI5GeVxUwBixvNrppUX7BK9mfaazcRMhwOpdzWKiJOuwwOhl6nZ0EcFdg1tnV
	 NjeqgtTgIUhtvTq6HJFNZZorHxqe/mvKk3VX9e7GPPODi/qhKTlDzs8N61/d88LNSy
	 vuLAAireR7sXg==
X-Virus-Scanned: by epochal.quest
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Cody Eksal <masterr3c0rd@epochal.quest>,
	Andre Przywara <andre.przywara@arm.com>,
	Parthiban <parthiban@linumiz.com>,
	Yangtao Li <frank@allwinnertech.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Vinod Koul <vkoul@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Thierry Reding <treding@nvidia.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Maxime Ripard <mripard@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Yangtao Li <tiny.windzz@gmail.com>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>
Subject: [PATCH 01/13] arm64: dts: allwinner: A100: Add PMU mode
Date: Thu, 24 Oct 2024 14:05:19 -0300
Message-ID: <20241024170540.2721307-2-masterr3c0rd@epochal.quest>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_100945_930405_59507B40 
X-CRM114-Status: UNSURE (   9.12  )
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

From: Yangtao Li <frank@allwinnertech.com>

Add the Performance Monitoring Unit (PMU) device tree node to the A100
.dtsi, which tells DT users which interrupts are triggered by PMU overflow
events on each core.

Signed-off-by: Yangtao Li <frank@allwinnertech.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
---
 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
index a3dccf193765..1eca7c220ede 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
@@ -25,21 +25,21 @@ cpu0: cpu@0 {
 			enable-method = "psci";
 		};
 
-		cpu@1 {
+		cpu1: cpu@1 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <0x1>;
 			enable-method = "psci";
 		};
 
-		cpu@2 {
+		cpu2: cpu@2 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <0x2>;
 			enable-method = "psci";
 		};
 
-		cpu@3 {
+		cpu3: cpu@3 {
 			compatible = "arm,cortex-a53";
 			device_type = "cpu";
 			reg = <0x3>;
@@ -47,6 +47,15 @@ cpu@3 {
 		};
 	};
 
+	pmu {
+		compatible = "arm,cortex-a53-pmu";
+		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
-- 
2.47.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
