Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6980EE49B1
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 15:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jrpAFJuX1yM96kUYqCCLeAX5g8u0V40LDWHt6xXtxDA=; b=2EJJrqIUweO6SI
	IPRSLus0UmSvE2kbLIucMr+AKUmeAjJ4MBCJTQjE8Sgf8J2PXAxepItQZkkUAZxToMv/5tcy+clJh
	fXbTK+tL8YKxb+g71sGeho02jwZwzDPMGfx+msJ+AF4vHsL0+YQVsFg3lluCjWEhwT6/fqY5cJKIw
	kgrXY/1YbntQDSG6QHCQQ4rIrWWhHKjXIR+yEDvV+604o8Q5iQc35hN18RaIG3c7rEBjhiHQeLhpD
	bs6EB3iYaxgSmIQO37bTMYCFxh4LlKIDGdYpHBZGfhN3STZQFSeH4jmVEsXRCLdzTb0s78jAiYhA3
	Y3BjOKfcdUp4vAmTBUsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXkNY-00C6kQ-1t;
	Sun, 20 Aug 2023 15:30:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIS-00C1CA-06
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OAWo2jhB2GOhtSKR+La9YssTPYIAzwQXw9XAJbXiMUE=; b=MUInSmeaVO0RxbIYcofN55NzBf
	ofWaS9p5tfQBql6MnLeWaGMSz8ZOicpzGEI5OEYb9vi2gpa3mE1cTtKvdC9/dOZ3ROKLhZy7kpbl2
	W3Vp9O4ztbeOpktUyZ4A4RHqLgmdIDoKlDiZQGXlURuJLwYKu56fqvCFPSpB1lXABE4SrSDo3pUYW
	W+2+Flhz91+jQug9sWBGnCma7ubJHqOEqPrOFZ8ihFS3GtruklHGxCN6dA7a5hy6a2OxXINbxQtVR
	xWEgamL3Ca0X62uJdZIWMYJO4Gq/KuzoRWFcaIUtw2xDxjK1MoAinzy5mKUsMiKANqef+o5PY+e/C
	ujRK7r3A==;
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIN-000XsQ-18
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:50 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-2b9c907bc68so42911441fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541245; x=1693146045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OAWo2jhB2GOhtSKR+La9YssTPYIAzwQXw9XAJbXiMUE=;
        b=iRwtiFYSayjUpHj5o15jXO9L/MQbSzD9zBVf7/Qs6PjdDxrTQp2C8FDAwrraPc6q6r
         BLe27F6YEZkEMb12JWkTfwfuq1k3ChX0xGPXG1nzPhHMpnJ24Retow0b4lkteuynGGTH
         daovM9iwoUHqXP+TPYU2deJCl77+mT5SIxAZhjjJDgC1jxTxUiijN5trFsctnSW9Wgv7
         w9lVADqO9YKpPA3awm4eRY5ah/G4t/TYprLsQuxMXhMpUPsqyOezZm9k6/HL4nhoO90y
         xHjnwcxEHgiEJ6H1xE/xakdL3vqIqQi9eOy/zlfvIrfCbNanaV8Rmg7bMXns99PpjjIy
         2afg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541245; x=1693146045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OAWo2jhB2GOhtSKR+La9YssTPYIAzwQXw9XAJbXiMUE=;
        b=kZcWGhZCptE/bBBRYKFVljM7SH+TxA8on+ldxw+Hu7tBJmjiYl3ltoJzk9OZdyePl8
         4xoAHpjY+h4Dp84imRIgLUtFAtk/n7AzQYtUl5MN50ufJtf60iEGA1lVUiMHGBaK4h6D
         Auce4Xxj9R7I2uY9tmPiTYX3XFLrPgH3X4WellfDcJT0z7kOejx/zx2YxS3FJXn/sPlW
         +MLdJ9Dmy3nYNa2TjAOiriNhbLAMgd/msduUCcqDjiKbRXtXjLWMDgbmXCggM+CFz6/W
         0sZ5M9WoJbo3PUFkmxYB/R0qHVkZ2XPFxJzMyCrl/DpMhHsT63bVk3Kq57NDYmda+Fz5
         XkDg==
X-Gm-Message-State: AOJu0YwLOkq5ErUM1qwdhBEKKF7LtY5cVjBliwtDse6Whi93zXSESzfs
	c8yGpNEcW5h5Fabf8ZOq2mx8nw==
X-Google-Smtp-Source: AGHT+IGbDP6680OB4J3IJM4tScxLB53uC8X2Ee5n1KjnfTX3v6GWBnLe83OjJDjz2709sKnhItyj4g==
X-Received: by 2002:a2e:91cd:0:b0:2bc:bcc6:d4ad with SMTP id u13-20020a2e91cd000000b002bcbcc6d4admr648184ljg.21.1692541245658;
        Sun, 20 Aug 2023 07:20:45 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:45 -0700 (PDT)
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
Subject: [PATCH v3 10/18] arm64: dts: qcom: msm8998: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:27 +0300
Message-Id: <20230820142035.89903-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152047_470195_69653EC6 
X-CRM114-Status: UNSURE (   8.73  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 30 ++++++++++++---------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 62e594a0451a..30d8730fa4de 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -945,7 +945,7 @@ pcie0: pci@1c00000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 			num-lanes = <1>;
-			phys = <&pciephy>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 			status = "disabled";
 
@@ -975,32 +975,28 @@ pcie0: pci@1c00000 {
 
 		pcie_phy: phy@1c06000 {
 			compatible = "qcom,msm8998-qmp-pcie-phy";
-			reg = <0x01c06000 0x18c>;
-			#address-cells = <1>;
-			#size-cells = <1>;
+			reg = <0x01c06000 0x1000>;
 			status = "disabled";
-			ranges;
 
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE_CLKREF_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref";
+				 <&gcc GCC_PCIE_CLKREF_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "pipe";
+
+			clock-output-names = "pcie_0_pipe_clk_src";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>, <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy", "common";
 
 			vdda-phy-supply = <&vreg_l1a_0p875>;
 			vdda-pll-supply = <&vreg_l2a_1p2>;
-
-			pciephy: phy@1c06800 {
-				reg = <0x01c06200 0x128>, <0x01c06400 0x1fc>, <0x01c06800 0x20c>;
-				#phy-cells = <0>;
-
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "pcie_0_pipe_clk_src";
-				#clock-cells = <0>;
-			};
 		};
 
 		ufshc: ufshc@1da4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
