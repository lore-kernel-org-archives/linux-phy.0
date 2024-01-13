Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A1D9C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 20:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBcWlvkid+oMdEWiwkbXKVZGnPukiBtFtAC2b85lehs=; b=44olA8EjP1vFmK
	PqU0W93bEcAwdLhOIgE9flA4dvPXCLctG911oPb2pLFwegK9mjGE5xBTn5GDSn+3nKaqIlEoG8EvF
	1iOdELAaC+zMn9aliMDXpB3O1cH20aI11Qy0nysBmZNbAyiQubPqrCOl6OLZx87dMQgN1pvtpfLJb
	qxy0OPD+niT141dygRWhTqXIIOAIgZJR7vra5/GQNDKdbiolwDKgm8CSMG3iwUwvDZYLekCIDB26u
	kfMf4i4RlFbpT5rYygOtZmTTCaiZVMi2wc/fV2kTT3bMT7ctlAau4VW3l6dde6/4jg0ElmKlmaKiP
	ChByxlOP8SgyQg9r5ogg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl36-005gpB-0X;
	Sat, 13 Jan 2024 20:56:12 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOl30-005gkW-1U
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 20:56:08 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50e759ece35so8500647e87.3
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 12:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705179365; x=1705784165; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g3WqPQqMhpu3cR1Hf9/2WsEYMLGlQ4ylvG16zRtJv1g=;
        b=Hh5JJIhJo4i9lpjRNCfNMzvDgSVijGCm3YIrTjb9ezucBLLgEte0KaePpdqyZ93Y4v
         TFQ280A/jYaBowb1AIlIUtGXMkeB61JB91XlT/0XQfwN9/iPicdxu/bb7CPcJ4ui48st
         F2hx8Y5+4xY4qRKGeuVoheWsyc7/0d041O7J1kBlq6kcfIp5hyCD8YAxBHF+znPAsVyS
         Ws/Si9SuvXDUib7UGNvR5hs2fTSACrkflSbnzvavL9PylxxZBI3JtLBFP+nXEA6V7FKM
         kIO4flFuTW6V5kBn25R6BHj1EBJn8+MVyEHnpSK+fmF/kMITM2ApHTHuIdyDKu8BIiRA
         aeSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705179365; x=1705784165;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g3WqPQqMhpu3cR1Hf9/2WsEYMLGlQ4ylvG16zRtJv1g=;
        b=I9azgSWRH9jhUJk/PNJfzAsnyHFwf+t03T4yvEnLrMYUj7Vyg095VpxIkYVFLzku+m
         pc1ItwCk8Nn4rKn1VlISSLydejJdcygqnLTagn6vKKY44uoH2nWMmek3rwy8HmwayGhZ
         KTVK30aMB57g5dcCJDiEYCfrNCUoGT66l2G5TrvgstmcdfpNr1GWXBw5g7SoISIYilG9
         oVTxq8cKY+4qTbOSDbftLLwpC04xkUlUIdsqbOb33/Iw2hHAOlNxaAXjjbfbEnDxL19l
         bh0Io+CCzkbHXBgDAW9mzO11rdGjUcYCQNO+K7BdIGXoyOl3JIa+iM9twZzoMGO8LnJ+
         RT3Q==
X-Gm-Message-State: AOJu0YzMOfVFkoS1wbcYi819xhdcOwd4FV+B1jShzdOk0uBQ4GIkcdUp
	vQjQVgfqtdtSvV52u5TUAWSd9/Yc6l3/dw==
X-Google-Smtp-Source: AGHT+IHoxTXkzP/XPfT3u0hUoP6WnqNyOCTq8GbneVE2E6Aj/bXR7prpCOngtnBZcVXVwtjGiBiLhA==
X-Received: by 2002:ac2:43db:0:b0:50e:3b8f:3c40 with SMTP id u27-20020ac243db000000b0050e3b8f3c40mr1404982lfl.43.1705179365104;
        Sat, 13 Jan 2024 12:56:05 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p14-20020a056512328e00b0050e9355d7eesm919802lfe.103.2024.01.13.12.56.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 12:56:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 13 Jan 2024 22:55:58 +0200
Subject: [PATCH v2 15/15] arm64: dts: qcom: qrb4210-rb2: enable USB-C port
 handling
