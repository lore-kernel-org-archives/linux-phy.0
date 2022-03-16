Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD1B5C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 16 Mar 2022 02:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qaQO34LehpHebf4pQ2PlRN9aPYjf0x0MsX4dFb+8w+0=; b=KYpj0BBIflRxSL
	zTg5mVRH2A8GtmxfcWGwh/RiOrf/HKjVzYnAh6VUKZ17mxLs5QhTvABYTfokcqKqYA6mZhxbzQXrD
	Yty5G8S93+gMq79caLmUnV2fsQRYdzPRSryRLx9h55dJxjk3UxIcyPE77RV2tJcAj/aWWFF8dvlB2
	QyPKoumdP2E8ONLNpazhq74Ch9dYRPeZFZFqZVwB3MWD6UDZZxXDbtDiQwgVgbAVBkzC+oGgioJMW
	/AIcwgWg2u0mgPmfr7cXC6ZAIqxavab1obhNsoAEkR9jELBY0OEKzOOuBovaPhVSJ/p5J3i0yR03v
	sxVjkEtFoomXDoWkzxsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUJc2-00BEeN-Ac; Wed, 16 Mar 2022 02:42:10 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUJbz-00BEde-5R
 for linux-phy@lists.infradead.org; Wed, 16 Mar 2022 02:42:08 +0000
Received: by mail-pf1-x430.google.com with SMTP id u17so1920332pfk.11
 for <linux-phy@lists.infradead.org>; Tue, 15 Mar 2022 19:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id;
 bh=8ioeaOWDbVGBIXTk1/liuZxwNqXWqg046f4+0LKsF84=;
 b=V/ADqYGCGhx5uv9I7YQBHVpCngTc6sPr0ijmHlyN23yq7ax0ofGYgBGNSFTbUNNASx
 yjCW7Ei6O8AywFf45TQsogO/S/0j77w93/AROEqQdn6ds6m8vl7bTVpJMbcH1KVUf5dZ
 Y+sWlMT6pSyZzTNR2qlX1wT9Dc+F0faSFNfTofcYI0gGHzHuNMWG2q1Qqp3BBnLZUGx0
 UUrOuoA+qcnaCDIwo3k5nZZKF9C3+1NWdmuQXEZ3xiQds8tjlcW+KmOU2MGu0zDNiueY
 wgdodNgu8k3OzE061SKJJapxvonkVvmzFYWWHXPu9G37u1CldjI/y6UQGwHsrmWGvX9F
 yAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=8ioeaOWDbVGBIXTk1/liuZxwNqXWqg046f4+0LKsF84=;
 b=GBZe+3YZfa9GjJO+ejdRdvBU0/+GBhQ27Yo3UdSI9qFGy5dmirULBuQjkgYFHbC2DV
 +GEJHd/a08hrHuVrjdD9M5nthPpxapd1iyv00oxj/3Xkjrs3+EYES0K9Y6+Y/RUO9BEb
 tiANrJ73qZGAYRu0BQPqJbm0XBdT5ot2JPMHDFfZjdS2OnxYxZCBZwz45VdcQme8EpPu
 yQFo6FdbUNJGAKQvgcJw6XG0fhSY/OfHax9O95412m1JWPfDTxNLpueyvtK/K+3ywsXb
 rYNKmpekby5R3Ww5PC8jrKPeOd0feoZMCOGT5Y9jpGJbDMyKHuP+kH7u+g3JRWOhhqL1
 0NLg==
X-Gm-Message-State: AOAM531pPX0KiINIIV9kU+6PG2Mhzh7hrAablMlJrR6on5NN8fF1l3HD
 ABse7l2G5nDD+TRpB6F+ESNIOpBIAD2Jk/OZFXE=
X-Google-Smtp-Source: ABdhPJzEhV3Hvy6vvvMYGaO8fcwY7zeE2116AnOQGp/Pl0nqBoeJeRk9qsQNHjAMb7kCC8Xf2aN8uQ==
X-Received: by 2002:a62:7c03:0:b0:4f7:6a0:6835 with SMTP id
 x3-20020a627c03000000b004f706a06835mr31679842pfc.72.1647398526414; 
 Tue, 15 Mar 2022 19:42:06 -0700 (PDT)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 v16-20020a056a00149000b004f7ae2cbd3asm517089pfu.166.2022.03.15.19.42.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Mar 2022 19:42:06 -0700 (PDT)
From: Miaoqian Lin <linmq006@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Liam Beguin <liambeguin@gmail.com>, Miaoqian Lin <linmq006@gmail.com>,
 Roger Quadros <rogerq@ti.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] phy: ti: omap-usb2: Fix error handling in
 omap_usb2_enable_clocks
Date: Wed, 16 Mar 2022 02:41:53 +0000
Message-Id: <20220316024155.23464-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_194207_224802_0D2571C0 
X-CRM114-Status: UNSURE (   9.65  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

The corresponding API for clk_prepare_enable is clk_disable_unprepare,
other than clk_disable_unprepare.

Fix this by changing clk_disable to clk_disable_unprepare.

Fixes: ed31ee7cf1fe ("phy: ti: usb2: Fix logic on -EPROBE_DEFER")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/phy/ti/phy-omap-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-omap-usb2.c b/drivers/phy/ti/phy-omap-usb2.c
index 3a505fe5715a..31a775877f6e 100644
--- a/drivers/phy/ti/phy-omap-usb2.c
+++ b/drivers/phy/ti/phy-omap-usb2.c
@@ -215,7 +215,7 @@ static int omap_usb2_enable_clocks(struct omap_usb *phy)
 	return 0;
 
 err1:
-	clk_disable(phy->wkupclk);
+	clk_disable_unprepare(phy->wkupclk);
 
 err0:
 	return ret;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
