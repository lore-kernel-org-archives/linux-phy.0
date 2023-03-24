Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A604EC77B62
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erIi1OeK+6BLeRTDVgxAQKS95sr+6X9O21nyC4kjKpI=; b=Be1fXJ3uMu9ghp
	3LyzTb7LmiVbD89FKoUzFS4r0scUxWMwTSPlUsfcs+K/kFiD3dMOwK9tkPwluBlU+pMq1iuOalY1k
	lfKEfB8VhNZrlOy6Ln3fv4gaG1hjY4izlsZgL1ped/DI+xlvwOwADOFxRRTK5W0Bc5yzGC5sxWvSf
	UNDTXLHOLqYh7tANG/VcI/FWLT1q89Zw57LXXp4RHAulTZtj+XdmRBrmObgkgu9mU7gy15pRRHT+h
	Q+J3o1UTa/OfCb18gFN+PbnArGSCy7XMe1IlG3gT8ouyL+BWZ9kBMfmR4O61ZrG64aW4EwGL19MXb
	Mt4aaQsGspyscQ4F1OXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7U-003ODS-0v;
	Fri, 24 Mar 2023 02:25:32 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7P-003OAT-0x
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:28 +0000
Received: by mail-lf1-x12c.google.com with SMTP id y20so423439lfj.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Ex2SxWiKHsLi5JuC7h4BWwHvOKFOw+6Zk3M1yOf5+0=;
        b=WRdUTJh6nIZZnWmcVmOK1B5tZB3K/g3487ARz72AStEAvRKG3HE5nKf83Uur55FkLR
         Kama/UwbHoCi3/SC7Kkcg+BEXiVQt3y23+WZsEKnHT3vad47waYWiTIJdyb2HzWhyMZt
         ONKmPBzRM88ebD8tn66b/Hf+8885Y/UQev+Ec6dNSsircHzGv1kWOaMR7sx2xbLX4uAK
         nLyUroBYdpmqfIMMCCaX218Zs6bcTx7zxr/sd93504VO68UdTtOOKsz5khjVvQ8SDDHy
         4AGHX9yas7Mpw4GR/gRaMF0i66We1V9OE8pT2LaDRzIQUr+Q7kvgr5BWGAh7RaZNLB8W
         Yo4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Ex2SxWiKHsLi5JuC7h4BWwHvOKFOw+6Zk3M1yOf5+0=;
        b=uAh2DrYtnPQTOZlFT1O11bIiDREPjSfkCtkH83CLe3cGOf7YTzyLhfzRgSrpqCmuvz
         0aipIUqbtBnsG5uVyN1sAIic5F+dbrbCdWa58UpLGAZdHMymHe5QuP4IXFnsDdBJBEkS
         gNuA5E5cCFdWEk9pdGUeKoXKJvAtli5T3Iauo/pZTVT0F8+8kMHa/satTke/KZ6CHfzP
         ZkGCpiQhWcSMLBmsSW3CKHIxTveNTBbrOsWDk7adYyxasMThR2HVnVe6Jd4xXUZOs1yl
         jlXo3OCOOrbs+u1zyuW9GBsYIXe8CREIc2z7tV4gNiYuL8pWlmD+wPCcDOnmq8pVxLOf
         NhCQ==
X-Gm-Message-State: AAQBX9fm64+gZk4TjZc2vweDpvHKb3RuMbUuofWpwJyqUDsVGalJqxi9
	Nta8wzeUj8Ekepwl5+OymLUaKQ==
X-Google-Smtp-Source: AKy350YK6K1kc0bOCgHGJlc4xpmxkOJAj8pSUqLxxdnuM6nrgiE7nQhqCjY7GUa5eGpgfIL/+VBuCA==
X-Received: by 2002:a05:6512:905:b0:4ea:fa78:3661 with SMTP id e5-20020a056512090500b004eafa783661mr228099lft.31.1679624725430;
        Thu, 23 Mar 2023 19:25:25 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:24 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 10/41] arm64: dts: qcom: ipq6018: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:24:43 +0300
Message-Id: <20230324022514.1800382-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192527_341892_5B2810C2 
X-CRM114-Status: UNSURE (   8.33  )
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
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 31 +++++++++++----------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 9ff4e9d45065..ff540bfcc062 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -220,31 +220,24 @@ qusb_phy_1: qusb@59000 {
 
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
+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+				 <&xo>,
+				 <&gcc GCC_USB0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+			clock-output-names = "gcc_usb0_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB0_PHY_BCR>,
 				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
 			reset-names = "phy","common";
 			status = "disabled";
-
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
 		};
 
 		qusb_phy_0: qusb@79000 {
@@ -553,7 +546,7 @@ dwc_0: usb@8a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x08a00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_0>, <&usb0_ssphy>;
+				phys = <&qusb_phy_0>, <&ssphy_0>;
 				phy-names = "usb2-phy", "usb3-phy";
 				clocks = <&xo>;
 				clock-names = "ref";
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
