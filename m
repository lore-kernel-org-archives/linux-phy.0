Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E3DBC7EE45
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGMzn6Q/469aJw5gISAulMh/PQhAJVAGAWaAi8GAuBQ=; b=u2AosN7w1nR6xJ
	J6FbpzRdfH4Bp71shB9nEijFYy61HZrcz489nmEwTz04ucHpnW85ghC8UlPsbAiiIFFFhqn17T52o
	S2e/rXOXXIOAsEAyVapqDm3QQz2iXO3FXJmhihFfTTA7A1Q9uTVVeYRSmAsvLHYlIvzxAh6xCXZGC
	g38Ytr8xkBUkXZZnGgYBLsAJUg4PsAKUd+6inyAq+avP4AZ2saB0cuNEcpVdVQS+Bp1MoOruONtsU
	+X1hPzj0xjuAQaKk2vBtcgGTFOqQkyLN58nQOZREvkFCrzprXzwRjndwVCXpYPh9+GasO3M/CyfMN
	BeTCdxgIDCMHYunGu0LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPU-009rWI-3A;
	Thu, 08 Jun 2023 16:22:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7IPQ-009rSP-2r;
	Thu, 08 Jun 2023 16:22:50 +0000
Received: from jupiter.universe (dyndsl-091-248-189-092.ewe-ip-backbone.de [91.248.189.92])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8EE466606F26;
	Thu,  8 Jun 2023 17:22:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1686241364;
	bh=uHNhWU1jmIOWUBoodh01ywxlZr0fhauLWpShle6WDA0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Pm3Hj2LidW5ynLDBvQj0RxL97jnhj5ZAAnLxEFG4m3Duy00ph0zuP3bWlknv/2jZD
	 8sfzQxQdl27tKGO7AO3pLprPRDFrZR/vDUeWB5KdgH2BbqnEwo7rwEEFAvXYDdKmjU
	 q7IZWjN0T+YZgJBTUk3TCdOYXiWwzE+d2St7NJsZCRf4uREoCuUQfss/6huPep5W6S
	 5DAz/R++5uQloHTiKfgmgcZb9tk3pBdYbcNt+ijK9aIKLDRkijhl2V/Xk5v1DSD3kQ
	 D+Qz23f5wPTApcYfl532rp1vRGy218pg+ScEyQkjntYlhN7EKBIh20R/IXyJCM2c+f
	 Ym/JBoqw8gopw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id D16C64807F0; Thu,  8 Jun 2023 18:22:39 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 5/5] arm64: dts: rockchip: rk3588: add SATA support
Date: Thu,  8 Jun 2023 18:22:38 +0200
Message-Id: <20230608162238.50078-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230608162238.50078-1-sebastian.reichel@collabora.com>
References: <20230608162238.50078-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_092249_060840_0B9E1EEF 
X-CRM114-Status: GOOD (  10.45  )
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

Add all three SATA IP blocks to the RK3588 DT.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 23 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 48 +++++++++++++++++++++++
 2 files changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
index 9d8539b5309b..b9508cea34f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
@@ -129,6 +129,29 @@ gmac0_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	sata1: sata@fe220000 {
+		compatible = "rockchip,rk3588-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfe220000 0 0x1000>;
+		clocks = <&cru ACLK_SATA1>, <&cru CLK_PMALIVE1>,
+			 <&cru CLK_RXOOB1>, <&cru CLK_PIPEPHY1_REF>,
+			 <&cru CLK_PIPEPHY1_PIPE_ASIC_G>;
+		clock-names = "sata", "pmalive", "rxoob", "ref", "asic";
+		interrupts = <GIC_SPI 274 IRQ_TYPE_LEVEL_HIGH 0>;
+		ports-implemented = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		sata-port@0 {
+			reg = <0>;
+			hba-port-cap = <HBA_PORT_FBSCP>;
+			phys = <&combphy1_ps PHY_TYPE_SATA>;
+			phy-names = "sata-phy";
+			snps,rx-ts-max = <32>;
+			snps,tx-ts-max = <32>;
+		};
+	};
+
 	combphy1_ps: phy@fee10000 {
 		compatible = "rockchip,rk3588-naneng-combphy";
 		reg = <0x0 0xfee10000 0x0 0x100>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 45ae457a22a4..00a91b08e3bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -9,6 +9,8 @@
 #include <dt-bindings/power/rk3588-power.h>
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/phy/phy.h>
+#include <dt-bindings/ata/ahci.h>
 
 / {
 	compatible = "rockchip,rk3588";
@@ -1717,6 +1719,52 @@ gmac1_mtl_tx_setup: tx-queues-config {
 		};
 	};
 
+	sata0: sata@fe210000 {
+		compatible = "rockchip,rk3588-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfe210000 0 0x1000>;
+		clocks = <&cru ACLK_SATA0>, <&cru CLK_PMALIVE0>,
+			 <&cru CLK_RXOOB0>, <&cru CLK_PIPEPHY0_REF>,
+			 <&cru CLK_PIPEPHY0_PIPE_ASIC_G>;
+		clock-names = "sata", "pmalive", "rxoob", "ref", "asic";
+		interrupts = <GIC_SPI 273 IRQ_TYPE_LEVEL_HIGH 0>;
+		ports-implemented = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		sata-port@0 {
+			reg = <0>;
+			hba-port-cap = <HBA_PORT_FBSCP>;
+			phys = <&combphy0_ps PHY_TYPE_SATA>;
+			phy-names = "sata-phy";
+			snps,rx-ts-max = <32>;
+			snps,tx-ts-max = <32>;
+		};
+	};
+
+	sata2: sata@fe230000 {
+		compatible = "rockchip,rk3588-dwc-ahci", "snps,dwc-ahci";
+		reg = <0 0xfe230000 0 0x1000>;
+		clocks = <&cru ACLK_SATA2>, <&cru CLK_PMALIVE2>,
+			 <&cru CLK_RXOOB2>, <&cru CLK_PIPEPHY2_REF>,
+			 <&cru CLK_PIPEPHY2_PIPE_ASIC_G>;
+		clock-names = "sata", "pmalive", "rxoob", "ref", "asic";
+		interrupts = <GIC_SPI 275 IRQ_TYPE_LEVEL_HIGH 0>;
+		ports-implemented = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+
+		sata-port@0 {
+			reg = <0>;
+			hba-port-cap = <HBA_PORT_FBSCP>;
+			phys = <&combphy2_psu PHY_TYPE_SATA>;
+			phy-names = "sata-phy";
+			snps,rx-ts-max = <32>;
+			snps,tx-ts-max = <32>;
+		};
+	};
+
 	sdmmc: mmc@fe2c0000 {
 		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe2c0000 0x0 0x4000>;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
