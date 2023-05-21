Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0D3C7EE2D
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 21:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x03yHsSN/I8LERAOlTGjAWyVaJHYlZ4ykYHxxWJZeTc=; b=zeChe3ken9H7Ud
	X6M1lXFd+S194wZyUyoDAbvYD/bFRFYiaLtutI0as2nnjRUnP1/ByY33tf+ezv9/wAmntfZufGh5T
	/VIaqLI+52c+1JkGPh63WUveShy6nztj0ZxefaFCEsPR8iP8kqYobBvH837H9V8Wsl7hGsDVrkAo6
	io0MGfLf5cnCxhUmGDKNnjKvrRXtdkeRw3vkRwYg/RsgahOsuEimWkEuLHso05HcgzjWXsc/bOYNC
	PTRZZXE6vvrEN5m/JJ318B4YdbOk4I5Lf0v8kMXRDGFqtsk/uLTmsGBkVwF/T7o3I2ZJZGyxz8uLi
	i6b6ZQMqt26KlJWZM0Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0qrW-004isy-2s;
	Sun, 21 May 2023 21:45:10 +0000
Received: from mail-lf1-f42.google.com ([209.85.167.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0ppB-004cvQ-2t
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:38:43 +0000
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f3a99b9177so3914192e87.1
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684701518; x=1687293518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcRQZHeKYyII6sReSP+kjuVN5EwqkM/8SDe2wNc8djc=;
        b=oLUYY72DuoBSqziokugey866gW1sNGyX/3GVnISI525Of9+ITBK1Oz0j4LaETCzSTC
         tsfiMfqtecVfIqNqSrXG1TZMXCb7X7waMoUzuEPQ/FQ8jrkMAWnfUXyijOSXyD+2h4lb
         hEeFvBh6lpX5rpcJzM8wGYiIk3Zl+tsbPf4Tgod2szoC011rvUhZRebzHKN766KSCSPr
         WXTzmKlXhO5otAQSbbiS06ZjrQ1fZnQfeHtwi25m6VgZKAvkVpx4/fJVc7rAKE1kC5P8
         aDe5fPHIG6aNwsgPmNhe4vtQ7xknxyWIw/t2sdnG9MMIme+UTWGrcwxm41d/bMmsy8wS
         DP0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684701518; x=1687293518;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcRQZHeKYyII6sReSP+kjuVN5EwqkM/8SDe2wNc8djc=;
        b=Dp2w/CqyATeaw87Piw8UGEabO0qkOzJKZoFFJy7tY88X6kxov0lvxmYa7Q+/Mfcdqq
         h/Vb3voHc9hqMZBdbuj21ESVmNFRRFVngQayGyI4nHy/4h9PmBMbPfdqAnm1JJYx3DDQ
         iMfnTgLgzYtCL5qjQ0sDkbLfMf4u6W/yEi7Ly/xtpToAAzMZouyAWAmUyadJ8XaSFlIg
         3K6BCAj7DtB9XVQWcUjljtkUstld6m1UKf78CbeMbJlWYwrh4mR/1SdxYYVdE4vOMb8c
         Xm1pAFlZ0VafKc8ismeKTqbIbhoblA7ZLH2B6bQA9yVdhKv0fJBdRuBThbHBZZOyb5i4
         iDDQ==
X-Gm-Message-State: AC+VfDzHXj8xsGV512LQEksvnw/1/hrb+cL4iIjKY5i2lulXkYIHdVAG
	IP24iG6p5/dNyN2hOOcgkHhBtA==
X-Google-Smtp-Source: ACHHUZ7IbTp5ckmapM1PL/dQZFNPqHPkCOUUS/a+grGe7wnCs+zs/td86bI5N/5cVO/yfcttwPYQMg==
X-Received: by 2002:ac2:593c:0:b0:4f3:b588:48d0 with SMTP id v28-20020ac2593c000000b004f3b58848d0mr1587937lfi.14.1684701518536;
        Sun, 21 May 2023 13:38:38 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a15-20020a056512020f00b004f3886a63d1sm718894lfo.298.2023.05.21.13.38.37
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
Subject: [PATCH v2 04/11] arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
Date: Sun, 21 May 2023 23:38:27 +0300
Message-Id: <20230521203834.22566-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
References: <20230521203834.22566-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_133841_932458_65F77D00 
X-CRM114-Status: UNSURE (   8.93  )
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
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index b150437a8355..848fbd2cb3f8 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -980,7 +980,7 @@ ufshc: ufshc@1da4000 {
 			compatible = "qcom,msm8998-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
 			reg = <0x01da4000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
-			phys = <&ufsphy_lanes>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			power-domains = <&gcc UFS_GDSC>;
@@ -1021,11 +1021,8 @@ ufshc: ufshc@1da4000 {
 
 		ufsphy: phy@1da7000 {
 			compatible = "qcom,msm8998-qmp-ufs-phy";
-			reg = <0x01da7000 0x18c>;
-			#address-cells = <1>;
-			#size-cells = <1>;
+			reg = <0x01da7000 0x1000>;
 			status = "disabled";
-			ranges;
 
 			clock-names =
 				"ref",
@@ -1037,14 +1034,7 @@ ufsphy: phy@1da7000 {
 			reset-names = "ufsphy";
 			resets = <&ufshc 0>;
 
-			ufsphy_lanes: phy@1da7400 {
-				reg = <0x01da7400 0x128>,
-				      <0x01da7600 0x1fc>,
-				      <0x01da7c00 0x1dc>,
-				      <0x01da7800 0x128>,
-				      <0x01da7a00 0x1fc>;
-				#phy-cells = <0>;
-			};
+			#phy-cells = <0>;
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
