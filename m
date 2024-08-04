Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFF43C3DA64
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 22:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7KzH99Cn48/3TrZZGY6biiHK8G1o/0Elg81c032dcM=; b=cdSNYXEVqhluh6
	OJh+QaHtMjCBvEYmsQcxKa/JYXm1HYZYlZK5tycdM1RhZ6vRUaZQcsz+KHL3pZb+qnwpqi4gd4I+P
	oV3pwaCYtn+Ab4ENeJV40HPeACn8vt3LSnksk001c6IRC2/38u2V9LfdylkJWKeGyAkQsY89s/ez3
	alaSIIsob/9NUSO2OAshvnz1josRw8U3Nq6kUacllZYJn085srhbKNZke5QqQNGTjUJjlsGakW1iJ
	BPQTWs35iei13kxQrvbmvp3r6TUASY2bS9LCEFrmQYuRubTmUBTQRz69gGB+acF1to6njkSoo/XH2
	03y5hhMk1fwu/hcdV7nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajHo-0000000E13x-25Em;
	Sun, 04 Aug 2024 22:01:08 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCw-0000000DzYb-1pfo;
	Sun, 04 Aug 2024 21:56:07 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5a79df5af51so8572229a12.0;
        Sun, 04 Aug 2024 14:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808565; x=1723413365; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6nXQrtmAREhYSbuVOCkvwjMA8tJJtTb76+fEkB0V/M0=;
        b=IzL5N+UP+WTdk1jsxLOj6baSI9PKuHfWGqdZhcCjvYGoNi9PrGk9tjs8V6owZ5g5yS
         sICAr77GFD5XfjQ/evqAcWvu/0flzmfCEdKPreQcv8lcAT82oDGR6lA8wSo/2UM43AqS
         j2MJp2r70vBJ6j7dweqpnKsnLQj7/xjXpKimpZ7Q4ZxxieHaAjyezr/GIglrClDB/yLq
         5YixQNCMzfE+ch+MhnZi14qY1AMEmUr65dmj8wN0lpWYbufvpcNt/epZ4CpNMDYcf+Vd
         IHDyWhYhfT6QNd70tnSeoFOuLCb4/xVFeIvv5FeLElCX2u2+Ik+fVoYrl8YfqA1CU6rp
         hD3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808565; x=1723413365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6nXQrtmAREhYSbuVOCkvwjMA8tJJtTb76+fEkB0V/M0=;
        b=kzxP51JClf5gwcY6Bi0vuoZ7UNfo4NxJc7YUQtG5jXSwxZuH9Vj7DXJPc3GWJQQtJG
         q0p8YOqVEbU4VntA4bGdIblBTmhnpbx6zmI8FotdYqFrFIQNnsHlShRBhy1RsJyCBoIt
         VXsoon5JOcjc/oChCYp4R1zC66u5BMhbhr/QcJSSG8KN7wp4zZM92Do8lvY9FIhMlYLJ
         evWCjC1uyvST4WzcgfsFZPj34iqa8h0trlFM8wVFE13p16gW8Hns75ZbyRnhNXyjBApr
         Jp2RDTwCrGaEX/V+T5smS9ttb8c9rPuLDIoOfYlQpjC6dpSxfiTMRLISGECPIlKxBFTz
         cfOQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrzzlknFEHUK7dIMIR7dcKBXbY+mWWwW0KfcZjBeiX0XS9R5hAbAo+qQnyJkUIXPr61yUX6eW4WyURamrPGAOC/1fApq0hMIzRxItEn1aoBn8lQtQ=
X-Gm-Message-State: AOJu0Yw+ninF5ahBw3ciDYNoCr2thA49yM0XPk4YdvDvPmnJ4P8kvJUc
	k1L9P9wp1p0+HQQjtdzWuGXI+JrHsheB/IjH2zt3ZQ4DWCRWB8Ey
X-Google-Smtp-Source: AGHT+IFLMViVMBNiStXLwb5mhAcR5sCxw4ogfYSqyoao7B0+bdKb5RDnNdmEhxeKRJdypvs3epTq+Q==
X-Received: by 2002:a17:907:5c7:b0:a72:7b17:5d68 with SMTP id a640c23a62f3a-a7dc5f6b5a0mr763569566b.3.1722808564860;
        Sun, 04 Aug 2024 14:56:04 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:56:04 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 12/13] arm64: dts: exynos: Enable USB in Exynos7885
Date: Sun,  4 Aug 2024 23:53:57 +0200
Message-ID: <20240804215458.404085-13-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145606_498519_25B449A3 
X-CRM114-Status: GOOD (  13.26  )
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

Add USB controller and USB PHY controller nodes to Exynos7885 SoC DTSI

The SoC theoretically supports USB3 SuperSpeed, but is not implemented
in any known device. The vendor kernel also stubs out USB3 functions, so
we do not support it.

It is though, perfectly capable of USB 2.0 high-speed mode, both as host
and device.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 arch/arm64/boot/dts/exynos/exynos7885.dtsi | 35 ++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/exynos7885.dtsi b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
index 008228fb319a..1352c64d132e 100644
--- a/arch/arm64/boot/dts/exynos/exynos7885.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos7885.dtsi
@@ -463,6 +463,41 @@ i2c_7: i2c@11cd0000 {
 			clock-names = "i2c";
 			status = "disabled";
 		};
+
+		usbdrd: usb@13600000 {
+			compatible = "samsung,exynos7885-dwusb3";
+			ranges = <0x0 0x13600000 0x10000>;
+			clocks = <&cmu_fsys CLK_FSYS_USB30DRD_BUS_CLK_EARLY>,
+				 <&cmu_fsys CLK_FSYS_USB30DRD_REF_CLK>;
+			clock-names = "bus_early", "ref";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			status = "disabled";
+
+			usbdrd_dwc3: usb@0 {
+				compatible = "snps,dwc3";
+				reg = <0x0 0x10000>;
+				interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+				phys = <&usbdrd_phy 0>;
+				phy-names = "usb2-phy";
+				/*
+				 * SoC in theory supports SS but no device has it.
+				 * Actual capabilities unknown.
+				 */
+				maximum-speed = "high-speed";
+			};
+		};
+
+		usbdrd_phy: phy@135d0000 {
+			compatible = "samsung,exynos7885-usbdrd-phy";
+			reg = <0x135d0000 0x100>;
+			clocks = <&cmu_fsys CLK_FSYS_USB30DRD_ACLK_20PHYCTRL>,
+				 <&cmu_fsys CLK_FSYS_USB20PHY_CLKCORE>;
+			clock-names = "phy", "ref";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <1>;
+			status = "disabled";
+		};
 	};
 };
 
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
