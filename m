Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDFE7EE49A4
	for <linux-phy@archiver.kernel.org>; Sun, 20 Aug 2023 14:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxFpOkvxOopNS9EpIbXw/cjeVR0Z+u3VxTeDguXFxcU=; b=bpSw+YepxbrNZ2
	52V1xXTqb4uF1cH6jefmEBacewRhG+X6tZsEgajJsAVKwfCgiO3vsSZXGs6Fs4v8DCuKlO9noAFuL
	aOkLRF7fVNAjnVPLyISu3GOwAEeorIm6mcYODZMl7acwQZKhZ23bRwOGa5nLZaJb2lgvfT6beTynB
	kPIhYTWT4tvDVkMiTYh3PgNc+1NvA4mfkzeq6zrLR6+EcqUkp9OwrAKEdJnsY2hCXVkOMOaTscuap
	8h6Uo3QMGlHrDHgyTL2U339EUwph2FrUZCmJzoNlNHdadOWeJ/imilBcWvoNZkZese1BwMiW33d+S
	xQiwSkiuKJpeBUTPhTsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIW-00C1E5-1b;
	Sun, 20 Aug 2023 14:20:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIU-00C1DB-1o
	for linux-phy@bombadil.infradead.org;
	Sun, 20 Aug 2023 14:20:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=yXw06Qz5n7ECNNe0fyxRXPwDj0KzxJOuORlpmMPokDE=; b=KgbOTDG5QARydeZkmBoDXHMY1J
	0P8L0NRWV9Y5Nb7kckteJrLlCeDkrf+hcTKWiP2nMLqM5HoMd1cq13b6LXxfavhCWZt+tEHo0cSeA
	cJaCIkOpCiEAGmwKl7+7ojzi7UGb/uSTpYhh2OAJXitFdEVtw112Aeg2qW6Njrhd30cMXXCRMp+Gd
	hIZFU1N43zfcLojF3XasZVuwC/gxTjxUH3AxiaHjGTdNJ+RiWulfr/gi7nLW4m0m8JQIJzrNF+sJQ
	4/BXKsGbTh8SxduS+WeotElEr30bGBGalttDdDL/T5uXbieNKzPq2VBNikIE+b5GH1KFIOQnrsMJ7
	T3vLG4iA==;
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXjIP-000Xsu-2e
	for linux-phy@lists.infradead.org;
	Sun, 20 Aug 2023 14:20:53 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bbbda48904so21030261fa.2
        for <linux-phy@lists.infradead.org>; Sun, 20 Aug 2023 07:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541248; x=1693146048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yXw06Qz5n7ECNNe0fyxRXPwDj0KzxJOuORlpmMPokDE=;
        b=UNLqioadWBcZiXNLdbS2iTEoxccFqwtVYYiaIo9LiAfCAPityMYQAodtsc5UnT3qHk
         GDTeUdUDwUi84LfqV74gbhy31+Lu/94EGCDFiaisvn20W6BNDO09MQzG1nfl33MlCD/c
         P8571zqAedqPqGH7JSTlAFrfvIgWUy02rBfDdP544Ga21hB5yvjiJM08C83ndcc8IGuR
         74mKISjMk1u8nGkUxH6XE5ZnkrkTTwNyTIGmJBV4vg5Ur+J4r2/W+32HGEPWoFA/YqXO
         XywHnuoxObxSMBXSuyr3fTsKuDwdV7mnM9ILvHMclxychrfviY/7bK9ievAGVsCvPBhZ
         ZrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541248; x=1693146048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yXw06Qz5n7ECNNe0fyxRXPwDj0KzxJOuORlpmMPokDE=;
        b=XOJWJuGfwiV0IF7lRdqgVR/+m7OLAl6TOnOF0oD0FKRVhea4getQrWSp0xPsxq/0UO
         FZfkFUFAmC6LghGIn6RUvggCh7IQVuc//kyx76K2TcQrvDlRfcESJKH7bAmiOPmED8Iu
         SBwtCwo/IP3jv650vI1Dco1mPu181I0k2q824I5jenmNBb13dXe77dzbzMpPBak3rkD5
         qAGX34fSlpXUVu4nj53hJ7FTLkoH5CuBN3KxySY77BajAe2549QJivsb4roYzNIEbvjx
         Yed+ajWEY+7omWe8NhZ7QZWgIFwXMZYu5YniPCHenbC/mLnue0/n2aKCIa75kFkdzlKT
         vBDg==
