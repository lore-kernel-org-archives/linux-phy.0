Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52570C61DB2
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jun 2025 07:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYETyuZHKiRGBroCGE3/eTpiU7GaY1mJnyoW4BzDSp0=; b=dDu77uoKyptv5P
	jh93Y8X3ft8fiCebKWA97XnWhoMZYGaOU1xwHSgCzLDAg9NiYhO8ykjr1KZDuv48UyMLNZvbBW+6D
	TZorCPHCnVn57f2tkd7WZFOj1DNvFM8/KgNGbVguY3+uJH3fc+qXKwH164xl7jkTOL3QiVzQjysyD
	se9hyf/i9+0po703yqy4OrujlR7M0ztafbIQPC43vAMFMSHrQJY6jekYNgZGUuJ2Uo0Gm7ymL7mIi
	G6b5H4eIIGng2Xpplj/d17Au4wkb5/VOfkSECyfArvsCIkBdAd3hxKfM7wWoSVPz5fcpwyZEzRVy+
	GM9iM12O7TbFlfaPVrFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyh3-0000000FaAL-3wJq;
	Fri, 13 Jun 2025 07:19:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyYI-0000000FZHI-1oHJ
	for linux-phy@bombadil.infradead.org;
	Fri, 13 Jun 2025 07:10:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=References:Content-Type:
	Content-Transfer-Encoding:MIME-Version:In-Reply-To:Message-Id:Date:Subject:Cc
	:To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=JYyLT9ij1kbOuzmlK+cSgWL3MSercwWUteIFKYV8bLY=; b=JNTEHkUmpjQR2T70SmuxsRqdE0
	FNs5Y4tbZ8c/ybEGaXSmX0kA5N0ggBdb3pFBGWWm4xB2d2pP8kasV52PUJwAYJY+A+3eeSUbFrMoi
	VTVWsOjXig9B5YjeW1LjYOXFJ4C2rCAjdQPr9WJHt7Fc2b8eDjF1C4fqZYIgWAvePjsSd1gWVpU1c
	KEhYx7mR4DOVQzRXPLH5XKjxusai4s1i3Tsul7NR65h3Cc8XkMKR2Srn7S8C9fUDe8W0nHJEOqFuX
	iZ6cMZVhxUek74v9ecvyNrL8wmWPOxj0b9FOluGL2nHXkl4UYQgMnix8zpsvGNkLp1wHtLaNZ2qcq
	/v6ErJLQ==;
Received: from mailout1.samsung.com ([203.254.224.24])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPyYF-00000002sxs-408U
	for linux-phy@lists.infradead.org;
	Fri, 13 Jun 2025 07:10:14 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250613071007epoutp01cb47280257821330cdbcae375bdc03b7~IiJAJkMY52986329863epoutp01B
	for <linux-phy@lists.infradead.org>; Fri, 13 Jun 2025 07:10:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250613071007epoutp01cb47280257821330cdbcae375bdc03b7~IiJAJkMY52986329863epoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1749798607;
	bh=JYyLT9ij1kbOuzmlK+cSgWL3MSercwWUteIFKYV8bLY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OidYN1WDuoAYps03SyL1lyAX7I3oaVh1xJyHy2CbDnhfa+y4Dup9xFdjPw4ksqsL3
	 nk5oVeWHN0VPnScyQduA5nzzzKurOgLp6vfRUDx+e9eA745uFSgJ7+XQnrTjU8VY+H
	 9cS2iT/cha6+kQ+S4myj3qDIVHWEn8NLkiSTRsXs=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250613071006epcas5p40953007c90a7cc619665358c4714304b~IiI-adCQY1529115291epcas5p4c;
	Fri, 13 Jun 2025 07:10:06 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.175]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bJVs820Bzz3hhTJ; Fri, 13 Jun
	2025 07:10:04 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d~IhDupI1Ig2779327793epcas5p2o;
	Fri, 13 Jun 2025 05:50:47 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250613055044epsmtip1cb3d9cf1276384ed10bb4cc76c671d7c~IhDr5JafY0439404394epsmtip1Q;
	Fri, 13 Jun 2025 05:50:43 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, m.szyprowski@samsung.com,
	s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v3 3/9] arm64: dts: exynos: ExynosAutov920: add USB and
 USB-phy nodes
Date: Fri, 13 Jun 2025 11:26:07 +0530
Message-Id: <20250613055613.866909-4-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613055613.866909-1-pritam.sutar@samsung.com>
MIME-Version: 1.0
X-CMS-MailID: 20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d
References: <20250613055613.866909-1-pritam.sutar@samsung.com>
	<CGME20250613055047epcas5p220b1cd1e9b2819997a3d4747c395d13d@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_081012_725488_DFDD4B22 
X-CRM114-Status: GOOD (  12.73  )
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

Add USB controller and USB PHY controller nodes for this SoC.

