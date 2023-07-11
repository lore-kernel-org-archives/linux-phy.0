Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEFBCC0015E
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWRkozsCtAYHqFtKPqCNk2P2IQGZb5MEglLywK1RJ0Y=; b=U+VVZk+G1ilBQo
	zPfDtzmsIhygMcUBKERLxM1kuJkdMslMH2gKsguw7EgriRj3t5I6YhyYDeSDFxH0jdSV3fdEAlN6m
	Jp0k2iK2cRGufwBb5wWBuKIzBisp5ftHTkWWFDbj1c4XUYDSZ/7UJ4dLfrs3QYxappQIvO2MshwsG
	h+1BBautcnhk19fpVoxwtCcpqdlH8T/eTDeO97z5cKm4mEejd//sLB6VL1d0E/sV06GF/iar3z2AS
	UZgnmDf6fmOEeV8QkDB1mGkAxxpWoL9lhIzbrh9i5aybWsFbIcILEBQ2jctfLnDDZV/oh9WuTdZ4P
	H77GFc8nuVOFtRppUjgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEih-00FBtG-1m;
	Tue, 11 Jul 2023 14:52:03 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEie-00FBp8-1b
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:01 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b6f52e1c5cso91699201fa.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087116; x=1691679116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=clZXj6gZg4E2arvSnMQsRuKpBAzu3uBnm18+zvu0vw8=;
        b=ea5VGQsvNQJFLvX7bhEYsMQbmcfKL4TJqbbuiLs9Ova/uX6MCpMVtRzk6vs5E6/7bW
         UmdvgWpwj0x/Rxr/JC2TEGrHkFCP0l/oIELASMPOYtBt1d5mqq2FJkZztXpEm58vx5Eb
         atOHKwX2ULFX8CPq6gqvooraeOJWL2KLrZdHKfE58YQgniPFRxxaBnzsTWNRlUY5S5O9
         N9nrSvqmk9d3gEn9wjiJgMez8SCJJdG0byfQXKg8hapEoGTGTnpnnOCErGRXDsmFhYUF
         nNLCv4TzLULTPENdrbj5Gj7E9BheO1iYn26BQmUSVK/+lwQqIJWNPz0ZyLYTxF8wSled
         tYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087116; x=1691679116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=clZXj6gZg4E2arvSnMQsRuKpBAzu3uBnm18+zvu0vw8=;
        b=YoGdYPRxyCKPW9/nGAeXZGpzOT6eLYOiwG52AtxQAxvYUNaDRhS9+Ext1xXjHzubBK
         ZJSs+8F2VOl1ssP0nx1ur+QuO+dq/bOdAEv2SoKPrj64H1ZdQKk4FHm4OzkSwiT3PhcM
         HKd8yx6NoTaqsU1TfGGBDOSqkYI0/OGg9uX5puPJcJpo9gvC8+KkBE76Pzm2uGhl+/Mj
         wLVLjB0e00TiOCT8d5qm6iDiq3ZrR0kOlHWF2MQZDzAnM5pHiXI3PKNyp4iXaVXy+lt9
         lDMvETv2LeysuZGq4/67mvCcxb2oQImSu+Qcs9/QgKKkjzslPeQnDMZY1bRD1mJTL7SM
         FHzw==
X-Gm-Message-State: ABy/qLYnCoDXHDBLkINgvCPGwOrfH+k70p816N0foCRNJXucPApt+aPv
	vw2KdRULm+FT2nW3VOu5WUv0bQ==
X-Google-Smtp-Source: APBJJlH3OPVHYYlrhAscwStdza0gNrI6TEC5lR7qo1xTsN0us3/jJgQoZtd5P736M84dT6qVUhXqjg==
X-Received: by 2002:a2e:9c14:0:b0:2b7:31c:8c44 with SMTP id s20-20020a2e9c14000000b002b7031c8c44mr14037915lji.7.1689087116735;
        Tue, 11 Jul 2023 07:51:56 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:51:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 03/11] arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:45 +0300
Message-Id: <20230711145153.4167820-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075200_543728_C67325C5 
X-CRM114-Status: UNSURE (   9.15  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index de20e62284cc..a2822d7dcd44 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -728,9 +728,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&ssusb_phy_0>,
-				 <&ufsphy_lane 0>,
-				 <&ufsphy_lane 1>,
-				 <&ufsphy_lane 2>;
+				 <&ufsphy 0>,
+				 <&ufsphy 1>,
+				 <&ufsphy 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -1995,7 +1995,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy_lane>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -2048,25 +2048,18 @@ ufshc: ufshc@624000 {
 
 		ufsphy: phy@627000 {
 			compatible = "qcom,msm8996-qmp-ufs-phy";
-			reg = <0x00627000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00627000 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
 			clock-names = "ref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufsphy_lane: phy@627400 {
-				reg = <0x627400 0x12c>,
-				      <0x627600 0x200>,
-				      <0x627c00 0x1b4>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		camss: camss@a34000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
