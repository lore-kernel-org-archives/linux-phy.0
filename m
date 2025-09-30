Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2999CAC5B8
	for <linux-phy@archiver.kernel.org>; Tue, 30 Sep 2025 07:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UiO/hoQp6IMfIszJtqKkxyyh8rVjTuXWai2w2PL5stg=; b=SyiX3iGVxJ30LR
	gpgdTk/uSRLTU/N3qHORhyYeL7efv5XtmbD3pTpXWeCFdTwVU4Zg/Ht+FPZswQlyfmBqWJmxe4sET
	HTWEq1qUplNAAa4MAOwM4TL6ZsazUKO1oQkKsl231qUBsgA2n1VTIc8Fr9fsZlW4UZqGhKiloYx/7
	YoCVK4WOyvJU/C/ntx9ks0cRfSeK02+uwKKzFnDyp3mLnycw6J9bjQcynCVk+EbcMOjvIDDguEL8F
	s9Nd5Ahjr7oEpNlLiSJC9Hdx9O14tRbdH+yPStkWwiE/57MiYMohZX2KCI5fMlq1KImcAoXEu5Ot8
	kj3ij2fnVIU+Js27Owdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxs-00000004W3q-33jH;
	Tue, 30 Sep 2025 07:40:00 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Uxo-00000004W1d-2JB6
	for linux-phy@lists.infradead.org;
	Tue, 30 Sep 2025 07:39:57 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso4667012f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 00:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759217995; x=1759822795; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w4/5+2KyLFZ3ZfJPaqaIqqrNGfnS2dbwNYpzwCpd1bQ=;
        b=MqaSGzV+b3n6dqZ+ORe60OnNtrYUxZxjX+aYsNJOxf0pSM8+XzK9dlMEnXYemACPWq
         Qv3s7/vPd4iMkwE4at1CcKfAIa9UdJDMmZQkg4J/31wJsjmQ36cYi+w8hDUGNSQxCk3n
         g8RYpoe5TMLvL6JoWz9f53q9E/cVHTAvV0xWY6Vm3q4jdskNWsmW0pC6W6+iQCysbpwT
         0oh0qU1OXcqJIFnzpur0+Ji3J/sIlM9EWa+SzJ84tNeBWm8tSs6SK/diT2Hq5faiNnST
         ZLG9X/M5YNCbyDWRmth5tDZYzqx3Y9sXbWCrD9MCEOf0kvr6CEYaUCXmJNMX6qxIKqpj
         G3zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217995; x=1759822795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4/5+2KyLFZ3ZfJPaqaIqqrNGfnS2dbwNYpzwCpd1bQ=;
        b=nhaAGhTrPfKXh4TDDUQT5rIhumfyvWqMhqbWTWIu7qCCrUonIyHi5qjYjpOu7b0KP9
         TftnfnpoxcZGY/VQQr7q7J8W5slTaD+vvJ1da1PhxCK16pIjNJZNVeIvpTDJVCtFDKBX
         4YlRNqCdVAD7TRgpIVPZyxq1jpPsLcRw9rX/ZVHoB4wIaRoD2a1C1prvBCSso9jyWm6A
         P5rUcszr4QuCW26mag42ZTHo1Y6sVaNDMBNGFWz2Zs3TR90He7gpnsXP1EyTlk+fEWwV
         o+/aeLK47XjTuc8LUzrMVbCGLpZPQqR8TQ93e25cWbg6nwhtwvDMv5H79OlDxn1WEGTP
         GpKg==
X-Forwarded-Encrypted: i=1; AJvYcCW/WP+cyqUhXkEqOxTQFLYmYGtL4cADxF1iEKLnrVgqiUziTSAYtYHKMG7W4uuw9agyIBNvgDLxih0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoiDrxHcnPIMv+GYhh0Pxuah5+mY8Xv9jh/BapbsnReUkQPXgs
	aVp34yG3ZXyI6V/UC46RCwt9v3CyhoQsiCDwjRw6H+jllDgKsVYCCIguExE7X5kHc2c=
X-Gm-Gg: ASbGncuyP7qqjzqM/lzrIWuD5SfCNHUvcfXH6pV56S/9VLZJabbJaJD+UKK4f6exS6m
	E4gpxg7M6oxrg8KYCGSrbL7t/AzxbfCwxueeeLdxNpviE1e5bsJFXlwn4mjtQI8t5dLAK7FIhA3
	Q6uSkFZNMizRAHliBfucLnLbcHStH7fKkLRWebooEaSCuoCMB67LW5BSey7ePeVRy0kl7bSjANJ
	3mXkRBQuQmxEhU+40Co3P35LlIiN/KCs6LeMe3iwTCYRqzoi2LJ9PErG1nujkCREIiOEj60tVOQ
	LgI7dLtjVgba2PjTrlX5QrI8a2Rkx6eUsiOHs/ZWIhAoCRegzywKuTFRfI2cqO9HhFbGoMN2DzL
	40cmZeAYLOcwYDVXCMXVUz00n0KxVki1zhHmdWWw5a+afDv9BC0Pov9fz2f+5jgZg4rX2QPGRXn
	+6GA==
