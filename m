Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF9FC77B70
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlTIbQANwHLza33+DDBsZloiufdTZ/VqBOLPe3Rv4ng=; b=mKbABCz6vQwn54
	mXx6TFUM0O6V9oBjpvPkfOcumkV+2cnV7ejbMknh6WGx9uQyPoVCsBB/8VisUN7QuIqOdh6glP/p4
	b3aemzIRurnuQL4oVMhaxE+asv0+HCFW45Fy809+xjHM+tTpVZsRDTQraMdEvL3TuzDxD/SiOPzT0
	szvhXwELgoF1BCCIYFSjhDp5jDEvV0g4BVzIpK6FEqiAwL/79b9CxYdBTAYO/qu57FenuWQPVbVRo
	P1/hjWzdrfcHfNdvOXZdkSNV1GfNEAiw4fH8kszZhh09yab9Wrjfa4yp+XbbVKydk8BC4gvNjhDPk
	2sKG3Yo1OKgXVM1nKnvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9U-003Sni-1l;
	Fri, 24 Mar 2023 03:31:40 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7r-003O6V-0w
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:56 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j11so371450lfg.13
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4XY/S7kTufT7DIZAKSTAUPtEARuLNRd/Du9iNT1LCI=;
        b=Jg926t18jK0iJcNXHh7G50/vceNIbwugTIIU4KYtjy5XhJ/3YaoWNyBW6X3JTa5W2O
         0Y7zgMEtMm5MRZbWqX0qVDp/vhwFMGk9JRmCoZ37hyCjc9/3xGSjHl/sIPNdULN4kYy7
         7C7JdEwTxbCpEyVXkssXacW8HGGqdN7P6TFMBj16Vv7/mpWXtpvxh2h+CaeFMv+kFy02
         KgNsJmd5uMp9Vje2R6nYoUtUpvOU0KjfZNqrgfvTzyzp6ks+Qbmzpn+AEt5HRe+cE93g
         NnN6c5BFTg+KVFMBKaLZqyHstZHGRJBInxINRxktmSgeQN5Jq6MpioLW7O1d2iZoxzqW
         toLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4XY/S7kTufT7DIZAKSTAUPtEARuLNRd/Du9iNT1LCI=;
        b=g6NvVFG3Fvn2sIym4BMNzCcNiC5921FPeQt/m3SgiDI9ZRxNoideKdJvZZd0vPSp8W
         TGXcS3qYT91upyYAJ1sEdAlvId0oVrbVQ69PjU7YucS/lx/3A+4VwVSsE+9ziYA0IB5K
         xTAhLIiqjd7D26rLTCvVVeXqKjuM7ySBpiQKW3VobFyxwrJ14KACOC2VuES6VBYwI+zg
         GGeeHlfB8Efo1qR1Mn0Ylhakaeass2dFIV1VyE22nCxvXbweR58bYCZvDybCiq6q3uEa
         PHG3LVPP3Bl8MtsTfAQjpABrcZIlV7n9HYondvcDhQ6opljqYEBJnU+jHY6UyfSQ7Ed8
         4l+Q==
X-Gm-Message-State: AAQBX9cstnhaXZoAAwQFlSWDONDebtbEGjBEIeK2odjj9rzpYY7ifk7F
	S3ixtR7xP/+G1rLyfveosXMYwA==
X-Google-Smtp-Source: AKy350aqrB1K5XpxEGWu2aiZRKpHXyoOSa9nLeJBVbpDK5CRJGE/XRvdrdQFQAUF73w9bxJ/tNBEGA==
X-Received: by 2002:a05:6512:249:b0:4db:38aa:a2f4 with SMTP id b9-20020a056512024900b004db38aaa2f4mr213242lfo.14.1679624754839;
        Thu, 23 Mar 2023 19:25:54 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:54 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 38/41] arm64: dts: qcom: sm8450: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:11 +0300
Message-Id: <20230324022514.1800382-39-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192555_349076_3473BADD 
X-CRM114-Status: UNSURE (   8.86  )
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
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 82 ++++++++++++----------------
 1 file changed, 35 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 01fe1108cca2..e54288e52d70 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -742,8 +742,8 @@ gcc: clock-controller@100000 {
 			#power-domain-cells = <1>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
-				 <&pcie0_lane>,
-				 <&pcie1_lane>,
+				 <&pcie0_phy>,
+				 <&pcie1_phy>,
 				 <0>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
@@ -1767,7 +1767,7 @@ pcie0: pci@1c00000 {
 
 			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
-				 <&pcie0_lane>,
+				 <&pcie0_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_0_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
@@ -1800,7 +1800,7 @@ pcie0: pci@1c00000 {
 			power-domains = <&gcc PCIE_0_GDSC>;
 			power-domain-names = "gdsc";
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
@@ -1814,15 +1814,23 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
-			reg = <0 0x01c06000 0 0x200>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c06000 0 0x2000>;
+
 			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_EN>,
-				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
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
@@ -1831,19 +1839,6 @@ pcie0_phy: phy@1c06000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie0_lane: phy@1c06200 {
-				reg = <0 0x01c06e00 0 0x200>, /* tx */
-				      <0 0x01c07000 0 0x200>, /* rx */
-				      <0 0x01c06200 0 0x200>, /* pcs */
-				      <0 0x01c06600 0 0x200>; /* pcs_pcie */
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clock-output-names = "pcie_0_pipe_clk";
-			};
 		};
 
 		pcie1: pci@1c08000 {
@@ -1883,7 +1878,7 @@ pcie1: pci@1c08000 {
 
 			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
-				 <&pcie1_lane>,
+				 <&pcie1_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
@@ -1914,7 +1909,7 @@ pcie1: pci@1c08000 {
 			power-domains = <&gcc PCIE_1_GDSC>;
 			power-domain-names = "gdsc";
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			perst-gpio = <&tlmm 97 GPIO_ACTIVE_LOW>;
@@ -1926,17 +1921,25 @@ pcie1: pci@1c08000 {
 			status = "disabled";
 		};
 
-		pcie1_phy: phy@1c0f000 {
+		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8450-qmp-gen4x2-pcie-phy";
-			reg = <0 0x01c0f000 0 0x200>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0e000 0 0x2000>;
+
 			clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_CLKREF_EN>,
-				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
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
@@ -1945,21 +1948,6 @@ pcie1_phy: phy@1c0f000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c0e000 {
-				reg = <0 0x01c0e000 0 0x200>, /* tx */
-				      <0 0x01c0e200 0 0x300>, /* rx */
-				      <0 0x01c0f200 0 0x200>, /* pcs */
-				      <0 0x01c0e800 0 0x200>, /* tx */
-				      <0 0x01c0ea00 0 0x300>, /* rx */
-				      <0 0x01c0f400 0 0xc00>; /* pcs_pcie */
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		config_noc: interconnect@1500000 {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
