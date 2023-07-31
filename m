Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCC54C001E0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEkgPQEi2GPykVDrSGt6ktbgXm+eb4FHIMx9cBodSPY=; b=SCha1WRfTqUBHK
	VVoddWkEjm6r5qmVvM6q3xEClyVPMP44IcnkXo/trylhFCta4X0oV6hb7v9vEnk/4ORoCGPPGU0FH
	QlB1uyHGKbonuaYOxXFupwLCb3iHoxRmc3iyw5+KsCmiJegF9VUqDpaqNCb6mQ4tmL6JdUCiRKxuK
	3ZpVwJJCBJnHoUtltUYTTc3YEp+mqSlJ+o8zf66wAp/TmoV5XDPcV2a1SNWTNcql4YnvqH7Z9ZkXS
	GC95GNzAvUFgs6+EHMDhxMuViXrgH4FnuvMKq/Ep1X3O/4ZiUMk/+TIvhykjQwzntvHU01JIIWwR3
	hrQ6hbdJTAzehg7QQdqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbS-00FCb2-1z;
	Mon, 31 Jul 2023 10:58:18 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbM-00FCWG-1P
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:14 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe3c7f16bbso484815e87.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801088; x=1691405888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/OCthNqvSFsBwJHonQ0z7rqJs2ov63E+z34/DiWG2VU=;
        b=xPKXIBvS89qqpcICzlNca2SEMMNf+K/wsuW9Qwv88ydpisu+LGIqG0V6Aw7o0bJjyS
         ZWH08v6up7hgRyosrbILwLtbg+SNZYCeTiVRX8aBVsL+d+BJseolVkOZU4Qq0le/m5Uo
         2qBWH+NTJK1/lWrzt2qxs9HlNah/Uf/ZAZJQZjEbZTj+15ALcK5PCiE18KUWof8tz+Tu
         HInip0c9w1BGpnqnJak90GJNtQmggxLLE206N/RQHIKBxg8E05pLR0r3re6G4JA+je1h
         c+XIcaK6CcciCCVK/c10YNxJo+iZfDi8v0gXNv2cJ/rF7OkHNCB1d8mDvPO1JYaOy9/q
         Q26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801088; x=1691405888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/OCthNqvSFsBwJHonQ0z7rqJs2ov63E+z34/DiWG2VU=;
        b=g/2SUMoRJ3XIMgApxFjFbYavlISXBEDf8GECdeXqSKw2vgxoXeuGiuRXuvvIf0Fi7P
         GS4kQPUbl16w2y9o3MAq9NpdKQf/QImwYR8nL1ZbXwM5o70IG50wVn7id8rzmCYGnZzY
         XktR1Kz6/b0rRQzHZYfIXyLr31ja6F/MRI54hE6TrmF+F4ZHBHefbfUK+0Z5CY5z0K1y
         UOInumAWhBQ+fbiaz7JVc4f2XYDITAQc4/3OxIHHaIhTbgZR5QIr+DIf3Lec4ZFYWk6l
         HtEAjWlVBHW1YoBUkElpRXQo2CPeLGG1jzDdy6xMr6eS+jjqkVBv3SItJHxw7DkEE9Yt
         7zDQ==
X-Gm-Message-State: ABy/qLadgaoMXTyfSMFtGa4psDovmcrI+Mp0wNa3Kn66ZRIxtxGm81Sp
	zkxOR5EwBwBCRubcXQDQnHLS0w==
X-Google-Smtp-Source: APBJJlHnfoJpgZgQbvCfrN/dHgXRL5qnROWTjtV3hXlRbZVg2kXEnujs47st70ySj+1M7pM67Qvqjg==
X-Received: by 2002:a05:6512:34cf:b0:4fe:1681:9377 with SMTP id w15-20020a05651234cf00b004fe16819377mr4809054lfr.44.1690801088651;
        Mon, 31 Jul 2023 03:58:08 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:08 -0700 (PDT)
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
Subject: [PATCH v2 10/13] arm64: dts: qcom: sm8150: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:56 +0300
Message-Id: <20230731105759.3997549-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035812_477477_EB618ED6 
X-CRM114-Status: GOOD (  10.44  )
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
add the missing "ref" clock to the PCIe PHY devices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 70 ++++++++++++----------------
 1 file changed, 30 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 4381527da3fb..2baac91aecfb 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1874,7 +1874,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			perst-gpio = <&tlmm 35 GPIO_ACTIVE_HIGH>;
@@ -1888,14 +1888,22 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8150-qmp-gen3x1-pcie-phy";
-			reg = <0 0x01c06000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c06000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE0_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "refgen";
+				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
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
@@ -1904,18 +1912,6 @@ pcie0_phy: phy@1c06000 {
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
-				clock-output-names = "pcie_0_pipe_clk";
-			};
 		};
 
 		pcie1: pci@1c08000 {
@@ -1972,7 +1968,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			perst-gpio = <&tlmm 102 GPIO_ACTIVE_HIGH>;
@@ -1986,14 +1982,22 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0e000 {
 			compatible = "qcom,sm8150-qmp-gen3x2-pcie-phy";
-			reg = <0 0x01c0e000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0e000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
-				 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "refgen";
+				 <&gcc GCC_PCIE_1_CLKREF_CLK>,
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
@@ -2002,20 +2006,6 @@ pcie1_phy: phy@1c0e000 {
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
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		ufs_mem_hc: ufshc@1d84000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
