Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCBD7C001DC
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rtCEzQKXDYoaCbDdzDgVKn0calCYqshXu+m8/ldVuw=; b=Fec5qTd+EnNxb7
	Sy3Iu8w68a4YVA0f/KNqWjIrwbDgHAQl+XeK02Vhw49LxwD24pxZzR5Rb2CAnZrxF6hKRM9Meyb31
	thpKXWq2Iw1SSITi2fFXEY0//Ktlt3R+2D5mmlJeovQYV8r62pkE8H/MUNeJ8TS2ZCE8kkR0IEHf8
	GMOum3AFQN1EW4wPFmPLcxO+zW15z6rVN99XU49yNPdPU/68qX2H2eSK6RZ8Ib58VaM1dJ1bGtISO
	iLUQdX0Pf0ZJh/e32Z8Fe5B1wzAx+HZqIcsx+ZdtFRvCaXfhtiEf83PHTIcxwb+atPiTqq5WBx1yv
	jV/A7MicWazH/wvX8Pdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbO-00FCZq-20;
	Mon, 31 Jul 2023 10:58:14 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbK-00FCVD-3B
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:12 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fe1489ced6so6962008e87.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801087; x=1691405887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bd48ewAf7zNPyLoINjlSt0Osg3gw4pRPUbnk+7zloDA=;
        b=CltShvKdQkEqOvJV/yvTPKwtgLs8n4PzuS4NAPTj9hiaOyzA6oy736ZA25I1aDagAO
         Ny+EXlR8FPqMrQIOIpNKrB4R6JftkHYcruuPgPGiu0ycT3fP06x1MzRSXIZNJwM9rF9z
         Z71fi8hgcLslNu8jo+mgGO09nr546rjfz15EqHOdzztKvF8BDAPRzYBFimxC3vw73iys
         sLOn5YwgsYzYBoSuq0BB/BDtQUkgdC5Xu6mx0jM5FuuT4uFsMDotBhLfLJKVbLyOfGU1
         2N6b1HbjGff3wwCEXIwUUdqX7kFjTs5o1LNxdY9w8WBYVpJeZU3MOvz0N1ot7m6Mcj6v
         87lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801087; x=1691405887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bd48ewAf7zNPyLoINjlSt0Osg3gw4pRPUbnk+7zloDA=;
        b=HvMrUhRlEYKgD6Uj+4N74krylRgcF4+dUkMFODdElilO6BFP5zKzfgF+kh/t9cwq7r
         uvEidI0I3AwV1/GDbl7nccQwozku7U1btxoZ+xnXDsp8XG2Za1d/1vAOk58jV/o2bjR2
         6FT3ObvEiNGXFcE/lFO6LJp3Dsy78AGlEmlMvvJQIcMKwpc/eFioMyJ+McWHtbTRwT7d
         wBZ+iiNOeYvvTFF8l/cQc+bGejHlqJy9KJn/QHVnOHEkbO+2LXIEppCYCy4n6/OseTgN
         MVNU/0T3o2U2cEU904PfuDVaJ7nB/BDNKE3dVp5TWVSKCQAJ/ZEKHrxWu7AyJvyWgga7
         9uKQ==
X-Gm-Message-State: ABy/qLapRxtkX31lHH9RMgvNiR+1w/8nM+erVKFzbX1o5DtUf2SNQk41
	+TO2cU79Dn3BVo4492PLRXEraA==
