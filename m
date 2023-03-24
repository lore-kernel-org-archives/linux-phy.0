Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18390C77B6D
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1I9rgD5dBLaL80DMC3V9JJZnvFumqhz/OrkUzArqT8=; b=mJC9MVtVoT5gkb
	jCNdaLX/6XbaZHazRnhb6fMYjJgNiMJ+wHiMe6a75kBL0zZ5cB7yYye7H9t4wo4ERsE8eQO05Z0nX
	BpuW3OH98LlxmDS9JfafcOjGUqhZNucQ3T5Kgic7pIE51iIl7jmkKDBhffwI6TrhHCXuc8fXLT2UG
	8ljbdgjcwXI+MppqMUTHApCCs6DHapVkWUT40OdUhfV32X3lEWBWUQtggV8Gur9B15j0zB8EclpVZ
	kZaE7RnjD0CSZ/qJUgJfZRR5dZuG+DKSPpJegsQ+pzSMJNKybzOypNjtRY8PL6UrWEKkpASi+Y9eT
	ter8U87NHt7c63YFJJXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9T-003Sn3-2W;
	Fri, 24 Mar 2023 03:31:39 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7o-003O6I-2P
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:54 +0000
Received: by mail-lf1-x129.google.com with SMTP id c29so417753lfv.3
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9PaZ61W9t4KfC8rddudNCJ7+Nn2ok2h0HeOnfxFX6Ng=;
        b=C1d300p6IneOJKse6RlBic9sZOBerrET5woG2W0m8xbjYyaIzjALZL71PphiZL4PQG
         Pz5f0g9feOVl3wiTfnARP/ID0WLfYYcNjXGA8+J/4aO46RXOkGtMBsfCOzOwWiNBUgnL
         hcpjDj3NLHqFW8HWz7uFm6nUKWMqVSFmfb0Upp+QEKimj39BQI3oDunSJfX80GDwtkmF
         a0h0NKxCnV95r0BQ0ML4pbkv1JjbWg89gWP3cjVKhIX8af8gJYzMFYBR67Lhq7JIg2d5
         ertGsvkoESrshSLg4jRqAW08C8dwyLaOt0+srxj8k3f43AW0Awi1k0GyiPq5pk78db6D
         gDqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9PaZ61W9t4KfC8rddudNCJ7+Nn2ok2h0HeOnfxFX6Ng=;
        b=r6PdcL+w2NjnyUFBC1vJf0+Puq8I9IhqonCSToSexVcQgqjng1mXMMYF4K5w9EmqfN
         aG+5pStgf3+LQ/30J7y7/vgZhEjVJsaUGCgV+DFGwcvlsnt/UJKyVw4lIYsCPaX/Tqxm
         /m+J1+oeAWFTuSHjSKlPbpLWP98tw1fIu4pRDwRt0A0+77xy/Hfu7gezUQ21IL0WWVOE
         +QVXu0pRbuTVSdJleh15teTS+h3OY1AOSYkXr5k/CEfD755JE3r0x331XDQtiqN1r7EO
         ZvZXQUWLaOyQyt6rE7Rq+X6Bw/vIWn3FFMM21wt4YnX5zseL7MM63ebFwIySiUuUn07A
         KBIw==
X-Gm-Message-State: AAQBX9d94M5NsKo4zmWsUsdp0sOxoIHcItdXr6d7809AwD/tjVCWgNUx
	QTPk+MVli2h+7WhLcs0cFMC1pw==
X-Google-Smtp-Source: AKy350Z4SrYLCs6LjCqrJSgVxMyUIj5SIP1W61Qe/ahjnM0hsArBQjOkOVBHq0E8klLpmiqdodugYw==
X-Received: by 2002:ac2:46dc:0:b0:4dc:4fe2:2aad with SMTP id p28-20020ac246dc000000b004dc4fe22aadmr238731lfo.41.1679624752298;
        Thu, 23 Mar 2023 19:25:52 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 35/41] arm64: dts: qcom: sdm845: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:08 +0300
Message-Id: <20230324022514.1800382-36-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192552_791115_DADFAC2E 
X-CRM114-Status: UNSURE (   8.25  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 71 ++++++++++++----------------
 1 file changed, 30 insertions(+), 41 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 6eb82c5641cd..9cad1be584da 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -1182,8 +1182,8 @@ gcc: clock-controller@100000 {
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
@@ -2354,7 +2354,7 @@ pcie0: pci@1c00000 {
 
 			power-domains = <&gcc PCIE_0_GDSC>;
 
-			phys = <&pcie0_lane>;
+			phys = <&pcie0_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2362,15 +2362,22 @@ pcie0: pci@1c00000 {
 
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
@@ -2379,19 +2386,6 @@ pcie0_phy: phy@1c06000 {
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
@@ -2464,7 +2458,7 @@ pcie1: pci@1c08000 {
 
 			power-domains = <&gcc PCIE_1_GDSC>;
 
-			phys = <&pcie1_lane>;
+			phys = <&pcie1_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -2472,15 +2466,22 @@ pcie1: pci@1c08000 {
 
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
@@ -2489,18 +2490,6 @@ pcie1_phy: phy@1c0a000 {
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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
