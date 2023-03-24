Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98B5FC77B6C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 03:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqCFZVOaS/1EERnfZfPctHESYDDgQSGwC6lLplLxlPA=; b=eZ0BfKZwoNTAdR
	QarV3/YxQVUiAveBgAIlbAIjaqZDQWMOF+jMNopVZnCibTs5SX8xUiV5uXmz7IBa29Ojtvkl5/wqh
	pb3uH7pTrB3JY0hSvckqbTmNfMNGOkYoJgpN26LyFlzsGnpVSwWFXRdNd/j4JDt1wyp/0ro/78lgl
	X/wW64aGMD3ZMve5rXQ3qerAkll5bWj1Yxy4WPVexHaJABAwiW4JhkE822Qz1U0zTOwTH7Pd4xIaR
	2OR7Yu+0BfTVmjJTOXe0ZE4b7oO86vRuSB4in3vpK1jPz3WXdU0EG4ljGXGzo+R0uXT6S+lChA5aY
	aT3D5IgQrIge1u0sOQLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfY9T-003Sma-0r;
	Fri, 24 Mar 2023 03:31:39 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfX7k-003O6V-0R
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 02:25:49 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j11so371171lfg.13
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 19:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679624747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IbN39otk6hUcNcOTu8YjAxJiwFKo8lxNu3zhs1JvPwk=;
        b=qkQHjyWc11QFGQoW74e5LTQdtxbsund52LJypDk2lVQka9VjR/JD5VvTXQQ7vJQXLA
         c9e6n8HWQPb70YrBuCD5m8M/aSjSji0L/Rk+0LUoj3G96zHKh64Qty74OtPFfdqIUgoA
         EncMbp8HrIcMeBhFDbg538JRfAVIV6sLr7jos3/KAn2RizeLLST4nbAPCcx7jifJ5kX5
         S0eNrSYdOM9vVEEoAA1IrxvSbEMxymKT8oy1GmCCJ+TgTedjjJyuxR6nwdG66NuefI/7
         7AfEMXZnSlEQKiXuDUG8RXPycT6R85rgRXKBAngfq2O1EmUoE1e2B9AdythLkuWYJzaK
         y0xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679624747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IbN39otk6hUcNcOTu8YjAxJiwFKo8lxNu3zhs1JvPwk=;
        b=X/m6KmVzHM/bFTedxWT4DVNEHd6RsQPWklBwmsFRhjPQNYaE7oQ2gTUigr1/aNVufd
         Uz0ugjYm9+Mbwq/Cr33mzoPqYZfbW5lP3+vKv2+5TCxX5mDC2xr7SbAbsjHxWOuB6Dbs
         5O3PM6rmF5nuH9aO5s7iX9AWyMatpIDVUfFZTrG83kUwucabymmOmlXtLHjRUK5nDwag
         gH6iat69DyXAI5Jldm0yR+dpGvi5rJmFNs+o6pBLkBSJ2yaFqV5/kwYHtKumHpbiRw1G
         JpASj8m00OCkyc82RwbZMVHgh+RzKeYOQ+bvENJKPPoRrKopTt4ahqmpn3PyF3gq85Y8
         0HGw==
X-Gm-Message-State: AAQBX9f4WBlEfLEZqui/kclQuDIL0U0NzorufFr66hKEAv97emPiyAUD
	G7iqQK6+jz1nmyeT5Yo+ypC9yw==
X-Google-Smtp-Source: AKy350ZBifnlHbpd9ue1HMmnbbAwFKf/OLhranzn29rVCriboFuJS3c4+uOQkuXb1tl0BVgos1n02g==
X-Received: by 2002:a05:6512:51c:b0:4cd:adad:fd9 with SMTP id o28-20020a056512051c00b004cdadad0fd9mr195876lfb.38.1679624747606;
        Thu, 23 Mar 2023 19:25:47 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a19f604000000b004db3aa3c542sm3162628lfe.47.2023.03.23.19.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 19:25:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 30/41] arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings
Date: Fri, 24 Mar 2023 05:25:03 +0300
Message-Id: <20230324022514.1800382-31-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_192548_170014_FDA62185 
X-CRM114-Status: UNSURE (   8.57  )
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
index db264ceb748b..01fe1108cca2 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -745,9 +745,9 @@ gcc: clock-controller@100000 {
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
@@ -4075,7 +4075,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d88000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -4125,10 +4125,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
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
@@ -4136,17 +4134,11 @@ ufs_mem_phy: phy@1d87000 {
 
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
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
