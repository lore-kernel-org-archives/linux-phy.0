Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B327EE49A4
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WTubmCljyK6Fkn4MOtpZsAOVG26ZRLDvIGD8CIa1R4=; b=B6iGpsDf1PSy3B
	dOJQ0+xvsnM/Qh6uJFxO3twZOH61bwK2vIGcBN6aNjY3p2Qmx+exFr4xK56Zod5aEpenrrQkMGQ5z
	Vjji3Mp/oe5K7xcVEWuFaw4xKc5yxTUb5lrTEu1PmP524/IoXByYhGVzoJ2NDlNcVAzwsxqrncVCx
	1zovYWIShtSvPha7ph/v6mfitI6WU8N6j+afqsKcnmS/meOg/Xgtq+0e+Omzy22PHog2EVVFezTol
	7owRuQvLaSm62IgMcfRnF9v+PrARWiVFoI4HiAjz/HmH81UGTKYebPUwQtl3Qr4gYE43CjcWZqunf
	DliUWsb+zabuxyLs0jkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIb-00C1FT-18;
	Sun, 20 Aug 2023 14:21:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIZ-00C1Eq-19
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WTzmy+i5j1WPiK6tLfXa64W5xhtIy/e4EjLahPo6DXU=; b=aWQ2chitGqpoDLApTNl0I7n6KW
	sVwVY41aLj41NnC/0303tve6FjLD3zsHN2hLZfMiwY7J5nhtaEq8PO6yWZQHDvcEu0sRsTJ1zxbJd
	TuJTehH8CsCpI8r5fvqamvSrMBhz5uQibbg0yabcJvoyqyYvxFLdShQVrx2lV7ORVhBxc+d9EIS3/
	CXGRyY3g46FAE7OnYretS8qiMbN1A2Pk0+Ohd0CvUjEXjWqOtHg/o0XzAAXAxKXMkrkSFn4cKAxNZ
	hC1xsVMLX4WV8ePBmih7t331n9/k6N2J+OnzYC0VbYh+n2yYtoV18lbTNgR5v6FG6DJNVPEz0jhpn
	fxx8thrQ==;
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIT-000Xtl-35
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:58 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b9b5ee9c5aso39893141fa.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541252; x=1693146052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTzmy+i5j1WPiK6tLfXa64W5xhtIy/e4EjLahPo6DXU=;
        b=sBaUljN0X/xwDygPsg+nO/6V4c9rxPSX5D/qhqsfD/bYKAksDA3Qmz6+3DEiA8Zpas
         kYf0SovzxwpPG7y03/jKV8a6Z1ETfGf7g1zMNL1u2cJbyh1oubKxd3HNlLhUe/DbcTi3
         Dqrs97r7QxEg/B+8TphnEdc5lZ1mQChaq361wpJWNnoBWfor+Di4szJ6zJ78b7M0U+CH
         rAUYYYFTUTZ+4r5wkgII/kvXn8vavhACnHfa1/9IJuV+SF1VnZV07GzeCJc0Ff6Xu+Wl
         GjVpTQ9e7/mHE4aP2jxJ4VofbE9o19rOh1rwQq6SeMOIccvuIwdPnFxz2zdoImVYFjRk
         QLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541252; x=1693146052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTzmy+i5j1WPiK6tLfXa64W5xhtIy/e4EjLahPo6DXU=;
        b=KV/eO901ujxpMgNpqqvtv3bmJ2vesyiHZGJHPDpc2lpeWNFmYZLAnYsUu2m9HlmmNF
         ftTyxT0n6yfyk9LPkgfBr3u34Rd9JN+E2Ulml4wXTLaP5e33X2mUeG+a8S7TdJ3bnTAB
         QGw23aZPGNPIFBUAMJltjKe6/7IUTyaGxLc5LIJa2szRi+1/GT7nT0bxP306PWSRgOGK
         iqlHPFEwyjM+F1DdnstMClRrwkTX3Vz6zm1SPczR/sUMhMwH8oGG9pHWJlXbrEqYmeKo
         adODr2taiw2fkk8MlIosUeBnaPKZfsf4BwIUkByZk44DK9MAC7KoIQDQNLWg6Cz+DoH8
         DqcA==
X-Gm-Message-State: AOJu0Yw8U92NlzydccNWwrNDDfyyGP0g6JjwEeUNv5vDLWKzF+qZFxmb
	D7Sq+3eH1PUF3zEJUxP51q6VnA==
X-Google-Smtp-Source: AGHT+IFERULUQVtB8IKnpBuIWGg2sDN51gu3aFEy2DKA3mxevPHuxbPl0Bp5I84SsZ1djo+7jpFmfQ==
X-Received: by 2002:a2e:9185:0:b0:2bc:bb46:4fc7 with SMTP id f5-20020a2e9185000000b002bcbb464fc7mr652384ljg.24.1692541252729;
        Sun, 20 Aug 2023 07:20:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:52 -0700 (PDT)
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
Subject: [PATCH v3 18/18] ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:35 +0300
Message-Id: <20230820142035.89903-19-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152054_065285_01495313 
X-CRM114-Status: UNSURE (   9.09  )
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
 arch/arm/boot/dts/qcom/qcom-sdx55.dtsi | 31 ++++++++++----------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
index 55ce87b75253..4b0039ccd0da 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx55.dtsi
@@ -379,7 +379,7 @@ pcie_rc: pcie@1c00000 {
 
 			power-domains = <&gcc PCIE_GDSC>;
 
-			phys = <&pcie_lane>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -428,7 +428,7 @@ pcie_ep: pcie-ep@1c00000 {
 			resets = <&gcc GCC_PCIE_BCR>;
 			reset-names = "core";
 			power-domains = <&gcc PCIE_GDSC>;
-			phys = <&pcie_lane>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 			max-link-speed = <3>;
 			num-lanes = <2>;
@@ -438,18 +438,25 @@ pcie_ep: pcie-ep@1c00000 {
 
 		pcie_phy: phy@1c07000 {
 			compatible = "qcom,sdx55-qmp-pcie-phy";
-			reg = <0x01c07000 0x1c4>;
+			reg = <0x01c07000 0x2000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
 			clocks = <&gcc GCC_PCIE_AUX_PHY_CLK_SRC>,
 				 <&gcc GCC_PCIE_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
-				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>;
+				 <&gcc GCC_PCIE_RCHNG_PHY_CLK>,
+				 <&gcc GCC_PCIE_PIPE_CLK>;
 			clock-names = "aux",
 				      "cfg_ahb",
 				      "ref",
-				      "refgen";
+				      "refgen",
+				      "pipe";
+
+			clock-output-names = "pcie_pipe_clk";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_PHY_BCR>;
 			reset-names = "phy";
@@ -458,20 +465,6 @@ pcie_phy: phy@1c07000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie_lane: lanes@1c06000 {
-				reg = <0x01c06000 0x104>, /* tx0 */
-				      <0x01c06200 0x328>, /* rx0 */
-				      <0x01c07200 0x1e8>, /* pcs */
-				      <0x01c06800 0x104>, /* tx1 */
-				      <0x01c06a00 0x328>, /* rx1 */
-				      <0x01c07600 0x800>; /* pcs_misc */
-				clocks = <&gcc GCC_PCIE_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#phy-cells = <0>;
-				clock-output-names = "pcie_pipe_clk";
-			};
 		};
 
 		ipa: ipa@1e40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
