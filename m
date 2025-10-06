Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9B51CCD182
	for <linux-phy@archiver.kernel.org>; Mon,  6 Oct 2025 13:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv8rghh1gTHqMrrqm7NNhfTzgqb3ZaLz8ih+B2WwjaY=; b=sBYX4jOujGZjoE
	Mtm1Xg3ZXSpOZsnNRA4tgp0qVmAZCdtrKc3Z4VhkNcOr9fCmKBbGtLvXbrn8XuAHWhcmymwuv174K
	tQR9Dcbmhqz/JY1CT7SkTTqrOKXTOyKqaPVVw0cyOlE17d95W9EHb51BChmceSujWANT4OvGQlb+o
	xUwY3x5rsw2z7NfJpBgHXTGb8UzxnnPzxRAyYuXI6OgxMNW5ShW/+Y9ehj7pj8eoVELyI7IfTM/fr
	BTklsVqavQE5BYvu7uHJnO/QoUFb7mUPCqk3qUnq6w5sxqysDC08kYr/6opkvA+VN1CjTgtUF5kgi
	GCZ3gIYfJ4o7uvnKqUyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgM-000000007iZ-2xGY;
	Mon, 06 Oct 2025 13:55:18 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5lgK-000000007gx-22Jp
	for linux-phy@lists.infradead.org;
	Mon, 06 Oct 2025 13:55:17 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-46e384dfde0so56720745e9.2
        for <linux-phy@lists.infradead.org>; Mon, 06 Oct 2025 06:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759758915; x=1760363715; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fqs1h8Bd8tnY+khxrYUQ40FHMHiv2RkeVoWTqnCne3w=;
        b=oN6pghOo0NlYqtNfraudb13HPlSFB46X03DV/r+olMK88uUYOpWbGr3UGbzQ03qJ94
         o19TDHCmUZDGYn0N47u3aTMqvmkRZO3A4rrBY2jktl4My8v5OiSKwtettW7IA/2ja0i7
         7fm9ceeY+r+6NARbsjcga809XtQsNkdhkdivUcRwv9csZQq2O4QjdYs1h/zWTwo1550G
         qzEuSnSXYN2jzI3UlSlCs6IWJim0Ydz86pjjpS4f28wOuwy9VwiZoZdS+14SuO2v0OSO
         ts+/y69L4cOirzULuWDpl/Pn0PZo4PPFsoY2MgOaTkzifN0/HlAsqP61TcD8RU7KeO0d
         S3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759758915; x=1760363715;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fqs1h8Bd8tnY+khxrYUQ40FHMHiv2RkeVoWTqnCne3w=;
        b=JisjApzY2yEpnjcY4mNLEUtSUegdgsEK4oAhFPcAc9LUdY/kfVRMPlAAc/MVEUtWF4
         8RV7PLCBH/MJVGDSzQFNria83OCr8aGi3U7UYQwN/nEIpfGnbXVkhvmUrMuyv9oFhg7f
         9MCWwOFDr6gyaEI/jdUXtgSWpgaYrRjClJp0mh6lsloqH1GKWwpQgY1nZgewT2laIXHN
         rN0UxymIQWjc/DWz576wMtZOarj9nAXgUpBLGEFY8fXBJrPy4Ryl8slp1k8FLa1oLEpL
         H3ia4/5lSkZ7ilvIXmPzYMVvb250DlRzk5vLHiWezoIzs1PZ6W2dPm7q3zHxG8VuY+OD
         FJrw==
X-Forwarded-Encrypted: i=1; AJvYcCWqwVW0cgQyn3wD4QjYziPT+m2yymwMR6KESyxct4lZbigTvrDQYDADBhPyjZAb/kglkk+mn6yRjrA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDgpLz/vWg+g5VPpa+RK7EdSgFw5W3/h38Xxt6HxN1DxWYjaLm
	DoRCyNwEXhnVMgUnJmKGQQB/1wtQTYjdwAElY3/UgrmqUdRHX4oHAFyrL0FvtIY/9LA=
