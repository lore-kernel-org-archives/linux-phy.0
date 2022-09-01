Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FECECAAD1
	for <linux-phy@archiver.kernel.org>; Thu,  1 Sep 2022 04:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1o/OSh+nmqAuXmbKZv9Ox8tTYZwgcInIeGjUS6GsuXU=; b=rW5BTYhPqcYNFa
	mjaQPk0kKJwT4l0LNERn0KayW49mQE6C0mJRX68d7waK0Rac73YjhPwFETZU5zyTAJSXXyItG6Q3o
	S1uXkGM5X3OyC0wwTfR9xi9icEa/2Spuq8w3I05yall++UUeYa6n3Gc6I87ZsA4ebR1QmGn5xscEZ
	4YF0tXhuyfPzNCw+kuuZhmzPhxWXtcjyZKQo+z/u+VyHp9magJqgWubs5e+KWTqfuqiQl3tDz5PO0
	r9yuOWBVfv/scJyhU+5zb/MQLi0xiAJsKQdKw10mJaJRbGYgz7lfSyq7UadXssBaOCbQciDDiXTAk
	sULWze5vE/K9s1zJ3uUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTbhB-009U5R-RA; Thu, 01 Sep 2022 04:20:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTbgq-009TwA-0X; Thu, 01 Sep 2022 04:20:29 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B442E1A438E;
	Thu,  1 Sep 2022 06:20:26 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7D4311A4387;
	Thu,  1 Sep 2022 06:20:26 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id DAE30181D0CA;
	Thu,  1 Sep 2022 12:20:24 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	alexander.stein@ew.tq-group.com,
	marex@denx.de,
	richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v6 2/7] arm64: dts: imx8mp: Add iMX8MP PCIe support
Date: Thu,  1 Sep 2022 12:02:35 +0800
Message-Id: <1662004960-14071-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1662004960-14071-1-git-send-email-hongxing.zhu@nxp.com>
References: <1662004960-14071-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_212028_343165_B4F479F1 
X-CRM114-Status: UNSURE (   8.74  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add i.MX8MP PCIe support.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Richard Leitner <richard.leitner@skidata.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 43 +++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index fe178b7d063c..21a4cc417c81 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/imx8mp-clock.h>
 #include <dt-bindings/power/imx8mp-power.h>
+#include <dt-bindings/reset/imx8mp-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -1084,6 +1085,17 @@ media_blk_ctrl: blk-ctrl@32ec0000 {
 				#power-domain-cells = <1>;
 			};
 
+			pcie_phy: pcie-phy@32f00000 {
+				compatible = "fsl,imx8mp-pcie-phy";
+				reg = <0x32f00000 0x10000>;
+				resets = <&src IMX8MP_RESET_PCIEPHY>,
+					 <&src IMX8MP_RESET_PCIEPHY_PERST>;
+				reset-names = "pciephy", "perst";
+				power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_PCIE_PHY>;
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+
 			hsio_blk_ctrl: blk-ctrl@32f10000 {
 				compatible = "fsl,imx8mp-hsio-blk-ctrl", "syscon";
 				reg = <0x32f10000 0x24>;
@@ -1099,6 +1111,37 @@ hsio_blk_ctrl: blk-ctrl@32f10000 {
 			};
 		};
 
+		pcie: pcie@33800000 {
+			compatible = "fsl,imx8mp-pcie";
+			reg = <0x33800000 0x400000>, <0x1ff00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x00 0xff>;
+			ranges =  <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000>, /* downstream I/O 64KB */
+				  <0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			num-viewport = <4>;
+			interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &gic GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,max-link-speed = <3>;
+			linux,pci-domain = <0>;
+			power-domains = <&hsio_blk_ctrl IMX8MP_HSIOBLK_PD_PCIE>;
+			resets = <&src IMX8MP_RESET_PCIE_CTRL_APPS_EN>,
+				 <&src IMX8MP_RESET_PCIE_CTRL_APPS_TURNOFF>;
+			reset-names = "apps", "turnoff";
+			phys = <&pcie_phy>;
+			phy-names = "pcie-phy";
+			status = "disabled";
+		};
+
 		gpu3d: gpu@38000000 {
 			compatible = "vivante,gc";
 			reg = <0x38000000 0x8000>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
