Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 769C4C41513
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hPR96KY4b4LKdNlUVCdcs3+5jSbItSQ0lcZzt/VvEc=; b=rN6w0cEN/HCxP+
	xF6/LOrDXm2V+VOFBCWjzQAfRQs8EqVzJaHnfvsrxIV+b6XNGUr1lHYnSMcWAqlVldD6wvUR15h7t
	xRj3UrI/ZURlwYBdBUaQFiLzXPmp2Xs6F74ZUN12HFlRiT/lRevoZ1jD1Wh2j6zAmU4tBIWou/iBS
	1SEm3FO3giUrq7lNHsJ1a4hWouTf6YKcWadeKK6uI9deZdfDidtfG6CO4VZ6B2TSCX7+eyVS/KRFu
	DsTpW934WDH78PHrJd+YELyMlAiqAnf8b1pAmeYTwkzv6cH3xjtWrFJv9PmYdeMnVdH2xOlN3egH/
	G72uxLcfUNzUNuqBJK5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbM-00FCYO-0h;
	Mon, 31 Jul 2023 10:58:12 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbJ-00FCUy-0t
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:10 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4fe0d5f719dso7156953e87.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801086; x=1691405886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LyJ6vN52wQKM5BCOGMC9JTMJfW780r1LjA8D9EV6WwA=;
        b=xRbb/tB1Kfy8v5YF3KhETZhE5BaX2iI8AIZ6jm/rYxPKOUi245ecXAnNKjH/NNcjF0
         l90z+SPz4OKM50GFBEYi3/J8zYxMNpKiwqRptOdnSOZd0jrHJvPlTDlcloAcGLs6wyIW
         NPu13YPsb2JPy4swXMCmvUlQYkF/kkf8geoC2m/5N7ria79L47wtb1bBviSa/K8d+obi
         q29JBmrCsFcxKPEiatRq3YkVre9gp8MLTTtfXpN+PN0hspPc7iwf22XZJb231pF3M5YV
         dSqI73k0NboKANkYaulcz7y6UmlBaJwM8XynHtm+Axf8RrrmUcmxkfdDdBxMbKGgU+6H
         XgnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801086; x=1691405886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LyJ6vN52wQKM5BCOGMC9JTMJfW780r1LjA8D9EV6WwA=;
        b=juNNSy15AK2YcEk0Ci9dgYCa3uKHuO2iK+t/Ipov5LSTXH5cuhMr8GaP66hxfZ8nUh
         SjieDBfWkERF91rikuswMvPnYSlLjONXpZsiajhTcrGOiSl1kt8P0+nBOo9+hXRM4YbC
         VWbp3qm+R97PY43XStT+tQpVS8/ADBTLM6Qp2s4/30fTkWwHSC7hJ43cy9rqtYdhDSJm
         cMpXYjjdE/cBOQYZ7kuMnE3iJDYOk0F1XOcKCbJnAn5RJJCtKRkkIMUY7BGKDP7v3r55
         iJqkaJ6buPi5IyH/qzFCBkv0gIR6xs27AncBc+Twqs731Y9RVhmdBywkb2qNw2T+7UeK
         zoFA==
X-Gm-Message-State: ABy/qLZHdAFpVryNmXsYIaJB/Z4ayDz7NTlahdidm3GYH5cWXkGkQhPp
	cSWAXumuJJLzfJeFAIzcJeBkEA==
X-Google-Smtp-Source: APBJJlEfcIjxYiM11hOPD/wZUFmD7nkJyQKj2d1hluxV5cMGllSxfiIoPs06EnIH2tWiYW6gj5AgSQ==
X-Received: by 2002:a05:6512:340f:b0:4fb:8a90:396c with SMTP id i15-20020a056512340f00b004fb8a90396cmr7030669lfr.38.1690801086294;
        Mon, 31 Jul 2023 03:58:06 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:05 -0700 (PDT)
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
Subject: [PATCH v2 07/13] arm64: dts: qcom: sc7280: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:53 +0300
Message-Id: <20230731105759.3997549-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035809_314699_CB1EEBF3 
X-CRM114-Status: UNSURE (   9.29  )
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

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 36 ++++++++++------------------
 1 file changed, 12 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 4353f7265877..670092731c6c 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -869,7 +869,7 @@ gcc: clock-controller@100000 {
 			reg = <0 0x00100000 0 0x1f0000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
-				 <0>, <&pcie1_lane>,
+				 <0>, <&pcie1_phy>,
 				 <0>, <0>, <0>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
@@ -2121,7 +2121,7 @@ pcie1: pci@1c08000 {
 
 			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
-				 <&pcie1_lane>,
+				 <&pcie1_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
@@ -2155,7 +2155,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc GCC_PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			pinctrl-names = "default";
@@ -2171,15 +2171,18 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
-			reg = <0 0x01c0e000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0e000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_CLKREF_EN>,
-				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "refgen", "pipe";
+
+			clock-output-names = "pcie_1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -2188,21 +2191,6 @@ pcie1_phy: phy@1c0e000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c0e200 {
-				reg = <0 0x01c0e200 0 0x170>,
-				      <0 0x01c0e400 0 0x200>,
-				      <0 0x01c0ea00 0 0x1f0>,
-				      <0 0x01c0e600 0 0x170>,
-				      <0 0x01c0e800 0 0x200>,
-				      <0 0x01c0ee00 0 0xf4>;
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-				#clock-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
