Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC0FCCF256B
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 08:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cx9ecasX2Me8WIjDbkClfXTomtKyoFBZ7BBF5LLqHog=; b=JFS1B4xxmrhasd
	N32IBvs2VAXmHW2s10W61JGpKNKDZITWb2ELBBe+7Ss+68WtukYPkhFLqdEUd033Y59A4eycYVEv/
	m2XAGsMA3lDLDJafxX3n0xyLyGEeNGuBmMLYWNtakYA4gWUTb5QVgI5yxqP/eLhwLJDvoDz2ATyHj
	axwZN95CqwI5mGaPJG4oyvnySo41EPEEmG6OJy4fwFyMJWezCCNnItft+UaD7NR056ydxvhZjVg8G
	uFB/Wb/Yg4gXnU4QJg5sS5Nk6hgAtqAqstsC+JewFFiJmSCcGsuZALGwbt5us+yzPg+1K5Uxi59DY
	AlAC4mWFZJLZs0L88XUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdp4-00000002oji-1hkW;
	Wed, 19 Nov 2025 08:45:54 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLdoz-00000002ohP-1IBd
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 08:45:50 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-42bb288c17bso2379229f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 00:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763541947; x=1764146747; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LE55M4P8STPGyma8aBzr9wec9I7bZaxdp9L/oczEJdM=;
        b=blSfaUkP1Z1+g3HjT3mrILigEhoH0og6SprTfmKszdwsUkuJVB3UJuWwYWrw/rTq9w
         83/OqUsvQVEs0dq2uz2vJlU79hjrVeITNSqZ+TLwtReNi9B0pOECOJx5+yK1gcjWCxNV
         VqCranAilhZdcB+MZ90s1bkMxXl+YbVHCRSOIW5JjHv0nahKr/u4FW5QdMnZ/+HT5slo
         jbhglGbEUGiKWaa+oB0HviVDWnRbgefmYJvoNjUdLky4fwI/yZXPVIqOMOL160oaWfIn
         M4agzB/yUBbicTO5YwGix3cc1AP/RBDBu2U9xxCQrEjHXbsJtOlAReg49HTBecp6pMpd
         tXiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763541947; x=1764146747;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LE55M4P8STPGyma8aBzr9wec9I7bZaxdp9L/oczEJdM=;
        b=o65Dix6wO9qll+2DhyZ6Un0uobvZ4qh3Vx5MTn5fBigihk63YN1zhSLWVOQJUOwd/Z
         9wr5ClKJhcRlwd7qDEl6q8iaAX194/srfgUvT2J+mZqlvF3WJmoaij8Am3mJqjpgy5YW
         9IFElJeakV6DgNBGToXA1YIJG6+UfBq4lK5Jq3tKzSfrOUQ32sRMKtCVxOg+eUxLZ4uM
         6Tzxk3yj5Nu3UMhLypPqF7g/eCJYe7GhPTPEHV7mjvMzt3zOv0uIVJ9OX92IDzBFhRhs
         LJ1z8CvDYYe8/EO71jdkPj2M7ygQkGjuhqPWnG5yM4vSjbO6+x/4x0rOxHu4ULXW/7KO
         Bm6g==
X-Forwarded-Encrypted: i=1; AJvYcCV9NLok+L0T2I/F9LzzNS7zAaOHmWASkOwcpCU++V4kicNRApLX/KKQe/IhYBq1E0xg2MN0a8gJZvI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzblhTlmnhcrUxxVjFcXtUek6fUOqtMOKo/CGCoBI23nhQ891nG
	CgDE0sJm5Ko6XlMem75bplw2uaKoSBoZAKCWJNaDs0vtMzu8HOUKz0EyTGepO/n36C4=
