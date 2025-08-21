Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A44CA0EFF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 19:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9kV3WrWOJsToRadwMa6q8LQdSCmrITP9WJefuGpUxE=; b=B7eHPR7rtK204j
	S9Kn1Peud3mv95NbLnD/1N3Gtds3KrkczpWKwTiRVgLqS8GsTHZ6cVhDi3zmLzofvUbqocpX7sRMM
	S5F4Krh94PlhIj4t7ZJ3EKM0c5OIsmaPpAM2Kmncu8MRyHpVwbqWi6K+H3YCqI34dzK3CzQIDjJfl
	pNifgnaUg3gNHov/UvMNbwE9QVW24mBiOjtsj2UsLMHvAU4qMW8K2n1OwXdnKYklylGF+Mxw8Xy8O
	L0uzJ0Hr0TPONZLYkoO6Lbi0CQWB483qKiJW84dRxGeRhXeYoTCHiSeUrjq3pieJywbnKqn7TkJkt
	eeNAsQE/Om9O7shYlpGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAi1-00000000EoR-2Q1U;
	Thu, 21 Aug 2025 19:12:25 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5jQ-0000000H7yU-49B0
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 13:53:34 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-45a1b00797dso7858615e9.0
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 06:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784411; x=1756389211; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79lhMe3N1476pckXeeXS42RAJ+SKWb/dkO509Wt+tFo=;
        b=bd/Gt0+0hOq7UTGXO41dH0SRU20fS191NmQqb7WBIytTBV0uhrs9OMlUq6D9rF9u/r
         nRKX9/+E7xIzuxOyCyyYe2OmojcWHIqMkbSX1UAsV4mi8vpIkeuCiyeaO97jyJHI0wj3
         9/NIidXcvycUrGUlP5TS9eO4BBD5pXwTHDRsQhi0A9Y882OAwvdplqJ36DvE9bxRTM+p
         rrPwfIGxqMxz2uAW6REmmRlXK79yO3aVyEjDA/bluxCV2pSxAzpTd1t+jHEKrksGo2dY
         X8MsKFj17ybJeZrnJUiRSvEM+Dm5o53YheiPJlXtv5JKueliNYAPNQXHrqV20U9mgplI
         8Xdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784411; x=1756389211;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=79lhMe3N1476pckXeeXS42RAJ+SKWb/dkO509Wt+tFo=;
        b=Pj+kXE1klcp99MNUmWCMobBac48vzsmqg8MCS6qcapvA8KyYAG6xagRe9/yv/HyV4X
         4bhl5tH9EK8h+kV2yqJVpGsS6r5Hn+iSF8KIVN6tI0Vdmt3xFWxSz1RAFhLYjXedWn0N
         LfKs5ZBsnG6NZtwS5UvMslP6hbjWcIFnWhm3rXCyLCNzkYIxLF3Pnf/X56GyTvkImYam
         OJ7c/FMqMMc8Ir+4qhTuBAi1dcw9xF1UjjBhkUUMVsS0VeKPBwiBPv6YyvamJHrnacLW
         q1EpqiO45Xq3rMAVE+UTQ5UOEnwj0nZA/6qPwI50/+YsUAaWE2sL3wcdTSfl25dabCRr
         dDZA==
X-Forwarded-Encrypted: i=1; AJvYcCX+lQHxG+8JLitsogAWWjSOKUpnvF5aU7Us4nGsQQh6BPJVIcXasEdSaF4G5HlHFmPdWfxTSEE0ISU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxLvL85wAowRnX6pDSOg1S5JukQdy/TWhla0OBpPZwNHQKiXp2a
	Qb+ro1B68UPBlCaIMDV1EMASTxlmEzbhX1esMctMcV+LnPFFQJrknI1+9yKwV1acRVg=
X-Gm-Gg: ASbGncskXuCOaRmQOqPAuIKVrmiEzNC0o6GjhbcKSjO88CS2d31uDVtKKEttKZtDmY/
	sd8uxrlz8PPlRBmjDS1rQgJmRl1ka2Xt+ZuO5LnlMpr5QOrA4pd5dsDT60Qc6UMAsSEB5jsboBT
	+gVrSvoYrJWTT36EKd8r1YI2ITyK1MQWIIk5ps0DhEvHfbae+OmX/KK8THy0fJr6JlSia8C6vbD
	TL/4515rQ2gGT29i/x/pe6KiI7Jgv+7uqM6zEpkT8PLD4mIFm6Cahz0ksT6BpBZKusInT5Nqeh7
	Y+nJWlvFtEajfgYRvvossvhqIO1Gt5+0Fhg42gZHokm80kiTl1rWcimveGneO6wG5oKQeNYln7u
	UY9PNMHa0mkPLdL6L8guRmV2nUtiyThwl4EajXHUb2Ug=
