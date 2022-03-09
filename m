Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D479DC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  9 Mar 2022 17:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2MIPetPPcWOE2o06oEh/Brux6OQcSTsVWqQhkcW4VwI=; b=pWQ6gViRLdleNe
	aMzIIPL7WfTQuByaIiU1rZoiZV9dBLFSjTE+LHSn390GGG3i8YzTkcZdGEFhdR0FzeqTHxPTB9cRo
	bB14rYkeqhb2uGY62lPGfTTdsdPLcJt8cnD5YFX5v0Fc4oULqh0YjX5LFQw01TSdm5N8/Y1LyLwZ3
	lyMQ8YhcVNh2s9PRsyR+p9KO8o3hYV9Zb2LgxBwMXZVRwDEQXveHAAqD4/1myyJFRkgH63Lns5o7F
	+xHaAm+QMZ9AAh5XtHBS399+PHQj3q4NbPx47gK3IuAdNDyn/Lfrgmz2DIueul5ydRpOWUz9J6qO0
	uGm4HD7d7gZHcvJEz19g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRzmj-009hKk-5h; Wed, 09 Mar 2022 17:07:37 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRzft-009eEu-Hq
 for linux-phy@lists.infradead.org; Wed, 09 Mar 2022 17:00:35 +0000
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 35DFB3F1C5
 for <linux-phy@lists.infradead.org>; Wed,  9 Mar 2022 17:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646845232;
 bh=1C2abaYPYBkDuzkzZwjwXPHr1LgPUoTyCzwwpANsRGs=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=jYFYE8HjbQ361Lz6QyM6p8qfSJMRJKH6Cbq7Q8/dKabL9SFmSZNjD/oKCs3jHn3Es
 QS4UtCRXLuAImY8I9xOaHwzGps/ngaDCWTykYBh6BJNPPC8LvEj8X906GOJG6Z6zCj
 YFdhFuN4R3IIb0alGG28AqgesAo7flwbNiGDOdG/WHO/kpAjjWULpqE99v6E+ztI9Y
 WWaOTQ2CPqzQp5NBgp/R6gECA54TYf2wiJ1AMUC35XOWVCXGaubUbTkRc/G+yyjP3v
 sn29csMxfRn+ujubdj1AI7wN/qjzQ1iT6KClViGN0cX8Z0UEmaIpcEaQ/33jhIfXFt
 +yDI6hrnAqhkA==
Received: by mail-ed1-f69.google.com with SMTP id
 o20-20020aa7dd54000000b00413bc19ad08so1613996edw.7
 for <linux-phy@lists.infradead.org>; Wed, 09 Mar 2022 09:00:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1C2abaYPYBkDuzkzZwjwXPHr1LgPUoTyCzwwpANsRGs=;
 b=JbgJOJD1QcT9sZLPMOW//MG5T7gryF90zS6jc6/i3kMbjqy8Qv8JTtOEL7HjjN7kzt
 Nw3vHia932e+Xor3OwBxKvOvxYsOLomXsNkbJeDGDVUk6qGBihDc33FM993vIgtFH/5H
 88wwT/3cAEZvepMqdUvInHKV6atpQ/gqR9RmtF2SNdvMQMqycfpo3NySD0++MuvIWWQj
 l4zXVTOLz1DYG72kL/KVmcmj26Fv25YtCthnry3J8oCFcIKDojPRA+LEV87TBIbBDuH4
 1Tft0MQC/mlJ9oC4Y7LgA34ew1yVis53boZRynTjRy/FoJPZL+joUg8HUq3YqJJ+gnZX
 pkVQ==
X-Gm-Message-State: AOAM530dsXT1KU8tx+6npIZyJPR9fb8mmRoLba+csXfJL8VkngMlyu9T
 jx5pvaOzruq9nhhhgljps+kO3uHBWcgUy9Yrn21o+YoegMVGqFo0TfngFKMOonazH1VNqRTGVkc
 8sVv/z0P4YjbLvnLi7BWc3RDn4ATiwt6RPSP3cV8lPgE=
