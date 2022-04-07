Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA646C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 09:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iIT3h3WKxUYmdPU0DrnAKZIRS2eiI2ydnU3h5MnKWAc=; b=YU9olF6WKgvbZX
	DQ/cu6og4j/Nu8FbfW/f6mk8GYSUo5awmo2c/+sNhrIVgH3Mi8htVvgr9gEbyAUQMMShaBbu+k4Ob
	S+vgPaazRVsehemXBzFdp5XHiy9bnF97V2tSYjsTEDboMlo4o9QN0yUUueEvFhFks/IvRSFXo98cw
	5Ss2B5a9Ipp+lm6OKC8okhb7dbxYe8R1RmOrEMykvJkZge9Dvhhn4ANuM7DHAzzObSBUIr8njocyh
	roq5uiKsGmAEwcBsf4FVBy0U0dB/8VOkxOERMj1u6CQF1AgqPVDyG8misTZduvGUMgDzeZlOBHcqN
	QCWU+ed7reIUOaRPtjXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncOgF-00AyB1-T4; Thu, 07 Apr 2022 09:43:55 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncOIH-00AmoE-Dj
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 09:19:12 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a6so9633508ejk.0
 for <linux-phy@lists.infradead.org>; Thu, 07 Apr 2022 02:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LnBaoxjesRLMXYfiTlUnMPHbRX/jaeNrS7ud9yunYL8=;
 b=JCkCix2OZhzzzmIsUDtE4MsZEZ7sHVMFlEEY0eQ2IiiIZX43KOoAdUzdfUJL8x5ruc
 Sm3xnbbj+0CzltfkFFixHoqCq1v7LB6Y6ndItKvw5DA1x1eVcQNCJwj3HnNyAVeanXFx
 aHtgvRwOukySZEyYXkTEvxZzAVzIZ65r3D57Qpi/NI4Qzl8BmB6zVkHuIjGO8KoOyjs6
 aTT2qRYKQBKNs+JedW3VoPZa5GtmJGeHUmBhui7++0Xd0PEg2qb4FYOWZ7b/C/YLgoDf
 /vtvkLebSwu7JQcNOUeM9gPdWPWKUB3f3ZX7VJ1PMF5G1/IomarSADR6aPtoE6rX9oYo
 EI9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LnBaoxjesRLMXYfiTlUnMPHbRX/jaeNrS7ud9yunYL8=;
 b=UpqAyRFpLSER5/vbjHYdO9n3bf+KrhbGbt/xCUHdqFjHrNkpW18c/QJZmPDGPRri23
 0yMOqbSqbMGyhi+2YkEOAG168nZTM21x1Q3s5i3JxIHiqjIZZctpSSWReH0HKxdMo7A8
 R00SIMgvSPgyaSpujYgCX3xoejSamRbV7Of7tuSmrpEa9SvcZb5cZJCHqNobAKDCUrc3
 O4BAe3DFpVxs8wgs+FhyEFmUI96dPozg6CYa8b9kMa1pAFk710dZDgXIAJhKSnJI6Jkr
 OjskT4s8Q/JfK5bWHIlSHHFAFhe85JEG3aXpYu673j7FuXiL3EI0b5fQqIKCFMmRfE8h
 Domg==
X-Gm-Message-State: AOAM533+SCFQ44mWG/bzaupnwHbM9oDZwT6mS7w2WcOx1Tywbh+KA+O0
 h2M/rlmPTeDiJAT6n9yXdWL76A==
X-Google-Smtp-Source: ABdhPJwaDEOV/LwjRxHVpjg7xoZn+nxfMxkDpEWEHjQLfxMEE0rGyggRQCA1ZMmBB77kyk/4Dj9zIQ==
X-Received: by 2002:a17:907:3d87:b0:6e6:f1f3:ba7c with SMTP id
 he7-20020a1709073d8700b006e6f1f3ba7cmr12511730ejc.128.1649323145398; 
 Thu, 07 Apr 2022 02:19:05 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 m1-20020a170906848100b006e8053c7cdcsm2927752ejx.39.2022.04.07.02.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 02:19:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Girish K S <ks.giri@samsung.com>,
 Yuvaraj Kumar C D <yuvaraj.cd@gmail.com>,
 Vasanth Ananthan <vasanth.a@samsung.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Miaoqian Lin <linmq006@gmail.com>
Subject: [RESEND PATCH 1/2] phy: samsung: Fix missing of_node_put() in
 exynos_sata_phy_probe
Date: Thu,  7 Apr 2022 11:18:56 +0200
Message-Id: <20220407091857.230386-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_021909_513619_EE72D8D2 
X-CRM114-Status: UNSURE (   9.21  )
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

From: Miaoqian Lin <linmq006@gmail.com>

The device_node pointer is returned by of_parse_phandle() with refcount
incremented. We should use of_node_put() on it when done.

Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/samsung/phy-exynos5250-sata.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
index 9ec234243f7c..6c305a3fe187 100644
--- a/drivers/phy/samsung/phy-exynos5250-sata.c
+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
@@ -187,6 +187,7 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 
 	sata_phy->client = of_find_i2c_device_by_node(node);
+	of_node_put(node);
 	if (!sata_phy->client)
 		return -EPROBE_DEFER;
 
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
