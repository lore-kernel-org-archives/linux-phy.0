Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5844AC27C75
	for <linux-phy@archiver.kernel.org>; Fri, 14 Jun 2024 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qknpEkcd14IjquREiLkV73M4vIYl6tL5CxlOi2q3KZ0=; b=qNfRoIV3+Tn0YS
	PJ3O5mh5823SX9J7VkPqyATbXpoOVfD++dGHRmajgYqnakZQAagxjZhoGEEkakIJVpFxolyDa/DUr
	q0CVAbyajBamJOWkTP3zH7URk2Rkfasf7U3wmozveX4zTaR2g7YxPUp6g8lhIzXFcCVOpR5WpiK3/
	qY+/ZOwq02Vphqr5zHq1BVPfy+QqRM+CBSforOr8IhjZjQA304kFiVxuKvVtMO7SNVt7fAqF/t0Jb
	9WFuccqAqcffiBrVFoQxEEZb385Pp+gYm54lpH/WFJv+Le2Wpv9N4dEWMj26t2KhqOb7DkzYRQBCl
	nY/u1L+1+kkvOS0Ob52w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40y-00000002NkC-3g0G;
	Fri, 14 Jun 2024 10:18:36 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI40s-00000002Nfd-2fBu
	for linux-phy@lists.infradead.org;
	Fri, 14 Jun 2024 10:18:33 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2ec0f3b9bb8so7347851fa.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Jun 2024 03:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718360309; x=1718965109; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKJIxPh3iwWiGBYCC8CzGF4wzG7kkW6ofHLM9pChGMA=;
        b=ePyHuFyZffcKS+l/dpM9oXa2f//OtadGVoC7vg8swttm02DpTjIsZlJFxWfYpkRyZf
         WgzdIPv9VkhE+JAtBuYn5j2a60ouMBUgt/mLXa3sXJ28J6GGFclEghJb80t5cuWZ5Kgf
         2horlqnZgD6PNx6acBHlq9UEgnFXnJ3cXFP8FNrZVIVr7OVcstBm7iQuFiUF9OSJcUT9
         xj9P07zq6iIrBQms6sVEpQ0wNn3KXRLaD+8ZPnj+7jYcv7i6r5Y0cMCsWCDNp2rRoPMq
         kANKWyX1I94yWWTxbVrJxHIxtZpF6Nn/mWLLuyVsBmkNcNh3VIx9Anyx3+6ffFPe+9gS
         H1bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718360309; x=1718965109;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DKJIxPh3iwWiGBYCC8CzGF4wzG7kkW6ofHLM9pChGMA=;
        b=eP4lateRhIG978++7Gb/rlDc96DJy49Uckory2fcSGqs+3zKxaAbxk7v4QmLsD51sI
         /2liSIeFU3dRCvtyAbcHpeJZTybr4HRkr64GOicxNIDqJvHfT9DAw8puetzHQBdxaKYg
         8GkeOXWQeWpaFwHo+ThwSueaWkxwlVS23oQtI7EJUJZqKyu0KLwpXmXcvwYYYU+VjCw8
         2PwYPoeUXMsid6e7gB781p/p0HIkHMObhjPNue0tAwl3L6uhKh5TJahq+Z26ydDMrIVd
         ZVxFWW9TNqHGr1YE3ajKZgmB7gcE99prXF7Uqzba8yyUJhxHbGNSwaoJ/OmmxdGU2KiT
         Uwtw==
X-Forwarded-Encrypted: i=1; AJvYcCV0gm/YCrXt8hbsVD+Pwm5S8qmbq018GEi3ES0BPi+wYsJD3TzO2U1T/mT4KI3fcpY9ZPlOf/vPLfP9UcN8wlVYRqHU5jDv1pkRYkewbg==
X-Gm-Message-State: AOJu0YxMAIHiE4sQF9oi8fXvXNV/Z+JOBcpVO3uZx2OrW3w+9deerLA6
	StU6mr6bhxgCH0I9Zz/pxYza20bVrCxNyWaVFqfcIyGy7zGYe4YVyBb5EnknqVU=
X-Google-Smtp-Source: AGHT+IG2Xhy8zoMyn7PzdIprOC8LYO9YizVZn9DB7Ia/oMmzN+EjTODxUR73ikqqNHxvMjtjLRiGTQ==
X-Received: by 2002:a2e:2c13:0:b0:2eb:f7a4:7289 with SMTP id 38308e7fff4ca-2ec0e60e119mr13872251fa.51.1718360308967;
        Fri, 14 Jun 2024 03:18:28 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05bf44c4sm5000241fa.9.2024.06.14.03.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 03:18:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 13:18:26 +0300
Subject: [PATCH v3 3/5] arm64: dts: qcom: sm8450: drop second clock name
 from clock-output-names
MIME-Version: 1.0
Message-Id: <20240614-fix-pcie-phy-compat-v3-3-730d1811acf4@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=I093xTrSybfnOucPVkUB5qR7/j0+qKZEXXwZD3HnmRI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbBjx+BrBaGMaaPRDhS7jLrNy1Rtar2xIcCN2z
 msnF3D1TV2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwY8QAKCRCLPIo+Aiko
 1W6vB/4ucABTtla15D+BBWE9tmORhfqnB46o6atREi46/FGipL1s0qcH4paXOk3a6cY/7FOzscm
 YvUHltJ6hJ0RV8Bky/IHSilPZ9kqMMXDMaVmossRDttbBwmhmW/Ad1OVrF5J7h/EJ8k9W4UgdD+
 MshRl9IrqD5zGRoUa2fHB+6CaXpuICZE3C/4J9fAo5bo+1vZbXJ8oxVUmJwEXimCMTl4ZmQvWIX
 dyU9NyxD7iflpfEma92EuWmnNEtWvznU8dwGgl8j2zxSysqZ6VhSrel2CIm/mdeZnJMw+0PvM95
 3E33ce7fjovm+Y3hIPllA5hx9Asd/wbcrmXqLR8jpuiSn/rs
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_031830_760482_7244A1F3 
X-CRM114-Status: GOOD (  10.60  )
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

Fixes: e76862840660 ("arm64: dts: qcom: sm8450: correct pcie1 phy clocks inputs to gcc")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 1e762cc8085a..9bafb3b350ff 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2087,7 +2087,7 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			clock-output-names = "pcie_1_pipe_clk";
 			#clock-cells = <1>;
 
 			#phy-cells = <0>;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
