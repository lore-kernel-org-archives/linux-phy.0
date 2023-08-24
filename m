Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E059C27C40
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 21:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25p/VUcJwRkBqCzfD8y871FopRfCMyrZmfudOLWsdtU=; b=hsoFUoKtfVtBa6
	ciXtMYaIgTGzFKuI+fz1cQnjY7qwGrrNO4xk73xIoZiruO9jWb3FG6CFp14nZpiXCxw2YCue5lpyC
	N7xAA2BQyyI0DIc6ds1Zv1wShUnMVpFSbH0uwshi5bj3Ng8maPtN8dXLKjFUfr2lnbf9IWph+qVN0
	xg5ZYZSGlYZ/yySdO0IqXT1j/QKRQw7nYuhaGSPgRoWUQuBRcxW4mdwsPuQBAr0xW1meUBeNmEuXR
	NYpjusW3MQonJP1WAijKUOpY8YIdTgRgK2VywiLd+BvM+72AEjLuw9FyHeX1oGEhgC7Yv2a5sIV/e
	cT4bERaxHdw9Euwn6peA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkN-003otw-0E;
	Thu, 24 Aug 2023 21:20:07 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHkI-003on0-0D
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 21:20:05 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5007f3d3235so360401e87.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 14:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692912000; x=1693516800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4/HaBQdmop51bI5KAdwerODTyagveuUw1HWmRGvWSw=;
        b=xGg3ECOhpPNdOxz+2WJe/XFKW15owi51pUWdjauluWt0m6O6If2OQzZ5TfZ3eBdtiX
         Ap5eVyDHZv5SLatgVnX2yAOuatH5nJbGPbHLTc0nGziP+ygkWxtM0zJZrX7VtX1IV0o2
         smqVUKKqD/7tgSZfUxKdqP4lBRpv6Sv6ymEIjOwHHgVGOUDLz6OL4q8mAH9+lJBWvnKp
         Uye+2wFu3LsVIdYpPhNmiiI2E2SfYsFAPOTiLQ1gL3pxqO3/2yAAy2LydqF1po/ACp7O
         AxPs3qzK+XEd96NWPHEmA0dEUUqKvo9kiBDhBYaMybwRGUyAT9hlYDGlflpgBfRvFe2F
         lhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692912000; x=1693516800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o4/HaBQdmop51bI5KAdwerODTyagveuUw1HWmRGvWSw=;
        b=kTMC1gUZeH63pkteneB8Z66SZ7mar9P5yLH5RdvfFoAyA+H4ByJ0pCQ2mUNOHu7Dwd
         7aWPjcBm68tWr+Gr/aMOO47/QZK2ORG6YSHs1RyoiX3guZ0P9sPvUB5+2EGb/kfVekvh
         Amom3V/W52GgPVPQuSIpiDMoL9iZcB7fv1+zujkJh//zfidxzEbZDLWatu+HqubYXqVo
         +QiPASDgm9gh89uUoGK9gKFKgksOT1hDayo4Q1tXwFXak7e9zmH2y/1OuFzugDvjgGsp
         3cxCgeovDC90PltD+nEYRyfeQ6iwM0gVaRpExb//Xvl+hnCbq3C3QsBpVV8Yx6xZ6jRt
         +wKw==
X-Gm-Message-State: AOJu0Yx3dWCO/pQB0DG5Yz0yyjvwsQ4k9RkVIPafD4ERnRRWTd2HzZmD
	H1eQF07JFCDbsNzjzjuIM1tQDg==
X-Google-Smtp-Source: AGHT+IEwIdj5aiNTBoZCRdVHgEIMB5N+PRsu2Y+JbGrKxRF8A7/Y6IEdkffhPxxvBMPSQp6+twXqWg==
X-Received: by 2002:a05:6512:ad2:b0:4fe:4f8:8e75 with SMTP id n18-20020a0565120ad200b004fe04f88e75mr14330790lfu.68.1692912000739;
        Thu, 24 Aug 2023 14:20:00 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j29-20020a056512029d00b004fe4ab686b4sm17690lfp.167.2023.08.24.14.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 14:20:00 -0700 (PDT)
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
Subject: [PATCH v3 08/16] arm64: dts: qcom: ipq8074: switch USB QMP PHY to new style of bindings
Date: Fri, 25 Aug 2023 00:19:44 +0300
Message-Id: <20230824211952.1397699-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_142002_287681_ABF3E269 
X-CRM114-Status: UNSURE (   9.80  )
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