The USB controller has following features:
* Dual Role Device (DRD) controller
* DWC3 compatible
* Supports USB 3.0 host and USB 3.0 device interfaces but phy
  controller capability is limited to USB 2.0.
* Supports  full-speed (12 Mbps) and high-speed (480 Mbps) modes with
  USB device 2.0 interface
* Supports on-chip USB PHY transceiver
* Supports up to 16 bi-directional endpoints (that includes control
  endpoint 0)
* Complies with xHCI 1.1 specification

Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
---
 .../boot/dts/exynos/exynosautov920-sadk.dts   |  37 ++++++
 .../arm64/boot/dts/exynos/exynosautov920.dtsi | 108 ++++++++++++++++++
 2 files changed, 145 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
index a397f068ed53..984e899a2ebf 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
+++ b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
@@ -86,3 +86,40 @@ &usi_0 {
 &xtcxo {
 	clock-frequency = <38400000>;
 };
+
+/* usb */
+&usbdrd20_phy0 {
+	status = "okay";
+};
+
+&usbdrd20_dwc3_0 {
+	dr_mode = "peripheral";
+};
+
+&usbdrd20_0 {
+	status = "okay";
+};
+
+&usbdrd20_phy1 {
+	status = "okay";
+};
+
+&usbdrd20_dwc3_1 {
+	dr_mode = "peripheral";
+};
+
+&usbdrd20_1 {
+	status = "okay";
+};
+
+&usbdrd20_phy2 {
+	status = "okay";
+};
+
+&usbdrd20_dwc3_2 {
+	dr_mode = "peripheral";
+};
+
+&usbdrd20_2 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 2cb8041c8a9f..b1a9d1da47f6 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1048,6 +1048,114 @@ pinctrl_hsi1: pinctrl@16450000 {
 			interrupts = <GIC_SPI 456 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		usbdrd20_phy0: phy@16500000 {
+			compatible = "samsung,exynosautov920-usbdrd-phy";
+			reg = <0x16500000 0x0200>;
+			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_NOC_USER>,
+				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+			clock-names = "phy", "ref";
+			#phy-cells = <1>;
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			status = "disabled";
+		};
+
+		usbdrd20_phy1: phy@16510000 {
+			compatible = "samsung,exynosautov920-usbdrd-phy";
+			reg = <0x16510000 0x0200>;
+			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_NOC_USER>,
+				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+			clock-names = "phy", "ref";
+			#phy-cells = <1>;
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			status = "disabled";
+		};
+
+		usbdrd20_phy2: phy@16520000 {
+			compatible = "samsung,exynosautov920-usbdrd-phy";
+			reg = <0x16520000 0x0200>;
+			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_NOC_USER>,
+				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+			clock-names = "phy", "ref";
+			#phy-cells = <1>;
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			status = "disabled";
+		};
+
+		usbdrd20_0: usb@16700000 {
+			compatible = "samsung,exynosautov920-dwusb3";
+			ranges = <0x0 0x16700000 0x10000>;
+			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>,
+				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+			clock-names = "ref", "susp_clk";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			status = "disabled";
+
+			usbdrd20_dwc3_0: usb@0 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x10000>;
+				clocks = <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>,
+					 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+				clock-names = "ref", "susp_clk";
+				interrupts = <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usbdrd20_phy0 0>;
+				phy-names = "usb2-phy";
+				snps,has-lpm-erratum;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+			};
+		};
+
+		usbdrd20_1: usb@16800000 {
+			compatible = "samsung,exynosautov920-dwusb3";
+			ranges = <0x0 0x16800000 0x10000>;
+			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>,
+				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+			clock-names = "ref", "susp_clk";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			status = "disabled";
+
+			usbdrd20_dwc3_1: usb@0 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x10000>;
+				clocks = <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>,
+					 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+				clock-names = "ref", "susp_clk";
+				interrupts = <GIC_SPI 481 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usbdrd20_phy1 0>;
+				phy-names = "usb2-phy";
+				snps,has-lpm-erratum;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+			};
+		};
+
+		usbdrd20_2: usb@16900000 {
+			compatible = "samsung,exynosautov920-dwusb3";
+			ranges = <0x0 0x16900000 0x10000>;
+			clocks = <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>,
+				 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+			clock-names = "ref", "susp_clk";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			status = "disabled";
+
+			usbdrd20_dwc3_2: usb@0 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x10000>;
+				clocks = <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>,
+					 <&cmu_hsi1 CLK_MOUT_HSI1_USBDRD>;
+				clock-names = "ref", "susp_clk";
+				interrupts = <GIC_SPI 483 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usbdrd20_phy2 0>;
+				phy-names = "usb2-phy";
+				snps,has-lpm-erratum;
+				snps,dis_u2_susphy_quirk;
+				snps,dis_u3_susphy_quirk;
+			};
+		};
+
 		pinctrl_hsi2: pinctrl@16c10000 {
 			compatible = "samsung,exynosautov920-pinctrl";
 			reg = <0x16c10000 0x10000>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
