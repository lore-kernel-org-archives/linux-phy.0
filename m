Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84495CA100D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Sep 2025 09:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jy21JMFQQYS4PYIds+XtiKLIE8qLvHbSFgpIEvxy1qA=; b=feF7Ie4OHbZk5E
	cVWORJEQrn1fSWJ1EHqEYuWmFjAYUFIWVRZT78+7XyyBs9T8qWIPJnCnhGi0XtAnq3o8r/zWdoMHO
	P1n6JrFPlbB8+ck9sDE8C9yONhaYEm0IP+Q8HlFEeencJ+N6w+MG+RNvBck4bCWDa/lgHn/WNy8uw
	ROTTTSlEfbVAiuZPq6awFkEsL0An6YpLbOg+c31NGppc9yp/1S9nPWIvSWhd0ZRJ9Nnl+RiJZkCfU
	fZ2NZAKy6UjNTAaBz7TLXtUxWdHRIMUjKHOpuBP5B7dUFSjhHEdLzwnqIYKWkc5MOl7b2ooG1Qopd
	33NrpqbLGxUJIB1fO+CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utNHB-0000000GM4r-4Bq1;
	Tue, 02 Sep 2025 09:26:06 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utMsZ-0000000GE9l-3wVY
	for linux-phy@lists.infradead.org;
	Tue, 02 Sep 2025 09:00:48 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-45b87bc67a4so16451905e9.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Sep 2025 02:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756803638; x=1757408438; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zx3flAD2tM7boXAz2/Brkk0fygpQR/lnc3aW0wO9axk=;
        b=nDNhKgrVG3nxYeMLUjN2LAiGycnex/rr1ztgGUNDLbkm1+wT1aknX0U/120t4Mb1bq
         gOSoP5R2TNxmt+SVxvCYDShzSejK+AZ5a7cQu9XOGk1Ky+SOdqu8/Zt7MV5Gp/urNSR3
         kVHEx08iuLLhHEJUslrEtn6W0wrZlU34LZpbTrAh9GlXxSacXB0MNrp3yMIWkRqP6eo/
         eoXe+JwHSKbVaytLd0o/Ygx3OQ4UgTC2fH4UD8Z7Ne7cw8AVOiQeKEy9u9U1z7zseTfU
         FnU+qCoyAO/Izbp23+0noCXDYNFGzfXrhnYqJ01FEwSoouKbymb9TiPPUo1OnVF0ZZ+L
         bQYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756803638; x=1757408438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zx3flAD2tM7boXAz2/Brkk0fygpQR/lnc3aW0wO9axk=;
        b=metwhRB2oquWjTT6I7knGiFI91wvnCja+GzlnNXliRcFSX0lsW0qcO5EdKxxdPOhId
         585rabD/1/PQTE9fgbIJUBsBKiAHJ6ndmeBnjcigpY9ImWCO66KwHT9onIQT6iihLICu
         M6BxTUZ3+qBwuV+hiZZ05aDPf6vtdPVdbrqwGLJP0ohJyQ/43K4sdmVK4o7JLsW8ttBU
         qlyq57hpheCAZZK+DWCLYJDKvKyvSslaCDiRb8JZWse2RACRqUuO9HC4QMnqDI0I/4ZL
         jhpEY1XADjoEHbRPLn7cseheYVGWP9v4gRD+SQvsIobSuInRxpBge8xuN16DZQY7bpXH
         eBlw==
X-Forwarded-Encrypted: i=1; AJvYcCWGAU2meDYCAoNgXl8LaO9bAR1QOhscXs7+MXbgQMpdSIgb+FLo/wj3BMssUapO7SfA4vPlfVEYKFk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9/LgbsuMJLb2lQ6DAx1DI6ujfJxRsNX5+Uq5XnsCKLekBFPAr
	tSuGN2/HYffJGW5oYDABEpsOnhCou6ZBCrUBLr7ufBYWKVIXPSQMNwR315oFSS4DkFU=
X-Gm-Gg: ASbGncsM9RyDV7iedk3bobNH0G5N9Oj0MlsMQJaHAaHZzgld9MMZF8teU0v+yeAY8DW
	5Jo0qfiyeElb6q21uMPz0DKweIZlynqntnkwufeAreuh9i5iaZ0r8vyohtO1dMzxQZ4mQ+MgqpA
	ApqWaYLAehm8sOE3uYhWnZYnH7iYsyYndaUFw9oRlpqFzVunDeCsx+ksHZ4atp0754aJhvz/oSc
	tX2ShAo0/TABXC1Sztq4gnRasXz2VYMAKGyW7cLH71ro1zo+KpYBJaNeYm0zeLFJ/X6jJVyL2gq
	stkyuah3OqIXGH4bQkrVdUszLntX29Mh8m6yh3zUKHosd5cn/Xq27DpHrU0e2b0wfd4qNBDJBLK
	0K9W+CrLqaRyGOEYRTgpK0c4Bas/5+lFIgWjlZcqf49NHHwaT+rlgQg==
