Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA10C54E72
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1mOIQSntdTjInQWF/mTiW9TmOaJ7BZlW2DVhTZX7oY=; b=Py2QJskMnJiz1t
	nOJjghHoEv4jcZbX5f6jFxhPfsoQUh3rENirUMUyR6x4PIkexs7UVtz+u5OXNIjWLePcohW1erDpD
	I6KQfe2i3BCKTYYaYfnpUTdqVBgpdBMDsSlgFMuEzR40UtA32UfZ+v0ErW/JM6XZPDypc8Z7OR7XY
	QbUGJRBNiB6JAmVNKRKvfJnvgMQQyAIm7c1GP+cFbGOzLT7Zmdk5GraSShs5D2+JkEGRRYwLQnPBQ
	D+sYV3sei5B0KLn3vu4yHkwC1N1NAnT8T/aZwOPi0nACU6ztPra8+6m6ypwlwyvxdAObj13ydA80W
	Fq8/hMNZFhQ4eLPGGLAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxv-0000000CLPM-22Q6;
	Tue, 19 Mar 2024 10:45:07 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxn-0000000CLHC-3HTa
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:45:03 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-33e162b1b71so4720523f8f.1
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845087; x=1711449887; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ty3VrFMi2Un83tZJpEiaZ9eSHCnRrlGoPwQ7PufQuP0=;
        b=vLa7E1djAsuIhRFaAqAuRcw6YOK1gE2xQ3d3oNqCjeBYK/oTb/QQP1RZSVctscFkzA
         FNQcVoifs7ykdaZylJF1eXe4c2AA8K4PT6Qj2rB7QNPbyS+Rbnfnf3kr6fy4LnMzXv/Y
         EA6U1I76vku9cVoAZFASFEgF644yhWfCb5yBdtYsUNqg1lLls8YjYzxEQPltBY718urI
         Yv67VO6/aLB+KnmsnvHRbxyyzR0u4Y5MYopNu5TGGPWjkIcBYxLxf5KSaaCglerBTV3C
         bzJ1G4nLHSdsyOlguwWPcKltJUgJh1VWPSpmmU0bxBkh/uvSt1PkErLxmnad171HUAiZ
         MfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845087; x=1711449887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ty3VrFMi2Un83tZJpEiaZ9eSHCnRrlGoPwQ7PufQuP0=;
        b=hGdQT9Bh31i2lC8JnCVzaBcyKiFJj2OlAgpI914GwmOYl09A2UzSmQOpcRoVqxCkbV
         RwWquI5cAqW8C+Vw4Lgs3lF127vkOjj9YUJDi+yCfz/1OYYNp+rVptgcn3rqtKZVQvsm
         PVoFK8/SDfT76zidqU+J2OZNDq8rZEBSXtf6YCzckLfKqWiDKMYQlrEYIC/0aQNqCgLP
         Mso+20cZ/nKZXOqOyBmTj5GNF8bEarUwSiVPs7nss5WAAe7GTELs5z3amVsFHMrpUdMe
         ZrDPGkhkWbOubsafMcSin858egLIkfDQMxcHLpALPa6jnu93NpaFuzwONbIsyf9JV3ZA
         L+9A==
X-Forwarded-Encrypted: i=1; AJvYcCWPPgS5hFKYyLD8XcFRxwVQJwcMbQAjzxYuxW/7hHELcjw4TRPlFnXS7WXFDqzxsACpdZXlqzNZq3CKzBtEc7Wosfiw+wXc2m8ZL9G8aQ==
X-Gm-Message-State: AOJu0YzQ6guqG3ZkydPq1u46jG5oCeuLIOXGl2c5ERldubxdTzvDAsT1
	x5/LznBolonbNtAxHNr9kHffaj7zUge5l+Ygak7kqJ+F00kVP9AxjiqWu8CihxM=
X-Google-Smtp-Source: AGHT+IHDUjCnXWox7pyr/ZefGE91CNvjYVpHS8QiFFtd707Y/0mFvdcstW0ixdbZPpAvgibXV9v+Lg==
X-Received: by 2002:a05:6000:1805:b0:33e:5310:820f with SMTP id m5-20020a056000180500b0033e5310820fmr1468072wrh.67.1710845087159;
        Tue, 19 Mar 2024 03:44:47 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:46 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:33 +0100
Subject: [PATCH 7/7] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-7-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2393;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=xL8h4eyyWci29QidVxDLfR9l9WmgeWgRBwZjFy3/qKU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyXSPEU8h87XAYp3k8Wphua7O1IBTEZXA2fRZKA
 csAIZCyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslwAKCRB33NvayMhJ0a5REA
 DFLrlJVrlPgp1qAFKTSAlhaK8VNJVQ+cWx3mJfZbntkamF9yQRQ1MAzJyMi+LP3WPCddk2lbXwl4Bf
 WdZ7wOFJ2gDBBZX3j5NlfWeHlWHh2eybHELJzsFou6loQO9tuPnzIfSOw1iQ/9Wp006ieX88hwyP4b
 euTBxe1EgZB3bsSVt1fmfWRu0cXxarjjKg8kWYKofFL+bZVLXEAdf1O/PR8J2WE4oXLc4WA5/7llWQ
 Ao4pfNsBZFuSzPoDzoBSebX5kyvLMSJykJcsPxTzzz4QQI1110E+a9LMlh5D+kWkO6f2+d0n9z700v
 Nh528LWb0zUPeGbibCmZEgQGv6oLtkxPSfqf1bMU5tW+aKWzLrw+MmBAb+JA1lZOcQzoeDHRjXmaDP
 OIYWiM9skcAYfFCPmz5yhkgdCQB3Av/7mMbLHTh0zMXLFbxllRBEtdQYBWNrznYjqhre7QiRTlRkjc
 m9aw/7icsNc8x1Z0oTTdK/NmpZQhDSrc8W+irx9A/WKIcAELwMOwcqio/F4tkj3J86ZihL7XuFEi22
 UE0EKl7NrLf/KfaYqNOTQHIA8y30RbM0UOc/HefZFiDWiLPG87+ubw8VFnZn2US7A7q0STym7O7V/c
 p+l3viI2yKkkbijvh8ma182IGqDdIzWd797/LNn5qj0ZSTkeqWWq2hQPKSpw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034500_023009_E7E09B02 
X-CRM114-Status: UNSURE (   9.97  )
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
