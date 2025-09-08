Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A211CAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTXOIV6NcZkytTZGDyHogcBkLcW0LVxe81k3rUaF8ug=; b=VGmU1IGXnsKXd8
	9Je4KcKEdZeEeSgWqtOR+oUvhogpFDyva5vkKnWJnCyfDb0RWHZkQhme/1JhFWUcVfmMGb+L05S2g
	CYX79qP5cNmnQOMW9uM+Dtd3yL9akn259v7riizsW2qcdYv+p9XV0rkRhFX1UefEpzKA1AIWZ0SFq
	+ver885NaKS58ng+bgKmQDUS2JzCYaAxjK0PJ/Y7ulRCA6fYOhu3U33mNKgz3narOvZS5drZpgd6v
	LWas5VuLhKO+7TJNcOt4rkkwlDLwMwQGBlLYy9vPjEPmf3bgrmOQ7sz+ECupq7z0HkcnKu2ZyU/3Z
	Ik0DA3mhi1J1JR+7GEoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNK-000000013D8-3Jry;
	Mon, 08 Sep 2025 17:09:54 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbXr-0000000HEtF-2491
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:04:32 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-45de6ab6ce7so5765555e9.1
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:04:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336670; x=1757941470; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDyuAKF3Y98UqjyyRF0OYRaWszlGNwULvWxPJjSxWt0=;
        b=xddISkdhSMbZcNIhlfArqPjTQaltF6O2yoo8jCLoZPPhZt25yiF4MZv6EleJnMvpQX
         mJX/npe9EJcuvk04DxG4RXP9eMUhmSr3oPZ71p4FJfvQx2MY/6M5VLxUraIm2piLr16a
         Barf0Ny+rP7Qlx8a0rNrHrlx5bTGgWEDTb0LPOg7BQjkgde37Jcj2s9BvRRDv2LGMnXb
         uf5AaK/DHCDdv8EYzSMzMwQPoGEvhoqNbPbL9nZXdl8AkHoIXeD0k0RdDYHCzbfh/T9B
         mLasIcEMpkGK5gjCzYFZ5NF/QNvrAh5IyEleWGI3nS1hbdDnwyzszVTYtfqoFvvObT1z
         8Ing==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336670; x=1757941470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BDyuAKF3Y98UqjyyRF0OYRaWszlGNwULvWxPJjSxWt0=;
        b=Wjcwdpw+HWHorLzUjvahvXZBACuhJDDmzf4I3oTpMhij9Z7Ei/yxIgZ9RjZodZ7yYj
         ZNtl+POXW48itsunJ/Lns97Xm3MJ6GooBn6Nu795CXhcMgLZPGxJUSmEtKC2/9jGyz7e
         RJV3uNrOwoj/BMQkbei2VTH+n0XcmGqRoplD4zaj4WUS/8x5NMeXN5fivkY8OgguCLQm
         3Xw5eccVbN4t2+KnzrLAFJtLy14mCdDR2jy4h9WA6N9BO3XgWzam27h0uvbYD+QzwWpw
         E5WRtZC4G4gOUIm6FHWR3yvi21nHSoBWoY7TV/WzlIgm1gWursGuRLFFcqMJlPnHZnn/
         an/g==
X-Forwarded-Encrypted: i=1; AJvYcCW8GOGRx8joBx0Zvrdz6wtjbW40lfZNARqfdPqfiDNhEZy/CsW/XMTik3mHARXwHpp5Y+cLQ0CsurY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6NOFLfqWEbTLq3hb51ihoxzoZU5bDfKUPZiqU7mlaUZOtEifh
	gR52TN8c6pL5REVsoy9sW4tGSZ83w/6UB7UBFEAznItDgTEPqJoZYdFzB0cuHBkQxOo=
X-Gm-Gg: ASbGncsmGNCRIAQZaWcrHC+83Pot/isEtIopI0v++L1VfoxjTX3SH6YTtisgG5a7+ff
	lrX4uhbZ2X0PK2qSAxv8Gm0Ts+euJiHMKPDLjOC1fB/Y6zUvpEVbUUD4ajEM40wFtyoO73t7q9b
	dURNsBNotP8O9U0W7KL6pPAEDcD9c8K/txkSvVUs2XLgiJ3+zGsR9GkWD7Nyo0vM5jT5bRwT5Qt
	hYisklf6FL3pzJ6gjbq09NR3tp/SMifv+nsww6jhqXWwM+jzhrbZUoranLDOEwipM/2S2cN35th
	ORMnpGyYGeU6HGuEPmMJnDpTJkBZq8eIOOu7sWqVr7uobNyOvC9kDd179+LqN58O6Vh+0UgWTj/
	omY8Xs2IM390si0vYKPdIhbcm+wcr3SNXAGNs9XYFWPRUCv61st4FSQ==
