Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CD70C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 23 Nov 2022 11:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zhqk8+kIefJQv/3qfvYhZ/TI/Qqe9fDSLnNguqNreBM=; b=Q6mWk1ncS475Fr
	6y9StOhr9jcYPPGxVcickQmBp61NlJXjUWYxGkLduM2XT9pt7dOxSyY04/2UmcpIiSbJMjAnoxZ26
	N/5ioXcO/ZbWxqpG+qZydXQM4Ht1kyjTKl46J/AoWC0f3+Be30CekZ15stnFrniYvT3ADRTEibMCX
	3EYYTPBDw+oWubynDQS0NZ6tBCvNyd/pJoF/WKD+k0Rl18+uOASM8IRcEP5+oKjMu+oaRId9EJXzM
	BPbHiNTTvhLOTG6vnLKrISvqaDqpXC8Rt+WY9t0Mvq962NoFeW+7MjMdKlznbhEBWM6CCWf+jwY4A
	ty90qtkRhWOtODs8jGRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxndj-00GYUa-Vz; Wed, 23 Nov 2022 11:10:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxndU-00GYJG-Mw
	for linux-phy@bombadil.infradead.org; Wed, 23 Nov 2022 11:09:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DJbYsescDesnIDrlLOgPi9Av/Ac3g0HEYOKjpTBbqyU=; b=i9wSv3Ab6b6oZkeTLC9TlIw9Xv
	DkN8Ch9zMT8AYYh9BcuyI5FA0LcxYGfS8kgJxlE5n2VXC4gFGQkjuvNUk9lW6e3UdybktwikQud5C
	8zr1XOMt2d4QwXnR4R5WdsqJoq2bwwWwkUqDegKVTyOJty5EUNRtjMw3pBHepkQfF0cd0Gq0SCmEd
	xx2L8zfOm2Xd2G/gVHBdVBcp5ojurqL837RySfKyOgL+hA1EIbIrI3b6CVirNoq8H88tSdxpVwYxg
	q0B2guS9dNSW9+F03g746v8OIud6wnYUq7TUdf9XTbypY7CMEfn6tCCj07yo8tA/W83GdwGnL+x2R
	9jjZNMPg==;
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxnFL-003kyx-99
	for linux-phy@lists.infradead.org; Wed, 23 Nov 2022 10:44:58 +0000
Received: by mail-lj1-x22f.google.com with SMTP id l8so20886246ljh.13
        for <linux-phy@lists.infradead.org>; Wed, 23 Nov 2022 02:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DJbYsescDesnIDrlLOgPi9Av/Ac3g0HEYOKjpTBbqyU=;
        b=sIT2OAglWOl0uyGg1ad5APBZx/YJPRG1zIYq8YM1yF20bJX5wF5FCyVb/F0J7N9MRH
         Qkn6W+6TUSzF8vZUx4YqQH9NCOVlHiRArA1ViHwbdHOO9vS8TH4PhPRFgxMHrG/gEBqo
         zQEsTwdRSt1qk/8XWWNi+keyUZ2Q30JIHTg8CCLaV9zxt7Nv+rpqlCN/BXxqrJBO7NW2
         t6XV0lmo0skKZukNdTYuUs7wlmcFngeoWwjEOpxMCqdfSAVyzKdMdbL76fZIxV6uAt63
         p0imPpN01r8I6bxZgKV9ciXcZwTdEearyeB/ntOlslTMlBQBZNcAwKEnC97kxPWWSzVv
         TRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJbYsescDesnIDrlLOgPi9Av/Ac3g0HEYOKjpTBbqyU=;
        b=YZrX+OwTdaL1ua8r9p1g27yscjPhKsq9FUTeLCDp+DJpiqNmEdxe35LngRdCowbkqD
         7yTepByf8tj7Vel+3GRrfWwxgABrsR+vdf4tp9zylSb3tc5HEwTdEthb03PLzJNQJgZQ
         lO0qG/+X8NwX4sHvAfeP25A1tlZ5fVWlzErnnGUuwHKUUWdfrYCNxtMYjZbUywiyhxd5
         a/gxFb4rz5hj045PlzPkUs/15djbo1OXtj7joAHkwMetRVLpPH0eJXl7z2wVY9/niKIB
         btlflxykF1qH9cUeBoTulb5KKeSao0aplF/vlZKB18zcJtz0tzyd7IRTHyJNTVtliOTp
         4iKw==
X-Gm-Message-State: ANoB5pkH6dGSMaLCC1HE7TUTkqaJAlS9jMHdBuL6cCNO8sTPYSA5qjDM
	s5SpT9jxNwu3cCNcw5LZOwN+Rw==
