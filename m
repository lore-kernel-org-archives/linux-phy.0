Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63D9AC04FFE
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfGD9YH34AuLWfU6QlKcbIMmVzk0CFEUUKNZAuCen8o=; b=olK9dmbBp2HHnM
	7fdU10WVeKGLVRc6yhcCqbHMCGHAjmwTJhAXzTiasyPIYqeO0uw5h+rLRmAHTspzI7UGOF7oUqfpq
	EDpf54EPDUt33GKolQzCeImDzceYsMODHu8yyF8allzB84G245zhgkck07WkTi0ZLOFlX2X9VQaEq
	3khIlNFu2MStCGOhHz7gShBHEMxYOh9LsjfTVbToaspH3QYG4Y1Jfyulqb9TPTfMeKelyx5ptcF6C
	Y3/RfJnJG5fAghuuF7a7zHykD19ARaELQgXLZZwmIjWzZruC1pEeqyWkCwlI1sx1xvMz+HNrtUWd4
	4ebaz7S9/UIsUwgbJTrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6h-00000001TDH-029j;
	Tue, 23 Apr 2024 20:51:15 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5s-00000001Si1-3fmy
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:27 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-41a77836f16so19615605e9.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905423; x=1714510223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZaHsEnykzbkaLyrdeRNzCHKySUXlEaH/7u1GIxPjlw=;
        b=Y6cZLJQA6B+qaukow69Gubyl9Ln5cIn9rDrZZFLwDZzK7ilwb8oiDeTXkDL7ItPGqv
         5cX8kinsZ2SV+D9FQ2IowZQaCUouwQulnQVJfM5H2+TJjpLWuzfK57ILK0otYYaVe1MR
         QppP4/LznFm7yN8n0XkayYsDyFLxqzdneQmBQKZPyPzwaSXO/H6C/c94psSpp07yq++T
         2xKh2wPOwzMfpIEOWLc8scOaG5r0fONgDAfMeo6add9MnQaTyAVXT8gc4RDxey/0KHzu
         lFkhNsFPjvzNvoZ9xnbsT/W5DVPu8rH8ONdtebMcY+8q9yXb86ZQCcntPR28EP9/+/KG
         sJuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905423; x=1714510223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AZaHsEnykzbkaLyrdeRNzCHKySUXlEaH/7u1GIxPjlw=;
        b=iVE3VaEb8AFjGuXlodaV3+c1oO4s61h4O6JoNp1gUafWiTFZIIxU1Ie3BxZ86YUCmE
         A23lJgBFHH1vGClrSwzX9/CButfvx937SgsUdgiO1lNa0zFD2wUWoP+8dWsVVyBPb10i
         /0Kt2gfTNfhfq7iHxDsKZgoO95vkN0Ysveo3mv0LId3GyKzeRIRgBWw1C6ZSAJ501Z2a
         1JK8qwQSmYaqvPl853oY4m3Wo2nXao0Xx+AMMOw6nG2KVD8WpgqA1525J+3lQ2z2Klyz
         EmnxOIavztwkDi9SKyxMqEdRPY2jrZsSOaIzNFrAC2kZnnuvqItDzMUNZQJJxr7u7vQe
         u/4A==
X-Forwarded-Encrypted: i=1; AJvYcCUvN1zJHtjGl9389dzBN8ZzKkCOFdiQmhk9/K62+KsuGPJf3NZHtwaLBM6m6Ag4ImI2KLoKtpJQbCLcLNERdx5V6V0qUx9wyUT1bGGTfw==
X-Gm-Message-State: AOJu0YwWpjtJw4xUrC0EZGoOkBtURVITQbYb6VJ/Lss/+4Jol8JYhB6R
	c3XetTbbjKUNXJw8/+S9ggLJZZgss0eqjWot62fKU6qruQ3BTqeSA00hKZ3Yp+g=
X-Google-Smtp-Source: AGHT+IFV4foP1YjTUjHVZLvlZh3ThdkL/KFKrbzjBs05jhoRtVosblg5RiTrD+m1RmUQ7V2qNroKQg==
X-Received: by 2002:a05:600c:4f49:b0:41a:ade4:4168 with SMTP id m9-20020a05600c4f4900b0041aade44168mr302091wmq.9.1713905423609;
        Tue, 23 Apr 2024 13:50:23 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:23 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 06/14] arm64: dts: exynos: gs101: Add ufs, ufs-phy and ufs regulator dt nodes
Date: Tue, 23 Apr 2024 21:49:58 +0100
Message-ID: <20240423205006.1785138-7-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135025_009171_B6862EA3 
X-CRM114-Status: UNSURE (   9.68  )
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

Enable the ufs controller, ufs phy and ufs regulator in device tree.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../boot/dts/exynos/google/gs101-oriole.dts   | 18 ++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  | 36 +++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 6be15e990b65..fb32f6ce2a4d 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -53,6 +53,15 @@ button-power {
 			wakeup-source;
 		};
 	};
+
+	/* TODO: Remove this once S2MPG11 slave PMIC is implemented  */
+	ufs_0_fixed_vcc_reg: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpp0 1 GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &ext_24_5m {
@@ -106,6 +115,15 @@ &serial_0 {
 	status = "okay";
 };
 
+&ufs_0 {
+	status = "okay";
+	vcc-supply = <&ufs_0_fixed_vcc_reg>;
+};
+
+&ufs_0_phy {
+	status = "okay";
+};
+
 &usi_uart {
 	samsung,clkreq-on; /* needed for UART mode */
 	status = "okay";
diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 09044deede63..baf630b13154 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1277,6 +1277,42 @@ pinctrl_hsi2: pinctrl@14440000 {
 			interrupts = <GIC_SPI 503 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		ufs_0_phy: phy@17e04000 {
+			compatible = "google,gs101-ufs-phy";
+			reg = <0x14704000 0x3000>;
+			reg-names = "phy-pma";
+			samsung,pmu-syscon = <&pmu_system_controller>;
+			#phy-cells = <0>;
+			clocks = <&ext_24_5m>;
+			clock-names = "ref_clk";
+			status = "disabled";
+		};
+
+		ufs_0: ufs@14700000 {
+			compatible = "google,gs101-ufs";
+			reg = <0x14700000 0x200>,
+			      <0x14701100 0x200>,
+			      <0x14780000 0xa000>,
+			      <0x14600000 0x100>;
+			reg-names = "hci", "vs_hci", "unipro", "ufsp";
+			interrupts = <GIC_SPI 532 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_ACLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_CLK_UNIPRO>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_UFS_EMBD_I_FMP_CLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_ACLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_PCLK>,
+				 <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
+			clock-names = "core_clk", "sclk_unipro_main", "fmp",
+				      "ufs_aclk", "ufs_pclk", "sysreg";
+			freq-table-hz = <0 0>, <0 0>, <0 0>, <0 0>, <0 0>, <0 0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&ufs_rst_n &ufs_refclk_out>;
+			phys = <&ufs_0_phy>;
+			phy-names = "ufs-phy";
+			samsung,sysreg = <&sysreg_hsi2 0x710>;
+			status = "disabled";
+		};
+
 		cmu_apm: clock-controller@17400000 {
 			compatible = "google,gs101-cmu-apm";
 			reg = <0x17400000 0x8000>;
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
