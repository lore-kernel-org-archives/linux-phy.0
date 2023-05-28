Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAAB3C77B73
	for <linux-phy@archiver.kernel.org>; Sun, 28 May 2023 00:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/raEDi8DVK+okqAuV/TV1i+kETfy5QH2pJ+eP+c9a+g=; b=FLRQRS7AmZyI5G
	+UvtuJrfWnJprh2JJy5S4mbOy4iOC3k+scbRJVeqcc2mX5GisTkettQuVeVPN2r9c3B0Si+Zh73ou
	IpUmOmUVqFrV6d9c46WZk7mREWC5jyjwLh1v+V01YBLkednndBXlCFo34NUuSB60tagVbMQVzEEZ5
	vikKcEjLQ6nSMLTfBZ1FiTsiZR18WRNnWD/qlqZ+kuXb+G9Hd/YwRHMFW8tD0ibXbIT7eZaK6c9tW
	tII0trTd0y7uj1jiK8MLC6IaCIZOf/ArasorH3riSkTMk+aYJu9/RkzrSb1QFV3HjzgLRLEJ5Wyxd
	k5Iw9998+87uPVWkwZqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3401-006ZtW-16;
	Sun, 28 May 2023 00:11:05 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q33zy-006ZqN-1B;
	Sun, 28 May 2023 00:11:04 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-6260a2522d9so9367606d6.3;
        Sat, 27 May 2023 17:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685232659; x=1687824659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bunGhsFsRznFmtODUQ1DzihDcHCOXKI+GdyZ4VMmY88=;
        b=sanBaxuOP2qAt0sf7shOlog+Yhc5sB3mQTzwd3qpRrLy8/XMd25VS1XKZXeuqdEy5Y
         0Pmiw9KZjhQk8yMco4Wm4Qst5Mx7GYRnzirepnqeBoavl4MSpxj5S0vLuNUYS+7zY6fI
         Qt0WhyKO/vRuDmeHKUaxvwIdiIWF/bfufvLlTN2jPgIX/HEZMyPfdIJ7NDCvQkTsG5mO
         9GN4v4hoKuoRpmEwghLtdYgGlRBxddoJoD57Bzu8JNMVeqYKI/f4gAGsCsQ6KURsoYOa
         55QMLdzJl8tebGfLaobKFzLccaKIXNs+NGknsQ/F1UNWWjerr+7Nw4sIStwuM/ZLPLB2
         cFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685232659; x=1687824659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bunGhsFsRznFmtODUQ1DzihDcHCOXKI+GdyZ4VMmY88=;
        b=RSpw85DFGDxiJbPs0A+WYr05eo5WT2KGxfXfN03kYCiZP4WZR0UngbUjPThDoHkRK3
         lut5AYEeiIjQ7laaQEhOEA9bqe21tQOF+keUYOUOH/EP3HW0KnkAPcehT18EilFfwDiQ
         lKo+9ItqF8elNwQPbfCsCZ9RPYZJ2s+geaWgmiTlNcL7rgtumSpmSXy5i6yre09XkXWZ
         5RzlL3/yor7KuoJUkZYkMyxeZfLpi/p6UDP6ryXfRLjTlHTItS5LXEetFt1MIHvdvu7c
         e22iJy11eMZtKUqOK1zGtU/HDXHrrGx9n8vDgHd0JOPKQ2AVYsve/9HOAldQRr7HbsmU
         IjzQ==
X-Gm-Message-State: AC+VfDx/tF0r0dpH2EKh/Qecs6ecHRN/D04wr2ZIh8yRmH/k/Cx258fX
	U2BLBPai2MrRlj5XA0sYjco=
X-Google-Smtp-Source: ACHHUZ5ZPm8RmambfxcRAULg/Mv6SJGspR/G3cjJY3ybwPKaEyTLfH+kuzK5exYzv+vWeZxgIuGupQ==
X-Received: by 2002:ad4:5c42:0:b0:5f1:6bee:f58f with SMTP id a2-20020ad45c42000000b005f16beef58fmr8366285qva.26.1685232659164;
        Sat, 27 May 2023 17:10:59 -0700 (PDT)
Received: from Latitude-E6420.mynetworksettings.com ([2600:4040:2007:9800:28b2:2867:6311:b7d0])
        by smtp.gmail.com with ESMTPSA id t18-20020ac865d2000000b003f6a7ab1450sm2518454qto.30.2023.05.27.17.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 17:10:58 -0700 (PDT)
From: Rudraksha Gupta <guptarud@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>,
	soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rudraksha Gupta <guptarud@gmail.com>