X-Google-Smtp-Source: AA0mqf5Uv9bg05fy4lh0j2BT1KaTrOkd4O06GGwwxWKcKV52qLAuNZsIxTln3NUweGZhGkOl36Vvpw==
X-Received: by 2002:a2e:875a:0:b0:26e:1d9:c2a5 with SMTP id q26-20020a2e875a000000b0026e01d9c2a5mr8930832ljj.353.1669200288396;
        Wed, 23 Nov 2022 02:44:48 -0800 (PST)
Received: from eriador.lumag.spb.ru (dzpbg0ftyyyyyyyyyyyyt-3.rev.dnainternet.fi. [2001:14ba:a302:5f12::1])
        by smtp.gmail.com with ESMTPSA id be34-20020a056512252200b0049e9122bd1bsm2869082lfb.164.2022.11.23.02.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 02:44:47 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Johan Hovold <johan@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v9 4/4] arm64: dts: qcom: use UFS symbol clocks provided by PHY
Date: Wed, 23 Nov 2022 12:44:43 +0200
Message-Id: <20221123104443.3415267-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
References: <20221123104443.3415267-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_104452_594207_376863A4 
X-CRM114-Status: UNSURE (   8.69  )
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

Remove manually created symbol clocks and replace them with clocks
provided by PHY.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi |  5 ++++-
 arch/arm64/boot/dts/qcom/sm8350.dtsi  | 25 ++++---------------------
 arch/arm64/boot/dts/qcom/sm8450.dtsi  | 15 +++++++++++++--
 3 files changed, 21 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index c0a2baffa49d..935ba6e6bc15 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -699,7 +699,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&ssusb_phy_0>,
-				 <0>, <0>, <0>;
+				 <&ufsphy_lane 0>,
+				 <&ufsphy_lane 1>,
+				 <&ufsphy_lane 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -2019,6 +2021,7 @@ ufsphy_lane: phy@627400 {
 				reg = <0x627400 0x12c>,
 				      <0x627600 0x200>,
 				      <0x627c00 0x1b4>;
+				#clock-cells = <1>;
 				#phy-cells = <0>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index a86d9ea93b9d..553cf451f283 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -37,24 +37,6 @@ sleep_clk: sleep-clk {
 			clock-frequency = <32000>;
 			#clock-cells = <0>;
 		};
-
-		ufs_phy_rx_symbol_0_clk: ufs-phy-rx-symbol-0 {
-			compatible = "fixed-clock";
-			clock-frequency = <1000>;
-			#clock-cells = <0>;
-		};
-
-		ufs_phy_rx_symbol_1_clk: ufs-phy-rx-symbol-1 {
-			compatible = "fixed-clock";
-			clock-frequency = <1000>;
-			#clock-cells = <0>;
-		};
-
-		ufs_phy_tx_symbol_0_clk: ufs-phy-tx-symbol-0 {
-			compatible = "fixed-clock";
-			clock-frequency = <1000>;
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -661,9 +643,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
-				 <&ufs_phy_rx_symbol_0_clk>,
-				 <&ufs_phy_rx_symbol_1_clk>,
-				 <&ufs_phy_tx_symbol_0_clk>,
+				 <&ufs_mem_phy_lanes 0>,
+				 <&ufs_mem_phy_lanes 1>,
+				 <&ufs_mem_phy_lanes 2>,
 				 <0>,
 				 <0>;
 		};
@@ -2147,6 +2129,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
 				      <0 0x01d87c00 0 0x1dc>,
 				      <0 0x01d87800 0 0x108>,
 				      <0 0x01d87a00 0 0x1e0>;
+				#clock-cells = <1>;
 				#phy-cells = <0>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index efb01fefe9c7..95c01391972a 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -722,11 +722,21 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_lane>,
-				 <&pcie1_lane>;
+				 <&pcie1_lane>,
+				 <0>,
+				 <&ufs_mem_phy_lanes 0>,
+				 <&ufs_mem_phy_lanes 1>,
+				 <&ufs_mem_phy_lanes 2>,
+				 <0>;
 			clock-names = "bi_tcxo",
 				      "sleep_clk",
 				      "pcie_0_pipe_clk",
-				      "pcie_1_pipe_clk";
+				      "pcie_1_pipe_clk",
+				      "pcie_1_phy_aux_clk",
+				      "ufs_phy_rx_symbol_0_clk",
+				      "ufs_phy_rx_symbol_1_clk",
+				      "ufs_phy_tx_symbol_0_clk",
+				      "usb3_phy_wrapper_gcc_usb30_pipe_clk";
 		};
 
 		gpi_dma2: dma-controller@800000 {
@@ -3166,6 +3176,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
 				      <0 0x01d87c00 0 0x1dc>,
 				      <0 0x01d87800 0 0x108>,
 				      <0 0x01d87a00 0 0x1e0>;
+				#clock-cells = <1>;
 				#phy-cells = <0>;
 			};
 		};
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