X-Google-Smtp-Source: APBJJlHUz2iNJHyHBd2GvddlCwLi/oqQLIAwCojDI8F6RX+TjKTBUlTZqL2f3D3z9a18X4jfPJiUMA==
X-Received: by 2002:a19:6558:0:b0:4fe:788:66fe with SMTP id c24-20020a196558000000b004fe078866femr5202484lfj.68.1690801087097;
        Mon, 31 Jul 2023 03:58:07 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:06 -0700 (PDT)
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
Subject: [PATCH v2 08/13] arm64: dts: qcom: sc8180x: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:54 +0300
Message-Id: <20230731105759.3997549-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035811_024913_09764E46 
X-CRM114-Status: UNSURE (   9.65  )
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
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 140 ++++++++++----------------
 1 file changed, 51 insertions(+), 89 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 486f7ffef43b..fae149e33b98 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -1749,7 +1749,7 @@ pcie0: pci@1c00000 {
 					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_PCIE_0 0>;
 			interconnect-names = "pcie-mem", "cpu-pcie";
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -1757,15 +1757,20 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy-wrapper@1c06000 {
 			compatible = "qcom,sc8180x-qmp-pcie-phy";
-			reg = <0 0x1c06000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x1c06000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
-				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+			#clock-cells = <0>;
+			clock-output-names = "pcie_0_pipe_clk";
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
 			reset-names = "phy";
@@ -1774,21 +1779,6 @@ pcie0_phy: phy-wrapper@1c06000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie0_lane: phy@1c06200 {
-				reg = <0 0x1c06200 0 0x170>, /* tx0 */
-				      <0 0x1c06400 0 0x200>, /* rx0 */
-				      <0 0x1c06a00 0 0x1f0>, /* pcs */
-				      <0 0x1c06600 0 0x170>, /* tx1 */
-				      <0 0x1c06800 0 0x200>, /* rx1 */
-				      <0 0x1c06e00 0 0xf4>; /* pcs_com */
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				clock-output-names = "pcie_0_pipe_clk";
-				#phy-cells = <0>;
-			};
 		};
 
 		pcie3: pci@1c08000 {
@@ -1856,7 +1846,7 @@ pcie3: pci@1c08000 {
 					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_PCIE_0 0>;
 			interconnect-names = "pcie-mem", "cpu-pcie";
 
-			phys = <&pcie3_lane>;
+			phys = <&pcie3_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -1864,15 +1854,21 @@ pcie3: pci@1c08000 {
 
 		pcie3_phy: phy-wrapper@1c0c000 {
 			compatible = "qcom,sc8180x-qmp-pcie-phy";
-			reg = <0 0x1c0c000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x1c0c000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_3_CLKREF_CLK>,
-				 <&gcc GCC_PCIE2_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE2_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_3_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+			#clock-cells = <0>;
+			clock-output-names = "pcie_3_pipe_clk";
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_3_PHY_BCR>;
 			reset-names = "phy";
@@ -1881,21 +1877,6 @@ pcie3_phy: phy-wrapper@1c0c000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie3_lane: phy@1c0c200 {
-				reg = <0 0x1c0c200 0 0x170>, /* tx0 */
-				      <0 0x1c0c400 0 0x200>, /* rx0 */
-				      <0 0x1c0ca00 0 0x1f0>, /* pcs */
-				      <0 0x1c0c600 0 0x170>, /* tx1 */
-				      <0 0x1c0c800 0 0x200>, /* rx1 */
-				      <0 0x1c0ce00 0 0xf4>; /* pcs_com */
-				clocks = <&gcc GCC_PCIE_3_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				clock-output-names = "pcie_3_pipe_clk";
-				#phy-cells = <0>;
-			};
 		};
 
 		pcie1: pci@1c10000 {
@@ -1963,7 +1944,7 @@ pcie1: pci@1c10000 {
 					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_PCIE_0 0>;
 			interconnect-names = "pcie-mem", "cpu-pcie";
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -1971,15 +1952,21 @@ pcie1: pci@1c10000 {
 
 		pcie1_phy: phy-wrapper@1c16000 {
 			compatible = "qcom,sc8180x-qmp-pcie-phy";
-			reg = <0 0x1c16000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x1c16000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_CLKREF_CLK>,
-				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_1_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+			#clock-cells = <0>;
+			clock-output-names = "pcie_1_pipe_clk";
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_1_PHY_BCR>;
 			reset-names = "phy";
@@ -1988,21 +1975,6 @@ pcie1_phy: phy-wrapper@1c16000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c0e200 {
-				reg = <0 0x1c16200 0 0x170>, /* tx0 */
-				      <0 0x1c16400 0 0x200>, /* rx0 */
-				      <0 0x1c16a00 0 0x1f0>, /* pcs */
-				      <0 0x1c16600 0 0x170>, /* tx1 */
-				      <0 0x1c16800 0 0x200>, /* rx1 */
-				      <0 0x1c16e00 0 0xf4>; /* pcs_com */
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-				#clock-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-
-				#phy-cells = <0>;
-			};
 		};
 
 		pcie2: pci@1c18000 {
@@ -2070,7 +2042,7 @@ pcie2: pci@1c18000 {
 					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_PCIE_0 0>;
 			interconnect-names = "pcie-mem", "cpu-pcie";
 
-			phys = <&pcie2_lane>;
+			phys = <&pcie2_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2078,15 +2050,21 @@ pcie2: pci@1c18000 {
 
 		pcie2_phy: phy-wrapper@1c1c000 {
 			compatible = "qcom,sc8180x-qmp-pcie-phy";
-			reg = <0 0x1c1c000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x1c1c000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_2_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_2_CLKREF_CLK>,
-				 <&gcc GCC_PCIE2_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE2_PHY_REFGEN_CLK>,
+				 <&gcc GCC_PCIE_2_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "ref",
+				      "refgen",
+				      "pipe";
+			#clock-cells = <0>;
+			clock-output-names = "pcie_3_pipe_clk";
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE_2_PHY_BCR>;
 			reset-names = "phy";
@@ -2095,22 +2073,6 @@ pcie2_phy: phy-wrapper@1c1c000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie2_lane: phy@1c0e200 {
-				reg = <0 0x1c1c200 0 0x170>, /* tx0 */
-				      <0 0x1c1c400 0 0x200>, /* rx0 */
-				      <0 0x1c1ca00 0 0x1f0>, /* pcs */
-				      <0 0x1c1c600 0 0x170>, /* tx1 */
-				      <0 0x1c1c800 0 0x200>, /* rx1 */
-				      <0 0x1c1ce00 0 0xf4>; /* pcs_com */
-				clocks = <&gcc GCC_PCIE_2_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				clock-output-names = "pcie_2_pipe_clk";
-
-				#phy-cells = <0>;
-			};
 		};
 
 		ufs_mem_hc: ufshc@1d84000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