Subject: [PATCH v2 4/4] ARM: dts: qcom: Add Samsung Galaxy Express support
Date: Sat, 27 May 2023 20:10:09 -0400
Message-Id: <20230528001010.47868-5-guptarud@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527040905.stmnoshkdqgiaex6@ripper>
References: <20230527040905.stmnoshkdqgiaex6@ripper>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230527_171102_401850_44628E1F 
X-CRM114-Status: GOOD (  14.36  )
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

This adds a very basic device tree file for the Samsung Galaxy Express
SGH-I437. Currently, the following things work: UART, eMMC, SD Card, and
USB.

Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 arch/arm/boot/dts/Makefile                    |   1 +
 .../dts/qcom-msm8960-samsung-expressatt.dts   | 334 ++++++++++++++++++
 2 files changed, 335 insertions(+)
 create mode 100644 arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 59829fc90315..12c90f263142 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1081,6 +1081,7 @@ dtb-$(CONFIG_ARCH_QCOM) += \
 	qcom-msm8916-samsung-grandmax.dtb \
 	qcom-msm8916-samsung-serranove.dtb \
 	qcom-msm8960-cdp.dtb \
+	qcom-msm8960-samsung-expressatt.dtb \
 	qcom-msm8974-lge-nexus5-hammerhead.dtb \
 	qcom-msm8974-sony-xperia-rhine-amami.dtb \
 	qcom-msm8974-sony-xperia-rhine-honami.dtb \
