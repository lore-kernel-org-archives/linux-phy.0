Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BC20C77B6D
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYlR6wpCRu7M21izbnKmdUMhHUvcPWXllTlVMPvEJCE=; b=zN2Tf21D65UfWv
	KQZW/N8oNtBrP6seBZ3bxFNGLlj2pt1JTwUQ0ZCDzKpCnGVeagTrlCs2/UbOjOOj8e6w5zv09mtlh
	bg9Mr1eBCp79cmdOzaJ6yOG2KP05oA/t7KqEoHNvrb+HYMd/TrTwBJTqHURpi7sNx4C56MLouipM9
	F9b7dC2V1TfXRNwO5jRefc+0u0rVM7rozdm/Y8ftbwCviLNDxfaOL9p9Adtu531eOgv4TlYp28xfM
	Z9d5tY8V7jel4MnB/qxUboxm1HifnNUAWvL/d3PK/jEqQuthBQe0bNSkZeh3vETgKSJYBlwIDfRAT
	fRTNW7yo/enjFOUJ6aog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7x-003ORK-2P;
	Fri, 24 Mar 2023 02:26:01 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7t-003OPm-2L
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:59 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j11so371492lfg.13
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5u+3+jogp8cfdDK08qvAQaulGryrDrWJaLCRSvsn4wM=;
        b=RJ7/b5p4tHfta4wI9C9bHoGr7Wweyzf962AJtHsqxJ69rVeBpGmvQZ4Rqy5LtnoF6O
         SGlqU+psCmffmpKrePLTbgrHWrUHkuh+BspZm7uDiyl1HhCCWQpnogL7XIx+Uq9HEKzr
         xutz++iY3imfMbUrMMDh3Ug1iDRRuSkK/cYvGkeA+82rViw8mQRa288abU2ellyq7Ol7
         gF8LP1aa4Wmm8zy7HLJ3GalOAibSASQe0mlubZ7SJgTu+Cey3qd2UKQnqO9uTcxiChUp
         H6ftRBiND2yyjZaLIXMxLGojsLEOB3es1aB0eu62pyZzQ2wMpjCDh1dcPZIFax7ohPZ3
         snRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5u+3+jogp8cfdDK08qvAQaulGryrDrWJaLCRSvsn4wM=;
        b=sgFUISuw89J+vk9DTL49SkzXnIt8JWpH/zSsgnQGlYDZC55iIyJXmzbRTsbRRnVoOX
         QtzvjUzP48oY7ndO8DI0Wlzdxp62zhRx3MQ2zPvPxxzITupVDo5WgqJyt5ThpzMjJ/xg
         fiL9xa0UefnK247N0f407IOWQTwPMHb/AzQXDDaxQwpTQLt2lAepFL1jPEEfiRn2LV/z
         JJw/YaSqikuQww9G/GSvM7zCTD3FRna2L1e2NmwbOLEGUjCohr773pPLk3FGtrf4qObN
         l3iPgaLyBcCUHi28rUANCJrnb0eWbI/aU5MVFX+nAL0B/bPOthLU9kDkN5vF2gqw+wvd
         vZNw==
X-Gm-Message-State: AAQBX9eZ27LoHp8IHOWSrv6SkDu9BdDDOJWQQfVG6vM1AP/k2OKFvPrR
	imODeGv4eMvfwW/pfU+DAKPgcq6bou2lTV5MSMn0hg==
X-Google-Smtp-Source: AKy350btoWzM1rQEWztGklnPwYnk8mmWOKpgvxuJnV4qh9aIyKz+OzbwLmAdguBSh1cxSICTCKM3sA==
X-Received: by 2002:ac2:52b8:0:b0:4dd:ad88:ba5c with SMTP id r24-20020ac252b8000000b004ddad88ba5cmr221155lfm.4.1679624756438;
        Thu, 23 Mar 2023 19:25:56 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:55 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 40/41] ARM: dts: qcom-sdx65: switch USB QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:13 +0300
Message-Id: <20230324022514.1800382-41-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192557_766697_0FFBFA8A 
X-CRM114-Status: UNSURE (   8.82  )
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
 arch/arm/boot/dts/qcom-sdx65.dtsi | 29 +++++++++++------------------
 1 file changed, 11 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
index 192f9f94bc8b..87354317b9df 100644
--- a/arch/arm/boot/dts/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
@@ -231,31 +231,24 @@ usb_hsphy: phy@ff4000 {
 
 		usb_qmpphy: phy@ff6000 {
 			compatible = "qcom,sdx65-qmp-usb3-uni-phy";
-			reg = <0x00ff6000 0x1c8>;
+			reg = <0x00ff6000 0x2000>;
 			status = "disabled";
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
 
 			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
 				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
-				 <&gcc GCC_USB3_PRIM_CLKREF_EN>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_USB3_PRIM_CLKREF_EN>,
+				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+			clock-output-names = "usb3_uni_phy_pipe_clk_src";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB3PHY_PHY_BCR>,
 				 <&gcc GCC_USB3_PHY_BCR>;
 			reset-names = "phy", "common";
-
-			usb_ssphy: phy@ff6200 {
-				reg = <0x00ff6e00 0x160>,
-				      <0x00ff7000 0x1ec>,
-				      <0x00ff6200 0x1e00>;
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB3_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_uni_phy_pipe_clk_src";
-			};
 		};
 
 		system_noc: interconnect@1620000 {
@@ -392,7 +385,7 @@ usb_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x1a0 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phys = <&usb_hsphy>, <&usb_qmpphy>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
