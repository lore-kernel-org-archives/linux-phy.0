Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7611CCCD18E
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 08:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv8rghh1gTHqMrrqm7NNhfTzgqb3ZaLz8ih+B2WwjaY=; b=SSOE1B2SIrpdBn
	yNk7bRlrfcjm8RX1T+dypAURoY/WM0cckN6WDaMLdegkw+xCJTTYxBysHS04hwxVDzL1Hgo8aVgAW
	Lx+U0Hg+VyEAGkgB3yHr7at7wMEH2E/ahAMcedPJENfjjNLiqjSMzppd62QaBtQEucOXTAPilaUfd
	CB6OZQKec35y4XAGMNYp0GpeOiPviXFVR3C682Umq0gi9hBsIRbK8uWNVv+mIFiV/A6rsyATjqWTh
	egNp1qqa0j7EmmGaJSQLiog+Llpq2ixVPzTEg7nL9TRr7vgkZnFAioLyND6Kt4qMFCQuPmb+CJ0DN
	jlpZNtVfDusJIwFiK/JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELT-0000000CfOt-0y1c;
	Mon, 13 Oct 2025 08:55:55 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8ELQ-0000000CfMe-0mWn
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 08:55:53 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-42568669606so2876329f8f.2
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 01:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760345750; x=1760950550; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fqs1h8Bd8tnY+khxrYUQ40FHMHiv2RkeVoWTqnCne3w=;
        b=K4YG134jH1WgKLl+fDfuHxJv/+RNuTnPO8OtgPm6cbUHdXJRuF4peTnIpfVTG4zsLU
         1qWfRBDtzy9pTDFfLeAj37mKGTdk18M/0FjA/CmMqPBotJ8nZHOicAxeCitDdhBUyxzi
         6/sWKqBD8OvZ0/0ZdjFvxTrMnfJI5XG7bzqkvhvT5SV/o6x2FPGXpd7U3BWlpSs8sZdJ
         j++5DyHmmuPyElruTJXxQSfT2BT4hYFT4yZabp7HzNW1colsRE9izrgJqjCM4+hEyu5A
         DNUemkygwB/wuanBnUixIeRCbpwfnVz4S+n9wM4/wNNry1m0d3C7R5R0CAP+sqESlWsw
         RYlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760345750; x=1760950550;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fqs1h8Bd8tnY+khxrYUQ40FHMHiv2RkeVoWTqnCne3w=;
        b=bE8lk0+dmwPPo8s9m+iH7W00G0c47RX86BqCbxmUf17/C3JeZRM8X2CyXiMsLjOo5g
         1oh4Xr3TybkMF1BgPrQI4+H8vptY4VYbwtRmASDwNviKJBMf18ErJARPIVXefAEuJdJU
         fphdb9QxjzPF7EHN3ELO2kQ9wyk7shS8ygGLlKZvPRyrb0wig6HOT6KnAav7gvIRcTvh
         VZD8aGyY01EJD/qJbyOD5/ahfp2A9ty/eXn1hHVfCVBubM6RSO52wNgyXQmoj5x/eGgy
         IArlTkSHdh46hHcNGrmjFvHKmBh0pIW8EVga+Vr2MW+O13kRhtYGVLZRV6S4iBg1wk/2
         uJkg==
X-Forwarded-Encrypted: i=1; AJvYcCWGMdcNGyMyjL054tE2y8AjPjbz50lOkMpmecspi1nfP8vPJ+PnTgsqfjUKp40v1rzN1QbC6rEW9aw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5Bst3ZFUcVfVD8Fhtm5RwrJ2NYlchT7r5loFSbroMoVrQnv8s
	L4snCPy3iEsgdk0/6qgcZQS9mxS0UpiJu8ev12pY9KnRnm6bwqnWYHTgAtUj8oTAqAo=
