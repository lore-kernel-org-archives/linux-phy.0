Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E15C71134
	for <linux-phy@archiver.kernel.org>; Mon, 21 Aug 2023 00:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25p/VUcJwRkBqCzfD8y871FopRfCMyrZmfudOLWsdtU=; b=OcrBndDCIUqiFA
	dxFvRXsgH+sQJikCuzMxEC4B2WL5xSXEHUxK4pDNLrqlE7u36xdc/2tYqJTeziah6F4RmVVoT1FdN
	de/FA1Pydv3vIiEs3CP0TL0gkkz298rbYBYwnYA9UXFofcT5zZOaV3sPeolzzTcOpH5HbQUpR2WR+
	txgRI/OKCOkoWqvCoBNL/GHaw4Y1qc1EX4dDVp8x9xab1vaFnIWPFFBC6QsxxaaBHeFvzLTYHZNaa
	XN//5DD1K0kaV9E3STjo+ZXpD3/CCYRzAmE/8eeh15hedCC4Xu6kTUTyJoGsRK7866mz2jRP9YJF5
	J9GTpf7DKpddUpA3T/jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsju-00CjqK-19;
	Mon, 21 Aug 2023 00:25:50 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXsjp-00CjlA-1Y
	for linux-phy@lists.infradead.org;
	Mon, 21 Aug 2023 00:25:47 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2bc63e0d8cdso18837781fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 17:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692577543; x=1693182343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4/HaBQdmop51bI5KAdwerODTyagveuUw1HWmRGvWSw=;
        b=wlo9RC5Pw4N+9UdLx60hmOl8qP9t4gDIgAVFh64s7NYpfodU2DUMKn8oWhLXOtbI+T
         aWHf0pe9E8x8mOpx0oR7XdKSWB+k0HBIZv25CUxxwJHmYVCQrDdYd9gDuP7t45AEyjam
         1YWFl9sZJV0PxT7zfsicdqwcufgzRbZLngDr/w3JRsiJq0SQLFbPSEU2LT0pV9FABtlI
         Le9SCV+4BAIm53Jmynq37At+RQ2T3HI0AbwvMUm0vmn3dE1PKIk1OWdnwUgATdoFESGn
         1iGWU5S6zF6MC1TL4SysLCZf0kDBGOEdZ5qusVajJPNQQmZMWV9FWIvDZc/C/ovGRmHZ
         +j3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692577543; x=1693182343;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4/HaBQdmop51bI5KAdwerODTyagveuUw1HWmRGvWSw=;
        b=QI8uoKfnmaNaUOQVzasMccJrBQgHOd6wXhbtdsKl4TXZXssJO5Z8JMJIIqtHKv2p5t
         ZzSzrx2QED4HGnSZYq4GtfxsUlRyHOiDejz4np+0KJCUlU7ajnLz+M1EJTh1KoM5CQX6
         4S1hR7WuF4PhglRDba+TziFtgJBzxY/AgjIhYku9cjQQnWpUH6fHJg3nXp7w9kojvfLt
         6lXaZSpQfEXcVQkpGu7ayrbEWFQOcThUtYH30/0AdNze7zHhsq5/qXYDJkE23XQOraqZ
         uHapH94PPc5nbjUdpmzqbHyKYSRgaw10809va51XDU+y1FLzou18RaLlMHBzekNXQzVT
         aQvQ==
X-Gm-Message-State: AOJu0Yzh/sF6/gQrjRyFw0sgWd2Ne4ackX3qW1DHp7IBWC2iIKKHhlrU
	Fcq8OZJWVhGsLDI7220rZFnYaQ==
