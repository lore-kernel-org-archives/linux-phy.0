Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A977C7EE30
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ON1r9u6p/y22qQ+d0oplGcbRxBaFN4rIbzo4VJogQ8=; b=I2zN90ia2FrPe8
	ql43hjvUZtMVgGLwmBPycShqmFyn20UW686RJBBMP8zcgoJsLslRj4jSm3c4teTtDwupowhjgbSvI
	tcm0op7Gd/yqNmMqq61YS06nwG7JtMJpEfcuhdA7XV0YygbievAlc7fkIzk58a9EQXvGJF6xp5/RY
	MymcD6O2eZjqWxUngQj2nb7OzUkcZ2keTL7CuP23x6BjyYDTOH8spuFf6U+k8GHw2QYdDJts9PYsV
	5rV2dgEwX69bjKVf1lt+U41R1XsNm5/m+dC64e0n/O2Vga3oNQlE7VvjrHmc+DpUt25zYNDulQ4Q7
	Pxfq41CmaGSwKtqZjVgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrX-004itc-2g;
	Sun, 21 May 2023 21:45:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppE-004cwo-18
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:45 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f3b4ed6fdeso1791993e87.3
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701521; x=1687293521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Kd0Grqe79UZr596KesxYlHc6g9tfq6ax8GIQassp/A=;
        b=rxwteexP+1nh6CjONIZr5CpVVFrMfvmp1jO6T8LthurqFa/1msDZ5g/8CDZHX9ysh2
         zsJ0Exm/Pe6SyyKSjSrdJZVVitQCfZGoboVC/9inP693w47iZAYjJXFUimeF/t1F3Wlj
         W0S+nbNPn2IJv28N4YcGKdZbr3Z6cHbs9s6EZvy9nBgXTXnVrk4+dw01cpQIW7rkSETJ
         ZxufG8BpzKu0VCjwQ4FRgnJHYuHAOPHbch58CiwvTpARj2C1xsQNz+GUMkLQ0DtHbKua
         kMcX0XciDaVoXxq/V82P1VB8ocJ3A0qbOIXbKMLS6YQZcxccycNwB9YghASuUIq7b/qX
         qg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701521; x=1687293521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6Kd0Grqe79UZr596KesxYlHc6g9tfq6ax8GIQassp/A=;
        b=FXibscjW4TdTCWfMflx5/g88+o9lMm3ZqoDXbbr043E/wIjmJHzH0OegduZhiqPedr
         za0b88ulT1iOt2Wiv1shH40+fixHIELby1fyvTCpKgKvY7Et6MUpmgUd3ASbfNF6akqo
         v9/+Z9bLuLtbwTk7R/jnK+JkKNzBcOFmaaNhnaAF1WZoGMTaJq7S0su1hy+koYDWZeFF
         JTMmdBHvOo+2Gwn/K/qQzh0+8bfoz8pgnv3KOpgSS4RQvu/FSAyiyhhiUCDHy9NNtDcp
         xKzbUr7WgprD4C/9o9lC1JWKH6ozLT5XgMpP4MVWRd1fOE7C/Nh+oSjC+EdnDyVc12ro
         6GNg==
X-Gm-Message-State: AC+VfDwG9mOTjug7TOIh/n9y/zmKINgxw/PlFPFKlkcFzFAfxcnfI1VD
	OzTiSWCHImIXLfrwO5TnF2AC7Q==
X-Google-Smtp-Source: ACHHUZ4XLF3qbBUiVvvYU3ykQWv79zMtchpy1NLZ2gOLLFNpRC22jZoi5ayM3bowdGVsfAq8TwhW8Q==
X-Received: by 2002:ac2:5581:0:b0:4d8:8ad1:a05f with SMTP id v1-20020ac25581000000b004d88ad1a05fmr2820050lfg.48.1684701521550;
        Sun, 21 May 2023 13:38:41 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 13:38:41 -0700 (PDT)
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
Subject: [PATCH v2 08/11] arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:31 +0300
Message-Id: <20230521203834.22566-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133844_388963_E82DD30C 
X-CRM114-Status: UNSURE (   8.90  )
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
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index e2e210e10475..98fd356e87e4 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2019,7 +2019,7 @@ ufs_mem_hc: ufshc@1d84000 {
 			      <0 0x01d90000 0 0x8000>;
 			reg-names = "std", "ice";
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2064,10 +2064,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
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
@@ -2077,16 +2075,10 @@ ufs_mem_phy: phy@1d87000 {
 
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
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
