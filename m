Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C553BEE499C
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6w3VfJcU4azfpzmugGIIu31+2Ay2rRsUDoSWuridgUk=; b=TRDLZ8KS6CaAZU
	I/Jm0oIuOgf7khJgVpelf5uzSMsqLwEByvDRduhZE95Lol4b8WlAxVq/2M9gBaOXqXnX6rIThcyB2
	7DasbUYb1u+UI4rTktrOnODSvPIJ4okh1V8/ChuEWhRE1kCVWX3PcIriMA+4ywh1THZrk9mrAV8RS
	nDzXwy3TZTnETuKd25YvzhLobc03JRgy0IBvz8b6kozxnDhooVyEXOieKC4NxhNzpAKo4ppRiPRvW
	IvFCfqUTMMe04aWsCs0IGaYO8sz+RN+yX4bxMH5pnBK5zm6MMeQTg/0qk3wTcukUScL5Us6kjXaha
	i9ZrqVpmQgyD9bk8GGvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCTC-00AKi4-1c;
	Sat, 19 Aug 2023 03:17:46 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT5-00AKem-1Y
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:17:41 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6bd066b0fd4so1119156a34.2
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415059; x=1693019859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywK7pB708RT05aho6K2AOf9O+jr+/GhY6QVOujUXjMg=;
        b=EAZxwFR8lr75hZef4yV93yyy5z5t8tw9oKH2WVZ2wwOMgzmUVIYvH703v31wBZj0st
         LWMrUKiz5dAgnhiO0ai8AQHy2iMW7J5oKVZGNq7jSeeahKCLYS5+Ll7EOGFiTozrskkI
         qe+Mzc3emKcI55upfommCOLnspYnqrHMx2uAoVFR9DcJ2g0fpReUmPOSG7Ox3GzuB8Eg
         xXmwjV+q4q7eXYWttkXSYW4apafoyGauvIGc115/GDxQes6eQ/4m0qvRHvxAn8FxBkZ1
         8UWE6UFCDFaKmHM9iyOMICW1/Z0dVu8h7/kvs+HWhydVnwz2RfLZ45GhyBm1f6mNn0K8
         MoWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415059; x=1693019859;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ywK7pB708RT05aho6K2AOf9O+jr+/GhY6QVOujUXjMg=;
        b=VjaarTSTxiSDljAAYAZk6oyLdO3CqntAdB+yrofqyGHPVCcQRb+uPEmUuCPapZymYf
         FURWFKcMTT+rStTHzdC22XNoWy1K+x/NedHyudNnoLF1cDTjXvKUAQIX/ZiELztI2LSc
         HDMvieRBWQCEqtR32qOTMx0Huq2WCWiHNImqXZm0u9SrVM8UtUylaQnD6LwFLqWJv+Vl
         yPiFXiqKClArtFHLBBfWLYCPmzEk/5jZXNQdhFeHt9BNDFGhkfGyrXQ9xiwG0Ezr9lk1
         4ebOOieNoPwKmiwBOW9KiT60HO9912jN7OFEWA7QyhBkTOmO34ceNDfB1VP3sPbW7i84
         Yd0g==
X-Gm-Message-State: AOJu0YxvScSambkzjwrtMUIFOMBRIOtrcvZW0o/VNo9Ytrs5LJ8xnkl9
	T8IXAisdx7fCe4uo3b1yY/vrYg==
X-Google-Smtp-Source: AGHT+IG3z/ftxlbhvKK3KIvkDqJPuSJNBah1zdTEDQNOh/hmITzg8KUBCrce/hks+OrDeNQugdBdNg==
X-Received: by 2002:a05:6870:b48c:b0:1b0:e98:163b with SMTP id y12-20020a056870b48c00b001b00e98163bmr1412828oap.21.1692415058935;
        Fri, 18 Aug 2023 20:17:38 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id bg8-20020a056871940800b001c530b51082sm1706780oac.46.2023.08.18.20.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:38 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 7/8] arm64: dts: exynos: Enable USB in Exynos850
Date: Fri, 18 Aug 2023 22:17:30 -0500
Message-Id: <20230819031731.22618-8-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_201739_519283_1AE36ECA 
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

Add USB controller and USB PHY controller nodes for Exynos850 SoC.

The USB controller has next features:
  - Dual Role Device (DRD) controller
  - DWC3 compatible
  - Supports USB 2.0 host and USB 2.0 device interfaces
  - Supports  full-speed (12 Mbps) and high-speed (480 Mbps) modes with
    USB device 2.0 interface
  - Supports on-chip USB PHY transceiver
  - Supports up to 16 bi-directional endpoints (that includes control
    endpoint 0)
  - Complies with xHCI 1.00 specification

Only USB 2.0 is supported in Exynos850, so only UTMI+ PHY interface is
specified in "phys" property (index 0) and PIPE3 is omitted (index 1).

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos850.dtsi | 30 +++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos850.dtsi b/arch/arm64/boot/dts/exynos/exynos850.dtsi
index aa077008b3be..198d1dfcc672 100644
--- a/arch/arm64/boot/dts/exynos/exynos850.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos850.dtsi
@@ -570,6 +570,36 @@ sysreg_cmgp: syscon@11c20000 {
 			clocks = <&cmu_cmgp CLK_GOUT_SYSREG_CMGP_PCLK>;
 		};
 
+		usbdrd: usb@13600000 {
+			compatible = "samsung,exynos850-dwusb3";
+			clocks = <&cmu_hsi CLK_GOUT_USB_BUS_EARLY_CLK>,
+				 <&cmu_hsi CLK_GOUT_USB_REF_CLK>;
+			clock-names = "bus_early", "ref";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x13600000 0x10000>;
+			status = "disabled";
+
+			usbdrd_dwc3: usb@0 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x10000>;
+				interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usbdrd_phy 0>;
+				phy-names = "usb2-phy";
+			};
+		};
+
+		usbdrd_phy: phy@135d0000 {
+			compatible = "samsung,exynos850-usbdrd-phy";
+			reg = <0x135d0000 0x100>;
+			clocks = <&cmu_hsi CLK_GOUT_USB_PHY_ACLK>,
+				 <&cmu_hsi CLK_GOUT_USB_PHY_REF_CLK>;
+			clock-names = "phy", "ref";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
+
 		usi_uart: usi@138200c0 {
 			compatible = "samsung,exynos850-usi";
 			reg = <0x138200c0 0x20>;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
