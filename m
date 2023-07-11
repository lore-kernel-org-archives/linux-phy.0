Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A054AC04A6A
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 14:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8deRnby5Vmk79xUjbc/Qni3ogha2XmN3fUIN+uN5k8=; b=T8uuMoKurow92C
	ZWKIG9WDHhxqgNSnKxvW8vt6rskRBaofkAUVm6k81eTZiZiC80tu46l7WoOh5dRXFlEuQo9t8BHoT
	DIduMGIf0xYqWsLs7lYm1ztahpIoYrIN2QQlFFYphJXvHVM1dVPEILN9f5BdhDL9DR/D20wt8KS9G
	gn//z7w+jGswNg1vYi5gM9tNpo3vqPCb2wAKKYz0icjkWUwsXslW5/CAq0z8PBkGQqvA6kofO7tTB
	T8HxASGSBKIQLnw8Sa4RqO79oFOJjmH6vKySegFUx3N44GGjJzvTlpfolfxqaMt/yk0R89ceTCAEa
	s6z0lLE/pjlVbUwnHPeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEik-00FBuQ-0f;
	Tue, 11 Jul 2023 14:52:06 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEif-00FBqz-2c
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 14:52:03 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b701e1ca63so92610741fa.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 07:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689087120; x=1691679120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rGT5Q/iqZovw+ufKbmULu/XxjFgFyS18Dblh86WXpZw=;
        b=bnZAPOjh4KWQuA3muMVkq2193L9NEomYMr2fVoC4SmLp9OQBj+skAwoehWp9Yc5zxP
         1q0pCDWrYkK79vZeyJ87TxWKMOEcA/YsGxRd+b14VkquUZ0o6xdd9xVcrlAuiO3/cfq1
         SLtLFLs0aqFNhwUIbOzXVGIqNFDDKmrL5lFTfUsWkUx5ozjRWxCEMcoTck9mQGv3QOgi
         XE3TSvZszWGHAr+PJlX2yRrK74ucXpczTujkhoYsXQGQGvJi2DDVu5sXCL2dBHdxCRqS
         8JkV6Ef4y1pIWMsCV2/ud3gMg+I4aPPSXXsqX3n21LVwisopuKVVqFXNl9Rjnt1q96SU
         /OpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689087120; x=1691679120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rGT5Q/iqZovw+ufKbmULu/XxjFgFyS18Dblh86WXpZw=;
        b=PXGPVQKFkNjwJNkTJ4b7anY7Mwx3hoqsskStHXSHSoPPfYhXzFB+0KbCx294T2WhcK
         kDPncQCE4yZJlsiyPgnrTn63GnT6c673jVh2WHLCKxUKqpO7kqzpaYhYYTXNk0oaohqd
         qVW5w48oUjRgrm0Yto8Ftx08kLYITJ81E4rjZJ9RD70R8qZHLG+08NgV+y/WO7EEai63
         AakfLc3/Rwks0oLd6bl9bw8LBbQfdHcf6i8c0Lgtml+36mRogjDS115GET1d1YMXcpli
         9+ztAd5MP3+aPHOZz9Yk10k0ujuIKB5j02K0uF5q4ZPZRpU1mjNhYmZ3pykdhwY+Dsau
         EXWA==
X-Gm-Message-State: ABy/qLZtyozteBy3MwJc4YzID6g1XYMcw6LUMn65JDt6C1+exi/GzIEy
	cmwKK5Q453bHziCYFKlzwX81lw==
X-Google-Smtp-Source: APBJJlHGlfCisEJ1r3067MlOB69M9JQb+0QyvAoAwg99bOLfS+cNVahEIFJwgihi5eVpkiuXxQ/z/A==
X-Received: by 2002:a05:651c:d7:b0:2b5:95a8:4126 with SMTP id 23-20020a05651c00d700b002b595a84126mr12257705ljr.52.1689087120429;
        Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a10-20020a2eb16a000000b002b6ee363337sm492454ljm.120.2023.07.11.07.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:52:00 -0700 (PDT)
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
Subject: [PATCH v4 08/11] arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
Date: Tue, 11 Jul 2023 17:51:50 +0300
Message-Id: <20230711145153.4167820-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
References: <20230711145153.4167820-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_075201_856674_807909EF 
X-CRM114-Status: UNSURE (   9.16  )
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
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 6ff7cdacd44d..4381527da3fb 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2025,7 +2025,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2070,10 +2070,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8150-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
@@ -2083,16 +2081,10 @@ ufs_mem_phy: phy@1d87000 {
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufs_mem_phy_lanes: phy@1d87400 {
-				reg = <0 0x01d87400 0 0x16c>,
-				      <0 0x01d87600 0 0x200>,
-				      <0 0x01d87c00 0 0x200>,
-				      <0 0x01d87800 0 0x16c>,
-				      <0 0x01d87a00 0 0x200>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		cryptobam: dma-controller@1dc4000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
