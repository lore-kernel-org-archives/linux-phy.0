Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7428C25B5F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sq/sso93Q+KxkUrOVqRtaLrsttvweFERjZlG94LCvUM=; b=aOrWFYFJzKYQzI
	2tQiu2g2VOGAuOAxLX/uwxaW35Ul82iKe81rHyJTRpXrbqgIqGMcL2ZI46mXWqbxTCnB0Ewsnq5t0
	zXzbPO2a8cSpSWNNBhE2946T8KA1xqeZSE43yuXxyZYrcd6lKB/bfJXCq5HX0olZRCCCjPnolwTQt
	UyztT/LSUnk+pKeB6vNCbCU7/Zv1ul2772pHlJDOMcW0jD/hTw4p/utOyp11rYl6yerFnp/yHo96L
	W8qqP8Nw2QL2GsTmQnSGmLCmtc4ZE5ragNPHYIocGPA5nJevSlBE9fDX+A/AdwSptNffHtytsrYHb
	sjVgwgYBjUhddYiEU2mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgT-0000000A7Dr-025f;
	Wed, 01 May 2024 16:19:53 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2CgO-0000000A793-1snb
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 16:19:50 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-51c077cfc09so8291846e87.2
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 09:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714580386; x=1715185186; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eE064Tt+USwNcWBmC/lxuVCrqUw8m0WdQguIAwzhth0=;
        b=aFJc1uQUCu3fq8ZxGgLSTe0UIGEUElP5f7MMwXDa83ASVYmbVMWDdKTQOyrRWsT53L
         zlJOG/Ajt2chECwNp07BtckfLjap+saKpXDAUgZy4g/6pdPTO0QOXht7t0X/InfTxSNY
         ivRo0hDbRqWY9ERmq8bmrRcsV5FN3+iOl0VB6cpQQt1ppTElIedHnNFvqzAn52xVh1+K
         NFXYHAOv0o/bBiH2uHlA11ctgvMkFDI2rZPZ/zL7pmLn8sc/SpAXA96pkGiduwYC+D8b
         mVePidvicT/Uu2lh67zkGQTwr2Q3F1W4S+bfYxIEXY1scOR+1m9faa/yMDJYaay+TgEh
         HYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714580386; x=1715185186;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eE064Tt+USwNcWBmC/lxuVCrqUw8m0WdQguIAwzhth0=;
        b=eujJRhRvkYZHymumN1AUHejlKz/hIo9EhR6og8cQQcugFJb1mwT1EyMX1RyEN1aH2I
         X5d7WBSC4xH0IH2PLq5Brc6Xv2uyu12+O8EXm2PoFIIezw4UUdYiVEqxy/y8kKKpJG+x
         VXK1vJmu35wB1GUT1ntF1Izm6n/e+YyxmP5RBU/ObhqHNu0kqOWIHX8rycykDuN+DJre
         qUPpWMKGTqETDbI8bsNIXnbKanXELSgx9czTbfSm32gM6FEuNWSnf+6ZEUhEbxDNFdtz
         AWEnOWQi98hi2cWgXSOVOVk9eo9jmsLvGLuX9A8OWgWmOGWXCC82BVNhju8i4dN27EoP
         gKrA==
X-Forwarded-Encrypted: i=1; AJvYcCW7w7xLp2FIOSB+6J1i05jIgiuxJxNJL/eAXfnqyElxCVJaVYonaD80DuK9AGNFaPVIRcmeTbr4rJsIKY5U3N8e+f4s4TglDiVE4vcyDQ==
X-Gm-Message-State: AOJu0YzXfx5xkFwWCtRUuKae3minTATyFcMIsLrIBLUFx6EnfMUoMV2U
	KaibhobmCMTgaIW+s0nJnmhYqzcIcKKssxzsj1+9aC83zGj1DdxDgk2vE1XzEvo=
X-Google-Smtp-Source: AGHT+IEnHEMgd22v1vl+7LrjA8FxR58Rh28ET7FfsJrLD0nC82cLpCy1mqy1OAB887vwzp/Kp8luqQ==
X-Received: by 2002:ac2:4299:0:b0:51e:fa9d:a532 with SMTP id m25-20020ac24299000000b0051efa9da532mr214449lfh.37.1714580386060;
        Wed, 01 May 2024 09:19:46 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d30-20020a0565123d1e00b00516d0029383sm4909306lfv.28.2024.05.01.09.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 09:19:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 01 May 2024 19:19:32 +0300
Subject: [PATCH 06/13] arm64: dts: qcom: sdm845: add power-domain to UFS
 PHY
MIME-Version: 1.0
Message-Id: <20240501-qcom-phy-fixes-v1-6-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 David Wronek <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>, 
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>, 
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=772;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=U6Q+67PbdRpsMf2p+D8ZYXA8/GLgExMANFnZ5cyl3DY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmMmuZrozUCTRszRcXBdCdCerl6UKTSZO2E+q7F
 fmL1NsYLa2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZjJrmQAKCRCLPIo+Aiko
 1eHvCACUhDO18VR4nX6R6vpsu8U7wzpgKsXJ+Vqw/2jx4g5XL/T0HYlIU8MqX2LxmEaacWUFCfp
 m/lZTwf3VJ8Knn7Gjs4YnCPiy6BHQlRxUB39Ga0U6ycewNEGqYIQRt4nQltgNzMWAY4Nd2vS1E0
 si04S0hx7S7Da4RcRhDp8WNZ0usr4sNx+a7DbZ3XW6YOKKSJ0gSLXzaNccD6iAB5iOirRpTR9Hn
 H3W12LX2hyBfkxhe2a8n8jfDyDVA9rw16GNUPj0eJDiu1cNc5K/01vi7Nyh3Xko8O5vXXg+xcMT
 r5Gf6iiP5bD1u34Ohkid6Tnk76/xBO4mehG0KgMmBA8QiQo4
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_091948_682843_217D79F1 
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

The UFS PHY is powered on via the UFS_PHY_GDSC power domain. Add
corresponding power-domain the the PHY node.

Fixes: cc16687fbd74 ("arm64: dts: qcom: sdm845: add UFS controller")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 10de2bd46ffc..26b1638c76f9 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2666,6 +2666,8 @@ ufs_mem_phy: phy@1d87000 {
 				      "ref_aux",
 				      "qref";
 
+			power-domains = <&gcc UFS_PHY_GDSC>;
+
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