X-Gm-Gg: ASbGncstrbqZh0C/DGqi8g8mOcsJ3oSsMf8I9NvG87MCfjbIY5kUM4/aXU+Ejr6EA5F
	7sdeqi9NT4TFik32aCvCc/xRvyIDYTVx44BxaXJj6XEokXVCs4R+dki8dKWdy9gzwcC685Q6lgF
	B6I3d6eQlXsU5kogdcksCQvVhdshLXcf8WnEtctdzqkK7PUQXOwvbtPlZlCrJp3YDupRe//ej0z
	2toslemWPPoioX3IfotHhAw+iqvaXbYOWYUj11JYmawdG6D5z88XY4FTwSePL/rX6PPGMbSJDJj
	Zf1t+FcpBRJtlyDKa+Ya2Vko+dU3PR7zbkut2dVM9VEO2J2SSCTMts41dom7AOEwFOBLiR1mg9e
	EwAHzzk1IEykyhNWSuAL+dD8V0OYJbeaM4M+dgzFQ+5P9Lp0I4nYF7svxmnFw9XNvocnfhy/RJX
	MRdpItfg==
X-Google-Smtp-Source: AGHT+IHkQwD7e2XwMTAIQP7c0WAfYhEAe65Zz4BTSnFzZBueScQHPIywOmfPNSRPfCKle9IZAeW8ig==
X-Received: by 2002:a05:600c:1909:b0:46e:326e:4501 with SMTP id 5b1f17b1804b1-46e7110aecfmr96690535e9.10.1759758914520;
        Mon, 06 Oct 2025 06:55:14 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8a6daasm21291921f8f.7.2025.10.06.06.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 06:55:14 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 06 Oct 2025 15:55:05 +0200
Subject: [PATCH v5 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20251006-topic-x1e80100-hdmi-v5-3-c006311d59d7@linaro.org>
References: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
In-Reply-To: <20251006-topic-x1e80100-hdmi-v5-0-c006311d59d7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Xilin Wu <sophon@radxa.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3047;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=wNTs0h0y/mlTB3wnqH1wfrtLFenOEC7p4UTXqV1uWNo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo48o/cUjUsZSkcCG90nIH9ehxl8hxHgXBaT6XRw1k
 5q1v1F6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOPKPwAKCRB33NvayMhJ0dBEEA
 CfPiVBqXV1xL+f5SfsAoGGO2i4q7aKnPU8RUkMTt9L6vBNedhn3PeLVqNLpR44ALYAM2Bvubvlgaqo
 GtgOozBI0vTXblBo8Oimsu1HCu/kk5u+6ZWhQBFkIG3S58XnVKlBmtHsKu9QcMMG5peibpLUyYOhuQ
 GdNU6aeExvaH9de0MMLTXf6pJ5fI7TwCqKYU2mgt3p5KMpBhdopskmbY82LwalytgOBRfu4IBjAUki
 LFQCo2GISAg1sIqyBThaaZgUvG5s1iDwnhsZ876pFMOqoVpV1pG0dY9TZ802gXv4sXcJlZri8aTbaY
 Niw62PsoyXhj16YNIv8aHYDt0QmPYcilNQ35Pne/rab1K0BUnNyfYSJh2eCbGGL2WzaUqO4Ewe3dqP
 EGB42sRL23o1RWLYH1AoL05WxJKQ2GFW9370+W0ZoLmjVDnRN8ymIi7hGr8A/Er3hCwdyQXX2CqmqM
 4K8dAGubtt6lsRcvGXFX/Q4UXemzPwhnjiL6vTe2GGI9McmUtGfoveAcH4wDjKQhYK6g0nPbWHBUqu
 tpV7Z1Pr0XUmmMezMrG6T1dBy41N3TclJD0jeThCa2mBtc6ZkELVvZxAoTrmMzQvuO5z6GzZeGhwGj
 60Q2ESqd0wLBhTGl+IgadDRRJp7q0qQj0qJIw+NdM9+pHA7IJSMWTkWvGGSw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_065516_562152_B227EEF1 
X-CRM114-Status: UNSURE (   9.67  )
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

The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
connected to the third QMP Combo PHY 4 lanes.

Add all the data routing, disable mode switching and specify the
QMP Combo PHY should be in DP-Only mode to route the 4 lanes to
the underlying DP phy.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 81 ++++++++++++++++++++++
 1 file changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 654cbce9d6ecb61c8a6e874d16385d66e362e439..7aa7ae66f49a7a179652757fd826e9d11b9b29da 100644
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
@@ -1548,6 +1601,34 @@ &usb_1_ss1_qmpphy_out {
 	remote-endpoint = <&retimer_ss1_ss_in>;
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
 &usb_2 {
 	status = "okay";
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
