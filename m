Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEECDC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekUNjFfpH5WDNw1dgSczlUCL6SI8NO93XIEY4FF8ihA=; b=CgLdHIXyiyT2AO
	y2qvloyrxyHn6GZv5qlIxyxS9BQkG0uHuRKO/wy3hXz1jotTEItmISlytkD6zjReE+rQfaL1Wn4pT
	x5+MJkdZxyV/+hy6thkahqGgQ0TE0DlL+7C+y2BmO7zxTyU3X5c3P0erKAibO71sHZyOAjkn8q11X
	dMGd1SIUJx3wCKYWF6En7hq18qzOxK1RIQl0aVOdQe94AMy3v+Szzs2nPYTaTM0No6T4bnA5i7G+k
	nj26M5ALOBlnrer1+3Rn9VNQzFIRC1V490BQ7i6O0y8eexEWq6sFe6yxbMK0GV7t/T2UB/fJFwJON
	KeyW5wSndz2IhrFn/jbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6II-003jKs-VQ; Mon, 23 May 2022 11:32:14 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5eE-003PgF-Ny
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:50:52 +0000
Received: by mail-wr1-x432.google.com with SMTP id u3so20779268wrg.3
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xJFzCnziuzO8gtG7cVYt2h81Bi7LdQGE5xz4NqwQAZE=;
 b=EsuvaRpaBPjPspnZmyIitQ4illZAHjDrYUY/jr4vxohXj4mPgY3qtmv9bS9Oo0qG5T
 hTJpkQvVCGLVdr1OcwzZhoIfF+HSnNP6SUWuqf+HesSrcXkNxGfzZ6p3EmGmMKygMI5s
 aaZtv2av4kcC3zTncyiioTxeMZoxtYEeMTiNTAdrnKO/2gkPtCZs1ZaBzAteiUKx+z+d
 CeYX6k/SwCuMf4e5i7JjgAYx3VejfDYpYa7k/cBJHyVWUSXpt+rN223HFIgPxEQN4Tyf
 Vq1h4FdTef/lIcUdUs3FUVOWCle7fD5L9LVHFEfD6INqpKXdFzK5KfHtoPFQ/cFN9baa
 r8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xJFzCnziuzO8gtG7cVYt2h81Bi7LdQGE5xz4NqwQAZE=;
 b=F/Os9K/x4zUtmx53+beaRK9sr3AqpCHuRGINEdPHaYWTqfi8zDRl3eiV3pxQgfbyUa
 4cdJOGZb9TV1UMLZxHNV1QiqhoIIiJN9b28JZXsmjgFNX1Qfb26GIGVtFrweJg98hdv7
 Xu6LUG9Tgx/9YYLJNO02XOvsCuIpYrmmrre6rsBq7o7EIm7C/51geKq8co2ayYXGOvGP
 EpvJFuyyM0Z4+1PUFjoSqNQpIGJ0Qms+/AvkhSwyORWMT1ko/OUemDkOyVhHZeSWXhmn
 HT2QS6f1/KlLQqLz8Tr3q1l+Ia08aMG1CLxJq6OFPjzU7qNiOZ7EUgy9P36QXYF+PSnV
 MYVw==
X-Gm-Message-State: AOAM533tFTzkm9PfzQ0lAhONO7n/f4q1PaZYQD1k0Cjz5Vo6FwTW1Z6Q
 huaCuZAauZX2j9vwqZois9pp0g==
X-Google-Smtp-Source: ABdhPJywDF5lfl2vLEx1Py2Iar0foyNQXqONIrWsCZKNHCX7kA/yZcJf7V5i1heCUswQIbZwujRe6w==
X-Received: by 2002:a5d:47c9:0:b0:20f:e7da:6a48 with SMTP id
 o9-20020a5d47c9000000b0020fe7da6a48mr1598325wrc.315.1653303050201; 
 Mon, 23 May 2022 03:50:50 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:50:49 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Helge Deller <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rex-BC Chen <rex-bc.chen@mediatek.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-fbdev@vger.kernel.org
Subject: [PATCH v10 07/21] drm/mediatek: dpi: implement a CK/DE pol toggle in
 SoC config
Date: Mon, 23 May 2022 12:47:40 +0200
Message-Id: <20220523104758.29531-8-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035050_844328_8EB837C0 
X-CRM114-Status: GOOD (  13.21  )
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

Adds a bit of flexibility to support SoCs without CK/DE pol support

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 4746eb342567..545a1337cc89 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -125,6 +125,7 @@ struct mtk_dpi_conf {
 	bool edge_sel_en;
 	const u32 *output_fmts;
 	u32 num_output_fmts;
+	bool is_ck_de_pol;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -211,13 +212,20 @@ static void mtk_dpi_config_pol(struct mtk_dpi *dpi,
 			       struct mtk_dpi_polarities *dpi_pol)
 {
 	unsigned int pol;
+	unsigned int mask;
 
-	pol = (dpi_pol->ck_pol == MTK_DPI_POLARITY_RISING ? 0 : CK_POL) |
-	      (dpi_pol->de_pol == MTK_DPI_POLARITY_RISING ? 0 : DE_POL) |
-	      (dpi_pol->hsync_pol == MTK_DPI_POLARITY_RISING ? 0 : HSYNC_POL) |
+	mask = HSYNC_POL | VSYNC_POL;
+	pol = (dpi_pol->hsync_pol == MTK_DPI_POLARITY_RISING ? 0 : HSYNC_POL) |
 	      (dpi_pol->vsync_pol == MTK_DPI_POLARITY_RISING ? 0 : VSYNC_POL);
-	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, pol,
-		     CK_POL | DE_POL | HSYNC_POL | VSYNC_POL);
+	if (dpi->conf->is_ck_de_pol) {
+		mask |= CK_POL | DE_POL;
+		pol |= (dpi_pol->ck_pol == MTK_DPI_POLARITY_RISING ?
+			0 : CK_POL) |
+		       (dpi_pol->de_pol == MTK_DPI_POLARITY_RISING ?
+			0 : DE_POL);
+	}
+
+	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, pol, mask);
 }
 
 static void mtk_dpi_config_3d(struct mtk_dpi *dpi, bool en_3d)
@@ -799,6 +807,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.max_clock_khz = 300000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -809,6 +818,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -818,6 +828,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.max_clock_khz = 100000,
 	.output_fmts = mt8183_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8183_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -827,6 +838,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
