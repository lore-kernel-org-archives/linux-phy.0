Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E48B5C77B7D
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 09:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4DQlvFdecOuLLXjvZPTfkbqC+Wf1Tqju4qZ2c2wze14=; b=LPfnhddQqq3Hf0
	vc8BY8Fa5VXDPLI5aYNWNys+0N+TKMr9FVyz6x00MjVK96QX97vqeTiXle2E0NMShcVGHco7GOfgx
	lNk0056aYcw89f0YQ/qQ6CadCyjPehZPP8F1cBJ1/1COr8l1Y14U47Jai6N0hdGnV1+7/ZR0XC6Yx
	rhLelI4alKDW1SsmE7m1uU0cuooenEr0UrjibOQyNLpfJShgl62r0lBqvSXxXolvUZ2BkkorKig28
	sRaFYRDGLHpBwizjy5PvRz28qkInesB/FT3+NOj+JgVZtfdVgP0vNMOSjDTdncububz2s5THo+o4t
	RXQjZE9ZVFVpIDBRrxkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtR-001e80-1w;
	Mon, 15 May 2023 09:53:25 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyUtN-001e63-10
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 09:53:22 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f42711865eso54542245e9.0
        for <linux-phy@lists.infradead.org>; Mon, 15 May 2023 02:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1684144398; x=1686736398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nF3XkLBwI40S/PU9ejyV181Dxd0FTXS0tCrPDFNZWw8=;
        b=2koQ2vUev6nnT9WLRCMxh+WRwGFkhcxicv8aXQ5frMIF690ia81CU1JgsTQBSiuQGi
         XYeL3yHaAMgmAz2zijsWoNog6LG3sM7zzhodD+NjfxoA+8R52uURmeb5D9plHHJwJj4D
         33+nTMEPapr8zJ3bgr4P0GyE3grxnR94oz1THlRvpzZ+tpN+mE85j5flqv+QO0HmPLG0
         qL5TS4oBzYYD5/GQvFcoNbyM0Zbf5BpkzaDF0gCqfh8sh2DkWteikYCAMKo0Bq712t/S
         rjrMq6v88TZPrT7/oNifiKiynyEE2maaKer2iL3vHptU3U2IRL1wDDJFDUbEHL+oMULc
         /sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684144398; x=1686736398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nF3XkLBwI40S/PU9ejyV181Dxd0FTXS0tCrPDFNZWw8=;
        b=Yfwtsldvqmu/rKSoingxAdBSDE9iMZTp53Avq1n0dPheTE2zapXKRj8kDk7qQ2LAC3
         TdkKyxwYrksIqMhnsXTIR2AF0G2oewfdhYKbwaT4iSX8psUs2k3kJOhLLzHIjtAFmQ0L
         OTp3LEuG+u4CxMILN0Xy0c09riM3yfqLMONij3jX1dzUaBKENF1JGmayuEoNNFAv0I6D
         FgVdYyhsSXX4NiCgAtXcDor4jFSXJv5RHqTQSA+GPO6ZUgaLjrytpyqqwQIS6oYTvgOZ
         jh0e99SRYT+C+YwONYDOr2MH+YRXde4NyK4tc7QiOC4iwhRvJ88AD1Jv/f/FsMlyGQST
         NtvA==
X-Gm-Message-State: AC+VfDz/FUMz8iAaZ1qQI5l8qQUN5sEEtO+LOt+Qne52mCebDqcv5oiG
	uWnC3AVPK2U7bOMEERN1KQLJkA==
X-Google-Smtp-Source: ACHHUZ6/EFQHWjmlZKJCfseGGjnzM5u+JTURpLnr9cYBu2urf4sHoKHI0ilYDnqqWOum8LdrphrCmw==
X-Received: by 2002:a5d:6ac5:0:b0:306:3429:1833 with SMTP id u5-20020a5d6ac5000000b0030634291833mr24319445wrw.46.1684144398617;
        Mon, 15 May 2023 02:53:18 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1388:9f6:c7d9:3b77])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600000cc00b0030795b2be15sm24228443wrx.103.2023.05.15.02.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 02:53:18 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v4 3/3] arm64: dts: qcom: sa8775p-ride: enable UFS
Date: Mon, 15 May 2023 11:53:08 +0200
Message-Id: <20230515095308.183424-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230515095308.183424-1-brgl@bgdev.pl>
References: <20230515095308.183424-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_025321_345979_8CE885BA 
X-CRM114-Status: UNSURE (   8.52  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the UFS and its PHY on sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index f238a02a5448..2bb001a3ea55 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -5,6 +5,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 #include "sa8775p.dtsi"
@@ -20,6 +21,7 @@ aliases {
 		serial2 = &uart17;
 		i2c18 = &i2c18;
 		spi16 = &spi16;
+		ufshc1 = &ufs_mem_hc;
 	};
 
 	chosen {
@@ -426,6 +428,23 @@ &uart17 {
 	status = "okay";
 };
 
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
+	vcc-supply = <&vreg_l8a>;
+	vcc-max-microamp = <1100000>;
+	vccq-supply = <&vreg_l4c>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