X-Received: by 2002:a17:906:6a26:b0:6da:873c:b9a2 with SMTP id
 qw38-20020a1709066a2600b006da873cb9a2mr647429ejc.727.1646845231712; 
 Wed, 09 Mar 2022 09:00:31 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzrw1wchW3O6ryE+IVn5BJTWoAbUv5bAvi3pD7v2cxZRa7DtGFD01MOWRsewZfconSJ8erZ5A==
X-Received: by 2002:a17:906:6a26:b0:6da:873c:b9a2 with SMTP id
 qw38-20020a1709066a2600b006da873cb9a2mr647400ejc.727.1646845231437; 
 Wed, 09 Mar 2022 09:00:31 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 h22-20020a1709062dd600b006dac66b8076sm944767eji.95.2022.03.09.09.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Mar 2022 09:00:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Miaoqian Lin <linmq006@gmail.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: samsung: exynos5250-sata: fix missing device put in
 probe error paths
Date: Wed,  9 Mar 2022 18:00:28 +0100
Message-Id: <20220309170028.51913-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_090033_766696_9113BFAF 
X-CRM114-Status: GOOD (  13.17  )
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

The actions of of_find_i2c_device_by_node() in probe function should be
reversed in error paths by putting the reference to obtained device.

Fixes: bcff4cba41bc ("PHY: Exynos: Add Exynos5250 SATA PHY driver")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Rebased on top of (although it is independent, no conflicts):
https://lore.kernel.org/linux-samsung-soc/20220309124856.32632-1-linmq006@gmail.com/T/#u
---
 drivers/phy/samsung/phy-exynos5250-sata.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5250-sata.c b/drivers/phy/samsung/phy-exynos5250-sata.c
index 6c305a3fe187..595adba5fb8f 100644
--- a/drivers/phy/samsung/phy-exynos5250-sata.c
+++ b/drivers/phy/samsung/phy-exynos5250-sata.c
@@ -196,20 +196,21 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 	sata_phy->phyclk = devm_clk_get(dev, "sata_phyctrl");
 	if (IS_ERR(sata_phy->phyclk)) {
 		dev_err(dev, "failed to get clk for PHY\n");
-		return PTR_ERR(sata_phy->phyclk);
+		ret = PTR_ERR(sata_phy->phyclk);
+		goto put_dev;
 	}
 
 	ret = clk_prepare_enable(sata_phy->phyclk);
 	if (ret < 0) {
 		dev_err(dev, "failed to enable source clk\n");
-		return ret;
+		goto put_dev;
 	}
 
 	sata_phy->phy = devm_phy_create(dev, NULL, &exynos_sata_phy_ops);
 	if (IS_ERR(sata_phy->phy)) {
-		clk_disable_unprepare(sata_phy->phyclk);
 		dev_err(dev, "failed to create PHY\n");
-		return PTR_ERR(sata_phy->phy);
+		ret = PTR_ERR(sata_phy->phy);
+		goto clk_disable;
 	}
 
 	phy_set_drvdata(sata_phy->phy, sata_phy);
@@ -217,11 +218,18 @@ static int exynos_sata_phy_probe(struct platform_device *pdev)
 	phy_provider = devm_of_phy_provider_register(dev,
 					of_phy_simple_xlate);
 	if (IS_ERR(phy_provider)) {
-		clk_disable_unprepare(sata_phy->phyclk);
-		return PTR_ERR(phy_provider);
+		ret = PTR_ERR(phy_provider);
+		goto clk_disable;
 	}
 
 	return 0;
+
+clk_disable:
+	clk_disable_unprepare(sata_phy->phyclk);
+put_dev:
+	put_device(&sata_phy->client->dev);
+
+	return ret;
 }
 
 static const struct of_device_id exynos_sata_phy_of_match[] = {
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
