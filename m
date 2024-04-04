Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7119CD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 12:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ADxgIoU5MNfuiCcBaXlR6ZPr+BBHCOWIw119xh7jb8A=; b=dIMAU5HLb2Abub
	CVC3gjAs9VTmsq/Vbpmt9iDTNBZt8nJNGHPClPsVuwULAjhzlCuEG2SrOHJw4lNJVsl8ydcQCCeKB
	eTinmgWKPeU5zGvzf8A3805o9iuukgpY/NauuLqoEqXzqW1gF3gIEGWyf8vCyWeddRNEGxHxTmJlq
	XaNsuslbYG+159WaBwom+Zi/ev94afaciGTTZ+phxQIPKNF6pcLPLyEebOPGH1OmBrZ272ExIOcyX
	evAI6IL+8PMwv1hzQVf8rC4tQ1yTi+cKCdSo1tIotaBiMnwKrhL9/a16u6kfuacQp0jbiP4bP9PX2
	xtcSgkZQyThaa53qIsDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBM-00000002b1s-12kf;
	Thu, 04 Apr 2024 12:27:04 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsMBD-00000002auf-2wvb
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 12:26:58 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4162bac95d4so2208975e9.2
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 05:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712233614; x=1712838414; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrMh9hwB3p1Mipm20fbzkvpRap7meRfagxDyOlP4O3Q=;
        b=u/ZzolSUFKy+hqGEkp9Tjqaf8To8wpQz7LVkw0aKHnmRsyw/TEZXbYuhDgzrNt8UND
         2pucFQ3rcQVGczsBotWdVjqT3Oe/b+AXHyDkf1DUijSqYq7QycqULQ1vFiE5E2RNNHDB
         8ygnen40TxoSqMa8olh1F+fpiwPVquCQIJjBtizi140RHEV3ceGx1C4SqVegMHUy6vis
         aChRwEqO7pQmCDb9Op742zV+jpss3NB0SJqXxrzfIT0UtESgwMk/LLg85K+3li9fG9fl
         hnP6I97QvXdAmIV4ZrNdDDUOGlSb8rYM0FfIV/rQmzXJ341LwVuDu3ovx/b0YvngUr6e
         KJtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712233614; x=1712838414;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TrMh9hwB3p1Mipm20fbzkvpRap7meRfagxDyOlP4O3Q=;
        b=mrPnJ6131s+1EVbSiUatoDAfOW8MICn++k9uCucw9AUAj4cSkK2n8LTku0BFejh9sk
         cIciAjVyTD+Qz5Ie6Lh38Q6QBiSwnkulL9By7oEOsIAs+5yUk1x2178NY1MVPWTnJif+
         DdJRd3ldoYgo62iFaTZdvXQMg7l9rYNKQ4RaEy9EPnhOQ6DkyJYLCQNpRulNuazyMOLN
         AGicIebReBpxVgZ67zrdQaKq20Buz13h/FmJc2dHrAV6zLPTDg0/S0px+6Bkrbkwng+I
         V6wQ8iuNyS7yt89x/vvR0d32iLv7GTxLWz7p5mnHoK+duerF7xXeCo2AYPf2EzP9+8UG
         1H9A==
X-Forwarded-Encrypted: i=1; AJvYcCU9dAFnrrO38Wj9cwV7tixpBezgeCXbKLoyBvrDVaqMIYhalQ0MLH+cxtud1Qrf5SXpNxk7IUymhX5Z1H8EQWSopePnSpSPbttRx3/kfQ==
X-Gm-Message-State: AOJu0YwBRBzN0QbVQWuiQ/k1y0JNy60mCiW0TiwQkRPlW7r32Q52MgxR
	BcCecCd8HHFbeCNSwd4lmkqt/O8jVo+fkQa2pvI5Jm+kPGYd4kgJpq7Eof+yAC4=
X-Google-Smtp-Source: AGHT+IHRLGlRLu0X30aUGWPe4sFLm60kfPU9BGIq+xTElzJdF2I8vESH0PiWqjgNrWkApBN3qalkxw==
X-Received: by 2002:adf:f392:0:b0:343:67b1:9020 with SMTP id m18-20020adff392000000b0034367b19020mr1665840wro.61.1712233613749;
        Thu, 04 Apr 2024 05:26:53 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([148.252.128.204])
        by smtp.gmail.com with ESMTPSA id bu14-20020a056000078e00b003434b41c83fsm12106303wrb.81.2024.04.04.05.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 05:26:53 -0700 (PDT)
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
	chanho61.park@samsung.com,
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
Subject: [PATCH 07/17] arm64: dts: exynos: gs101: Add ufs, ufs-phy and ufs regulator dt nodes
Date: Thu,  4 Apr 2024 13:25:49 +0100
Message-ID: <20240404122559.898930-8-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
In-Reply-To: <20240404122559.898930-1-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_052656_176283_13388865 
X-CRM114-Status: UNSURE (   9.66  )
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
 .../boot/dts/exynos/google/gs101-oriole.dts   | 17 +++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi  | 35 +++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
index 6be15e990b65..986eb5c9898a 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
+++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dts
@@ -53,6 +53,14 @@ button-power {
 			wakeup-source;
 		};
 	};
+
+	ufs_0_fixed_vcc_reg: regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "ufs-vcc";
+		gpio = <&gpp0 1 0>;
+		regulator-boot-on;
+		enable-active-high;
+	};
 };
 
 &ext_24_5m {
@@ -106,6 +114,15 @@ &serial_0 {
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
index 608369cec47b..9c94829bf14c 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1277,6 +1277,41 @@ pinctrl_hsi2: pinctrl@14440000 {
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
+
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
+				 <&cmu_hsi2 CLK_GOUT_HSI2_QE_UFS_EMBD_HSI2_PCLK>;
+			clock-names = "core_clk", "sclk_unipro_main", "fmp", "ufs_aclk", "ufs_pclk";
+			freq-table-hz = <0 0>, <0 0>, <0 0>, <0 0>, <0 0>;
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
2.44.0.478.gd926399ef9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
