Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B2E8C41513
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BHTroiLUpZgQozKMiFURfCuZOdSq1FgGMsZLCQDVww=; b=VS1ngWUha3hgcI
	DucMcmql0igBuOia+l/grUEOjZXkGlk2o4OvD/lcJkl7WUQr+NZtptWmFQn7c4dLLSEttJ/Y87Eeo
	lBKOUEhttdWQ9kvIYduGO/IrP78CsnwFVf5sFwEsJWeBpFBRQ7rTHVnheji2fiVdt9gngNro7ALOr
	rJbDOu5RQfRjPrqiYB2HgGImXxRONBz29RiyWyQDtBGYE/JIjNHkpIhkxi6dwtNqMXnwpcH8tcZdF
	zPHH6q33zZL2WHq420d3HAliXjERP/YLOxc+LsQj8wzfiWIVts0GB4jLexqLkeASIb7OsQS6y8C2a
	/Zm14raRGs7TAkhOH4zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6F-00000001SyT-18bd;
	Tue, 23 Apr 2024 20:50:49 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5o-00000001Sg5-3A1p
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:23 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-41ae95468efso3151095e9.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905419; x=1714510219; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RO0Q7DT7yLKUiAcPvW3Nf6mTKRVRL8o5OiH+h8e335U=;
        b=rP/gec20JpA02gKXd5Lz4uyMEXbvzI2Ls5nF1ggSAgkMzfUvKcgUB91Lp1hwn+fhxx
         zaXkeYb0XAPw3xTSHGMH1XvQLe94fgq2LSHPZWm6zvgH1m2SQjcQEx1NdrmrRFkuPEh2
         6Xq2cqVJWFeG4CZ8V8KeIhf75LeYqQVm2BBTzEwlEddYLAc5x+AvWvZPWVUBt2kaupYy
         gwaRVMyEeusYa4J6EThzq2jsO1Xj0kKUTE1WpAgo3GYxh/d66/CCbr8Vll+giL9a44Ck
         cmoLofIFdxIJA54f65fTcmJO0yLrgHl23bI/qhvg99OLjfC1rNDLOdVuBbHe4RW4doPl
         YKgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905419; x=1714510219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RO0Q7DT7yLKUiAcPvW3Nf6mTKRVRL8o5OiH+h8e335U=;
        b=hhVFFmvdSoFCgwU/l0Mc233lu5IEjuraU+MSVtClTjzobNi8EaIL86540tYwRwXmzf
         wi/d6dd1U7q0RjyeKjs4cYacjHdM7/DUP1DQy1ikMIZA3ShK7tEDZLULeWw2AocrEnWl
         q/oPiRLeHRbGU2/E+cthB3ntz0JJPwjm/v8SdbqieTL3RNj4ukOdaNvnqUpdjpvJjvww
         sw2zwuP5mLj0ZINwpZ/YO5PB91b7C9BiEse73Q8Bz4Qbk/4m2BNsd/WR6V6Aa+FcTW6P
         nhJuOvVky9lg3vf41fDTDDRlb9nCMYJbIoVJs5LEq+bSaXPF6YagXi4Z7LDkKV1xuydq
         J5Mg==
X-Forwarded-Encrypted: i=1; AJvYcCUc7Z6KI9+SFg3d6wetsyBPNiY1PvMCl9H7z0Y8y6+RJ350170UsaXbAeSb0WGKVE/RWUt42DNaIEcEKecAZogN1Vek+VSAk1vyBBm9OQ==
X-Gm-Message-State: AOJu0Yz3g5WVJkYarzHFGSGDx1+v3xJ/PCNqM7mAmVZztJVg9163fC8C
	cw6eexqCMhJ/X59tMHqdXz+7To6Nzu06hNyzc0q3p1+/zilst3NiSPf1LpQd4nc=
X-Google-Smtp-Source: AGHT+IF8O2EPzbnNSG6U4NWCE/9Bmgh96w+1G9WQQPsP87ZTH8fEdARtLUqlxUJ0kewOWRJsF6pWyg==
X-Received: by 2002:a05:600c:444b:b0:416:7b2c:df0f with SMTP id v11-20020a05600c444b00b004167b2cdf0fmr297771wmn.7.1713905419532;
        Tue, 23 Apr 2024 13:50:19 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:19 -0700 (PDT)
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
Subject: [PATCH v2 04/14] arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
Date: Tue, 23 Apr 2024 21:49:56 +0100
Message-ID: <20240423205006.1785138-5-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135021_904928_1B1E14CD 
X-CRM114-Status: UNSURE (   7.90  )
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

Enable the cmu_hsi2 clock management unit. It feeds some of
the high speed interfaces such as PCIe and UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index eddb6b326fde..38ac4fb1397e 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1253,6 +1253,18 @@ pinctrl_hsi1: pinctrl@11840000 {
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		cmu_hsi2: clock-controller@14400000 {
+			compatible = "google,gs101-cmu-hsi2";
+			reg = <0x14400000 0x4000>;
+			#clock-cells = <1>;
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_BUS>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_PCIE>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD>;
+			clock-names = "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