X-Google-Smtp-Source: AGHT+IERRVw6eS1GUmkiR9vYnwpN2u4fy9TJ3oTYmHxlgW8lVbzQXfuKkV6QuzKAkcoeXcM11OBP8A==
X-Received: by 2002:a2e:9658:0:b0:2ba:8127:a2c3 with SMTP id z24-20020a2e9658000000b002ba8127a2c3mr3719210ljh.34.1692577543533;
        Sun, 20 Aug 2023 17:25:43 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h27-20020a2eb0fb000000b002b6fe751b6esm1964923ljl.124.2023.08.20.17.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 17:25:43 -0700 (PDT)
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
Subject: [PATCH v2 08/16] arm64: dts: qcom: ipq8074: switch USB QMP PHY to new style of bindings
Date: Mon, 21 Aug 2023 03:25:27 +0300
Message-Id: <20230821002535.585660-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
References: <20230821002535.585660-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_172545_519297_C2ADEFEF 
X-CRM114-Status: UNSURE (   9.71  )
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
 arch/arm64/boot/dts/qcom/ipq8074.dtsi | 76 +++++++++++----------------
 1 file changed, 32 insertions(+), 44 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
index 3350804a2f62..e113f5eec8e6 100644
--- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
@@ -125,32 +125,26 @@ soc: soc@0 {
 
 		ssphy_1: phy@58000 {
 			compatible = "qcom,ipq8074-qmp-usb3-phy";
-			reg = <0x00058000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00058000 0x1000>;
 
 			clocks = <&gcc GCC_USB1_AUX_CLK>,
-				<&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
-				<&xo>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&xo>,
+				 <&gcc GCC_USB1_PHY_CFG_AHB_CLK>,
+				 <&gcc GCC_USB1_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3phy_1_cc_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB1_PHY_BCR>,
-				<&gcc GCC_USB3PHY_1_PHY_BCR>;
-			reset-names = "phy","common";
-			status = "disabled";
+				 <&gcc GCC_USB3PHY_1_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb1_ssphy: phy@58200 {
-				reg = <0x00058200 0x130>,     /* Tx */
-				      <0x00058400 0x200>,     /* Rx */
-				      <0x00058800 0x1f8>,     /* PCS */
-				      <0x00058600 0x044>;     /* PCS misc */
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB1_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3phy_1_cc_pipe_clk";
-			};
+			status = "disabled";
 		};
 
 		qusb_phy_1: phy@59000 {
@@ -168,32 +162,26 @@ qusb_phy_1: phy@59000 {
 
 		ssphy_0: phy@78000 {
 			compatible = "qcom,ipq8074-qmp-usb3-phy";
-			reg = <0x00078000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00078000 0x1000>;
 
 			clocks = <&gcc GCC_USB0_AUX_CLK>,
-				<&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
-				<&xo>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&xo>,
+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
+				 <&gcc GCC_USB0_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "cfg_ahb",
+				      "pipe";
+			clock-output-names = "usb3phy_0_cc_pipe_clk";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_USB0_PHY_BCR>,
-				<&gcc GCC_USB3PHY_0_PHY_BCR>;
-			reset-names = "phy","common";
-			status = "disabled";
+				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
+			reset-names = "phy",
+				      "phy_phy";
 
-			usb0_ssphy: phy@78200 {
-				reg = <0x00078200 0x130>,     /* Tx */
-				      <0x00078400 0x200>,     /* Rx */
-				      <0x00078800 0x1f8>,     /* PCS */
-				      <0x00078600 0x044>;     /* PCS misc */
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clocks = <&gcc GCC_USB0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3phy_0_cc_pipe_clk";
-			};
+			status = "disabled";
 		};
 
 		qusb_phy_0: phy@79000 {
@@ -628,7 +616,7 @@ dwc_0: usb@8a00000 {
 				compatible = "snps,dwc3";
 				reg = <0x8a00000 0xcd00>;
 				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_0>, <&usb0_ssphy>;
+				phys = <&qusb_phy_0>, <&ssphy_0>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,is-utmi-l1-suspend;
 				snps,hird-threshold = /bits/ 8 <0x0>;
@@ -670,7 +658,7 @@ dwc_1: usb@8c00000 {
 				compatible = "snps,dwc3";
 				reg = <0x8c00000 0xcd00>;
 				interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&qusb_phy_1>, <&usb1_ssphy>;
+				phys = <&qusb_phy_1>, <&ssphy_1>;
 				phy-names = "usb2-phy", "usb3-phy";
 				snps,is-utmi-l1-suspend;
 				snps,hird-threshold = /bits/ 8 <0x0>;
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
