Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89426C71145
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nY31XDe+98K/xoJyhQZHA6ar/pJJ2IKzDyqoNq1hQ5A=; b=Kw065dHYVU9ckN
	oECvDJy2TA2q1S3Fn6tT1Omg4YCM1mqNvu3ft8cvbPTG49k3q328GF1X5vCwfoS9Bl4CV5DCkV9vn
	Z6pdoLv0EnxWbViuCzF8HKF64P46aqWPZgECVmM0xDjBKFRAH+S+hGZXCg9gh3s6yOWl0TQ6aVUci
	qIho8eCaYcuj6mP18UaTyPuYA/sBTq7OtvsCqNNiuREdpAdhII2WWMlQl5ViGl6XR2JnUgQLzfHqR
	pO/k+K0sRX27Gm2WZp++N1USMSCsB3sFMhblhREt5UMTECcLJyCt3xL1RPWuFvaeE2MKVFhdwZcNh
	LaIIbLEcMNcCeJJZBbow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjv-00CjrG-0f;
	Mon, 21 Aug 2023 00:25:51 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjr-00CjnJ-2W
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:49 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso44147871fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577546; x=1693182346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4jn+eGfxJEl37BPrury0gVQNnPShMnDn2hVA6B9OYqQ=;
        b=t8foATtR2GJGErd6rDOMMVH7uxINgHSiujst5l4F0Mtb8/jtSIUHgoadbIWcvzoVs8
         wFWXhlkynwNB6IuLj34UufMBANk6T15lO+3UNAa7UurNiPYf2u4dsWWmqbzlynprWSb9
         6nFvs1ZEGjVUa2qtZvuLQMI+5noDfY+JiN/vR5rWxo70f0UCDp7p9PgWrh9OK+VT7NYa
         RoqqBCywy/3SDAEYgRKqNP0rmbo/gCCkdvjYZgqAOF6T5KJGYDy9IhaEOhWUgmOHSe5r
         2Ry+V1dHUBuQ6vbPZUdv5VMp3l9BFT/ppklvXaLKaj65VnFeyvUOrZwj/p15/F4Jckuf
         nW+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577546; x=1693182346;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4jn+eGfxJEl37BPrury0gVQNnPShMnDn2hVA6B9OYqQ=;
        b=aPX7H6aH3fSTFBzVnMjyfxJXFdny5lmoQyk1JwPcCGppLhwxKG1E3CTwvwtNn8z7Oi
         xEoWOVUNL3lYW8fy1wj2jYlSoMsvHZcKjAAMaHpuo5AoteRyRt9t5g54JQ0pCNII/gTp
         vteJlIt8QukinKJlUVlAXZMQ0egD7qeZipuzTP1+eEgzHoNl6GFNgEIeNvIiyufljNYN
         H+qdFg+f6j53pSVGtZjfm5/6PKwZGJuFi8dcx2BoGWF4tmHCtepj812ek7rs19VkXJez
         mIMB4XJ6mFyQwGSZ0hSwuHX7ikc8wMS4u3LhUPp0CLeYYF7MHbWKgENZ8+ypyq/SzLrw
         Hv0g==
X-Gm-Message-State: AOJu0Yy16T1U+E/Qs/iSbaJzFsnzhTN0Gd1FMmjecMT6NQJnpSEg15uP
	otul3ekfuHIW52yYAnW+DPKqDw==
X-Google-Smtp-Source: AGHT+IGygq20Ak0am3hwBibACMTb1eYrgwsfDXRN4Ow/y9GdhLyaTP/7zjigXGOizEIC7xmPVZnlkg==
X-Received: by 2002:a2e:97c3:0:b0:2b9:dd3b:cf44 with SMTP id m3-20020a2e97c3000000b002b9dd3bcf44mr3532436ljj.4.1692577545821;
        Sun, 20 Aug 2023 17:25:45 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:45 -0700 (PDT)
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
Subject: [PATCH v2 11/16] arm64: dts: qcom: sdm845: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:30 +0300
Message-Id: <20230821002535.585660-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172547_817515_9B6DE9DB 
X-CRM114-Status: UNSURE (   9.16  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 39 ++++++++++++----------------
 1 file changed, 17 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index ef7b6994fdab..686d0cdfac63 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3991,33 +3991,28 @@ usb_1_qmpphy: phy@88e8000 {
 
 		usb_2_qmpphy: phy@88eb000 {
 			compatible = "qcom,sdm845-qmp-usb3-uni-phy";
-			reg = <0 0x088eb000 0 0x18c>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088eb000 0 0x1000>;
 
 			clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
 				 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
-				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "com_aux";
+				 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
-			resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
-				 <&gcc GCC_USB3_PHY_SEC_BCR>;
-			reset-names = "phy", "common";
+			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_SEC_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb_2_ssphy: phy@88eb200 {
-				reg = <0 0x088eb200 0 0x128>,
-				      <0 0x088eb400 0 0x1fc>,
-				      <0 0x088eb800 0 0x218>,
-				      <0 0x088eb600 0 0x70>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
+			status = "disabled";
 		};
 
 		usb_1: usb@a6f8800 {
@@ -4117,7 +4112,7 @@ usb_2_dwc3: usb@a800000 {
 				iommus = <&apps_smmu 0x760 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_2_hsphy>, <&usb_2_ssphy>;
+				phys = <&usb_2_hsphy>, <&usb_2_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
