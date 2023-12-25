Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD45C47072
	for <linux-phy@archiver.kernel.org>; Mon, 25 Dec 2023 12:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9doQnZj/SR5XeEAO1b5Kp/NTJMXPJmFaYtjj3g5SE+0=; b=laq7AONFQo0Mab
	b2x5jbU9tHxB+/TWU/L4Gr7lYG6RH3O7A/RmhYg8jBfBQ3CzO8Cce+FKQmn1dGq7srvJPv3n6P2sB
	Ltnhyr5/JcMeV7Cc4gXORriai+PQ0vmyf11qrGip4buvVSiskyAfvyGZPYxxlEbXryAPMxq0wgFih
	P3YUABtM6z3et2ADOGBe7vFjwUO6Q2XXxnlOge7t3YL0zZZOldSFFyiH7poIARL4x2yXJCtwN7xTZ
	VDBOBbbx++HACCdaxe0+5aOQPADqFF+ChUOHRkrgGncICCJvH/0fCwbJdsHa83oLKWeE8jNxLrPER
	UvS6CgOdd4WmS+krvuSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgT-00An00-0W;
	Mon, 25 Dec 2023 12:03:49 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHjgP-00Amu7-0x
	for linux-phy@lists.infradead.org;
	Mon, 25 Dec 2023 12:03:46 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40c60dfa5bfso45430785e9.0
        for <linux-phy@lists.infradead.org>; Mon, 25 Dec 2023 04:03:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703505823; x=1704110623; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ap57/3CQ6Rq0XA5XYF0Gcs8lH49YqU+xtkO3NhsJdGU=;
        b=HqpAWtzdzjYlfKqKZ0xVwUZHh44zh8u91LmZKNgVEzRR5yxKZrxZ8LESylyOoU3m+/
         ZgbajVtU5EKZBa1R1UE181P9Kuphcin2COT6TMssSR9xpA2pu/aXMFgu7NANmGfWPJuF
         GdRWkx+gpE+UkSBfb4HjjCc2lPEDCGVlXvXyqB2n2gWVBc6vBEUT88nIEzkx3hHarcvK
         C283zd+MkUnqA08qnPx8GIxLIob7FtB5jQTCPrtIkkDHhKKxfxjdvUe3JU0AagqX5MP/
         Dro5gRCoOfBqB1AZTQtDKiUBtXzMBh8q6yEswT7pDbeB1xyeaQtjWpp1jZrB2QIv9eKr
         TCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703505823; x=1704110623;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ap57/3CQ6Rq0XA5XYF0Gcs8lH49YqU+xtkO3NhsJdGU=;
        b=nbHHnDEP8UZXc+2g9qkmC6ctB2OMJPawCDCppD8dT9ZAHhHDlE5nds9Rx/ZZH7qI4n
         aZOZon+ILeZcqGnDZcwCRIZdLVH1YYGl/R0k2TBkJIffarzhELKE/oLaOShZWtfDY4ni
         nYKwrg/S1+uBhhLOIb92WD1i2jsXq7jgLrnXEDpPlCkYu1/QOAvIED4RBUBFZtKHHljI
         9uac/IOHR48RU+UMHWoxZTzR4i8LeIIg5eoak7FBXpFwcM4qlnR3W9XM023VJZNTzRl2
         i5i04+uOAPluV8HESWTAh18ZlOjaf0Y02xW4abGKkvNGHAENo2fkVGnbJI+iPvqbV6g3
         2AcA==
X-Gm-Message-State: AOJu0YzwHzukzc7FFEm7e3ScL9sI1DUOsShiafXVb3VdkHqUcaKULtyC
	1E/u8wyzhJ3fSmGhn2diNlg=
X-Google-Smtp-Source: AGHT+IHNo+uIxQESjDWG1YaCbWAi/OVD30KSQAb5sf0nPgZJVnJNgsaCqvmkOlSnG9mc7G1e9GWB7w==
X-Received: by 2002:a05:600c:4f89:b0:40b:5e21:d357 with SMTP id n9-20020a05600c4f8900b0040b5e21d357mr3317750wmq.96.1703505822769;
        Mon, 25 Dec 2023 04:03:42 -0800 (PST)
Received: from david-ryuzu.fritz.box ([178.26.111.208])
        by smtp.googlemail.com with ESMTPSA id 14-20020a05600c020e00b0040d23cea7bcsm6349456wmi.1.2023.12.25.04.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 04:03:42 -0800 (PST)
From: David Wronek <davidwronek@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S . Miller" <davem@davemloft.net>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Joe Mason <buddyjojo06@outlook.com>,
	hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-scsi@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	David Wronek <davidwronek@gmail.com>
Subject: [PATCH v3 7/8] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS nodes
Date: Mon, 25 Dec 2023 13:00:00 +0100
Message-ID: <20231225120327.166160-8-davidwronek@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225120327.166160-1-davidwronek@gmail.com>
References: <20231225120327.166160-1-davidwronek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_040345_335029_EA89F8EE 
X-CRM114-Status: UNSURE (   9.61  )
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

Enable the UFS found on the SM7125 Xiaomi smartphones.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: David Wronek <davidwronek@gmail.com>
---
 .../boot/dts/qcom/sm7125-xiaomi-common.dtsi   | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
index e55cd83c19b8..0dfd1e3730e9 100644
--- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
@@ -152,6 +152,9 @@ vreg_l4a_0p88: ldo4 {
 			regulator-min-microvolt = <824000>;
 			regulator-max-microvolt = <928000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l5a_2p7: ldo5 {
@@ -188,6 +191,9 @@ vreg_l12a_1p8: ldo12 {
 			regulator-min-microvolt = <1696000>;
 			regulator-max-microvolt = <1952000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l13a_1p8: ldo13 {
@@ -230,6 +236,9 @@ vreg_l19a_3p0: ldo19 {
 			regulator-min-microvolt = <2696000>;
 			regulator-max-microvolt = <3304000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 	};
 
@@ -258,6 +267,9 @@ vreg_l3c_1p23: ldo3 {
 			regulator-min-microvolt = <1144000>;
 			regulator-max-microvolt = <1304000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+			regulator-allow-set-load;
+			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
+						   RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l4c_1p8: ldo4 {
@@ -398,6 +410,22 @@ sd-cd-pins {
 	};
 };
 
+&ufs_mem_hc {
+	vcc-supply = <&vreg_l19a_3p0>;
+	vcc-max-microamp = <600000>;
+	vccq2-supply = <&vreg_l12a_1p8>;
+	vccq2-max-microamp = <600000>;
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l4a_0p88>;
+	vdda-pll-supply = <&vreg_l3c_1p23>;
+	vdda-phy-max-microamp = <62900>;
+	vdda-pll-max-microamp = <18300>;
+	status = "okay";
+};
+
 &usb_1 {
 	qcom,select-utmi-as-pipe-clk;
 	status = "okay";
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
