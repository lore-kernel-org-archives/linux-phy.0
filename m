Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7834FC71145
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3AVd8Ts76eJ1OWb71mbBRz+6fUTW1kQ414QHrC0c8Y=; b=meA0WtxvQsvWEG
	ug4+Tzbsra9ugie3TBmvmCJlel4Ym0D3mEnPz3p0v5FsymEHsByss7KZYi6nSFVv5XQeM9E+Z0w1Y
	B5rCYF2rfKgywr7AMr9Y5fAlt5Nd8bvrgjKYOLrOIKr85l1SDufIlflq3FLeTd6nLbadM74oBGjCJ
	zdNcA3P8ZcKMwyZapDxGLewIXM9WIIgvhv14OCCeSoVQ1X76hukFbJVKQ7HLOydXM1JoFy23FZRch
	2VXGJM4pURRb6IOSj8KubW5qp0kOT1OqvQPGejJUzi6+EiKTYAmPdFm5AozBWP0xCa4dlSmaOg5EJ
	FfFj8e8Ragvn1z7va3qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkP-003ovd-0V;
	Thu, 24 Aug 2023 21:20:09 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkK-003opS-2l
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:07 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b974031aeaso3847501fa.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912002; x=1693516802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vzqcgcbIaMIUDZvRabJyNQlsi4CTBBIG6IN9KvgLsyc=;
        b=IkuwL7Imj55rPyJryvvOmTH1mgmJVPRT7xFcGHVIe6NzbWJey/PLLYUPsAhEL6uxqL
         3KC8VR8wMmskYnrczrOUapq7LRgaYkB8zbKrF2NjPITBUxJQaXN5dyUCpdaDOmfJsDyQ
         Un5OeYMvrISU6va2Ma37gwiAMevnjMudylFvcW0SRbGOlRXRudRYgQWLHgEFs8auNSmf
         FUS5JzPcSA+rV8bqMg4iDKMKFEF34BzhcpjSwl6hSFwKhaYwbRzga/7eVpupQJ/cDXQD
         8A54KIhZJF5TsftoDZJeGaDy1jgnd4GE59wkDlUtSgBsnE2yW0VnNz/GvyBgaDpMcoGh
         xVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912002; x=1693516802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vzqcgcbIaMIUDZvRabJyNQlsi4CTBBIG6IN9KvgLsyc=;
        b=AIn4isfLVZ43lxoL2d1DLYeryXKYI3yrYqnIyTgXZDuGejDeNJ3ZRucu9kHwbZeYDr
         rKvr1q3CGupP0M8RLPZojbeXkVvW522XKOkXHAmFh3sTuJrWrDKSgXmpUyHS6vFamqrw
         3Mp7zJDSKlyoovOE8Ndc8oivatdUQ9cIYJjYcdQaHzMEZ1bbrmDJpACATIvsRif5YrXq
         FJb/bQ/wQ4TkmSpBuwgRS9tzfGh1XAabL7nKrHo/exyzZ86ElAbCWHXjMw7wgeO2a9rz
         o7t5nwa0v1LqUr4V04FbrQsy6L001E2m4teC8jHhWZBkpOzWgQs8bxXUe6pbY8sbA8Kj
         kAKA==
X-Gm-Message-State: AOJu0YzjGK7uu5Ycj6P8aRqXxDZNwziexBLboOe8oQyoEwr0panyeTqO
	aYsjwbMmrzeBpOQ1ZzfK/aAY1w==
X-Google-Smtp-Source: AGHT+IEmjUKELz71WH4BlPXR56Ns/EHmC7/jDyURzub2YR2qF9eQ/e2vAtdg4j6YqRWw1s5iFK69fw==
X-Received: by 2002:a19:5044:0:b0:500:91ac:c0b5 with SMTP id z4-20020a195044000000b0050091acc0b5mr5641682lfj.30.1692912002417;
        Thu, 24 Aug 2023 14:20:02 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:01 -0700 (PDT)
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
Subject: [PATCH v3 10/16] arm64: dts: qcom: msm8998: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:46 +0300
Message-Id: <20230824211952.1397699-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142004_892192_F58B7E58 
X-CRM114-Status: UNSURE (   9.18  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 35 +++++++++++----------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 30d8730fa4de..a0c797710239 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2138,7 +2138,7 @@ usb3_dwc3: usb@a800000 {
 				interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&qusb2phy>, <&usb1_ssphy>;
+				phys = <&qusb2phy>, <&usb3phy>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,has-lpm-erratum;
 				snps,hird-threshold = /bits/ 8 <0x10>;
@@ -2147,33 +2147,26 @@ usb3_dwc3: usb@a800000 {
 
 		usb3phy: phy@c010000 {
 			compatible = "qcom,msm8998-qmp-usb3-phy";
-			reg = <0x0c010000 0x18c>;
-			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x0c010000 0x1000>;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
+				 <&gcc GCC_USB3_CLKREF_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3_PHY_BCR>,
 				 <&gcc GCC_USB3PHY_PHY_BCR>;
-			reset-names = "phy", "common";
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb1_ssphy: phy@c010200 {
-				reg = <0xc010200 0x128>,
-				      <0xc010400 0x200>,
-				      <0xc010c00 0x20c>,
-				      <0xc010600 0x128>,
-				      <0xc010800 0x200>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		qusb2phy: phy@c012000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
