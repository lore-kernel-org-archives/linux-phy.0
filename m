Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2222C48285
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jan 2024 07:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qj5FqfI1pQmlfWbJe9CviU5Jnx921G6+yS3aTMv4qYo=; b=UCG0jHvC4hDy3y
	k2w8wdJt3x5oRQJGFvacbDL8qa7lJHcAhkNyw7pjxRYxrStg1fPVDlQdu/8oD2aJIhdJKXJOeG33z
	VLdCD/Hb5SOxGDsJuHDqsGMpqGSPm5q0SBvG/4X5Sx2xlIwBAMH6BAIkO8MZPyNFq6ObmpkO/c7Za
	7hDA4W7ye+Wuk3Niw2kkBMBOIJEa8kKwWMNvFxf/oDLMyY8ZpaedkoMqE+tron7tSBD/QwfdVrpXs
	aXCEY7HvRTSPZRpoJoDwJqCBv9/RrBXobsfRqp5K+CIvJppccz5UsLZCeltQgZNLWyQADkwJ5KLkv
	unPDAXc1VtzCXaUKsdrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4j1-00000001jbo-2ExZ;
	Wed, 31 Jan 2024 07:09:35 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV4iy-00000001ja2-0Eg8
	for linux-phy@lists.infradead.org;
	Wed, 31 Jan 2024 07:09:33 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6e11faeb125so1418983a34.2
        for <linux-phy@lists.infradead.org>; Tue, 30 Jan 2024 23:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706684971; x=1707289771; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lWsO+esC0d2AYKWWl4iIuis67padS7ySZZsjP3PTjQQ=;
        b=qKpQCdGNiHcIpGq8z7YpO6fMW8HOD8yE/Q/0tZPOdqtOW+PjJnjCu0tGc9L9OnXAd2
         zo/uDmzieNAORMh0RxXcXlFEfRFapnmHxVvF6ZAX83Qdauw1BdF8Vr2/6fmwniMEFqHH
         MDdI2xwxSu1Zo+ecTc6sC+urgQsvug/2rKdqfgjWj6ZKZE/IKQDEwvjBMloQcXRO1Hzh
         /heCR3cXXha5OQ0Slyc7RO9QUkkU78+xPVJQzthUMQVJDiLIPWNhkdmqBeXMFX551zAr
         AyyhGuiOABmKHjClVCwc6jqIUh8Ljk3wwVSQLPVIEyKZv8uywOL5ZbMOxBfbw4vMV7C6
         fsBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706684971; x=1707289771;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWsO+esC0d2AYKWWl4iIuis67padS7ySZZsjP3PTjQQ=;
        b=ZjXxeI9GhrlLW4vjWaio9dktnZvYk22ircBaDI8UO+NLOnT6hoDL5/3VSRn8+08739
         6JzY866Oom3fPTnN2Ii5mwwOhkOPh9jiMPZIsJRJ+qe5zKETrhZarpLkAwsUFO7AyaoO
         Sd/DO8doVTKR/GWq5M1RKXpp98hS0a+dNzw8DnEeO7VuJh9RHDT0QKlwmw+oUivogHSg
         spGD6ZDcmFHngusZrJr0I+ECNq9e5H7Z6bVoTMBrckYn26TH7aZYmV3FV1K9vkh3szOc
         SUnUhABzFYCzBUx8Y5/qPHbi4BU0W6wZtbiq4RVVqns9WnGxEzCXTpMDwha142Sd3m04
         bPCQ==
X-Gm-Message-State: AOJu0YyRuCDoBAZcnKhP/r7pNUBBTyq8VOJEh+sZpur57/NhvJxLuf5K
	2/xxkWuquo3/hqtzYNEYmcN6GYuDEi4V4JFeagxHpReVUQX6/0sOUlY3t7Zifw==
X-Google-Smtp-Source: AGHT+IHteOzFOILISoB8e3ZraEytXha6YtyVTN5AGfm+j1w2zTnAEYNcgu6UVnIMSyvUiyY/g965XQ==
X-Received: by 2002:a05:6808:2f0a:b0:3bd:a866:124a with SMTP id gu10-20020a0568082f0a00b003bda866124amr1473409oib.9.1706684971390;
        Tue, 30 Jan 2024 23:09:31 -0800 (PST)
Received: from [127.0.1.1] ([103.28.246.26])
        by smtp.gmail.com with ESMTPSA id lp17-20020a056a003d5100b006ddd182bf1csm9087956pfb.46.2024.01.30.23.09.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 23:09:31 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 31 Jan 2024 12:37:40 +0530
Subject: [PATCH v3 17/17] arm64: dts: qcom: sm8650: Fix UFS PHY clocks
MIME-Version: 1.0
Message-Id: <20240131-ufs-phy-clock-v3-17-58a49d2f4605@linaro.org>
References: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
In-Reply-To: <20240131-ufs-phy-clock-v3-0-58a49d2f4605@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, quic_cang@quicinc.com, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1160;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=VvvbKDQ1v37NesUwZ4Ka5npjjk3GwT+dettCywR4LiA=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlufG/WVdKYwr5kNyolAW+hmSR6O4P1ei0YSKpH
 3slSGtvb7yJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbnxvwAKCRBVnxHm/pHO
 9eXSCACPXL4Nd0gJ9qj4Vafm9PgyB4uU60lf4fyE480qMy0Mx3O5B4+qFlvym/AyZrSYeg9cj2z
 MVCQJigCXOIbQcpQy7FQaBY811D358xrbzjBgU1HdNI81CVsr6flwPbimmvGvTKJ6TvLUFYzDAq
 NS4JEvnZciye6ZeLn8xDWEQByqCgOfP5/Vg+fEotuUi219ldpkHwmIrPz6E7sQX9uzirKoX+ubn
 MFLH5iXTwLXvyE7LEFZ7sczDQdD5OHbK4rLbkxkvOAaat+CnK4TqpveCHpclEbIaWSF6DBG0y5u
 Zg1tguc7IQG5gmBhi3CTiyAHpElFCOmPCMZ/TzdX4P3Ap39C
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_230932_181548_3B5DB1F5 
X-CRM114-Status: UNSURE (   9.40  )
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

QMP PHY used in SM8650 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 942e602bfc97..464b871ebcb7 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2476,10 +2476,12 @@ ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8650-qmp-ufs-phy";
 			reg = <0 0x01d80000 0 0x2000>;
 
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
