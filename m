Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65178C77B75
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 14:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwMNyc0CmJlQGKOoA3lPx4XZNpdQ6chIztx54SWQe40=; b=Mt1ghd3GyL7MeS
	6Mdpke3yyXI3OE/3B+swlOPRIN19cdryUqdtqBsAKFAfFEdLFHLfpW/LaawjlkpKu0qdSdU+dm/UR
	JMKSFXP4zkQICfg4E1llmZlI9Npeu2lcx4kblmC99+j3NjWW9lwTcSyO/cSrgoOXyy3+LkNXikXq9
	KJEAp02Chxh/eYLMeNA72P/GCeJAmDuhDjNFgzzMpmHkeIv+WEBMKXNMer1LfDQall6ugQE5mCRhj
	O4NwueP0/ZY/qPQ0Bm1ItdPZu0U0vfecaBe/vUeSfT2UPpV/q/MlJPvOvAgMjCWm6bpoJlLf7u5vM
	nPs2bzWGMmI+7WzWBhhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfn-00ASdV-0C;
	Tue, 23 May 2023 14:07:35 +0000
Received: from mail-lj1-f181.google.com ([209.85.208.181])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Sfj-00ASZu-2d
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 14:07:33 +0000
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2af31dc49f9so37930481fa.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 07:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684850790; x=1687442790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7OXVIkjrWVLvZ3qsnkAad9UB/zj1wCOAqS0MZBYARE=;
        b=SJ0R6plCpIPvEk+0BoEMGpm/9zncnxBQK+2RoeJh1OnB/d91jgaa5TQLpkz5MfA/yx
         gSmf/eqT0Is1+SzqWKvS1RamFDyK3fbZ1Yv5CrqA7WlLJS3bZiz0O1Zj3Q0wh2KpVC5Q
         pAyGyVO+Em7ei6Yo3/AX+AUlcky5WT/41SSSs5nH00tN/R9Nx0FVj8L6LQiNGXN+ZSZh
         es9nCkkA5NtgDOjn9TPDwJ71y3uAJ4g4G8DzILju81mem1ddE/ZHCYzvhD8JO2TYDSjR
         GoVwA68knnKrSpXf2oCZenqRQHbLxyBkGpefwqNgbeig06caDijraQPRpLiUsyi29dxi
         pVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684850790; x=1687442790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N7OXVIkjrWVLvZ3qsnkAad9UB/zj1wCOAqS0MZBYARE=;
        b=O/5oR9ts583EE4blHk8XcpCTsXKo/xz+d82oo2ji+Po3E89xl1nqR5Gv81jktR3Ix4
         3wWLeNTuJ4OyvbsWMup7dnHchyhGALYz4/YJ5hW2t7CPCXoJNe4jmoJGo05A/wHAompU
         NwNvTjpm1DVfCKXR7Rk3pYbe5u0K5MQ2rmzjXBPF5e+OI52pajZeI3bMHYuxtqDd4oHa
         BYVWDw74pdFmApxz/sTy4hVuZIdm0ndhvezASr0zctD36Za8JRKgwGBbQyddNNxTllb7
         eHqNlGOTG0qMTRW0xDmdwF79IL2pY3jWvUjNtURUZdy/v0M0XGoNaPL1NYqdZuRFqmMj
         mEwg==
X-Gm-Message-State: AC+VfDzm44tQpaqerM6yklao5T13NJb5L9CeQO+KPDJ6ivJW1EmBV0A+
	leqjNOrq74OtmnUKA8C0ZFHT3Q==
X-Google-Smtp-Source: ACHHUZ6i+Nva3NLYuIxC8pAEsJo3OYiWZwFoFqEC2O+BoyB3/cmSUocl19hauHBHH1VHN3l1QNFgFg==
X-Received: by 2002:a2e:96c7:0:b0:2ad:cd36:3379 with SMTP id d7-20020a2e96c7000000b002adcd363379mr5584565ljj.39.1684850790601;
        Tue, 23 May 2023 07:06:30 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l1-20020a2e9081000000b002adbe01cd69sm1633536ljg.9.2023.05.23.07.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 07:06:30 -0700 (PDT)
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
	devicetree@vger.kernel.org
Subject: [PATCH v3 09/11] arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
Date: Tue, 23 May 2023 17:06:20 +0300
Message-Id: <20230523140622.265692-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
References: <20230523140622.265692-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_070731_855539_9739BAF4 
X-CRM114-Status: UNSURE (   9.41  )
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
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++--------------
 1 file changed, 6 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 7bea916900e2..b6e631bfcdf9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2165,7 +2165,7 @@ ufs_mem_hc: ufshc@1d84000 {
 				     "jedec,ufs-2.0";
 			reg = <0 0x01d84000 0 0x3000>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufs_mem_phy_lanes>;
+			phys = <&ufs_mem_phy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
@@ -2209,10 +2209,8 @@ ufs_mem_hc: ufshc@1d84000 {
 
 		ufs_mem_phy: phy@1d87000 {
 			compatible = "qcom,sm8250-qmp-ufs-phy";
-			reg = <0 0x01d87000 0 0x1c0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x01d87000 0 0x1000>;
+
 			clock-names = "ref",
 				      "ref_aux";
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
@@ -2220,16 +2218,10 @@ ufs_mem_phy: phy@1d87000 {
 
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
