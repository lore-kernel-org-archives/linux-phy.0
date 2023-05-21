Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58BEEC77B73
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0I0Utlk5U+YZVEhCvv0kHS4AL7MaZRg/XB27lFh8TY=; b=ULKiirXMltmeGj
	HcCpoP8UXzJQpIgv1Wrl+mVns98z3rqk3w3CbEh1fGr0uxzBUxT3KJwy2dzdzCncJlze+t1fHaK2s
	6pwjYZAKnlMI8G+YEOV1pbnxd2229+1aB8LYL4g6bajc0GXs1uRAZRnHrKl4JJK4SK6/wVr36a9PZ
	K9qNbtM3QAlrEjntFIjqFMD4w/qWzVQPT7xbAia++1CVeG8W1+bhqjrHII4Nv8j6wGMfTJIhIuH3y
	a8keRj84Tq9fG+UcNTCKpTMh5etQlpn6fDZ2Y6LviEc0aLjR07epngf8/srryAWchFqoC8VuHgoP3
	xUl2pFqh4QRDWPwwki7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qnI-004iXZ-0A;
	Sun, 21 May 2023 21:40:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qnH-004iXB-0I
	for linux-phy@bombadil.infradead.org;
	Sun, 21 May 2023 21:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=KYaAz3NVZWe0zOO/EfhBaHEvvJ4Fl+YGXj48Osn7Edo=; b=jEmZqN1A/LTFtjS/HbkvGUr0N1
	2gn4ecyg8T4NieDnaB2/SyCRgNKmGhDPbL9GVjr6R98Y0Jh+/IkpDH4BaCvp7gJ/dCoZe5XuetVdB
	G9EvCH/6Y16uYUvH6vOujpfgbIiAVoulkyTdpBCLMLaseA0sTirV1Is+LlDWZRn91b4HDtS0LIBE3
	jdMcpVFlxc1KAjax43bps0z6ELMIcWsoKj1sysNHz7QzopU2KlMLq28Wb1TqBdTbjdVJHd3Nzuruh
	DiQ2Sd5gh3iV/1JegebOw0c3TxDOrmEce5ZTn2ekIWXXif9XM2o9DYxu0iw8bhH2t9UF7jEbqf4e+
	RsqmrGUg==;
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppI-000c0O-00
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:50 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f3b314b1d7so2212231e87.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701519; x=1687293519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KYaAz3NVZWe0zOO/EfhBaHEvvJ4Fl+YGXj48Osn7Edo=;
        b=sR7CHc9NFCL6xeWYvz+Y/xARXTFWUKTj3HWQ/7hfvv7JM2K483X3rZJZgT46aS8ueY
         Rk1TH0YBGD6ShGtxO9H0oppbeiBL3TfvuAecJwze1GT5QLoTpynprC9hEg0jCcBDaB6i
         CoHB4gIFP37+DtsviszsHyo1RX7NxDZCS3cpcu488XdU6fo4lR5DWlAMFn5socxPt7GA
         /4I7m+vVq8al+wGkzj86+3IQjvHTcM88AkxwLf5ceUybh+nfPpyRz4jGYwktx7gbA8NN
         J52vYt/lFdN2c0MvOqHCKlUr53tXTHAaN/j3ip0rAXfeVgthtet4MldbVyGy76fBG3O6
         dMMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701519; x=1687293519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KYaAz3NVZWe0zOO/EfhBaHEvvJ4Fl+YGXj48Osn7Edo=;
        b=GlXuPcYpIYgdgFozX9X3p+lHs8tSMiz7i5Xx7/qINFvdw4/RkBh5r+p+vsGw1fJoi5
         GPnUnqpusD4IlEu7xeHadaUuflinfaKafqDIXOptqO3Sopx89BBEUd5gnwCSK62Q1WEe
         7iDMLEFqrCewJbxMeW4GpjgJ+zWFdCKAu9mdg5s8We7DNc1+Q3ajumW3+dRVggaI1hmu
         ikWHa9dFqLapuCIf5ym5pPySXjn2DtlQMHsoNzL+wjCXDi7DAxoYdzLk0FGc5/sz/jvj
         30pkfW09mIvg6WoYHy4wzwhjmAiWh9DNFQB8vI1mXP429+7uqV+9YAEyNDfOb16PGixt
         qxPg==
X-Gm-Message-State: AC+VfDz4Nut0Fj+pUFuj+vnZ6fMQQIAy9FD6AKvNlhHW0U8rzjWxT97b
	HV0RStvSjESHUIH9isKGElIXJg==
X-Google-Smtp-Source: ACHHUZ6C8tWgxOGHMTlmqENwZasL+xWlLoCLFxFuVI754CJdE5URzzYz07ox43u2xCQDq9JfhZNXfg==
X-Received: by 2002:a05:6512:376b:b0:4ef:f4ef:a1cc with SMTP id z11-20020a056512376b00b004eff4efa1ccmr2289426lft.14.1684701519210;
        Sun, 21 May 2023 13:38:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:38 -0700 (PDT)
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
Subject: [PATCH v2 05/11] arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:28 +0300
Message-Id: <20230521203834.22566-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_213848_441760_68707CE1 
X-CRM114-Status: UNSURE (   8.53  )
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
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 6aa2f8f3affc..559a50c44da1 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2566,7 +2566,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_PHY_GDSC>;
@@ -2612,10 +2612,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sdm845-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x18c>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2625,14 +2623,7 @@ ufs_mem_phy: phy@1d87000 {
 			reset-names = "ufsphy";
 			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x108>,
-				      <0 0x01d87600 0 0x1e0>,
-				      <0 0x01d87c00 0 0x1dc>,
-				      <0 0x01d87800 0 0x108>,
-				      <0 0x01d87a00 0 0x1e0>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
