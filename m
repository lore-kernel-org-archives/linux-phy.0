Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3187EC47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+A2rkg65W738C+v1ftOmf5jF+cecrQ4sYBMjhbf8xQ=; b=nI8wupSwbavUXz
	vNUqYvOdTUM+41riatRmu+N+ZvbtM6zTxZClVD/jsNNX/4A4ATH26qFrMVeqG1xnRmfScerL8ILN+
	NlOaBQxTrG9Ztwwxkxy45rBD5kFI86EFM7VSPii0685dD39GkrsQgEk0H92pL7XGfruI0tprlPTwZ
	GjnCAwNLxjjYg4aO9Z7HemhCuzYT685gN82dKRyPJgmYiusGuO24oIh2pQMRsZD07rwLHPxCS18oG
	Lt4aJQL6GNZHFkztQryBUnGWT75XaNY0W/EDFTL8v62MqiWL0wuY/O+UjYDkIiNsU5pbcrcXsdiH5
	Q2QVsUoHh+Q6VlawYJDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQQ-00000006dYn-3Uqi;
	Fri, 22 Mar 2024 09:42:58 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnbQL-00000006dVO-3DhS
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 09:42:55 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-41477211086so11807355e9.1
        for <linux-phy@lists.infradead.org>; Fri, 22 Mar 2024 02:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100571; x=1711705371; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eUssMuF8ThH09UlJpbb9vyo3xzL9TqetFqxpN+Tr8Ns=;
        b=li79Cui2X3KOR8jDXVGyzk/4MwVvcEraIRJuPCPsR0IR44Z+m86usGA4gQoxnAgR9P
         lzkLe5XedOVpBlGP6pRXzkp3/xRJlgPvooyIo8A1EurgdEL1iZIwQCxOtKj9mCKujAVa
         2C1ZbnHRhs2j7kOL0MiLacv2Fhvl3FdwJAQWqdBxN8ETFVX/FS1ucIo2kAx/RM4q/5lP
         2isKhOJPjommtW+JD9ifbVSVhNRHiM/kgACATgs1RxaVsX6wmH4eBdb+anTAwy4Y0Uq1
         QC665TUpsjepxg4xv6zp/DDCyKokR3RIG3y2uT53t4YhL6FrdKvNUoOm1BN+w7eUy06k
         P7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100571; x=1711705371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eUssMuF8ThH09UlJpbb9vyo3xzL9TqetFqxpN+Tr8Ns=;
        b=B9HHfR1WSJTKqHEBR7NmuuuCkoqgqB8aYyWVgm35aErXt81R6B9z10H/7DxY4IISNp
         2djZ+gLM+BWdtDr/2WUlChmpWTvznm5amI3vFrY3bD3MC7hGKmmmyjbwJayB1MG6AaJD
         YStyViR5pOZ9+NDef0FmOyKHYAfmdwez/4rL6LKQXNhgDefkWz2GvWS8dRyWHGE6vuun
         MgbWikP3rj1306TlkqRu+idpOqLYFINz7gS5BjZ8r3IS4ERDQv11mYutrHPyWjdF7e9C
         aBNmDxwvTSpH9azTnHhVqDGUyVEMcOMmztkIITrki1tgZD30mVaO/4v33V2+3Hd/TlDb
         f5Lg==
X-Forwarded-Encrypted: i=1; AJvYcCUR3+Hsa7vv4AzboxVad3tZvkFljHcPLLhVqqRuAoWVTz3V92ugWYPMdJhmZCOAcAUZH2PHgURHcCnwcas0zN8SIwzWpZ31MYtL4olcCA==
X-Gm-Message-State: AOJu0YzVEszekpHSFLJi4vcPdzfThDEimaHicbKkBU1wzeT0vlKoUQU5
	KZhAENySEFb8l62uo4xeYefgwFOkvO9jVaIbD/nHCGxnX8FWxfS7jl7eHaXnxWQ=
X-Google-Smtp-Source: AGHT+IGn1TUPJe2KUoUFUP1ntI/uWf3G7ZEIHuB1MYn8zZfb3E723dM4eyZgLqav8ccuQa72KY1kKg==
X-Received: by 2002:a05:600c:6b05:b0:414:69be:54a7 with SMTP id jn5-20020a05600c6b0500b0041469be54a7mr1646075wmb.41.1711100571136;
        Fri, 22 Mar 2024 02:42:51 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:50 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:44 +0100
Subject: [PATCH v2 7/7] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-7-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2454;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=fB7ha//rZ/f/HstsEjI3jngLBtEYcuG0WuaGH0Cr+Bo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKTZ1JXeyzTLkNtjvqZxp7JUTH+dlXGNHCvhF0m
 hqUydgyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkwAKCRB33NvayMhJ0firEA
 CHvG8bUPSmOwXe1zrRf6pqMs1BhQOgNZXNsU/OivN3SnRrkypSyvlE/eOvqtco5jvUkXH9C/Z3NJs7
 jjaTDbimSIsSx9Srw7SnN1I8uz0cRPprsn8CoKePHNJcGPyZLetjxJcDwKCj2TrRTf8kGKUeh4MLIf
 JVfBYTm2PpOmuR0WjLpGj2HqS0sPjPe+XT5YoKUsh8UezxIZTilxJ7R+c97ets7BwbKXKzX/0AoTjs
 WKRV39jnL1JOr+Hal9Xiw5UtozzcHcBpUFOQqKLPmNItZ2ChqUl5Gf6Z3bXGIqAI9ZoQokOTG0Y6Rr
 Lt/Mrh2htYkUx/y5X7DulLfENCdQKy6cqEVhQh4MCnP6HdA/uyroJCiF/SKlJrzT2eEnOzglJ0eK3d
 Ui3BLbZrG1GtFdUsqefnny0RIEG0bWORCvS67uFnTm9fqAQq5R34aNorgPQKpol+q1Ixl69dYF8ZlD
 Z1KWMoI8nUD9cKOvcDd4t9nWx3cjzDrnn8huS5dD/6i/RtuF8xzQ3NMRkDEuCZ73cQq/9+Y9JO/2dw
 HMGG9ZIA2u9ZqI8WKk7f2idK9fxHzSIrxjZGjPRnTedH+Od8uNmFxVJOKLACPsh83xE5Hjg8/aGYwx
 XuNNH1iI3NcvU3VpQ4LXvLDUYOvjbxjdtV6NXAitrhkPbN0jZO2skLBgsCeg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_024253_860308_1B1AACF4 
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index 4450273f9667..95d0c2baef2b 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -645,10 +645,6 @@ &mdss_mdp {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index b07cac2e5bc8..c6e907e40af1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -831,10 +831,6 @@ &mdss_mdp {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index ba72d8f38420..6e4362bbcc3a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -60,11 +60,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -758,8 +753,8 @@ gcc: clock-controller@100000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2449,8 +2444,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
