Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A1E4EE49B2
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FMd0sBs/EQU5jcUAPS0iuIycG47jLz8iSjOgBXwafbg=; b=E6nzMIln6WqGhO
	4Twd/ubX2+tDoVem6lYDNCwbfVvIfJsdfQaqSleK/LByQ23eyQl1XLD0h78W09EimtgbA5ytePvyA
	ZTv9LRjtToPrTWZ64BFx1yx7fudXOz8IZshRHXm+XmvcXPFJSUdiIwxORiUVmhUn655T/8560Y1TJ
	HhxruIMrCb7/O4qxfjq9GgJPgKziqVz1eHMy8P5lE48TB8xyfWyejzUm5Ub+/Jf9FmMBE58AQ4zUK
	EX3lpqHWOBclWHkyhSJnZI/ldk4/npb4WmuDsCnn2+frAVx8PnCgFmRaBMkGMY033pEwfOPVLTCXZ
	ANvqcKC2329EoLXjQNrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNY-00C6kd-2k;
	Sun, 20 Aug 2023 15:30:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIX-00C1EF-0z
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8eQmKcwqlABP7sbOZ3MAdBNQtcUV0kJSVTTA//1gMuM=; b=kG13cpQmPA+xOQsiqzdDkOfasP
	f1zRySEjt6jb+0AZjk2yAsRUC/9cnM3dzC7EW9YkqrpP/XcHL7vqQWS+Rt7SyTnErffSdIKDzTB66
	AU60kOw/lmqh+YpPS3zxkzvjpLGD6V8KYgMsSSiWcwmuM2n9Vcbs72jHZ0/qCdr8N0O1K8+8rIKj0
	FBn9oiXqXGhIQiGvz/+m7jTbqYAwn6lmowdFsb1NI4wxirAJ2xqVSM8yzUhoqTHR+/To81SDC1r3x
	HXRVMURB3BwlUrtyPt0Ii9TuXiXYzwAAECL/8Ezxm6zMV1o3jszUGwAE2DkTta/5GSaD4UX+JpAdf
	iyXzBKlg==;
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIT-000Xth-1k
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:56 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2bba6fc4339so39512841fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541251; x=1693146051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8eQmKcwqlABP7sbOZ3MAdBNQtcUV0kJSVTTA//1gMuM=;
        b=TX+x0Dl7v80fmtHVHJ8lm0DjjbI2sA0aAlOEn5CE+1QHVoxjPLX9dwcvPS9K55oSUc
         zv1DgnNPqWnInfcx8Xef+0EdR7AvMQd/MvgrHLfLwvVtq7eosWVlKFwcI5ygkae2zSbu
         9ZtjGT7zMFtedG42PikOSseglYUwFQQTnERe+xPzlaUDmOlr/jFBUhYYyLhixnVI9imO
         dOmXrJHCXn5AGXTYXnLvSt0sPr8wHBa3tzEfJ1pRaV07+Zq9xi88ZVv7rN1HJ/FiDwrK
         wa1uJmEF+57xxSTbIamKuO/3psmtamCB2vFNty9x3kLMMw8cNGCaiIS0OfzAd8UFBmmB
         o4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541251; x=1693146051;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8eQmKcwqlABP7sbOZ3MAdBNQtcUV0kJSVTTA//1gMuM=;
        b=BE1EvymiaFZfvW1uUF3r0dSbTYhXsg/hta82AIyx0a5hgsQL3EP8ainscvwypEB+NN
         7QopSd7jPKG43kPAYs2ZpWogds8gg+v0IEgtpUOi9LA3uy5qjCoMyKDMN0AVk2oyUDt0
         3usNlAiNPH6sry1XK/mBzFuwI3fQQLwLoumzXQMFLqf7himL94XvHogrtLjH736oIY/9
         arr6Zo6J5EtvmlKLr5yatYYU2B0fm6FMnOUeLL/03OrMDab9mPykHbpoa6SPtYKKdwNK
         yM7N8W6LoIP4B2YFo0I+prVZ87rpHdZwDAJyk/wej7jGp9yN71hDs9qv209lcZvKx3D1
         lxXA==
X-Gm-Message-State: AOJu0YxhvoAkDDIzJuDjfRbm8LQ9cwTIeXg4CCXf1rMfDMvV312K2cMo
	VvpcET762h/goVcq80Vjw1Z3DQ==
X-Google-Smtp-Source: AGHT+IFAyRux9oO+B/eTVl699ECC8tI/+C8Uu2vNNuTyVSrCxDdUHDajXjS0931j6RhD9/5JysA5ug==
X-Received: by 2002:a2e:991a:0:b0:2b9:54e1:6711 with SMTP id v26-20020a2e991a000000b002b954e16711mr2882117lji.7.1692541251773;
        Sun, 20 Aug 2023 07:20:51 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:51 -0700 (PDT)
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
Subject: [PATCH v3 17/18] arm64: dts: qcom: sm8450: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:34 +0300
Message-Id: <20230820142035.89903-18-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152053_719376_2DCA64D5 
X-CRM114-Status: GOOD (  10.38  )
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
resource region, no per-PHY subnodes). As a part of this conversion also
change the "refgen" name to more correct "rchng".

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 82 ++++++++++++----------------
 1 file changed, 35 insertions(+), 47 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 8ccad9e00265..eafd867ee9c4 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -750,8 +750,8 @@ gcc: clock-controller@100000 {
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
@@ -1780,7 +1780,7 @@ pcie0: pci@1c00000 {
 
 			clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK_SRC>,
-				 <&pcie0_lane>,
+				 <&pcie0_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_0_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
@@ -1811,7 +1811,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
@@ -1825,15 +1825,23 @@ pcie0: pci@1c00000 {
 
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
+				      "rchng",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -1842,19 +1850,6 @@ pcie0_phy: phy@1c06000 {
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
@@ -1894,7 +1889,7 @@ pcie1: pci@1c08000 {
 
 			clocks = <&gcc GCC_PCIE_1_PIPE_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK_SRC>,
-				 <&pcie1_lane>,
+				 <&pcie1_phy>,
 				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_PCIE_1_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
@@ -1923,7 +1918,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			perst-gpios = <&tlmm 97 GPIO_ACTIVE_LOW>;
@@ -1935,17 +1930,25 @@ pcie1: pci@1c08000 {
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
+				      "rchng",
+				      "pipe";
+
+			clock-output-names = "pcie_1_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -1954,21 +1957,6 @@ pcie1_phy: phy@1c0f000 {
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
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