X-Google-Smtp-Source: AGHT+IG0ZjbfMijZhAL81qHoPX21zRJo3pFZjpyCCWzSjGWv7KwJCCXF42mhC1fWc6KxMzh5zfhfmg==
X-Received: by 2002:a05:600c:4f0f:b0:45d:e211:da8f with SMTP id 5b1f17b1804b1-45de936287amr17504015e9.36.1757336669870;
        Mon, 08 Sep 2025 06:04:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dd6891d23sm145632475e9.4.2025.09.08.06.04.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 06:04:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 08 Sep 2025 15:04:22 +0200
Subject: [PATCH v3 5/5] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20250908-topic-x1e80100-hdmi-v3-5-c53b0f2bc2fb@linaro.org>
References: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
In-Reply-To: <20250908-topic-x1e80100-hdmi-v3-0-c53b0f2bc2fb@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3297;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=HrSq9QX+rRZZn6/cR+hy9Izp3f7Ikd1Wm8zLBwjaDxk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBovtRXCAk1A5GYFI4lxepbD+HCSVr8CgQQq0D8xcF8
 d7k3yNyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaL7UVwAKCRB33NvayMhJ0ZhND/
 9lclVjyWMFDPeiGeKHHbcI/xMBqTcupaELGi1+5gFDGmiPkp8eH6QbIIJ1DPYYTItWggZzNNuly0KB
 8Ckq16igtfaJ5uoR9hBVOedkbGSKSiAu7Nb3YyPtoOQl54qhHGbHd52ASn+Y8RhSOzlHS2CfIAkMyN
 unEnHLMqqAa0VFgl3ozr3LHnXfxadl6MVzWEyy5anAjGdEkjaXGlYQC57tMrytmh5AYHpFVm6juUTf
 +sDJ72wrulwWLk1A5wGa6Fe8m+afxHNlcIjnXQVTDRiOL/sag4vIgoA/5Smi5p8vne01OwzP28CHsC
 bIa5GHL2z6xNLILOB/Z+NFJAsTa58hU/ZksNn6Sfcer3c8zEyK3NVVWbgiwUyJoTy2MweOJuYSgB7u
 OdgyxMNC5T5VyjdNuMqdAvAAAD+AJyPRTk+fLJA8B8iSkaF/ZPXRCHH0JYi9cRlV8wy43jm2n27ua9
 Vf3xlxoQ2VxvLg5shxJTMBTvTdah6X6iSBeKyoCrXDLEUYOrwxr+t0Vv0M4LkWECuqtdDf7pnVgYDp
 VmDOE/Fp74Ehyw1XsUtSXPyqzm+P2THYGrSrsmM66wpRVVjA9B8CAigmjMLqIvJOaKIPiMW+KAP3bj
 FMItlozn2k37M726g5Gh6rF9TzxG+0mUKCmQynfFpwxgld+0E8Gft0j+J+WA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060431_535744_F4674760 
X-CRM114-Status: GOOD (  12.18  )
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
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 82 ++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 23213b0d9582822e9503e4acf18c62d5c8c7867d..077aa71e79b548cb1f7c76d297a6afae717f7663 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/gpio-keys.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/phy/phy.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
@@ -62,6 +63,45 @@ switch-lid {
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
@@ -1005,6 +1045,14 @@ &mdss_dp1_out {
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
 
@@ -1264,6 +1312,12 @@ &tlmm {
 			       <72 2>, /* Secure EC I2C connection (?) */
 			       <238 1>; /* UFS Reset */
 
+	hdmi_hpd_default: hdmi-hpd-default-state {
+		pins = "gpio126";
+		function = "usb2_dp";
+		bias-disable;
+	};
+
 	eusb3_reset_n: eusb3-reset-n-state {
 		pins = "gpio6";
 		function = "gpio";
@@ -1487,6 +1541,34 @@ &usb_1_ss0_qmpphy_out {
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
+				data-lanes = <0 1 2 3>;
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
