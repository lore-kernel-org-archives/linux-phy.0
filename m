Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11FF9EE49BE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piLh0FSP6J/euZuCCJOw2QeXZvONeH5dnsQEmgG3G3o=; b=mZsHHOeX/jcMVy
	XiBmr6BVKIbQqngOnnU0GUX3WRSaJvGXDYaz+COJctphCT+8HIS4dQYa9UPeQw7Mc2JKFvpSg+2f2
	bzvkiPn0IVQNYRl1nr2RKOBTl808t+RKrKIPJ9aPm3Ujy+iNGdiymYtFZSQfHb7VLer3cB9Qh3dbC
	VNAxolV3uYUScaffbPCuxYbtUti0oGKI4CyateBiB1rECBplvmS4SbvBs04HYmck8LIIcfXlG2gwP
	ETSlHbhEhj1XYIot1jnbfpbyl2jQKapTM9llEjO3b30z9H03ZZVxwARQOaPV0+khU7BSsD7WGlL3o
	GLJZ2b7AY+VMqs4ueoOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjr-00CjoC-2H;
	Mon, 21 Aug 2023 00:25:47 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjo-00CjkP-1O
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:45 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2bcc331f942so110131fa.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577542; x=1693182342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hc8pSN8VZcLAgrrCg9Hdw/Sq6XrZ7CHaLJcqEMsAhS8=;
        b=T3J6E/Cce7gu/EcOphFb73tePGzIaCcRNE+sdB5dXZjOYdVne230GwFXdUh0TVz0OU
         Kf+mRw5kRPAfCOw4vnXbPw306ALV9H1Jm/i0sNkczkbW9/mu+NW5gwJ7NKeCqgbM+q6h
         L0hIfXYXevx9xpVRgVesx+BMpRUFKkZMqMUgfBuzfP/5YXKV6W6Fc3LngL4wOcVmOppL
         1A2dJWB9WdNB9Cjzh/VBxHZ7FdIt4G8LXHeaUPf290mNC8f4dp0OGOtDl5ugAxAJaUaz
         tCbKhp1TXuTlZgwErmiYZkk+p8qZSIuLnEl0hBTKlJIohBbac2e2UYgbr6cEF5fEjpN8
         HXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577542; x=1693182342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hc8pSN8VZcLAgrrCg9Hdw/Sq6XrZ7CHaLJcqEMsAhS8=;
        b=jzwSm+Mc6dLw7sFWiDQfyyCuuwe4C6ieepEo0M11IsZnLzAfEr1i4ay512QZdBmQ8R
         ozR0W8IjfJ8MZXMQk1A0zVg6wMIXzn4xmrwYiIOBrkvKlcf3o5Ivi6eC2gP/YuWGnAtN
         YT0mJQJ22+v3V+KfFkyd6Rfx1sHjuvjph4DTcUg1+1LVVJvMudHXHdfdmpJ20MHBrPIm
         b/pkLs7DVuW6k27Qyrsk0pkTdlG2k4aMDstEk8VJCFMGKp06buoi67baoCKqcHcj2KNp
         bbiFfSYUulCRgPT3e2bLAn/YxLLYmXBFB5n7f+Cvt0/EMQyVg3Uy2JwRrCv1TKZSS0WG
         hKYQ==
X-Gm-Message-State: AOJu0Yz0a/ZEiWwThV88972yUuaCG6yPcyidJ45hjC+MzEy4LOzDSCyi
	dhRoT7FV5SH1xfcSmn+TT/wlmA==
X-Google-Smtp-Source: AGHT+IG0tSRkt2at3c4QXqHobqRkWeulpAmvayv3emW8qdJBVzRM6d9mcDhIvIDsi7QPBiyiB91hBA==
X-Received: by 2002:a05:651c:3dc:b0:2b9:a588:50b9 with SMTP id f28-20020a05651c03dc00b002b9a58850b9mr1547645ljp.18.1692577542767;
        Sun, 20 Aug 2023 17:25:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 07/16] arm64: dts: qcom: ipq6018: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:26 +0300
Message-Id: <20230821002535.585660-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172544_468519_EDDEFC22 
X-CRM114-Status: UNSURE (   9.41  )
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

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 35 ++++++++++++---------------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 3c8a2f4e26a3..f0458de265ad 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -236,31 +236,26 @@ qusb_phy_1: qusb@59000 {
 
 		ssphy_0: ssphy@78000 {
 			compatible = "qcom,ipq6018-qmp-usb3-phy";
-			reg = <0x0 0x00078000 0x0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0x0 0x00078000 0x0 0x1000>;
 
 			clocks = <&gcc GCC_USB0_AUX_CLK>,
-				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>, <&xo>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&xo>,
+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+				 <&gcc GCC_USB0_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "gcc_usb0_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB0_PHY_BCR>,
 				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
-			reset-names = "phy","common";
-			status = "disabled";
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb0_ssphy: phy@78200 {
-				reg = <0x0 0x00078200 0x0 0x130>, /* Tx */
-				      <0x0 0x00078400 0x0 0x200>, /* Rx */
-				      <0x0 0x00078800 0x0 0x1f8>, /* PCS */
-				      <0x0 0x00078600 0x0 0x044>; /* PCS misc */
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "gcc_usb0_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		qusb_phy_0: qusb@79000 {
@@ -566,7 +561,7 @@ dwc_0: usb@8a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x08a00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_0>, <&usb0_ssphy>;
+				phys = <&qusb_phy_0>, <&ssphy_0>;
 				phy-names = "usb2-phy", "usb3-phy";
 				clocks = <&xo>;
 				clock-names = "ref";
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
