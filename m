Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25B27C43217
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 15:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2g7wWEYeUv4bbWl+HBn4LyFOznrRTSB3ma1Lj63h9x8=; b=n/GY3T7obzCT8L
	5QKURyGM+fEizepWWQjdVyz49m/9Gqiur2hYVvLLG9iP0a030bo/gCxs4+Psif8t3Vv3vNls40EC3
	qXBl1Wa51FM6w09HGstiRnRk0XU7/vupe7NGAt1zhxN32+sBRa0hFSmYmI0MSi7bqi0su+HYujzgi
	Zt+6fhYAYHikUCSDuFLxZl/yHzojEIK5ptEwv4S68gSqCvNbucuszFHyarOILcKP9ns4lf2oKPl0x
	pflmGfuqyEzJbKTQJr9yCX40/zenFZ65j0Bp5EZ9tZfy4LNUOBNN5ql6+A+xo7jZZX2EVqMCdM5WG
	IaNyPKavGARil0fV8pgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JV-006gHb-E0; Thu, 10 Nov 2022 15:17:57 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot9JS-006gER-Ri
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 15:17:56 +0000
Received: by mail-lj1-x230.google.com with SMTP id b9so1386133ljr.5
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 07:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtplPWhl0am0iTs1s0a4EgsN8KYFRyCRiL1FwQXo6jw=;
        b=d3vN8e+52vpBABKHE0DUydfrjrEKxeKzkpdLDosLTA9JQaoFh1H/vXBp9Kyj7CBtxC
         lvaj29kcdEndblItLdZjm94z6ENqHLK6H99b/KYEREz9ifzWV/Tn/KiMeGBBUjW+uUaV
         CfqGVaahouIVFUs+Z/rpkIrB8xFQ687gX1zkOv3zqBYc5Ac4Qv2cCj4XPE0BQOszcHYo
         /pwY8HexiP9hhdb38rr/CmNDRfLiT1u8bKNxMNXVx0h2I0ga+zMFSEaUS0qc8M/VW+EN
         3ty6HVIpTaOhfiLmaysb1bxn7/DAHi5fuuQPw1sIAX2L35ilv696y1CCLzF+jl7dro/1
         xrZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LtplPWhl0am0iTs1s0a4EgsN8KYFRyCRiL1FwQXo6jw=;
        b=U97gGiKTK3+QLU6/XDWg/dCjjJ4fE5MSw2Gd1vVJ2tXiA/P5n2Z/oXS2HVnghcjwht
         sSTTwjEaP2CAbu0n5aRsM4KLWn3mt3BVDtaRIObDxTqiq9he6fHsXyS+xSsHATEI+zro
         H6GDn2uAm3/WvdAQn8VLMtiQHbtg9ssvyFUDNekawyO6d8hecJcuvJK7JZNmtjmG4Vji
         wg0/haVFm6AShiwW9t26EoXsqumMufJwcmkICgthY3d+ST9R3LASofDCXiT2rMlyA19J
         UG/L+XbMtESC7GOnEQRuhtDtW5ci6yjT9o4qfWJEmgnMWkKDOb/WqktQk2phuVk/pPSl
         t25Q==
X-Gm-Message-State: ACrzQf1g3viA8WGvGBvmkyzlK0DVQLacNhJdletVLujnTJqqXB8J4b86
	gPqWUl5tFFdFSQn0iEdxKkdsFCsq7MAvfQ==
X-Google-Smtp-Source: AMsMyM7pgu5y4nnkz0dgtPIpEynTqwXqjBIx84tCp8pJgQfBPZvnA2gVPYySltm/4XvH04tL/yNvjA==
X-Received: by 2002:a05:651c:160d:b0:26e:90a5:1521 with SMTP id f13-20020a05651c160d00b0026e90a51521mr9259566ljq.39.1668093471866;
        Thu, 10 Nov 2022 07:17:51 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id p22-20020a2eb7d6000000b002774e7267a7sm2719591ljo.25.2022.11.10.07.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 07:17:51 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v7 4/4] arm64: dts: qcom: use UFS symbol clocks provided by PHY
Date: Thu, 10 Nov 2022 18:17:48 +0300
Message-Id: <20221110151748.795767-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
References: <20221110151748.795767-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_071754_945654_9A524DEA 
X-CRM114-Status: UNSURE (   8.87  )
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
index 90a26f406bf3..51ca006dc5c1 100644
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
@@ -2389,6 +2371,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
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