X-Gm-Gg: ASbGnct3R0RfP6/250ApYYfFqPiUGGFNoWfb0w5jG64FXib1Gkqo/F3L84D33Aj6BdB
	1l0T9eVRTudcgmIjxnQhL7Gl7Xjyxz2ZqPVJMF5/g4mZHLtO/8oX66hwtdob+VcNe1heJTv8XGc
	nnpT0wilytn8aohT5GZPCyQI5eTOE1OdxwB+dDRAX6LBMISYRJJ6h/xgcDW86xixs7j45UO42uY
	hCK45pkOugk4ZwcsGlBCcNTInyFJmSqCG/8wF84zgRnZcfflFDmdtQkvwvXY4umERe2cJlclpnY
	YjdaXSwu/xOe1SagYEdLuRfk4PIhwlf+bPERA7wtnMBWSsyvAOZOmoCUL2lQiId0gJfRsvuZRMQ
	2c/JsoKqYxtfvT/m395siIYOzngqnYbj4mBnuLSB1QOfNhFq0FO3u6r/0jPwq34p1c+RDR/LSAE
	zjWE8I2N1l3uFlAnCHk3Ch53GRtvDx79iXWYES0ZIkkA==
X-Google-Smtp-Source: AGHT+IHdNEtj9hjFbh81MqD+UqMxElphyOJVIxhh/nDOITHKKZy1D2pR8mgAzPWR6P3S/EYsB4vaRQ==
X-Received: by 2002:a05:6000:4008:b0:429:c54d:8bd3 with SMTP id ffacd0b85a97d-42b59384951mr20115882f8f.53.1763541947302;
        Wed, 19 Nov 2025 00:45:47 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b53f0b894sm38132306f8f.26.2025.11.19.00.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 00:45:46 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 19 Nov 2025 09:45:42 +0100
Subject: [PATCH v7 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20251119-topic-x1e80100-hdmi-v7-3-2bee0e66cc1b@linaro.org>
References: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
In-Reply-To: <20251119-topic-x1e80100-hdmi-v7-0-2bee0e66cc1b@linaro.org>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2991;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EQkZbUbehBlz9QkQWwXWXJ+x8l8K74TOqrJoFoU/WoQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBpHYO3mRlyFCY2y0BUwQ9IwLf0oNuk+8Tqj1ybUEh0
 qyU4SqSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaR2DtwAKCRB33NvayMhJ0anJD/
 4p0T2A2uDd0U4as/4N4EIjglgXQq+XBwwKEa7Ru3Yvjum9pzQjEzKozeTiO9PJWQLKYtvEGQm6x5VN
 FzG1fdYUJf5jpErnRnhSi6VPnu+wiayQ8QBM7bzhYCINTjTXLajqXZBoG75EfC+CdRoan/Obexvpgt
 fA/5gH+Y5jN77sM2zL48BT25RhGZ8E/lkUHNk1JWoAFB0KoJ1tYuzzg4lzgpAAfHlxECsbiX+Y0ndc
 vq4iW4EIVE0CUZydCJWLf3mroRJSKnYhhtOTb628q5C55wgCiUrXMFre1CsyVmpqoABk4LPCGZ8vQP
 KRDuxnGyoGZUnfvCDtP7si3KHRKDwGYT0hSfZNFuaUQBgQOaqBFEHrGSiRisrrhHl0oC2Izh3yWjxh
 +xdKplM5PNl9F0zbCdrR4+tWXeF3l9dYVq3s9Zgh4sxANz1yy3ukQJQ9I4ptZKmmHULKL7wEZzm7GZ
 Tgq4YiStBPduK7W9MrpB4DF0+wlwgVaDJi1pHRsQsfoXTYm3E+Bj3ieqoq4GjfH4R81hWhGHGQUrVL
 RCbAMgWjJILDHWEBwiUS+vT0m6s5NnUivfCJKEzzouVI5FZOtJTUV4Hoo4tEerFAcczFm0OZA8qXQZ
 GMEM52qg8QOvdi3/YFHwIvPhleV2M0FQrXLuB+HwA/UPEeFfZYfQLn/PbMhg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_004549_390148_37D371B0 
X-CRM114-Status: GOOD (  10.15  )
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
index 80ece9db875a..5009898313f4 100644
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