X-Google-Smtp-Source: AGHT+IEdY4kXaWrkpRUHd0zfnXpxz3G6OEB7NwckGjCQu01y/9rdMkD7WQVgcG3T62llFVeefNX+eA==
X-Received: by 2002:a05:6000:184f:b0:3f2:b077:94bc with SMTP id ffacd0b85a97d-40e429c9c1bmr14602664f8f.4.1759217994713;
        Tue, 30 Sep 2025 00:39:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5707c1e7sm44021125e9.21.2025.09.30.00.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:39:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 30 Sep 2025 09:39:49 +0200
Subject: [PATCH v4 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20250930-topic-x1e80100-hdmi-v4-3-86a14e8a34ac@linaro.org>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2973;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=4u/xRvsm43ERIC9SDhDBDVZyzLfWUriP1xNe0S9I9zU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo24lHJ7BpPNhok6jIjnY3wiCZ46nr8Kfj3b3N5c8v
 z47+RpiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaNuJRwAKCRB33NvayMhJ0Yo3EA
 DFBx0pl3oCucSHqRN7Qm1U0wHR3Mrw6+BYAhAtk1A/HcYdFsepg36+PknedLaizw79M3K0PXh2lXpw
 dgmIDxxlk3knPqL/zWBopJ2iX+kqOB/HlsnkdUFN2mN48HpVamGls2YrCQOcClYYB92u9Y//uhIqKu
 8t3+SGG4QfmVaj+LWHMQlaY4nIGFWbAMy5z11p8uMoC24jG/hPtGYX4xikPggl13YOtEHKOB3lAfIS
 ddu/43oiQaC4EdnQOllC4dm0BHcs6hAW5Hc3cR3Uf+DqctDr7XUVcZuhWSUMhrBg4eWfgEEGW6jgSE
 OaBCqDCdl4nqMTRVIE6VFQKxHD9Rx8vAUC6vtTlgJSaPeEdo7G3Ngfu4Pw2Zbhq6DjJhFiQINQ9bdb
 KmApOwOAoeTDT7gAD6BhoVShU+18VZ7oGdCloCe+IcXs+QY4MibB0Lzc+DJno5lmGBQrcC9YnjQGVT
 ehckPdxxDhW7yjTXX+xYDRqpkLksczg0KNybBoZkVhdOb6vdfG4RZ+QiCZjO5y8S73YieP/F1ICVCd
 0uRZT6RUXW+THs3+xIHMO7q9MSZGisa+PsjvUPqFyt+zwzxrPhUYusNbCSt2HSvCneEU6lj1AFJeF8
 e+63lppzSagEEacQH9sHARNXtmsfU5Wa4WW0fywrbKv1i/Ejv8jSlxIpYe0g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_003956_697650_D66E3C0F 
X-CRM114-Status: GOOD (  10.34  )
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

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

Add all the data routing, disable mode switching and specify the
QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 81 ++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 654cbce9d6ecb61c8a6e874d16385d66e362e439..37168b6214b21ec51918b44cc400581ba8ca4cbe 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -62,6 +62,45 @@ switch-lid {
 		};
 	};
 
+	hdmi-bridge {
+		compatible = "realtek,rtd2171";
+
+		pinctrl-0 = <&hdmi_hpd_default>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hdmi_bridge_dp_in: endpoint {
+					remote-endpoint = <&usb_1_ss2_qmpphy_out_dp>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hdmi_bridge_tmds_out: endpoint {
+					remote-endpoint = <&hdmi_con>;
+				};
+			};
+		};
+	};
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&hdmi_bridge_tmds_out>;
+			};
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,x1e80100-pmic-glink",
 			     "qcom,sm8550-pmic-glink",
@@ -1028,6 +1067,14 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
@@ -1317,6 +1364,12 @@ eusb6_reset_n: eusb6-reset-n-state {
 		output-low;
 	};
 
+	hdmi_hpd_default: hdmi-hpd-default-state {
+		pins = "gpio126";
+		function = "usb2_dp";
+		bias-disable;
+	};
+
 	tpad_default: tpad-default-state {
 		pins = "gpio3";
 		function = "gpio";
@@ -1516,6 +1569,34 @@ &usb_1_ss0_qmpphy_out {
 	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
+&usb_1_ss2_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	/delete-property/ mode-switch;
+	/delete-property/ orientation-switch;
+
+	status = "okay";
+
+	ports {
+		port@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			/delete-node/ endpoint;
+
+			usb_1_ss2_qmpphy_out_dp: endpoint@0 {
+				reg = <0>;
+
+				data-lanes = <3 2 1 0>;
+				remote-endpoint = <&hdmi_bridge_dp_in>;
+			};
+
+			/* No USB3 lanes connected */
+		};
+	};
+};
+
 &usb_1_ss1_hsphy {
 	vdd-supply = <&vreg_l3j_0p8>;
 	vdda12-supply = <&vreg_l2j_1p2>;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
