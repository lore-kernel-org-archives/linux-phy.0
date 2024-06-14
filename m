Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13172C2BA15
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOgJeyo42a1Kfwkl51no0/J8L0Hdo0HW6YAv6vH9Yvs=; b=QFXjmcVAM9h37q
	W8QWtN8rbueXTmXPDg/UZgxC7cryP6v7rDZKyNlJ1RkZEGYUkR7v7wV/Y5/iwKZITGot7FwwIOG9Q
	SfUHBMQTdbfrfijjzJi4t9L8YLJyTAi6WvwAzlHlCgqcEPs8y8O6IQH1+Ms1sTHx6WSf/kJjrxWoG
	2FRnAHEzPrZczRBFxCtIg2dzYM7IQkNDoi1pSiT9a/WbFQnsmHZMmrHxRBbuRg31RXpG6ZYwVD4dU
	x5svoxJf/cYN099X72UVsNnX22Dj4YK6XUwxBSWA1YPK5Ke+4Nj5RYvtzLov+qVBEzKITPSiQfjRG
	jLNDkbwU+++D+rynNQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40z-00000002Nkl-2Or5;
	Fri, 14 Jun 2024 10:18:37 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40t-00000002NgA-0ytc
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:18:34 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2ebec2f11b7so18912201fa.2
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360309; x=1718965109; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wGVopoWdqPSFlNXF2M7QZAnj/iJou3aBuTjurw+RWuU=;
        b=t08SrBtDdBn/2z9WAPNl3ihm3awWA0E1aDeGfEn6Ksz4QAppB3GjUBwDKS57ftkXs2
         ZUFkzSve2HF7H1dIVrK7JaNe285MaBdNaFFD237ZUnJjoTqS2LHnejEfh3w6YXkd1GLR
         xT4p7TkcOPDKjeTmFETZbozUjfz8i5KWs5gEzlcskrauCu6DFXw82uYYlcmXosmxEGKi
         cKS/i7jT8SqCDTKq4pjT/beuGov50e7lvU5S0CAbfgLPdLtoSDjHP6wwOHoPTkRCcxvZ
         0fIL9ppk98LhVlU0QIyFwd9cqFWPZ134nEYcnwzIRwOAMas2BCLiK0x2P/Bzzui1bEIj
         2+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360309; x=1718965109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wGVopoWdqPSFlNXF2M7QZAnj/iJou3aBuTjurw+RWuU=;
        b=iooByoJf8ud7S6W9HlWaeXpxjw+n8CwDMrftfUw1qpy9SRA8oeENdrzdlczmdSwqxd
         wAHTR+ODlJqls379bnAR3BV5sKTZX+uxIHteG6kDNfIN6ZbBFZhwc60XjLNFNR7XPASx
         BJx+J0JakchM2pcjmc2i8AlWu/t2aBhIHuWWNKFoKyyFh/ccodqZH2P23yK8OeVmoXLq
         WKHU6Xq9LIPuc3oko69yvim3HmTHa2iqt/ARTWCKwayI41/JW0qCxhAARnAkLwHSCJID
         5rEImcnZrylTAAUuvW2c3cv4PTr12bOv7stP7cuW+TWqA7mtxEAtUQsepHj+4LFvXoIp
         yY7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUOX2cOJ/jwQJzaK1ax90AMHqZbXSD/u4KPg6Kot0pJeAjOg7FgCs+PNvFecnsXokfLH9k8dxkxT2gTcQN09qe8PISYxmQDhZKbHroD1Q==
X-Gm-Message-State: AOJu0YzNnOQb/aknoVaQF6ly2rh+1mDMaSbJS54W1dw93ZtdBq9byOtS
	2UX6it8ldojL/z0diRKx62CenDU9kyCII1tD1y1pWRhSpdujJEO0CbXow5ZyXjY=
X-Google-Smtp-Source: AGHT+IFyATDGv41JngQAe9aj+vnWhVV/kXtIgvKp3zBckXUUjiKaV+5loBQYPqXyPZSskmg8Uy8hzg==
X-Received: by 2002:a2e:a0d7:0:b0:2e9:881b:5f02 with SMTP id 38308e7fff4ca-2ec0e60dd17mr13624961fa.53.1718360309661;
        Fri, 14 Jun 2024 03:18:29 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:29 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:27 +0300
Subject: [PATCH v3 4/5] arm64: dts: qcom: sm8550: drop second clock name
 from clock-output-names
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v3-4-730d1811acf4@linaro.org>
References: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v3-0-730d1811acf4@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1027;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=KCN2eANWYAM84jA8/6xmT/BGXcDHwINY3x+bGOwx930=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjxQDKgfgt86XMAJTyJakQrvV9cTkYPD2CnO
 AXdxPAEv2yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8QAKCRCLPIo+Aiko
 1bCyB/0eNH5okiS2Gr2nUlUxzqZjhc4rx4Wt6oaJZe6usRrqFLkqbZoJT1ARd3gk98E47ifpwsE
 NmfHLVTjCcZpM85X8raYBVRnXFNEywYHJoLvs1KtCrxQQLEkNbnRuPDWbRnBFvgv/8ZaT7vmerx
 X4kv584KWvjBNuH0nfnpy2LR8f+o6cvfvWfr3458R+jwH5jwGOzuj2g3mKvSfDfASj1LYxBBUDf
 +8qwCboUnTPjh2LbrbBE8mGtMfUG4kx6eAapz78uvzKpEASJV3XSws6V3idjux6znB0R0R1ySbH
 qLxNt+IzUg7HQ/l3BLDXN3xszs0UhDD0wqN2Qwcb4YwCno2c
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_031831_316386_542D63C6 
X-CRM114-Status: GOOD (  10.89  )
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

There is no need to specify exact name for the second (AUX) output
clock. It has never been used for the lookups based on the system
clock name. The driver generates it on its own, in order to remain
compatible with the older DT. Drop the clock name.

Fixes: 0cc97d9e3fdf ("arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 4234c92aafe3..be4f0609c436 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1939,7 +1939,7 @@ pcie1_phy: phy@1c0e000 {
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
 			#clock-cells = <1>;
-			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
+			clock-output-names = "pcie1_pipe_clk";
 
 			#phy-cells = <0>;
 

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