X-Google-Smtp-Source: AGHT+IGij0ie2Kz1Bgob+LBfjmeb9ZeUV3Yq9N4Ha8C0Mceh6P8zBrbcRv8Ri3pPkr9v5oW9bYbvYA==
X-Received: by 2002:a05:600c:1f84:b0:45b:7ce0:fb8a with SMTP id 5b1f17b1804b1-45b8559bd2fmr85788675e9.35.1756803638238;
        Tue, 02 Sep 2025 02:00:38 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7271cd01sm261112045e9.23.2025.09.02.02.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:00:37 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 02 Sep 2025 11:00:32 +0200
Subject: [PATCH v2 5/5] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20250902-topic-x1e80100-hdmi-v2-5-f4ccf0ef79ab@linaro.org>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3093;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9hYVY7VJpLHKc+fjiw16Zkq8W4WOmrto8l6+8H9lR/0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBotrIwu0sNoblRGMg/0v5iPuw5a57X5zTkoD58YXhD
 q564EnGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaLayMAAKCRB33NvayMhJ0XORD/
 9YQAu9Ntnbhk0gv94yL4gdqIpoyK9YjqPgH7Y+GJklbEO52Lll1leq/BaEKzlZDHqFiyyQourvx5JF
 nkOXgQTvLJdVdrVSuDv3RihURsY3n5Fnk4vU14gOEf9ApYAM2SHSKOjmtleeGq3jVcEIGunbg8ERAS
 ntOpRLIcNv2nSbFwuH8/ArwkrKFiDD2TOvCZQPKS5AuZFihTs4SWH+X6qTyaze7kAcCcKD7g5wFINp
 Yq06J9ieaJB8GbPDUGqXmhr6GUlviK55y7AuwCEt7T+FwtmPNu4jvqeCU9f00S0LyzeZljHh/Icob6
 CkfSTeaDYjdvNsTzHwYQOulsE+zTjEZKCobCuGG7fyk1W4vTx2hRiFIgirktwJ+B5UQ28x6IibUUh/
 Cy7dBhLpt0M3OQTQx4JBGxcCDy7ONh3aTGA2Sr9cHkbParyVoo50GhNqhG3mm9TYI2wrIiJy4ZkNyS
 E3EFhTw6YGf3qtxoBAy5VBgq/Rql1ep80JvWVUmtGqEqZ99Oc2MX2uub64Zzd1xOp38LHMgc5u1laB
 XpunOut8RFkj9AkbZC/bOdgnvGQ0G5FwoWsjTpKCCipb01c2jhHCe3eDnFz4mK3rF5jPh1awFYr0L8
 K6wWOLuuo61Cja1Toh2xw2fXMXh+s4mvhjZ2WymEILU2KBhsEzcpeVjOjJjA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_020039_982177_C35F0BCB 
X-CRM114-Status: GOOD (  11.88  )
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
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 70 ++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4cf61c2a34e31233b1adc93332bcabef22de3f86..1ff183844a48d67888a0f4cf8342575ce7f7af47 100644
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
+					remote-endpoint = <&usb_1_ss2_qmpphy_out>;
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
@@ -1007,6 +1047,14 @@ &mdss_dp1_out {
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
+&mdss_dp2 {
+	status = "okay";
+};
+
+&mdss_dp2_out {
+	data-lanes = <0 1 2 3>;
+};
+
 &mdss_dp3 {
 	/delete-property/ #sound-dai-cells;
 
@@ -1263,6 +1311,12 @@ &tlmm {
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
@@ -1486,6 +1540,22 @@ &usb_1_ss0_qmpphy_out {
 	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
+&usb_1_ss2_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	qcom,static-lanes-mapping = <PHY_TYPE_DP PHY_TYPE_DP PHY_TYPE_DP PHY_TYPE_DP>;
+
+	/delete-property/ mode-switch;
+	/delete-property/ orientation-switch;
+
+	status = "okay";
+};
+
+&usb_1_ss2_qmpphy_out {
+	remote-endpoint = <&hdmi_bridge_dp_in>;
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
