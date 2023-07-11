Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDED4EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIcoYtSnNbA75DkBh2TDBHdLNE+In/yJv8VMNz1OcTw=; b=OU/DHJ1NAKP9u8
	5RF2I8wxM/Uz0Cp1OkSrzJTmFFDSv3DAfWkLrAdep+OEho+vz691FfH3cLECOfOBdw9X/JOgDbz89
	pRFXWIoOq42YKP7VksAax+k/gnJ0O9+MogZMJmfEzCUymtSa++Ml5afVf6a5wZHOBleW3nr606Ecs
	igvK8lWqA2U4O/LCWgaz2tXasHElu7TuxXVUmUj1Xj0M2sW8f+QkXmjycvqKvKlpRH2NR9Rqaz70k
	TKta5QJU5nqGsnehcCLthN2a/af3lcXVCK4/xQj1hDG4fy+Vfqh4wFLO9dNiSKSutpC6EXaRJKqsY
	GqOjO8xrOtggYgioukrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEin-00FBwG-1X;
	Tue, 11 Jul 2023 14:52:09 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEik-00FBss-1x
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:08 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b6b98ac328so89270851fa.0
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087122; x=1691679122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZ5/YeWN2vH9hoiK+P3gfGMmpSC0FP7W9NmgzJ5mais=;
        b=yr7f3jV+k9S6hICYgTybG2grsXar0/ghmE+6ibMy7VvWpt0I7fTSiKFPP30HVJVzEp
         GWffay68vYAYpOlsH+hj5UNWzW4swDPSmg9wQ/vzmyXInqZCvRX7r/JmGAcfJfP9RAYa
         FH+SykhODC3AlyqV060rf69ymX2uV7SaFfpiuvJaKuyHo8jLLwhD6/XnTYGfrc2cTosJ
         jWi8yGfZmxv1MlzS+y7DHAox7LavCYM1SAsqVvuHf7R5q8Phw02EMfjV+gvp9gBz2bO2
         52mASvetUG8O0Oixg/XdUmO+lJlE1FUK8BxLb0var9qjIT9wiUN9smvfea41auxqvJHF
         IAvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087122; x=1691679122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZ5/YeWN2vH9hoiK+P3gfGMmpSC0FP7W9NmgzJ5mais=;
        b=kYfQLGpqxQJfpPstviYk+VSIcb560kIsyiNeM6cwavYUnr1hZHNYkqMW0FU/VKISjF
         6glcV8fQ9ddXxVLi6kCL9hZzICbPTasrGW2AfHj5+W9pTtMFR4Wq24rBf92yv+445QW5
         Q0Zozbh46I3ACiw/PT2pYIE97hGAPV0+JiuT9eXjfVLxAJ7KJGLzUdDD+dKYxn9DcyM3
         3aaAcKdV1xSVvwNjtAhzKuys+ErTVMg0oudGG/nt6PptzrIye/+l1JWkpmCLy0nevLky
         +jhR4kLjzcR0si1JU/CZ1w2C4nFs+CWwE4gyktei3ifAGWwjbyiAw/JReRIa4X0NdOkb
         PzMQ==
X-Gm-Message-State: ABy/qLYY250LH5g7lPzZqAgbiMiOCuKrhg4JTvQ9BbWRsidjng3aqTzD
	2UyeDbqr/88JO5zs/9koySmUDw==
X-Google-Smtp-Source: APBJJlGeEPrDv2hHQXiM96uVSNcPNAXzQ4roA03VkgGmnapJFG9SQrvgr4gXd5wKG5vjmAymqfwAyw==
X-Received: by 2002:a2e:9015:0:b0:2b6:de41:b72f with SMTP id h21-20020a2e9015000000b002b6de41b72fmr14342668ljg.4.1689087122656;
        Tue, 11 Jul 2023 07:52:02 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:52:02 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 11/11] arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:53 +0300
Message-Id: <20230711145153.4167820-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075206_653547_C524F5E6 
X-CRM114-Status: UNSURE (   9.02  )
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

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 1668d97ce459..e130e66e8a53 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -751,9 +751,9 @@ gcc: clock-controller@100000 {
 				 <&pcie0_lane>,
 				 <&pcie1_lane>,
 				 <0>,
-				 <&ufs_mem_phy_lanes 0>,
-				 <&ufs_mem_phy_lanes 1>,
-				 <&ufs_mem_phy_lanes 2>,
+				 <&ufs_mem_phy 0>,
+				 <&ufs_mem_phy 1>,
+				 <&ufs_mem_phy 2>,
 				 <&usb_1_qmpphy QMP_USB43DP_USB3_PIPE_CLK>;
 			clock-names = "bi_tcxo",
 				      "sleep_clk",
@@ -4122,7 +4122,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -4171,10 +4171,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8450-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c4>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref", "ref_aux", "qref";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
@@ -4182,17 +4180,11 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x188>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x188>,
-				      <0 0x01d87a00 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		ice: crypto@1d88000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