X-Gm-Gg: ASbGncsW8iDMk2puKQq36vGDY1HWsm2ID2qwU3SzESQSvf7DPYd0Tp2t3Qy7FUv3XYJ
	Q4rDTdNtsh52g51vaQLZhR4tRlpSeMANy292YOnEg4MYd/PD7apZ8os7E4+6MRCij5XN//jvpF8
	enJ7Lonr14/PqqwQh8Dgv961MiGLiP4JNQnwwQ/klLnJwLZhaT8W9/CZw3PjrWHfijog4g9uz/D
	sL4n2EqJ3F2bKyTekijharQpLPfuZJFIgLoX2dyAjJIFtDNTcSc3cs19zKlFqVTOAYbKZpspQ64
	3wx+HNBe0LmlKSwrTb64X/otKSl+iS29zeSzrMM3tUkLGKPb22X8jgfxmCwJzSCBO+VVNjL7sVg
	PYCudxi3HH1xbJbkvNslFuNu/tnKLNPCzocXOT2k0El3bgPl7VeljHy4yvOaCctRhzrjnMnEUQZ
	2K
X-Google-Smtp-Source: AGHT+IGP5IDXQAmHWOWz6/zckhmsPQrndtPggKZTPs6kb5X7JCxQcZO9bc2Qh688Ni5MHdA3GNrqkw==
X-Received: by 2002:a05:6000:24ca:b0:3ea:15cd:ac3b with SMTP id ffacd0b85a97d-4266e7e15eemr11113987f8f.30.1760345750168;
        Mon, 13 Oct 2025 01:55:50 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fb482b99fsm180016185e9.3.2025.10.13.01.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 01:55:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 13 Oct 2025 10:55:46 +0200
Subject: [PATCH v6 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20251013-topic-x1e80100-hdmi-v6-3-3a9c8f7506d6@linaro.org>
References: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
In-Reply-To: <20251013-topic-x1e80100-hdmi-v6-0-3a9c8f7506d6@linaro.org>
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
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBo7L6Sb8/jIFHNl0mZLen92n4SCFHIDHBjot2TJdk7
 KJMvytmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaOy+kgAKCRB33NvayMhJ0Q3zD/
 9L6F7G6cDWgL+5CXPMwystvEJj2Ra0aiMFSJOtPHvXjnwBEQbVkLAdiwlj/0tWMymdThJ1Tzpp28sB
 DzF+hBVkGtYyC6qb4GFiHhPaOWfoaJMRmO8RWKCc6jY2EyDNCj9vvF6uSKh2SaSRFJRLfOPjSzJAhv
 BxQTn6/tHmtEMHoNcLBW3h8lRObtzCSywFXLz9xV+6syQT8QUkHlyKUiWXpsWjkKQEmebj5DtFtfrD
 m+o1bP2lzCYUgbvoQPAACFrqmYGSoF+EFAt+zMFyQsCOqesTpRU/KTn2CvF/byLRRCSyOJXi1VaQrK
 iGhIuxf7eOYu4PlLXCYPpD9EneX66R/PYs/nMC4kRh1eWQSY3XlHEsCYhuctIEs2ZF6wWD77XeuqIP
 o4rTF0m+QHeKOcPo7Z9p09l+yS95Qo4WihBpKmfxt1Asj1H0IBAp/Vgjnl6o8V2B5eaQDNc9ParGaH
 kHAKMEeYlCK5B4cZ4AbYPcp1YDlLA8D99rRW2W4B+hmMQh4JBQHUaCo+pHi28KXnNaQt4PkcMPJht+
 GDPddmetVnMGAcrg3TCFXNmXyvCZsVTwfcofq4pvL+8u+rZVcflG4uDnasY7BiwR16FqSnodBRV7fG
 UnqvllzaWC60JnjeDX7895JxrwIETobwi/q3uPKWBhrCfJFWho85MxKN9EmA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_015552_257429_8BA2BF69 
X-CRM114-Status: UNSURE (   9.70  )
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
