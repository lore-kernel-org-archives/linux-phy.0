Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84098C38142
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 19:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vHLbOxEaO8maj+bnvLdVAYUKHNlISwE3PG43KxG3Cc=; b=QWdwy+5arBfHUq
	N77H7NLTHVw6pKJi7LnJiG3yukIsMYvek98XEi3bj9qMZ6KbrndNE0uwtfO3MXwFvU1NnU6/waQyo
	S8hlnio1tahfwIlbc6mEMMOt5brXIgYL2lmf5x5ll9c76JJPgUE5wqRBE5xoar+yCfk36EsRsFG3r
	cSU0jbM3L2BoTWC0+tXuUk4u5/Wduu33IgHdQ6PT76vKqFV+BoC2oRyAO5EtCuaD2uaa1bSMAxhMr
	qElomJDFP1YY68fauhiTZdsoYCpCSEotO84E4kHeAnrQuUvX+sjt6fzVJdyf6qepLIq78dglHXB4A
	R5gey0SA7aj+Fg3tABvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUca-00G9bZ-P3; Fri, 27 Jan 2023 19:42:48 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLUb8-00G8xv-Fj
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 19:41:20 +0000
Received: by mail-wr1-x42d.google.com with SMTP id m7so5902478wru.8
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 11:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FIb/cqDE0QEdwTfTF/AFA5NuBZabL9Ys/KRcfgHJZQc=;
        b=oWy4sZ6gIKCFHxueqjpfjKe7DWfnAojOvONIwiYwpzZjX3rAx+9uwf5lJcI5Wc4qVs
         S0N0v1tHTL2B5q4M/5cO/f0ScgXOYMCdakGInGdLbInpOhUhgWfA0FkK0xyAKLbE1DQ2
         yfQ8gf8/ZiJAwBTvXAoIbI0e3rtuiD8qYAmp500vi4R0C+hoRDdgiyKgNM64HAbuNseE
         tNXLhH4lveMQhsXkqUVlqEL8JnMCl+WgR44T0ptAAZ0cgaCZb8WJFo6J2A6olqMiawcR
         DQ/W0CoHs9+Akt1Lmv8RocRaZZOXMjA/qsF0SJTWFo2PZS/+/NM9JxKVen+S2s3Y8x0C
         Zgng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FIb/cqDE0QEdwTfTF/AFA5NuBZabL9Ys/KRcfgHJZQc=;
        b=Kj9C92GPswswhHXk8VemrPO+5CMF09ydO4FSOtWDErt2LoRMcoCglMQhyV1sGwbVnU
         g5VAEC/5JBs3j8CTejppbNEGmJ/HaXCgaNaLHq9FAprLaZSGJaCbONr4g+T3nHsi4zpK
         CJQ2PW7wr4Tp2qsTCpqgt0dBqBx+ZiUxMvf7VspWowBadvYLS9KgXT9uCAHjWE2n/rwh
         2VsiH61SOrwTvP2261gHyDLArZTT3Lie+qePUlGixRWDvyyi6tCQBa8QYhvS9PJ1x7mi
         2MsM00PL1BYARyqTS26ruMJcMRfJsnHGkO63fTs5QVxcLanx146S4yNpbjVFLWAFCA+T
         IXGA==
X-Gm-Message-State: AO0yUKWJnh/Um2+taavOq0lpyIGUd7VhpvAmqfcNNl5cbqqDkMfCMpW4
	c+aGXGgjdGfZ0cxOiA9WbfmH/Q==
X-Google-Smtp-Source: AK7set+5hEuWwLlJU+DMSAa4vo4DuOo9ZWE2X/CfhREFzZJPOEdmPS5UEkTnICoYP5XRtrhkaCWtag==
X-Received: by 2002:adf:e785:0:b0:2bf:c09e:e7bc with SMTP id n5-20020adfe785000000b002bfc09ee7bcmr7659575wrm.7.1674848476372;
        Fri, 27 Jan 2023 11:41:16 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id y17-20020adffa51000000b002238ea5750csm5822417wrr.72.2023.01.27.11.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 11:41:16 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: replicant@osuosl.org,
	phone-devel@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	=?UTF-8?q?Martin=20J=C3=BCcker?= <martin.juecker@gmail.com>,
	Henrik Grimler <henrik@grimler.se>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/8] phy: samsung,mipi-video-phy: deprecate syscon phandle
Date: Fri, 27 Jan 2023 20:40:54 +0100
Message-Id: <20230127194057.186458-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
References: <20230127194057.186458-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_114118_572695_4102C17B 
X-CRM114-Status: GOOD (  13.06  )
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

The MIPI phy is actually part of the Power Management Unit system
controller, thus it should be its child, instead of sibling node with
syscon phandle.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/samsung/phy-exynos-mipi-video.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos-mipi-video.c b/drivers/phy/samsung/phy-exynos-mipi-video.c
index c1df1ef3ee3c..a7f67857e5b2 100644
--- a/drivers/phy/samsung/phy-exynos-mipi-video.c
+++ b/drivers/phy/samsung/phy-exynos-mipi-video.c
@@ -298,7 +298,7 @@ static int exynos_mipi_video_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct phy_provider *phy_provider;
-	unsigned int i;
+	unsigned int i = 0;
 
 	phy_dev = of_device_get_match_data(dev);
 	if (!phy_dev)
@@ -308,7 +308,10 @@ static int exynos_mipi_video_phy_probe(struct platform_device *pdev)
 	if (!state)
 		return -ENOMEM;
 
-	for (i = 0; i < phy_dev->num_regmaps; i++) {
+	state->regmaps[i] = syscon_node_to_regmap(dev->parent->of_node);
+	if (!IS_ERR(state->regmaps[i]))
+		i++;
+	for (; i < phy_dev->num_regmaps; i++) {
 		state->regmaps[i] = syscon_regmap_lookup_by_phandle(np,
 						phy_dev->regmap_names[i]);
 		if (IS_ERR(state->regmaps[i]))
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
