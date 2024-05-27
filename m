Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE08C25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JnAWlX4pOwbCOHeVgtaDp4Lvh8BASXm5KZaw0eNYfPs=; b=bJA+4Ngx4KUxWa
	wB7/PbYEtpsqTAj2xarklu3E1Ynv1t7hEcEsVvvJIorkl19iXOYvFLj6Q0z1etzcGA8Kb+gqMq9bf
	A5JnVRsjRclrUc3ig8fmPLz95qy6foFt0NZfpVhODIjBS4wt5CeJncq6neOXsxxUbjH7EpNwJlKXt
	811UDjjWBarYMuCbKuTbu+QIpDYxg6BZBKzWN06urrrx6RKrHqcBVs37qIZ8Oz3doyLoJIlcUXnl/
	fSQR2+Ui8qBz3tJWAeGUhsqRidYIN3S6v4NyW72gzKjPLyXUtldFtX98elskCwQxIz/kSSj3JRcE5
	GkbcsyaTBKWOdjAr8srg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwY-0000000EHOK-2Lyu;
	Mon, 27 May 2024 08:42:58 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBVwT-0000000EHIu-0Fll
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 08:42:55 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-42016c8db2aso46993025e9.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 01:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716799370; x=1717404170; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2LJ1RO9W9ZmiplNXqoAHVuLIaBqUKAjCRHOSbo1zRE=;
        b=yMCeMxXZ6nX0ebvdyG9NqcmvCtB4U0VU4cgE3OOAPuTsHGk9HFp8qG6AXTPjfMtUgq
         xUfJsCaWgZ8DpW2aRgGcI2/M/tPGjaZhuoGy0V934fQ2moF6VT1M+Bc+WTuhlx0F3EzO
         /UGyqO+nGrKxrlLDQEl3CJlexHejpk27rElqCd73G0uwlGrkZ9MMhcOlobmm71hazrtv
         TpYX20ulBWRzHtwF7p4qjEuQ1QM/WMyJlI8zzDUBz0CFurFRyAUgG5j/3ef+zaBP3c5T
         HtwfVaNteLiXUX8MNZEgb2mm5EbK50C8Y4DFJO0MOYaSRDBl5SB32zIRgNCxsFaGJuCx
         bcvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716799370; x=1717404170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D2LJ1RO9W9ZmiplNXqoAHVuLIaBqUKAjCRHOSbo1zRE=;
        b=dnhhQNs9RDh5P+6Y7MLRaltGguMkrGKAbmD9dKrf9otKEikBRdEPR8LfE7tmf8Iggs
         Bc7PMFdreE50DbdhTYzAM1Xr5lVDWaAZzoVTrcnyfpi1cnnS0pzqG3kXXuTAcWWhOcO5
         hyIfUrsJ8GN47AW12NPa67UrTU43ywWk+9WJTQnrrOaXdemSNtAyoMDIdLTdNGwNNiP5
         4k8aYE8glMKUdMolIEtQCnYUyQ5uZRb3Ncees3DDuhvKi63loUXqflV2kES5rGn7F93f
         pp51e9vojt5EEEKCmait9OU3tgtEXWClS4IZo5m1wpJ227iR0iKk1itvdTnJp3j00SIx
         Zrjw==
X-Forwarded-Encrypted: i=1; AJvYcCXinlx49ULZcvz7/Rz4yBa5s5119ojUzbL8wEWJU0QSXThqYOrQRXHIi0pGkz/wf5TyJd/Y6raENXs9tXuwkEs+mH/gD7uWJdQRgNqyKg==
X-Gm-Message-State: AOJu0Yy7JrRpjcGs1SpX5aGvhnS7q8Yyp5oKln6kFZzY+ZWpJsilJOzU
	6CLnr+243bp4Y5axZBOZAQvEXLC2St2tjWyQB+lSrLkffQYvJKauqLzUg7OnPao=
X-Google-Smtp-Source: AGHT+IFdORbL0x+whnPJfYGPCVw/jWchVW0zPlS/w0jEjLQix7QZp7p2sKG8QPCYe49sDQQDgjJXgg==
X-Received: by 2002:adf:f707:0:b0:356:49a8:7e0a with SMTP id ffacd0b85a97d-35649a881f9mr5480493f8f.11.1716799369998;
        Mon, 27 May 2024 01:42:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3558889fb57sm8447292f8f.114.2024.05.27.01.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 01:42:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 27 May 2024 10:42:38 +0200
Subject: [PATCH v2 6/7] arm64: dts: qcom-sm8650: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
MIME-Version: 1.0
Message-Id: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-6-a03e68d7b8fc@linaro.org>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1513;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=NP7tAZcAVmpxoSMiDaYof/jNrt5rk0QngILAlS00ha8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmVEd/GpAuxlZ3geRUZpWH7CVDUJQ+wF4m4uHJPlkw
 xEjpF7aJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZlRHfwAKCRB33NvayMhJ0QqwD/
 4whHfSuSohMllMQlciqb8HcpyxsE0IsTyef8jOv1thGDKh2GRgoQfuBVFEmnGOWKm6lXQnbsSWT5A7
 VxKpp3BJsajvzeHB5r8mXfbORE7U50+q+/C5SStC1d+PYO2PRPiVufnyTAH4NSEiAs3gvvrvNFf3Nq
 u/P9uNDjYvlKjaKkDSjeDZFEEBcIE7rTROL7WHUVG0iQn38HH6vdSW1q9MpbLkHJqBYmxFPRUoMWwx
 6vf5kUiJTMlJp3+1TRMAq4+V4tN9UdAu2clLHDOXU/AQVaYMjFi+FU0n1daQ6XvMNBZFRaenmldfg1
 SXI5HgnvaYA44fffD8YXljYmoG9BOiIYQva87CQNrRkqi7VHfI3yj6qDuiHHD76T8yMTMy0a+7oaOL
 qJnQGpUaKXR1adDbrD7z3ldmWIlba0szOiUi4frySzyR/b3sbvoGsyWv2nsH7XDsZovk+3o0yUV9g0
 JPIEwV16rHsse4bMc7wnZnnzthXtaupo2AS8BuC4uQ1oB86rKkd/a7mP6qHw21Y23w5hYF7/5l2dH5
 11kg31CAn9m3ZL80ckaVmCKhVZqHZBUwJEY6I1xgEXI9LN5DxBcQjVJm8zFOQSIK3SXuwuHs1nrxeu
 4wJjofJsorZ7Q2uSX4uDdzwb5dWmrU1X56HM8EVsDQ8LeOx8FiKQEzzjpS1Q==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_014253_342983_7117766D 
X-CRM114-Status: UNSURE (   9.84  )
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

Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
and allow mode-switch events to the QMP Combo PHY.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 3 ++-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
index 3791c36579be..9ab07e265321 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-hdk.dts
@@ -872,7 +872,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
@@ -1229,6 +1229,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3i_1p2>;
 	vdda-pll-supply = <&vreg_l3g_0p91>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index bd87aa3aa548..884e846842f5 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -831,7 +831,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
@@ -1224,6 +1224,7 @@ &usb_dp_qmpphy {
 	vdda-phy-supply = <&vreg_l3i_1p2>;
 	vdda-pll-supply = <&vreg_l3g_0p91>;
 
+	mode-switch;
 	orientation-switch;
 
 	status = "okay";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
