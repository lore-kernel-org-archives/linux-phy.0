Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01AFDC761AF
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ij4yIwC4DQCh4PuVh0/PrhjUO2aWS2h+CdnD6yAoz6w=; b=udB5TPzI+Dg2Ct
	9FP4QsiPFMP6LsIHmQ/8lMLmE4cA7Km3RyDkyFOgd1e5JfbxQIIh+koqZYiWN5LbYSgXdQAAMorHd
	n2M2ahv2pdr8QY3eIn5lrG1n7+YOWYCHrZOmIJYkaqK8ngt3pTelI6vUuLN49hFxaBpmVfaBRBzWL
	nguCPNAsRtC0fGXT+6W3FGPvWOqb9n28U8z8FOE9R1A5fgUPbC9NoHbGrnhkqB/vmUdlAvVK4ayz1
	H+vcejO1CWWMF6DoicDziXzyevIdRgFDcj2FIevkrGXHzywmm0zi/TRfSDzxq+PR/wgRb9ooykfPB
	vIutDYYye1UL5QhtWdhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7r-003OPJ-2A;
	Fri, 24 Mar 2023 02:25:55 +0000
Received: from mail-lf1-f52.google.com ([209.85.167.52])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7n-003OKw-1u
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:52 +0000
Received: by mail-lf1-f52.google.com with SMTP id h25so403468lfv.6
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UzAlHITCzklZyxH5QcsRxcmP4Hg72quJXAG7V+AqE4E=;
        b=YmvW1PdwnFkU2QcwpqJGZqEE0NluH29HCIwLYuS1Iv+NwDuTYE5/+syv+DGegYjbK3
         1XhEvprOztgY4iqeFvZF2KbT9I4FG7ydwMl1nuh92zPDqVSF2lEgENxAKktUmRteqcK7
         q5tlXGk4LRldz7iJmW/53vZmrAyDscppc+kRcwWAzxr/hPFldb3tYJJ7MToaQM66uanN
         ni4ttzfgF6/FJFNZ0nrCJGaJrLU0TFlX+Ld8e6qz3p9pcW+tmF1yfARYu811s4IOvhGW
         F69zJaOzJeMC6mZv+nPPz3n1ozJx5prR3J8JQtPxNIsWDN3faDEg0QvrDNQM4JWz6Odo
         XR5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624751;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UzAlHITCzklZyxH5QcsRxcmP4Hg72quJXAG7V+AqE4E=;
        b=TUg8OmxUf6pjsBggBegi8kp5uV9fG44mUWfSAs2riElTfOCijRiCu+HBTW3ArC/O6L
         kw/Un5oATLBwkKd+e1HUxZh9/+VI8MYN96L1PJrcRycnz/mi13YvH5QHfA1pFfMdvAS+
         5invnfn1oT5yim9OlKxwTppCHFcE4QQBr0O8ugXg4fO/hEJn9AC6t2AfjjyRVBuYnFv7
         Nokme9/UQjDVznPZ3Fg1NuTxWBKCTll1+Q8RlvsVb2kiaacyOFbnqD/8Ldi/0W+xniWd
         Rru+5ykil8sR5b3yOQCKuhkcvnusZJgv3IzVOtVWqUz9XPdvmnpJji/1VWi1Tyy8VDFo
         xbtQ==
X-Gm-Message-State: AAQBX9fXqn+mYwdX08iKPMZTO60Sj/PzfcAcFLAi4VllMMtiE7XbRtvn
	0+1D6hi958rkhPhfURciFRFGTQ==
X-Google-Smtp-Source: AKy350aZXDg/IZHtl5Lo+f1sU+zl/bL4NvL4UWTc+CR+h7VOWySDmVRzzhZevn7Y2tYf0g9IfqKC6Q==
X-Received: by 2002:ac2:46f9:0:b0:4d8:57dc:fcdd with SMTP id q25-20020ac246f9000000b004d857dcfcddmr199460lfo.56.1679624751163;
        Thu, 23 Mar 2023 19:25:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 34/41] arm64: dts: qcom: sc7280: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:07 +0300
Message-Id: <20230324022514.1800382-35-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192551_642508_04BF44FA 
X-CRM114-Status: UNSURE (   8.06  )
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
index 62885ac3f11e..9d28b087c47b 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -848,7 +848,7 @@ gcc: clock-controller@100000 {
 			reg = <0 0x00100000 0 0x1f0000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>, <&sleep_clk>,
-				 <0>, <&pcie1_lane>,
+				 <0>, <&pcie1_phy>,
 				 <0>, <0>, <0>, <0>;
 			clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk",
 				      "pcie_0_pipe_clk", "pcie_1_pipe_clk",
@@ -2099,7 +2099,7 @@ pcie1: pci@1c08000 {
 
 			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
-				 <&pcie1_lane>,
+				 <&pcie1_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
@@ -2133,7 +2133,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc GCC_PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			pinctrl-names = "default";
@@ -2151,15 +2151,18 @@ pcie1: pci@1c08000 {
 
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
@@ -2168,21 +2171,6 @@ pcie1_phy: phy@1c0e000 {
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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