diff --git a/arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts
new file mode 100644
index 000000000000..a1ee9c272558
--- /dev/null
+++ b/arch/arm/boot/dts/qcom-msm8960-samsung-expressatt.dts
@@ -0,0 +1,334 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <dt-bindings/input/input.h>
+
+#include "qcom-msm8960.dtsi"
+#include <dt-bindings/reset/qcom,gcc-msm8960.h>
+
+/ {
+	model = "Samsung Galaxy Express SGH-I437";
+	compatible = "samsung,expressatt", "qcom,msm8960";
+	chassis-type = "handset";
+
+	aliases {
+		serial0 = &gsbi5_serial;
+		mmc0 = &sdcc1; /* SDCC1 eMMC slot */
+		mmc1 = &sdcc3; /* SDCC3 SD card slot */
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&gsbi5 {
+	qcom,mode = <GSBI_PROT_I2C_UART>;
+	status = "okay";
+};
+
+&gsbi5_serial {
+	status = "okay";
+};
+
+&sdcc1 {
+	vmmc-supply = <&pm8921_l5>;
+	status = "okay";
+};
+
+&sdcc3 {
+	vmmc-supply = <&pm8921_l6>;
+	vqmmc-supply = <&pm8921_l7>;
+	status = "okay";
+};
+
+&gsbi1 {
+	qcom,mode = <GSBI_PROT_SPI>;
+	pinctrl-0 = <&spi1_default>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&gsbi1_spi {
+	status = "okay";
+};
+
+&msmgpio {
+	spi1_default: spi1_default {
+		mux {
+			pins = "gpio6", "gpio7", "gpio9";
+			function = "gsbi1";
+		};
+
+		mosi {
+			pins = "gpio6";
+			drive-strength = <12>;
+			bias-disable;
+		};
+
+		miso {
+			pins = "gpio7";
+			drive-strength = <12>;
+			bias-disable;
+		};
+
+		cs {
+			pins = "gpio8";
+			drive-strength = <12>;
+			bias-disable;
+			output-low;
+		};
+
+		clk {
+			pins = "gpio9";
+			drive-strength = <12>;
+			bias-disable;
+		};
+	};
+};
+
+
+&rpm {
+	regulators {
+		compatible = "qcom,rpm-pm8921-regulators";
+		vin_lvs1_3_6-supply = <&pm8921_s4>;
+		vin_lvs2-supply = <&pm8921_s4>;
+		vin_lvs4_5_7-supply = <&pm8921_s4>;
+		vdd_ncp-supply = <&pm8921_l6>;
+		vdd_l1_l2_l12_l18-supply = <&pm8921_s4>;
+		vdd_l21_l23_l29-supply = <&pm8921_s8>;
+		vdd_l24-supply = <&pm8921_s1>;
+		vdd_l25-supply = <&pm8921_s1>;
+		vdd_l27-supply = <&pm8921_s7>;
+		vdd_l28-supply = <&pm8921_s7>;
+
+		/* Buck SMPS */
+		pm8921_s1: s1 {
+			regulator-always-on;
+			regulator-min-microvolt = <1225000>;
+			regulator-max-microvolt = <1225000>;
+			qcom,switch-mode-frequency = <3200000>;
+			bias-pull-down;
+		};
+
+		pm8921_s2: s2 {
+			regulator-min-microvolt = <1300000>;
+			regulator-max-microvolt = <1300000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		pm8921_s3: s3 {
+			regulator-min-microvolt = <500000>;
+			regulator-max-microvolt = <1150000>;
+			qcom,switch-mode-frequency = <4800000>;
+			bias-pull-down;
+		};
+
+		pm8921_s4: s4 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+			qcom,force-mode = <QCOM_RPM_FORCE_MODE_AUTO>;
+		};
+
+		pm8921_s7: s7 {
+			regulator-min-microvolt = <1150000>;
+			regulator-max-microvolt = <1150000>;
+			qcom,switch-mode-frequency = <3200000>;
+			bias-pull-down;
+		};
+
+		pm8921_s8: s8 {
+			regulator-always-on;
+			regulator-min-microvolt = <2050000>;
+			regulator-max-microvolt = <2050000>;
+			qcom,switch-mode-frequency = <1600000>;
+			bias-pull-down;
+		};
+
+		/* PMOS LDO */
+		pm8921_l1: l1 {
+			regulator-always-on;
+			regulator-min-microvolt = <1050000>;
+			regulator-max-microvolt = <1050000>;
+			bias-pull-down;
+		};
+
+		pm8921_l2: l2 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			bias-pull-down;
+		};
+
+		pm8921_l3: l3 {
+			regulator-min-microvolt = <3075000>;
+			regulator-max-microvolt = <3300000>;
+			bias-pull-down;
+		};
+
+		pm8921_l4: l4 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8921_l5: l5 {
+			regulator-min-microvolt = <2950000>;
+			regulator-max-microvolt = <2950000>;
+			bias-pull-down;
+		};
+
+		pm8921_l6: l6 {
+			regulator-min-microvolt = <2950000>;
+			regulator-max-microvolt = <2950000>;
+			bias-pull-down;
+		};
+
+		pm8921_l7: l7 {
+			regulator-always-on;
+			regulator-min-microvolt = <1850000>;
+			regulator-max-microvolt = <2950000>;
+			bias-pull-down;
+		};
+
+		pm8921_l8: l8 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3100000>;
+			bias-pull-down;
+		};
+
+		pm8921_l9: l9 {
+			regulator-min-microvolt = <2850000>;
+			regulator-max-microvolt = <2850000>;
+			bias-pull-down;
+		};
+
+		pm8921_l10: l10 {
+			regulator-min-microvolt = <3000000>;
+			regulator-max-microvolt = <3000000>;
+			bias-pull-down;
+		};
+
+		pm8921_l11: l11 {
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3300000>;
+			bias-pull-down;
+		};
+
+		pm8921_l12: l12 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			bias-pull-down;
+		};
+
+		pm8921_l14: l14 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8921_l15: l15 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <2950000>;
+			bias-pull-down;
+		};
+
+		pm8921_l16: l16 {
+			regulator-min-microvolt = <2800000>;
+			regulator-max-microvolt = <3000000>;
+			bias-pull-down;
+		};
+
+		pm8921_l17: l17 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <3300000>;
+			bias-pull-down;
+		};
+
+		pm8921_l18: l18 {
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1500000>;
+			bias-pull-down;
+		};
+
+		pm8921_l21: l21 {
+			regulator-min-microvolt = <1900000>;
+			regulator-max-microvolt = <1900000>;
+			bias-pull-down;
+		};
+
+		pm8921_l22: l22 {
+			regulator-min-microvolt = <2750000>;
+			regulator-max-microvolt = <2750000>;
+			bias-pull-down;
+		};
+
+		pm8921_l23: l23 {
+			regulator-always-on;
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			bias-pull-down;
+		};
+
+		pm8921_l24: l24 {
+			regulator-min-microvolt = <750000>;
+			regulator-max-microvolt = <1150000>;
+			bias-pull-down;
+		};
+
+		pm8921_l25: l25 {
+			regulator-always-on;
+			regulator-min-microvolt = <1225000>;
+			regulator-max-microvolt = <1225000>;
+			bias-pull-down;
+		};
+
+		/* Low Voltage Switch */
+		pm8921_lvs1: lvs1 {
+			bias-pull-down;
+		};
+
+		pm8921_lvs2: lvs2 {
+			bias-pull-down;
+		};
+
+		pm8921_lvs3: lvs3 {
+			bias-pull-down;
+		};
+
+		pm8921_lvs4: lvs4 {
+			bias-pull-down;
+		};
+
+		pm8921_lvs5: lvs5 {
+			bias-pull-down;
+		};
+
+		pm8921_lvs6: lvs6 {
+			bias-pull-down;
+		};
+
+		pm8921_lvs7: lvs7 {
+			bias-pull-down;
+		};
+
+		pm8921_ncp: ncp {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			qcom,switch-mode-frequency = <1600000>;
+		};
+	};
+};
+
+&usb_hs1_phy {
+	v3p3-supply = <&pm8921_l3>;
+	v1p8-supply = <&pm8921_l4>;
+};
+
+&usb1 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
