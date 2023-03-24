Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBD60C77B61
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 02:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlnxwbhS72OLN3oZraone/WZUBGPRX+A/7uH5PsAHms=; b=Jpfb0OOaqA/u4W
	JrLzgJrAtdPchQxMpJ5qTH0lIiDMnMSZpwY1lle7FEszypf6nw10Ps03/fPHM3vZqD6Y/ar43cYkt
	+NyuII+Tb+6ip2teMo2t5YqJ8g0rfCwkddWWMY2+zPrNBiTXbI+Aoa3ijtY73QvVGFkNY2vhoh+rJ
	BkJChzFeKp8e4dFAFBVjoASeOSkJINGIa9Xdk5zbTwenoj4KUswomQ58R+yWJsSlICFufU33CFeU0
	om0De2BAdeawBUNWgBNiUCKQIF857/4Raug0u0rN4TMI1Go+fbSXH1oMs3pYC7Tu0WLtTIqefKK09
	L9e9bI+e5JXFEvmSXy1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7x-003ORA-1Y;
	Fri, 24 Mar 2023 02:26:01 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7t-003O6s-1w
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:58 +0000
Received: by mail-lf1-x12a.google.com with SMTP id k37so458166lfv.0
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YOIaNfMmgbmoavEK6bP1PH+Sf/RDsiRB7FBFLV3YOWA=;
        b=XzGwQzjrwHxMPC4PzUPCOOL2VhMUcaiZ3517HIhJrul5U2n7hRLiPxlu7NgTN4Lgqb
         kUl8vECd9W6MLFlxuLuxPvBIONfzr0DSzYAuXToeogjjHx5AndMvbfxVQtyzm6Ubp/2N
         J0pdjodGcTZSNXCdM8HmJ4bJUGYwf2iPWoTGRW3+UcjPwV2iPqEYqrducf5V/aqz+sQM
         lriS4cSbhWooOUVaC2dV0dvNRLWNrW8an9A4ByYUECufFIgw2WGCddgW3D+8ScZ8UORP
         6d9rBv7N2uQ0i1w09Z3DqAg0q0WIbYx5b1p/WRyLpF2zme85Gcqilk5oGDRS7hcShMKy
         qAqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YOIaNfMmgbmoavEK6bP1PH+Sf/RDsiRB7FBFLV3YOWA=;
        b=UB33rRDAoyWTOz2wpcWc8L29hjPxVZ3GQT0FAzco1zBWryTBxnAyvqtDRWDYhnYj5R
         biUmybaAbs4s6AcHeQyoVbESFVvJc7xYejLwLEvcyo4Zy0ZgUp+SQ4dmaKsp4TREMyTN
         X45AK35V5aUps0hjk+a42IzVs0JkLIRd3lKvT/qpEgSqt1A34f6yNPSqRPXeksOGfDmm
         hJGSrjkrneuWL4jNTa3dD0TgtrjhW25blcKvQesAR6Gt9yP27CxCVupW2eHbrov9W1f8
         CRKZRm5jNuhW9WBGWYYfpnmTFXH/BAtrfwKO13lbpebJX7ZfPzjiM79lrH0ijNSHu38q
         dRKg==
X-Gm-Message-State: AAQBX9eJtbV4HKt7aXwq54peQgTdx9LR0JFTED9RGAzqXYepbbY3Sn6z
	iJIX5bI7HT/+rY01hbfvYDluJQ==
X-Google-Smtp-Source: AKy350bphhdctD15r2V1OioxJB8Od40rOIkj8n4M8db9uJZJoROjLhBEOFWJ7H4uShoktNNAJyvqOw==
X-Received: by 2002:a05:6512:72:b0:4dd:abb6:8699 with SMTP id i18-20020a056512007200b004ddabb68699mr274927lfo.40.1679624757156;
        Thu, 23 Mar 2023 19:25:57 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 41/41] ARM: dts: qcom-sdx55: switch PCIe QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:14 +0300
Message-Id: <20230324022514.1800382-42-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192557_646057_7DE22F28 
X-CRM114-Status: UNSURE (   8.51  )
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
 arch/arm/boot/dts/qcom-sdx55.dtsi | 31 ++++++++++++-------------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index d69e3e8b280e..30a58521a3d3 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -375,7 +375,7 @@ pcie_rc: pcie@1c00000 {
 
 			power-domains = <&gcc PCIE_GDSC>;
 
-			phys = <&pcie_lane>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 
 			status = "disabled";
@@ -422,7 +422,7 @@ pcie_ep: pcie-ep@1c00000 {
 			resets = <&gcc GCC_PCIE_BCR>;
 			reset-names = "core";
 			power-domains = <&gcc PCIE_GDSC>;
-			phys = <&pcie_lane>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 			max-link-speed = <3>;
 			num-lanes = <2>;
@@ -432,18 +432,25 @@ pcie_ep: pcie-ep@1c00000 {
 
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
@@ -452,20 +459,6 @@ pcie_phy: phy@1c07000 {
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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