X-Gm-Message-State: AOJu0YxRIbMMmeiJSaVL5wiJIDUmAbJIbM220RbW49o5D2yOE2vniU+F
	OnilKbUq8ie0JonuFx+AGAIg+A==
X-Google-Smtp-Source: AGHT+IFSWVSWb90t6Ku2LDxSwWOA6EWsbNxZC9w48cCDjZtlxeSCusml5p7gSvDy5qJDtV77Hm9UhQ==
X-Received: by 2002:a2e:a41c:0:b0:2bb:9847:d96e with SMTP id p28-20020a2ea41c000000b002bb9847d96emr3311138ljn.9.1692541248077;
        Sun, 20 Aug 2023 07:20:48 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:47 -0700 (PDT)
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
Subject: [PATCH v3 13/18] arm64: dts: qcom: sdm845: switch PCIe QMP PHY to new style of bindings
Date: Sun, 20 Aug 2023 17:20:30 +0300
Message-Id: <20230820142035.89903-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230820_152049_921622_95357A90 
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 71 ++++++++++++----------------
 1 file changed, 30 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 3d4050548f3a..ef7b6994fdab 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -1198,8 +1198,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&rpmhcc RPMH_CXO_CLK_A>,
 				 <&sleep_clk>,
-				 <&pcie0_lane>,
-				 <&pcie1_lane>;
+				 <&pcie0_phy>,
+				 <&pcie1_phy>;
 			clock-names = "bi_tcxo",
 				      "bi_tcxo_ao",
 				      "sleep_clk",
@@ -2371,7 +2371,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2379,15 +2379,22 @@ pcie0: pci@1c00000 {
 
 		pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sdm845-qmp-pcie-phy";
-			reg = <0 0x01c06000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c06000 0 0x1000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_CLK>,
-				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>,
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
@@ -2396,19 +2403,6 @@ pcie0_phy: phy@1c06000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie0_lane: phy@1c06200 {
-				reg = <0 0x01c06200 0 0x128>,
-				      <0 0x01c06400 0 0x1fc>,
-				      <0 0x01c06800 0 0x218>,
-				      <0 0x01c06600 0 0x70>;
-				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clock-output-names = "pcie_0_pipe_clk";
-			};
 		};
 
 		pcie1: pci@1c08000 {
@@ -2481,7 +2475,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2489,15 +2483,22 @@ pcie1: pci@1c08000 {
 
 		pcie1_phy: phy@1c0a000 {
 			compatible = "qcom,sdm845-qhp-pcie-phy";
-			reg = <0 0x01c0a000 0 0x800>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01c0a000 0 0x2000>;
 			clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
 				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_1_CLKREF_CLK>,
-				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+				 <&gcc GCC_PCIE_PHY_REFGEN_CLK>,
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
@@ -2506,18 +2507,6 @@ pcie1_phy: phy@1c0a000 {
 			assigned-clock-rates = <100000000>;
 
 			status = "disabled";
-
-			pcie1_lane: phy@1c06200 {
-				reg = <0 0x01c0a800 0 0x800>,
-				      <0 0x01c0a800 0 0x800>,
-				      <0 0x01c0b800 0 0x400>;
-				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
-				clock-names = "pipe0";
-
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clock-output-names = "pcie_1_pipe_clk";
-			};
 		};
 
 		mem_noc: interconnect@1380000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
