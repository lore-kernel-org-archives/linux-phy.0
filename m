Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94A53C77B7C
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGRw6A7VLI9Cd6M8C9qcmKbYtT9aUdMFj+20qjW8M+8=; b=tvqQaMJCl8g05z
	0LNX+V8Bl35ce15FuPhnEN8TSHwEAOolOWkkBWJ5ItoYxJsN9tOUTvGiGTWtoz938aRrWRF4RJwnf
	iC/JV5fndYu4vE4bBi+ZkQUO5FQAnpuOgyNlwMLikBd67uKGbx5OZv4ntsCLRjMoOc39yqQ6q4rLw
	6gRYSi04RfrPzbcdAJ6yrNtbS1wG9KXYIIqitV1xeiDl9ZFRNenYN3qDOgSm7Ac/XW3RQb3wYYoT/
	RxCdrnUJsUoMx5l8beO2+AgnSpZUwm8NferX/V9HHBUIYXr/lawophFT00NI3cNLkj47lVjrv2QaS
	0NlDQWKb73/BWNeSYNVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qnB-004iVz-0y;
	Sun, 21 May 2023 21:40:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qn8-004iUk-1r
	for linux-phy@bombadil.infradead.org;
	Sun, 21 May 2023 21:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ipIpnvvz2faNH2PQomJqDmzvLwid0OYECHsRed/GvzM=; b=RSNrvtFimMHitYwoNf6MXMA8CF
	fYTQmI9XHOo9ZOuijPSRfaIbfR+UmMRz2Q6Fdi8u3I8Gkv0w11nyTu5C5vGOhAwpFaqL93arkbm5z
	Cbsmjl9VhnuA/LAhEQCCwbVOj47WIC5TZ4tyw1Ux2brxIpbC9zPHCjvSOvAIKnjfao0cPvdO5Uvvt
	h+Iru5SS3/bDre9CLB68MvWJqMO+zb9sE+6Zmrv/UYUXrcz5Nwxnb54OFFwWtquQe+QQm6p2dIEBb
	ecoYTRNf4WsYKI2A35o33OHzN1/tMyxnfI+qo+cgxFzypCZ9wWKbDUd5PmVcVqmY8ValEwdLbbIwV
	7BBK5OTQ==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppK-000c0W-0H
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:52 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f3a873476bso3933931e87.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701523; x=1687293523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ipIpnvvz2faNH2PQomJqDmzvLwid0OYECHsRed/GvzM=;
        b=vpNcjA2RJwkZ+0seY10HVA4rtBUNuYNGL67oepwvA9flTSCyWgca8p/bAI+zMYSPJY
         0SukNel7M1iHpCv88vHP4rF3h1zEcVqzCR4vR0FmoKiOgGTWwYhUPSALg92Tas5SiwS7
         un+Cx+wrLIjQm6kdG4Ysc/veDIRrIA/oHaamjW34DVQyAAgqXzFWMGWk7J7J2elZkmIr
         X7bEucbPEgmRj2F4NAwFeZQM41DjB2T4+yH7W0btLEepIPLWa8oJBKlkTXY69/uIx35b
         tDr5mmuI66XHgVIOFBhfeu9BUBGFbdwDFH2GQ5tgj/wyq2rLPU6e8nyWScMxUjq7slzD
         u5xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701523; x=1687293523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ipIpnvvz2faNH2PQomJqDmzvLwid0OYECHsRed/GvzM=;
        b=HKIv1vZaT/1GT2YrlQBl/WlkTFNKJN/rDpIZ6J3LGCf8q7K5ODFMJAOREXB7jybl+V
         JRKSWt9VSmW4UNsGlzT6z76tMEmQ8LyZIoGO3knEgw89/x3ANfIWrc9BYRPojiXeDe81
         4gD5priKTkFyV1emGnKCpFYfF/4xc4bkLSZNFHb8+aKve5A6dHxYvxvpsYZmElaWpjLo
         LQCuGN8PXePXEdDIiwN+DrvrpWpViIjy63iYVU2+HJoe1b5OI7MhgDsLzsxiAMvAJsNI
         S6j5G22qo/6BwJ7u252GY8LqHgdz3n7BmY8ggbMMKKJHd/0Q8H9PFudb70OF1ClF64MG
         sJiA==
X-Gm-Message-State: AC+VfDwRal6ipLtTGepvA7V/BsIEohq2Bc9b93ktGQV3SFa1NnCBjTTN
	XJ86oL0/KAjPMndN06VTAwC2gQ==
X-Google-Smtp-Source: ACHHUZ5TU2S+6fccLTwNQlwg97JA37P9xmi+kvr/l96GTEU926NkrahUMzpP3Mofi/RbBcKyq5/V3Q==
X-Received: by 2002:ac2:418f:0:b0:4f1:4f43:c182 with SMTP id z15-20020ac2418f000000b004f14f43c182mr2089195lfh.62.1684701523649;
        Sun, 21 May 2023 13:38:43 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH v2 11/11] arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:34 +0300
Message-Id: <20230521203834.22566-12-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_213850_696035_B08B1902 
X-CRM114-Status: UNSURE (   8.52  )
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

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 595533aeafc4..44a67c9274bd 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -741,9 +741,9 @@ gcc: clock-controller@100000 {
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
@@ -4064,7 +4064,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d88000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -4114,10 +4114,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
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
@@ -4125,17 +4123,11 @@ ufs_mem_phy: phy@1d87000 {
 
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
 
 		sdhc_2: mmc@8804000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
