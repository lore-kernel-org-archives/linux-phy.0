Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E487FC7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 19:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWg+HszACIhUOko/7Qfjs6BT3RTSqI8d6A1UR9l1wws=; b=mGZOVrDn5cGu+r
	tSoBJHAAykjFCMdWyP/2QnZe2ogZDNrcMQt+3ajCj5dI7hrPoPnTCHp2l5o4aHfySlcBGhdSDnB+V
	2JDy5A5BoxqSaLe/Ht30WQAm6Iv6RIA9+x83kC8iKYJNXnJLhbmOZT19BDHm81CPBbioSmNVtWeHS
	wO/YOTb4ispUD/YOeGK2mHiaI0icbBq5Nd1hYsUqAFMv5JaB4wycDnyv3lW2V6kQb68nEYFRXQeyG
	A/HSJ8iqtq48aKry5LoKaZ069TtKMr3rHCpc6M9L8hqDEeqJgeHQT6Tirvr57NZg9gy6UBQRe96FI
	TsYbS2KbKtkngo3GFzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orE-004Wey-1x;
	Sun, 21 May 2023 19:36:44 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0orA-004Wcl-3D
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 19:36:42 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2af2ef0d0daso15302571fa.2
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 12:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684697799; x=1687289799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWtQzjHUlWVKjR6hyfJMpC5Arsr78CLVvJSVCwCWijI=;
        b=Vyac5jY5NWZ3YZ4oN5m8mcySexoGPR2F9nfouCoONTepm25fG4kxKzm0EhXIoU/H3Y
         ZkpIKf9NHtuQv/kB0u9Yf289QNy3jT4C9D/QaOK+e6LR5PfPvHW7JbCcFbEmnT5bJ4sq
         eJaQ8Te7k5Qtvr2DZlG9YfH6lomaezHR9YyIC9LUQSFFd3lFhm8IXTfLZqWCu6ttSYNC
         wrUbsobagV+xbOrOYmroMaE8NtSaL2gK9/F8fLhAu3bbiOLxpFNmlP14gxeVq7XfglDj
         pMf72sdb6RY2ONhlVqoLmqgbnt5Krvg1Cq+kJfWV9/QbGq/Zfq++X1C+s47ot+m1V3ds
         Qmfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684697799; x=1687289799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWtQzjHUlWVKjR6hyfJMpC5Arsr78CLVvJSVCwCWijI=;
        b=IZDr9HJjumTTc6KZNJGKLLBicwRmwWTrGqwfqz7bZqd8u2LRTfhSaF7wJI4J+Df21C
         QILItFuapMgodkitfHn/6NZ3Xw7xMcGHohmZ++7j0MV+mYoW1ZSb5ybT32d+V26UlHDB
         ZarPnPd9PImOJOv90uQ7CkW/jjA/KSn8dhLMLwIoZh2B+zbSZwNqn4+ZyZz9bdIHF09g
         FlwgWklmUXvuh3qBD7UIPUdCo4Uqg48VPbGdz7OVhcpIPzYIkh/4mxfa3YYtdUtH86pL
         ve0ktqeKPZGZnUX4q+2VAbz2R5G7f7d18lqxCZ8qHuDVhZ3Q89DOVciKRe6gYghedO34
         EqvA==
X-Gm-Message-State: AC+VfDzzyQWR/+mpfr6wNKmQ22fHcK2XKZP6ff2xSDxWcRfXeByX0Cfq
	aiLZbUZ/v5ncv2qVFnjrFk/k6uLJfPfESFxgCdM=
X-Google-Smtp-Source: ACHHUZ6uV8V6xeI0N/grDNzxgfqzyth+cO9A1Msp0VSfKxp75OdMIwv1dBCAPmCeRp0JD8VtdLuq2A==
X-Received: by 2002:a2e:b301:0:b0:2a6:16b5:c658 with SMTP id o1-20020a2eb301000000b002a616b5c658mr3149346lja.31.1684697798952;
        Sun, 21 May 2023 12:36:38 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q4-20020a2e8744000000b002adb98fdf81sm830009ljj.7.2023.05.21.12.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:36:38 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into USB+DP PHY
Date: Sun, 21 May 2023 22:36:33 +0300
Message-Id: <20230521193635.3078983-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
References: <20230521193635.3078983-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_123641_033331_05F8916C 
X-CRM114-Status: UNSURE (   8.44  )
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

The first USB PHY on the sm8150 platform is really the USB+DP combo
PHY. Add the DP part of the PHY.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 2273fa571988..1f442e1be63a 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3399,20 +3399,19 @@ usb_2_hsphy: phy@88e3000 {
 		};
 
 		usb_1_qmpphy: phy@88e9000 {
-			compatible = "qcom,sm8150-qmp-usb3-phy";
+			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
 			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x10>;
+			      <0 0x088e8000 0 0x38>,
+			      <0 0x088ea000 0 0x40>;
 			status = "disabled";
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
 				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
 			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
-
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
@@ -3430,6 +3429,16 @@ usb_1_ssphy: phy@88e9200 {
 				clock-names = "pipe0";
 				clock-output-names = "usb3_phy_pipe_clk_src";
 			};
+
+			usb_1_dpphy: phy@88ea200 {
+				reg = <0 0x088ea200 0 0x200>,
+				      <0 0x088ea400 0 0x200>,
+				      <0 0x088eaa00 0 0x200>,
+				      <0 0x088ea600 0 0x200>,
+				      <0 0x088ea800 0 0x200>;
+				#clock-cells = <1>;
+				#phy-cells = <0>;
+			};
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
