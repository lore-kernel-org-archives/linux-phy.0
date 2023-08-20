Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29FDEEE49AA
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MygbJ/KUJlmg8R/xw8dJzDwg+bwGp9X0M+DxB2jsAf0=; b=ZiN2y2RHL4vIs2
	Q+wE+uX6Ja+Um0ExONNe+6FyrMfSVMXUr+6jrlENJPowVqKuZi7sIMtZZKiyeYeXpk3q95XymGTZa
	VpT3RW6wSQH3Rl7IuVxSL5Q0Lg83kZTm9Hmzz4qGwXnQb+AiBPq4HgTl26SOYFNF7OsLMObrMhDLQ
	80+o0EpYZb1s3T1Yiy9dxc/y2Mgtulr96P3fJxS+VKX/lODDVau9YQzu8ykRfTP0nT7T394nj+hDa
	f/iuY+ZP/Y8X52aGutx6vfrk2pLUMmS1b8q6AFGrnyFeP54laeZvf5ImkcGYdcKU7AVO/06hhvzMm
	ShorCopV3q3BW00OQQ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIX-00C1Ec-2p;
	Sun, 20 Aug 2023 14:20:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIW-00C1E0-3C
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=R2wAZnzozgZS2m+7E0rV1LFIgix4ulJg0Oc1jQA+SEE=; b=Pn+3/yn1bt3Yf9e+fEnRR4jjcb
	zcCOeKNcXGZu1pdUvoqK/NbuhpD2ItT3TB4z0RF8DWG7Y7FOSiUhIF/MRg7u85FWn+x8hyKR3ul7X
	m6qcts1co3ojGXPa6MJL0jKUtBddn6SXbAXMocxzRACP+MQ1tkzSyM4KA0xWL9iXreF/PT/vJBTTf
	RQYAIkwGRGnJQT+X9gxgQqxmIgN0TXEv4Bixd7tRgFcu1AQ15u4YdaOTJEFSphlPcZA+Zl8BdlhWc
	467nRYe8E/O4JgJXdwgv3tZcqfrbdIsqCcy71Kl03mjNXrm+XmCaj8Ms/86FyPWe/h/2nBNWdkM2F
	U3h1Uqjg==;
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIR-000XtS-33
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:55 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so40208281fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541250; x=1693146050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R2wAZnzozgZS2m+7E0rV1LFIgix4ulJg0Oc1jQA+SEE=;
        b=GkxDssaVa7OEGbQHL9TrnaKqrioE3CLTxsa5dl9VuQhtsIk+asSmiVAV0JT5I2p3W+
         tqkCKbaJdI1PalOFfhr0QOU6vMB5RM7ZE6tb1ebKIr9/X72Wv6TD+A2abqfW3jto0qBE
         isn6quHSeG8lgK8aXC6NW2In5aFohIkHYPJ+/i1eE79M4lcumxojDbco+1Pfj0+BB6WA
         SPUN+TgLEJGlRTMKelZR1RHW/M/MKD4AVCnaMKbMqglVyl80PvT/7bAR7K9bnromwUdC
         It8XvHzJDWOaVMcIN+fairy72KC+VhPK/JMS13bvqwNVhnBk9/dFUutiWEb+NCPosV7y
         I/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541250; x=1693146050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R2wAZnzozgZS2m+7E0rV1LFIgix4ulJg0Oc1jQA+SEE=;
        b=OqhDs8lBERmqDirPSp2xNGEhfCW3yzkGoVV/3RONwsSMwXGXY5I8K7pSMWOq8F5DgR
         vcMRmKUhbcckcv14roEb0TUvmkfrsO/A3vPUn7y7jN17gb7ePLwSFS0R1Htdxro//bJM
         RsIt6DVZlCWIIncfZhwsWddRYX1SdgxtO4k0S+T8TsioyEXJlvayHrv1lX07OKtCrVLa
         5VYnazD+M0BQTONblwciW06RUo4+pKZqznPRetFm5050QwRxcGrvU21mKJg2Iz9/0Cqp
         D5+STSohxgj0+pp/V3izP0zY0c0XVsRHp2MzjmQ/xv1lvo+EtkobVxxEXfS0n+SVMCLQ
         gEAw==
X-Gm-Message-State: AOJu0YxOZWWcpRAglNwXH5/B7v0m5JQpwhPi9xMRPgsQmWUeyaL0lQ9F
	CpURn/Yg19R3tDOqplI+DKPX8Xh6bR0Bg9rfCB8=
