Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40903C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 01:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4B99CzC5Y6L8V4resBl2QSyMvqfso1zPCFCsS+46nWM=; b=tmeEkAqufX1JI1
	73a7p0iy5AeE7zddJvbUPZ1UaZE8/sP7LUJ3Bb0Bp9Ix7RtGt7iehUU9mrQ7pN6Sz2yIpRUwqa5gl
	hoobEnTi/Pm/M/sCny/9AIDpX7zz6SDEcQVagYKOd8pGMQ3Q6erD1EP25mS5l9INXR3sMXXzOJwU8
	5lKvDwDJfmNomn+6DNfcvJNyl3u2Q+bFDC74KIID08YQyWxvaVTU2f+vcOeq4AcTcr4zsma9dv8+0
	kVJtMM8JyMoHMcE2KpldrX010yAdvfPm6XKt56pC/JUb//QNfKeLrKvnRIZ24UpDAufEQ9mTi62wE
	wBkRGS2hDJPx4HOfCEHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPaVu-004w6B-Nw; Thu, 03 Mar 2022 01:44:18 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPaVs-004w5Y-EZ; Thu, 03 Mar 2022 01:44:17 +0000
Received: by mail-qt1-x830.google.com with SMTP id w1so3422294qtj.2;
 Wed, 02 Mar 2022 17:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TEJaO0Vi4Kwfv0Wb4WQ2+Q+z6zunlr1TGnFG+5J/o0Y=;
 b=O6yWcrDHwFQRhE4PxZR/mpmttlr1A73V9h8HAbSE18gjKpEOxOGOMDG5nRHWozR3uz
 r5yBzWz88Em4bNspoQZKRA3tyiOO7tWB/cs9THxzZMxikI5vBT8mQhAxaW53oIDItQn/
 UzAV2Ca11pywRutZrQTj85YDlx5pm0XHgwEw0onY2aKOijiEXYfxkAp/NYyBcIrKo6RR
 45HkDkbLqHCv63Ol+HzagOrNbeZKLJI+lRYTGb28QAl5lCzcNu5mRs3Fk1zUv8ztVh4Y
 p3LZdlIV1Qa6P7QEtWtQtD+FanQFb65EbMtPSauzYCsm8KeQCuDw40FRyQwAaCi+e4S7
 TZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TEJaO0Vi4Kwfv0Wb4WQ2+Q+z6zunlr1TGnFG+5J/o0Y=;
 b=OLdD8biSKEZSpnpUD95MQLBGa0Mr1NRyncJutIu1F0H9IWZ+wSP61zbU+SX/F7aIv9
 bhilfqJXbr3YLPhXVClM326moROiGrsk2hOC9ITq8LvRpizzLY5358g3o2tPFoXH4xky
 V1HkZJAUN9w4CJzLAWUPB6rZDsAU/re5RxVtKX7Cmc5epYFsmoS0uYEyPd6ZEwW4fPim
 XZMlWpjTq246ucpJ1sY1piO2ZDIIOTL79N5Q3cAte5z6etBRvlAENUZL3kvpnaTyxAlf
 0bt8inotKysnN+0HiKYDwhwoSZyXIIrtG01V/fLBxuip5hHlv4j94vPZKZL6EybQJGy4
 Z5RQ==
X-Gm-Message-State: AOAM531b3eOiBF/sOo7Y8C8/5flzQJpkBs4RS/nxYV8A3n1QlLkYNJRa
 LUDLmC3/aBiD0IFRj8rPGeE=
X-Google-Smtp-Source: ABdhPJyFwaId4iQ/+ux2jZP4uLbwMNoJjMfyEd5/rGbhuWf7T6m6Bku7ZaVtuiJ1awSuOKjGHH98fg==
X-Received: by 2002:ac8:5a05:0:b0:2de:15ef:8bd5 with SMTP id
 n5-20020ac85a05000000b002de15ef8bd5mr25783831qta.71.1646271854779; 
 Wed, 02 Mar 2022 17:44:14 -0800 (PST)
Received: from localhost.localdomain ([193.203.214.57])
 by smtp.gmail.com with ESMTPSA id
 d13-20020a05622a05cd00b002dffcc45ba5sm563131qtb.4.2022.03.02.17.44.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 17:44:14 -0800 (PST)
From: cgel.zte@gmail.com
X-Google-Original-From: chi.minghao@zte.com.cn
To: kishon@ti.com
Cc: vkoul@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Minghao Chi <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: [PATCH] phy/rockchip: Use of_device_get_match_data()
Date: Thu,  3 Mar 2022 01:44:06 +0000
Message-Id: <20220303014406.2059140-1-chi.minghao@zte.com.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_174416_554156_70FA2C4D 
X-CRM114-Status: UNSURE (   9.85  )
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

From: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>

Use of_device_get_match_data() to simplify the code.

Reported-by: Zeal Robot <zealci@zte.com.cn>
Signed-off-by: Minghao Chi (CGEL ZTE) <chi.minghao@zte.com.cn>
---
 drivers/phy/rockchip/phy-rockchip-dphy-rx0.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
index 4df9476ef2a9..639452f47869 100644
--- a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
+++ b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
@@ -327,7 +327,6 @@ static int rk_dphy_probe(struct platform_device *pdev)
 	struct device_node *np = dev->of_node;
 	const struct rk_dphy_drv_data *drv_data;
 	struct phy_provider *phy_provider;
-	const struct of_device_id *of_id;
 	struct rk_dphy *priv;
 	struct phy *phy;
 	unsigned int i;
@@ -347,11 +346,7 @@ static int rk_dphy_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	of_id = of_match_device(rk_dphy_dt_ids, dev);
-	if (!of_id)
-		return -EINVAL;
-
-	drv_data = of_id->data;
+	drv_data = of_device_get_match_data(dev);
 	priv->drv_data = drv_data;
 	priv->clks = devm_kcalloc(&pdev->dev, drv_data->num_clks,
 				  sizeof(*priv->clks), GFP_KERNEL);
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
