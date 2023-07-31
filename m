Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9693DC001DC
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yteU7hSBV/sWUyssl2VrcWRCDxJV/wV+joGDrBPboi0=; b=1X9Pe6CfSl+uPO
	Y0NKUwpygfqkwjoT7bQqor993Tfgt5lnRyq7b9u39Ygv0HWZc08SuMELUHmZzzDddjnSx5pSHnsQo
	ftkf+eJBr1Hn8gqSqiBq/nqA7AeZ6yiUa/ehTekKGK0yMWl8ykwvCj0lAAG6sxiW8shrv8OngRD8p
	mE4/eCs98WwgobkSa41vS0ODROr5Wq6x4YYII5/rclbu2t/VOg8cMrwwz99yZmIhfbeN+VcwVWMIh
	lwrO/953y9VvX9VllBv5P21oJVapDFD8qNeAYaIVWQ3Sw9tpkg8l62k5mzxJ5tCxmitnnqi4FBqv+
	vbR3YEkyYOrAcWqq0wow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbS-00FCaq-18;
	Mon, 31 Jul 2023 10:58:18 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbM-00FCXk-1h
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:14 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4fbf09a9139so6923868e87.2
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801091; x=1691405891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rfVD0ReDE+afeEDVkr9DHXfR2daYWUMok3vB8NkGUyU=;
        b=Rf3TvuUi8pvwXHXz8Wm6gSl0rG295QSKN8I5i52/5kgG67fhgcsPRx4DFDLyOs88cS
         PMLt0TFKTrjVneyoXA6FueAo6mnfp8RSff5mrG+GFK8tdh7wCIxKnikgm7M85knjooC1
         5XjL2EDbqdXM/8ZylXJP+nHwOXbMno2dUa4eVrPb5B++J+INsDJuINvvM9aw3yeuMdI2
         FMU8KunFFxUSa70j4x2Jbomf+anQ91M6Euy+M+66MkwRQ83a7cPZIJxQifMn6LoMmHrP
         M+8AofN9k/SRtYe6IyJpFKlb2rr6upLNPQzR7LrElx4PaXwDvNdUBOhj2/JOWtU16nWi
         9v3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801091; x=1691405891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rfVD0ReDE+afeEDVkr9DHXfR2daYWUMok3vB8NkGUyU=;
        b=FqegGur9LYRlgFHQebGPGf3FUgpZo6zw55fvlVvOvOe6NmuOsaFIU+xx+THfYS0G9Y
         SFlrHTmsUO96oy2xzRwldU6cKMXmJpBidzVMQhAy4wLQWTsFGN/9jpO7WL+nOGZVoGHf
         EZEJT5hjj8nVjvzHLG6BhQU5vrONiBsPH7pdcXQOUDa9vIKBLaQEl220mdl0oIzhb1L4
         D9XeK4Ca27uN3i0gcrVnZDDwdUje9s6HyYSGmXS5VW4hsyAu6a+qmByVCLOX5Ls3QHq+
         qgo/TBhJapt+q2BYyA7enBnxkGuGjxR6sRlZ7/NLDzyBLfXK37+I3r3eEHSHoChlvk90
         aeGA==
X-Gm-Message-State: ABy/qLZLWhkJw9SBflQ+VIkJ0A02iOuPoYOhwUlLPVXX9wwFs0GhKH+i
	zg8PbmSmqWRWU7zIzHFk+KNeRw==
X-Google-Smtp-Source: APBJJlGgXXnYuz6h6j5X73uGOl6giTP3wtGeaYMpIBgspE96MyJd6VIcEAI24qlCeSyu7kmwU3IsZw==
X-Received: by 2002:a05:6512:5ca:b0:4fe:3724:fdb1 with SMTP id o10-20020a05651205ca00b004fe3724fdb1mr1224698lfo.41.1690801091216;
        Mon, 31 Jul 2023 03:58:11 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:10 -0700 (PDT)
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
Subject: [PATCH v2 13/13] ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:59 +0300
Message-Id: <20230731105759.3997549-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035812_568420_54816762 
X-CRM114-Status: UNSURE (   9.63  )
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