X-Google-Smtp-Source: AGHT+IFE6vp6WbLUrxGRPms5cohojLvDWvJEcn21voOX8vx6Tw2dJ0AAmR/nQ1b8BmuaHtqXvHWfUA==
X-Received: by 2002:a2e:b0f0:0:b0:2bb:be03:4599 with SMTP id h16-20020a2eb0f0000000b002bbbe034599mr2770226ljl.11.1692541250695;
        Sun, 20 Aug 2023 07:20:50 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:50 -0700 (PDT)
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
Subject: [PATCH v3 16/18] arm64: dts: qcom: sm8250: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:33 +0300
Message-Id: <20230820142035.89903-17-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152052_097735_91097415 
X-CRM114-Status: UNSURE (   8.85  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 112 +++++++++++----------------
 1 file changed, 45 insertions(+), 67 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 1365052e0a13..abe39b0470da 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1899,7 +1899,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			perst-gpios = <&tlmm 79 GPIO_ACTIVE_LOW>;
@@ -1914,15 +1914,23 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8250-qmp-gen3x1-pcie-phy";
-			reg = <0 0x01c06000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c06000 0 0x1000>;
+
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_WIFI_CLKREF_EN>,
-				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -1931,20 +1939,6 @@ pcie0_phy: phy@1c06000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie0_lane: phy@1c06200 {
-				reg = <0 0x01c06200 0 0x170>, /* tx */
-				      <0 0x01c06400 0 0x200>, /* rx */
-				      <0 0x01c06800 0 0x1f0>, /* pcs */
-				      <0 0x01c06c00 0 0xf4>; /* "pcs_lane" same as pcs_misc? */
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-
-				#clock-cells = <0>;
-				clock-output-names = "pcie_0_pipe_clk";
-			};
 		};
 
 		pcie1: pci@1c08000 {
@@ -2006,7 +2000,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			perst-gpios = <&tlmm 82 GPIO_ACTIVE_LOW>;
@@ -2021,15 +2015,23 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
-			reg = <0 0x01c0e000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0e000 0 0x1000>;
+
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_WIGIG_CLKREF_EN>,
-				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -2038,22 +2040,6 @@ pcie1_phy: phy@1c0e000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c0e200 {
-				reg = <0 0x01c0e200 0 0x170>, /* tx0 */
-				      <0 0x01c0e400 0 0x200>, /* rx0 */
-				      <0 0x01c0ea00 0 0x1f0>, /* pcs */
-				      <0 0x01c0e600 0 0x170>, /* tx1 */
-				      <0 0x01c0e800 0 0x200>, /* rx1 */
-				      <0 0x01c0ee00 0 0xf4>; /* "pcs_com" same as pcs_misc? */
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-
-				#clock-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		pcie2: pci@1c10000 {
@@ -2115,7 +2101,7 @@ pcie2: pci@1c10000 {
 
 			power-domains = <&gcc PCIE_2_GDSC>;
 
-			phys = <&pcie2_lane>;
+			phys = <&pcie2_phy>;
 			phy-names = "pciephy";
 
 			perst-gpios = <&tlmm 85 GPIO_ACTIVE_LOW>;
@@ -2130,15 +2116,23 @@ pcie2: pci@1c10000 {
 
 		pcie2_phy: phy@1c16000 {
 			compatible = "qcom,sm8250-qmp-modem-pcie-phy";
-			reg = <0 0x01c16000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c16000 0 0x1000>;
+
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_2_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_MDM_CLKREF_EN>,
-				 <&gcc GCC_PCIE2_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE2_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_2_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_2_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_2_PHY_BCR>;
 			reset-names = "phy";
@@ -2147,22 +2141,6 @@ pcie2_phy: phy@1c16000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie2_lane: phy@1c16200 {
-				reg = <0 0x01c16200 0 0x170>, /* tx0 */
-				      <0 0x01c16400 0 0x200>, /* rx0 */
-				      <0 0x01c16a00 0 0x1f0>, /* pcs */
-				      <0 0x01c16600 0 0x170>, /* tx1 */
-				      <0 0x01c16800 0 0x200>, /* rx1 */
-				      <0 0x01c16e00 0 0xf4>; /* "pcs_com" same as pcs_misc? */
-				clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-
-				#clock-cells = <0>;
-				clock-output-names = "pcie_2_pipe_clk";
-			};
 		};
 
 		ufs_mem_hc: ufshc@1d84000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