MIME-Version: 1.0
Message-Id: <20240113-pmi632-typec-v2-15-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
In-Reply-To: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Guenter Roeck <linux@roeck-us.net>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3380;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XAUYT0JI8EGw2t2EwxsMog3tphSISbkThFhkLyZxRdY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlovjYIg71eDGgUhWPH+SjPHm4oIIik1Y2R/pIb
 75l3i29BimJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaL42AAKCRCLPIo+Aiko
 1WqdB/9CYDUoI9k27gvPkw54OvJgUI9rmwd+I3OFtDqKSGk7n6Z0slhDzwM92kwibCzirbZS2Qs
 PoRsEZAKV17iiz5fDVaPou+GBqVywPM81njziMdDRXt0lQJG3K3HXEKJpNOtiTFVeTzDtr3ggE/
 lSTQwGkRddo14aBxz0l5ud1+f/g8VHtY3+FTwRUcXvDkfaxeTh11D+DnPlpr9UrSlnel3kh8HXH
 lUagL5gLd4TOe6C2f+MyCF/jHTbrzcTWBhLlGL2wDSOCL5R6ahy9wvzeeMB3tFaoZumbCNjXpul
 BO9jy4WDFuoyPoQTEYTf//6ZuOKXychZTbkJSxqolEKHEX1r
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_125606_528589_8E332237 
X-CRM114-Status: UNSURE (   9.55  )
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

Plug in USB-C related bits and pieces to enable USB role switching and
USB-C orientation handling for the Qualcomm RB2 board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 50 ++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 43 +++++++++++++++++++++++++++
 2 files changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 52f31f3166c2..696d6d43c56b 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -6,8 +6,10 @@
 /dts-v1/;
 
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/usb/pd.h>
 #include "sm4250.dtsi"
 #include "pm6125.dtsi"
+#include "pmi632.dtsi"
 
 / {
 	model = "Qualcomm Technologies, Inc. QRB4210 RB2";
@@ -256,6 +258,46 @@ kypd_vol_up_n: kypd-vol-up-n-state {
 	};
 };
 
+&pmi632_typec {
+	status = "okay";
+
+	connector {
+		compatible = "usb-c-connector";
+
+		power-role = "dual";
+		data-role = "dual";
+		self-powered;
+
+		typec-power-opmode = "default";
+		pd-disable;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				pmi632_hs_in: endpoint {
+					remote-endpoint = <&usb_dwc3_hs>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				pmi632_ss_in: endpoint {
+					remote-endpoint = <&usb_qmpphy_out>;
+				};
+			};
+		};
+	};
+};
+
+&pmi632_vbus {
+	regulator-min-microamp = <500000>;
+	regulator-max-microamp = <3000000>;
+	status = "okay";
+};
+
 &pon_pwrkey {
 	status = "okay";
 };
@@ -607,6 +649,10 @@ &usb {
 	status = "okay";
 };
 
+&usb_dwc3_hs {
+	remote-endpoint = <&pmi632_hs_in>;
+};
+
 &usb_hsphy {
 	vdd-supply = <&vreg_l4a_0p9>;
 	vdda-pll-supply = <&vreg_l12a_1p8>;
@@ -622,6 +668,10 @@ &usb_qmpphy {
 	status = "okay";
 };
 
+&usb_qmpphy_out {
+	remote-endpoint = <&pmi632_ss_in>;
+};
+
 &wifi {
 	vdd-0.8-cx-mx-supply = <&vreg_l8a_0p664>;
 	vdd-1.8-xo-supply = <&vreg_l16a_1p3>;
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 76c429e8ebab..01dff6641280 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -878,8 +878,29 @@ usb_qmpphy: phy@1615000 {
 			clock-output-names = "usb3_phy_pipe_clk_src";
 
 			#phy-cells = <0>;
+			orientation-switch;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_qmpphy_out: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_dwc3_ss>;
+					};
+				};
+			};
 		};
 
 		system_noc: interconnect@1880000 {
@@ -1614,6 +1635,28 @@ usb_dwc3: usb@4e00000 {
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
 				snps,usb3_lpm_capable;
+
+				usb-role-switch;
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						usb_dwc3_hs: endpoint {
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						usb_dwc3_ss: endpoint {
+							remote-endpoint = <&usb_qmpphy_usb_ss_in>;
+						};
+					};
+				};
 			};
 		};
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
