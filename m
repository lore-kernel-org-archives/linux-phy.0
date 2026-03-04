Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD827EDEC08
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 04:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nd0iLRtKpBS6nEYR6IwgHy9l2S3n2g0NoN4w7FJX/gs=; b=ocSwoOG5BQQmkH
	CpBsvUIKef1RjFB8lFXuGWiFxL0CHVFKJ/EiEKGEIz5aK8s03pR6f1ZiFtRechNreOB5beloGD6no
	csrx8Lnmh2isqsBojPk3ASs4tvsDcp7704nvzw5P3WC4DlusxZ8tXbYnW2VkjidJDLSq79UO8/Doj
	boLxh1ikWaMCJzkVa63c4Pq8V8n3KDvw7fDchh9VaizYCombLKO/leLrkOEJirfbEa6C8QM+qsOHN
	96SOfWZbC8GXm2kYha1Co2iR1VglJ3LtOpNg170L2HL8Z8l9KZuUMvgL1ck48Gn7Vf1nfIXelpmVK
	s51zbZWqQZj9nNmGIpvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdwZ-0000000GRXw-1n2S;
	Wed, 04 Mar 2026 04:34:43 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdwW-0000000GRWk-1JHb
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 04:34:42 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2ae505619baso17276485ad.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Mar 2026 20:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772598879; x=1773203679; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h4+RxyEzVVfMeQjameS7WuxM58R+fJWfpg/21/ewVWI=;
        b=PBr+3alqtjI9o4M2o0t2FQyibJ6N627RvN2osXpue2FgvRsiJe+AjDc1isgodNIVp0
         m+Y6+GLyOqrSzbftc7usUeIKfjI3I+XD25b/7AAx+ef5sLDK8qIx5yg+ivy2lrhUnAEr
         IG+vS0m4awtsnBs+bEpRWk6FKe6savkNaZd9fWO1Nr6LleeNPlpPj1AKt9Fql5nxUvSm
         XPGToCXUgdWyhFBXcDwetkfNYBvqu1Cp5cDwCmKqsRtWm4O6QvxbaHQc4WdYHUNZE2rE
         JVsk9FyPTwgZwp3NFauFQ3SSfYmw8j33RuZqy90V+7nCz5JWvsr2WYFsbeCYdNHNc6PA
         zLyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772598879; x=1773203679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h4+RxyEzVVfMeQjameS7WuxM58R+fJWfpg/21/ewVWI=;
        b=ed55OCC2NYF2f92GL8kA/DaREr+KP/ZCjdmLGXuR9ReUUCPH3FG6h4uKn6Q1KnjUJk
         hj9tfvBnYEAmmJuMaFfalHgUxISvRae3/+vh63NJz7tYxefaN3mLP7eB/gsnsiV5Gs/L
         i8crBMOIotgWNjO8N1QdYYWpajUWWxCpYgc2buAHZFGgHcfb7xsR5XikjTiW5k+wEcSA
         LefyE08JVi8UbmyQCfAelTxIbgcKBvhBppX6FwhfhZ7HiaVdWrbAxzdIPkDKQyfIsqkh
         YrON9Cv/qUhV/tllQBRiXFjF7KG0ljhUzVQWkl1FDkQbqSKiSELNSB4pkT44OrDeetUd
         KSIA==
X-Gm-Message-State: AOJu0YykLUVtYTQyrWYRHOWHYG34uDij19RGg+l8Fco3WVNuIzizTUQ+
	J65ldMAwEetaVgouhDVPz8nEFADIo4+5R12Y5NvpodiQajn8SU1ttRNxTvveBZpYAsM=
X-Gm-Gg: ATEYQzztmX7GhrVyrfgQqMIJotFhHZ0HiJ0Bx2w/ykM+okcuqfkB1QqEh29KVzMil1U
	YBxXRP+OqvxbiXLBsU39ysgjvMcuNhhelYwZGmPSKROiIGIrS3WMMAsybOUmiyyKLi4GBdY9iGw
	r/Cm/7otsgKhKLvum8E2quYOx3TPzGDDxOMxG6BvIPfvBKdfxmq4WUMInMIrZ50rWlzbmaPc/Y8
	istCjSfH5lV18Rxga8XsrF/NTYzrsIvhuyWgJpDe945Yn93CwzMxn8ZU7c2PJmhdoJx/bjw8hBE
	B2rEjDpzf9B4JD7aRM6go/84+wilN3nVOIH79ediXMKhUypYyOmfLqfJd8b5EtJRmZ4QB/8kCle
	IMGqE8h67wZphbP164iDH8oU/xliiBBj9k1BUppQR7PrMXh8Re6pHSygl8qfsEizW6i9pRwvX23
	Y+uAnX8wkB8lentKjNUHsWLEzz8Ap1E3fOiqQv2AnqV4Wsf0dXttZVfXghLB3w5ka4
X-Received: by 2002:a17:903:1a67:b0:2ae:57cc:63d7 with SMTP id d9443c01a7336-2ae6a9de1a3mr7732125ad.7.1772598878948;
        Tue, 03 Mar 2026 20:34:38 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4651e409sm115173435ad.44.2026.03.03.20.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 20:34:38 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek USB3 PHY DRIVER),
	linux-kernel@vger.kernel.org (open list:ARM/Mediatek SoC support),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCH] phy: mediatek: xsphy: reduce main allocation
Date: Tue,  3 Mar 2026 20:34:20 -0800
Message-ID: <20260304043420.14151-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_203440_346022_6EF84B4A 
X-CRM114-Status: GOOD (  12.41  )
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

Instead of kzalloc and kcalloc, we can use a flex array to reduce to a
single allocation.

Also added __counted_by() for extra possible analysis.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/mediatek/phy-mtk-xsphy.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-xsphy.c b/drivers/phy/mediatek/phy-mtk-xsphy.c
index c0ddb9273cc3..cc1d66954212 100644
--- a/drivers/phy/mediatek/phy-mtk-xsphy.c
+++ b/drivers/phy/mediatek/phy-mtk-xsphy.c
@@ -112,10 +112,10 @@ struct xsphy_instance {
 struct mtk_xsphy {
 	struct device *dev;
 	void __iomem *glb_base;	/* only shared u3 sif */
-	struct xsphy_instance **phys;
-	int nphys;
 	int src_ref_clk; /* MHZ, reference clock for slew rate calibrate */
 	int src_coef;    /* coefficient for slew rate calibrate */
+	int nphys;
+	struct xsphy_instance *phys[] __counted_by(nphys);
 };
 
 static void u2_phy_slew_rate_calibrate(struct mtk_xsphy *xsphy,
@@ -515,18 +515,15 @@ static int mtk_xsphy_probe(struct platform_device *pdev)
 	struct resource *glb_res;
 	struct mtk_xsphy *xsphy;
 	struct resource res;
+	size_t nphys;
 	int port;
 
-	xsphy = devm_kzalloc(dev, sizeof(*xsphy), GFP_KERNEL);
+	nphys = of_get_child_count(np);
+	xsphy = devm_kzalloc(dev, struct_size(xsphy, phys, nphys), GFP_KERNEL);
 	if (!xsphy)
 		return -ENOMEM;
 
-	xsphy->nphys = of_get_child_count(np);
-	xsphy->phys = devm_kcalloc(dev, xsphy->nphys,
-				       sizeof(*xsphy->phys), GFP_KERNEL);
-	if (!xsphy->phys)
-		return -ENOMEM;
-
+	xsphy->nphys = nphys;
 	xsphy->dev = dev;
 	platform_set_drvdata(pdev, xsphy);
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
