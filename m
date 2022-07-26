Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE949C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 26 Jul 2022 09:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=djQo+3tA0y8ttrpbqlMkTda07C4cH68OZE/TFstE9so=; b=2Qy2E51gLvGol0
	ana/lX0Ak5PY9SX5HikmVTD2wEFaKY9LnuXF0CkFeBLV8PWprYgVvKvSxaWvA8pUnXynvRyKibWkL
	CrgF3yNb//KeLF1TQDtRSDnvUcevplGjMsT/BiO4qIU5VS2iRS281xWc+u8KscQuGlxEVgKI4HR/T
	pH6YM+XfL4Su7vKTxbjObWDUCj/loVhS5pApS0h2wV3eAwlRAPCmHgRb8M+972iBiESMy8PW0gSi1
	N4CKREZFX7FxWzhoacU09yH0UB6tuHVLfRp8eTxOax9zjXHSdL5fb5pxih3EhjzT5mHdszruvuI5J
	AKQdicrZvcOVpeI/n6Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGHJZ-00C0na-8P; Tue, 26 Jul 2022 09:57:21 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGHJV-00C0gi-Kx
	for linux-phy@lists.infradead.org; Tue, 26 Jul 2022 09:57:19 +0000
Received: by mail-wr1-x42a.google.com with SMTP id l15so15356560wro.11
        for <linux-phy@lists.infradead.org>; Tue, 26 Jul 2022 02:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iUicZLyBaZmjv2lqx7fW4HMBGqk7G7eOOVk/ONJ/4PI=;
        b=a9jshOAIwiw5ztp0+n80iX49X5uP9g1fIPLWAKA0Oebli99rLSK1JSwbKX/TWSIEKD
         O8RAu6x1EuYGsc6oXUYHrmfMJXvk5iAAbsgDFp3wtW13E5HsTmbU8dXiDaDJtMrBEKfo
         BtLocFdB4gelyGOYkHzTosErUmhiDP8/zjswgy3RH2fFxA6Xdh3CA/yI5iTiW9jbWJ9K
         oN+oMjKZdsMTijOKOP2BcUYtUHprOqVqAeK+KFkaDem1o5Ff7dUDZtyl1X5TpjYEAD8P
         dBkE0hdxwnSaGXsfATXn6MSzu2tBqE1Ie2s0Wxg+NyX5ban32/phra4XzX8bj2k4iDT4
         H/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iUicZLyBaZmjv2lqx7fW4HMBGqk7G7eOOVk/ONJ/4PI=;
        b=hgYY0lUJvEiMKXuXEpQ2CWHKott2w9raIwQ1WmjZfmj+eYRb0L/2DP5B7DwvPR8U7L
         byvJ/Fdw9ovIQQNUYUMho+xm9NyR+4R1hQ2z8XGDszeaQ5IGO9GbwIDIZQ4a4wv0owzp
         sETPrE5v7w9kSI4DWAPXC/cxzYZF7bxxp6KBB8K3/mrhWLxrt33/ZBShRpjonnZCI5mk
         EeXoMNCgmrLKAadxPsF9Ggdup8yUi2OAUjRaOucp/nHNIgEjCwM6glFTEDfMPBIpldbP
         7i43Y6d3qxxPsMnHyekx7rCe8QkvKaP3AUV9py1cyckOcvop5XIpxs5KlWKihEcaAfam
         6Ezw==
X-Gm-Message-State: AJIora9BXd9ZuePxvSxWyqpCb5RLUYfi5om3YCPa6GVnPgay6FCbRNsR
	Eg2wnurppoMPRBTvIMh89MDMXK01rHbEvBM0
X-Google-Smtp-Source: AGRyM1vaVzTyQ5b+nn+RlJ42faxYO14TpuNlzllTL+nY6z4bb/G0nOBbFTz5DJTxQxp7SwpuN92A3g==
X-Received: by 2002:adf:e84b:0:b0:21e:61cd:647e with SMTP id d11-20020adfe84b000000b0021e61cd647emr10370152wrn.715.1658829433726;
        Tue, 26 Jul 2022 02:57:13 -0700 (PDT)
Received: from localhost.localdomain (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.googlemail.com with ESMTPSA id t3-20020a1c4603000000b003a2d87aea57sm21170873wma.10.2022.07.26.02.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 02:57:12 -0700 (PDT)
From: Amjad Ouled-Ameur <aouledameur@baylibre.com>
To: fparent@baylibre.com
Cc: broonie@kernel.org,
	chaotian.jing@mediatek.com,
	chunfeng.yun@mediatek.com,
	devicetree@vger.kernel.org,
	dmaengine@vger.kernel.org,
	jic23@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-serial@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux@roeck-us.net,
	matthias.bgg@gmail.com,
	qii.wang@mediatek.com,
	robh+dt@kernel.org,
	srinivas.kandagatla@linaro.org,
	ulf.hansson@linaro.org,
	vkoul@kernel.org,
	wim@linux-watchdog.org
Subject: Re: [PATCH 16/17] arm64: dts: mediatek: add mt8365 device-tree
Date: Tue, 26 Jul 2022 11:57:11 +0200
Message-Id: <20220726095711.708310-1-aouledameur@baylibre.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220531135026.238475-17-fparent@baylibre.com>
References: <20220531135026.238475-17-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220726_025717_718769_962DE0CA 
X-CRM114-Status: UNSURE (   9.23  )
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

Hi Fabien,

Could you please add CPUIDLE support:

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 323c814c10cc..1df4075db58f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -59,6 +59,7 @@ cpu0: cpu@0 {
 			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER &DPIDLE>;
 			operating-points-v2 = <&cluster0_opp>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
@@ -72,6 +73,7 @@ cpu1: cpu@1 {
 			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate", "armpll";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER &DPIDLE>;
 			operating-points-v2 = <&cluster0_opp>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
@@ -85,6 +87,7 @@ cpu2: cpu@2 {
 			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate", "armpll";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER &DPIDLE>;
 			operating-points-v2 = <&cluster0_opp>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
@@ -98,10 +101,42 @@ cpu3: cpu@3 {
 			clocks = <&mcucfg CLK_MCU_BUS_SEL>,
 				 <&apmixedsys CLK_APMIXED_MAINPLL>;
 			clock-names = "cpu", "intermediate", "armpll";
+			cpu-idle-states = <&MCDI_CPU &MCDI_CLUSTER &DPIDLE>;
 			operating-points-v2 = <&cluster0_opp>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			MCDI_CPU: mcdi-cpu {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x00010001>;
+				entry-latency-us = <300>;
+				exit-latency-us = <200>;
+				min-residency-us = <1000>;
+			};
+
+			MCDI_CLUSTER: mcdi-cluster {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x01010001>;
+				entry-latency-us = <350>;
+				exit-latency-us = <250>;
+				min-residency-us = <1200>;
+			};
+
+			DPIDLE: dpidle {
+				compatible = "arm,idle-state";
+				local-timer-stop;
+				arm,psci-suspend-param = <0x01010004>;
+				entry-latency-us = <300>;
+				exit-latency-us = <800>;
+				min-residency-us = <3300>;
+			};
+		};
 	};
 
 	cluster0_opp: opp-table-0 {

I have tested it on i350 evk and each idle state is used properly.

Regards,
Amjad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
