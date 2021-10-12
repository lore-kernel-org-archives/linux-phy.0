Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49990C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:09:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A41C60F3A
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:09:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1A41C60F3A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7bKsNVuHk2lFLlVEgiq4UFVXGrgHN8cNB/HNh/NBTM=; b=4neBnulqOjvNpP
	4avOeMI6NlFRKDe57ZNf+/+Zy4FnZELeOsiNeLwTNOXpi3pEjBM38HvsvPuZjqIHQKvYlc3G+YwhO
	XLpe2oGlOp8HpORUAb4CMocXfDdCDo6D3jipBnIWO+KPVFeJ6FAWmRAjuntsinG0mOF2cLb1WZvm8
	8rHV/tXfI/EYlo4Jh6W9vq2I4BTUls6ZqEYcPeK6JuuMjR7hJlTQfQxvvthJNN3K+gDNEJ4/Ci0TC
	jyJBaturlZVaA9xtuCEHZGt3GGdRdsIrbrdfLyx7UcIn3PwcxDGu3f5XQwHtxWsbKCDHpaZm66TEl
	tFQ4Yg9tFzOulzL26Bew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDmi-00CAHv-JK; Tue, 12 Oct 2021 09:09:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDjj-00C8sY-7h; Tue, 12 Oct 2021 09:06:16 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EE87E202598;
 Tue, 12 Oct 2021 11:06:13 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BFFE3201D4B;
 Tue, 12 Oct 2021 11:06:13 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 1BEF3183AD05;
 Tue, 12 Oct 2021 17:06:12 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com,
 Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH v3 7/9] arm64: dts: imx8mm: add the pcie support
Date: Tue, 12 Oct 2021 16:41:16 +0800
Message-Id: <1634028078-2387-8-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
References: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_020615_477251_D21F3477 
X-CRM114-Status: UNSURE (   9.93  )
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

Add the PCIe support on i.MX8MM platforms.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 33 ++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index ac5d11466608..e4819a811da8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -520,7 +520,7 @@ iomuxc: pinctrl@30330000 {
 			};
 
 			gpr: iomuxc-gpr@30340000 {
-				compatible = "fsl,imx8mm-iomuxc-gpr", "syscon";
+				compatible = "fsl,imx8mm-iomuxc-gpr", "fsl,imx6q-iomuxc-gpr", "syscon";
 				reg = <0x30340000 0x10000>;
 			};
 
@@ -1179,6 +1179,37 @@ gpmi: nand-controller@33002000{
 			status = "disabled";
 		};
 
+		pcie0: pcie@33800000 {
+			compatible = "fsl,imx8mm-pcie";
+			reg = <0x33800000 0x400000>, <0x1ff00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x00 0xff>;
+			ranges =  <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000 /* downstream I/O 64KB */
+				   0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			num-viewport = <4>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &gic GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,max-link-speed = <2>;
+			linux,pci-domain = <0>;
+			power-domains = <&pgc_pcie>;
+			resets = <&src IMX8MQ_RESET_PCIE_CTRL_APPS_EN>,
+				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF>;
+			reset-names = "apps", "turnoff";
+			phys = <&pcie_phy>;
+			phy-names = "pcie-phy";
+			status = "disabled";
+		};
+
 		gpu_3d: gpu@38000000 {
 			compatible = "vivante,gc";
 			reg = <0x38000000 0x8000>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
