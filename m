Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5BBEC25B75
	for <linux-phy@archiver.kernel.org>; Tue, 21 May 2024 20:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TaXdIMiV3yPBd1zaIcVScfeXVrSRcn8a59rPI1K9mw=; b=N9mv2PpITMjp2X
	b8go0/PZH9wghcIOFyvXmiNps3hLXFCC0kaRvc8U2ziy8Arm0VxSUFw+nSEi2a7bruSuRZxJkaXym
	dzwdGyQPe13iVKUOPL15SBId0CiEP0sDKeEX/lH8MxhXDOJb5aMVjsSMKYqYHeYC0ZVcbcS+pTHxK
	O9VNznGxuVKJmzo/Pq+xmRr5u+ITbOnDg4+22RyfP1uQaDLTyBdGc3nMxSTtB5mmvf35ASijgkd8b
	PUhjKRvS3dRc/Ahjja8moQRT6EWhthF4xD73Imk16IrupHuUZkzs8pLX7KP1+5SYaBQg31UfQPxuC
	kwZNm5iXWzC4MbQ5sBAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W8R-0000000118s-17AV;
	Tue, 21 May 2024 20:30:59 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9W8N-0000000116j-45xC
	for linux-phy@lists.infradead.org;
	Tue, 21 May 2024 20:30:57 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2e538a264e0so77098791fa.1
        for <linux-phy@lists.infradead.org>; Tue, 21 May 2024 13:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716323448; x=1716928248; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=61aHwd2183bAP0kT15DI6K+JvUWTUFMjXYFTY8xR2sg=;
        b=a2vBq7SE4/9VHCCJ9eaHEBhny7cxHTb0+ouIOjw9ayffezFTMoGewWXYJP2ftPuw9Y
         q1jSnyK2FI8VNa/NB3xiTLYxnukwodOqbJJtZywvEFE172d3LDDOjVzIZXcSVTQs/Yaj
         zdvacTgecv0kwDO+fFZGM9y4cYsreAbuXXNAU0TeZqDDToTXN4k7twNF+lX64VQHgq0A
         CGHKrO+dG1DFQjpDVpz7c73NlQYfUupM4ObTt6QVwGGQbQKJEcOc0N0U+njYQLuV9Q/p
         EJ5WchdY1rRustTtk6ip+LVo4K+b7C/UG+DEFC39CD/RFLPbmpoawnxyAF6M8l8+qhPj
         rG1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716323448; x=1716928248;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=61aHwd2183bAP0kT15DI6K+JvUWTUFMjXYFTY8xR2sg=;
        b=MB756j3vdMpfoCffRKHQfW+yVyFEaHUrTRRuqQwCGHEhzH3mqCk00qGDxccOWi2sNN
         mr6C6B3dKJqvQKPJ+IYseRlR+Lu1qgBeYUR7hlJWoTZ93PItxkPOeaYTPow+sNQDfqZd
         SngXcNMCac6iofWClAb5HaQF61Kmq1uBNOHUBSYXK2bPhl8sMRRt1gpCK0XXrkCG9jJl
         w8krsQjb6daE9cUpnfTUAvJoK+glevpXPxbFz0JuRizDWdpAXfXCB7ODRaLtVCUp+4lq
         0plu+5EnQRK/v8y+woJZm2rTEPkx/DQKrzf8OeUQYN7pJ6GYAlkdeRAqZHjVMAGaWRLB
         EqBA==
X-Forwarded-Encrypted: i=1; AJvYcCU2NCN9S14iLWm+GM0P0YLcmbGCqDzeLEg7Z8BmBFTjZT2DdSSIw5MU03wydQ/h+lmzOc+BusYtx46SlrpSVTbWybxCRGIq816ECI13dQ==
X-Gm-Message-State: AOJu0YyZpYQlMVlCbRvMQdkSAmMALpslXAoVCCVMyCv1TY56kL9ir5NI
	3FbJrsumUoaGgbjgpfcnS0AE4MTT9C1ktqo0GvEWpRT4TFToUulobde+DUd4GyY=
X-Google-Smtp-Source: AGHT+IHy0pjC5CDy3P6mbf7msRN50iLlv/wcGutIEXt9GlQXiF1OAnp2jM95uZzEJ4jxdQSM2h9I+w==
X-Received: by 2002:a05:6512:3294:b0:51b:6366:3459 with SMTP id 2adb3069b0e04-5221027800cmr27851507e87.67.1716323448405;
        Tue, 21 May 2024 13:30:48 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5238ec18fd2sm2538664e87.155.2024.05.21.13.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 13:30:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 21 May 2024 23:30:45 +0300
Subject: [PATCH 1/2] phy: qcom: qmp-pcie: restore compatibility with
 existing DTs
MIME-Version: 1.0
Message-Id: <20240521-fix-pcie-phy-compat-v1-1-8aa415b92308@linaro.org>
References: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
In-Reply-To: <20240521-fix-pcie-phy-compat-v1-0-8aa415b92308@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=+BCS5fG7t1ac6ivgcoP/WGAfPI0hUuFmhb/yRKE0Y3Q=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ5ovS1mu0/nibRkdWhw9d1ZFnVJhnxugl2whuDxytnRy/
 /WWbM5ORmMWBkYuBlkxRRafgpapMZuSwz7smFoPM4iVCWQKAxenAEwkcDn7f4/f+0RuqrBI3jzO
 vCPyrtznwwsSlvofCw/N5zt1STu9c1tpQOfU4J2szYYa2nHJobY338T6mjFWzznGPbnv8lR7wYz
 VLt1mTE+SZulbFW9h2LXY1UPX5lCDcdzfF5wrXum9ETn+uuzEqg8TZ2zPKb82T6n6tMKPimUMFQ
 0bC9VXXW6anzql8L/jp7zWZuVzlfPWbM9g2zT1A+f7kBvzbH5VxqossUw9v2hKMzefXVrcErFLA
 u1P/2TzFRt42ukcWLOEyaV2CaeAdR7j12cCF/1+rr8drih4g684313fZNVEU8WvDQafQto8jCdW
 bprhx1uhdHyiq75HrsnF/Wycrb8WPgnZaVge83J2w0o/AA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_133056_051765_11F895DC 
X-CRM114-Status: GOOD (  10.87  )
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

Existing device trees specify only a single clock-output-name for the
PCIe PHYs. The function phy_aux_clk_register() expects a second entry in
that property. When it doesn't find it, it returns an error, thus
failing the probe of the PHY and thus breaking support for the
corresponding PCIe host.

Follow the approach of the combo USB+DT PHY and generate the name for
the AUX clocks instead of requiring it in DT.

Fixes: 583ca9ccfa80 ("phy: qcom: qmp-pcie: register second optional PHY AUX clock")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6c796723c8f5..b4767b8cc014 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3730,14 +3730,11 @@ static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
 	struct clk_init_data init = { };
-	int ret;
+	char name[64];
 
-	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
-		return ret;
-	}
+	snprintf(name, sizeof(name), "%s::pipe_aux_clk", dev_name(qmp->dev));
 
+	init.name = name;
 	init.ops = &clk_fixed_rate_ops;
 
 	fixed->fixed_rate = qmp->cfg->aux_clock_rate;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