X-Google-Smtp-Source: AGHT+IGZInLhSbfoffh4Cx0aYiBL1T1B3t2zh263M5ezMVnk9vGA87GDTnKwdEgBYTpxeSw+hfF8vg==
X-Received: by 2002:a05:600c:1c9b:b0:45a:269f:3a29 with SMTP id 5b1f17b1804b1-45b4d7dd465mr22121955e9.12.1755784411409;
        Thu, 21 Aug 2025 06:53:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm14825015e9.2.2025.08.21.06.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:53:31 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:53:28 +0200
Subject: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
MIME-Version: 1.0
Message-Id: <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2350;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=tlCxLe1DFF2OuAcur7Af9DM9bWyADwFZbOJxRmADTao=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyTYR5nHv+daCaqncnC2vX+bVmM2jIZmKVW1gh2r
 dsbT37KJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKck2AAKCRB33NvayMhJ0VeUEA
 CFnzGV6UjRVo8/SqcgVuP86HUFK6rq4oxUfe1zvtGXG+COagM8ASnSQ7xxsOFhJd6jpH5VSUegsb79
 FaRHR1HLTGmx0BHHx7KUD4n4Sp/5ltMxo3FaIHfLxoBgWJYO8z0JnZuuAbFympMZyxx3edchjeSr4J
 OwaA9CUDtoDVTLDmAYWwOAd3KcIzlJ28w7t8Unj5hqJOoaN1xGtc9To4vEDIpfzMgXg8gGFGqiue5v
 EDIwUMSonSCghsSntyDiG7Ez6t7fkufZqlORnF5i5mm9PgDo+p0YmHpPLQAnLDTmPhREmhUe3bqfMf
 CSUcP03xrwpnRBquax99eqzpUTciq2gUDdGW0UoTTXYgwNeWqrwTOca6S/IZL79ML//FK5XaqfKI50
 TL23QDxxMnt3zrKLJRWyuvmYm+8VjPPhg+qQX+Cx2rjt6/lf8JxIS/cC0oFVyBsYr1sDWfyBzEbx2J
 oNEOIqCZ0atqEwPIm7WRuZeeVaWstADVRJYwM9FgQ/iis0qBKJBOeqPR/jHxc0EdFfQ5vZ0T8RL3B5
 MzGB1cEzQo28oIx8NSxA7Wiaocwrj9r9iYV8NKL9XWLHk72QNJl9/0WJi+Hc49yBOn+6cLl9PrjSZi
 cOpRlf+l34NjQb7Ss2ZWPuQC3dcp0Ww5WAw6nqeXRZP6UdhaKLGQ5RrEQtgA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_065333_032350_B29A24E3 
X-CRM114-Status: GOOD (  10.23  )
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
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -62,6 +62,20 @@ switch-lid {
 		};
 	};
 
+
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+		pinctrl-0 = <&hdmi_hpd_default>;
+		pinctrl-names = "default";
+
+		port {
+			hdmi_con: endpoint {
+				remote-endpoint = <&usb_1_ss2_qmpphy_out>;
+			};
+		};
+	};
+
 	pmic-glink {
 		compatible = "qcom,x1e80100-pmic-glink",
 			     "qcom,sm8550-pmic-glink",
@@ -1007,6 +1021,14 @@ &mdss_dp1_out {
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
 
@@ -1263,6 +1285,12 @@ &tlmm {
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
@@ -1486,6 +1514,22 @@ &usb_1_ss0_qmpphy_out {
 	remote-endpoint = <&retimer_ss0_ss_in>;
 };
 
+&usb_1_ss2_qmpphy {
+	vdda-phy-supply = <&vreg_l2j_1p2>;
+	vdda-pll-supply = <&vreg_l2d_0p9>;
+
+	qcom,combo-initial-mode = "dp";
+
+	/delete-property/ mode-switch;
+	/delete-property/ orientation-switch;
+
+	status = "okay";
+};
+
+&usb_1_ss2_qmpphy_out {
+	remote-endpoint = <&hdmi_con>;
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
