Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16CF9C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZrdc4K90JvRmT4017rGf7WHQYHLZdDDQC8TBAGn2GA=; b=2jIsRvx++LRb0e
	qEh30ja5HI4Sw08EwuQq48oQ3RcYFj2F5VwxbPKkyaeO12NfB3JDGsEQldlWgK31ppkBF1O1RwOY3
	INSdn+T1zXIJspPBxFlXvH4VK8uf8WwJXVIvGN2W2CVLYfQ2rJ2rW14ukuWUWZJOU7A/QDVHAkua0
	yfYS0LFs1Q6deX8NhSbRFVkpZoQ5XztpT3P49OV2uiL4dee4XbRqJ6D9/alo2BROd0jGFQcgztzlh
	aYjEo1sBFIXK5DBD62Y0CPs7km5R9D9sAVVb8ijYd2PflS5BZTIywv7+gdJmO3pU8SKCxlh9Zw+jk
	yOeQIJ2MjaZJ7Pgulcng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6ML-003l4Y-F0; Mon, 23 May 2022 11:36:25 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5eY-003PgF-7q
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:51:11 +0000
Received: by mail-wr1-x432.google.com with SMTP id u3so20779268wrg.3
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kkts/Sde7nd98mjIi3GzZQjBJaHLHDi+m6EizH3TGsU=;
 b=Y+0CSVrVS9WyATu6S94zU3DJBrKkpYqrPk4RjAlg+rGcjnyUqrCJg+azA8JDCMwU0r
 ctrd6MkYGDUg+6pbznzAvb0PgsPTdD+/lOzCOl9XAb544vL4VO8YZhTGixUYTWw1u2oW
 Nzybx0A4TrE2m+pvcTZucGhaxExy8IKjASDaO15+2xgMlBFvrde0q+y8jLa9tj3V31Me
 DS6uJFgXHK+gd0s7sGhST20vJimYNdXe53w79y8/56FfATf6WruA1Hc9fiaMuG5bi5ZA
 ZsHw2ZGxUS7e35uN/EXRBG8LSKrLjtVVNSYRu/17aMNx80FNvXLXTJ6YMg1EKrY1F6GI
 CM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kkts/Sde7nd98mjIi3GzZQjBJaHLHDi+m6EizH3TGsU=;
 b=CEq8pw4HyZHaGRoMhQRDy2q3aS+mhPMQidaI7A0El9uCN96KDPCygLyZikoDIJtYlb
 2SE9XWa9nVbVXUz2KlHYEXX99gB0wdKeQ2rgeQ0PYtaLzeQ+YvLGC7zt76zDyXafwFhZ
 cvWpNKuQq5WAy9M4qeGlRF67h4Z2OyWyIKeEEzF0ywisuvuVMFBTJd/hDQ7ykzzRFFtz
 0VZd31SVa95Koa8N0bxD16TkcSEroBrFVB4svYiJM+0/xdvCoGXELNaIjiYcIE/uym4d
 bHQ/O0mG7Pm9PP8m4Uo9y0MEEk9nQD1gl7LnIO2xSia+IK0hXUqRWNwk1k93eli1eWff
 urBQ==
X-Gm-Message-State: AOAM530AV6URFGG6nTenaXxsUTwwja2HxwZKTVcwURdDXzyf2BrXLbhN
 EUU6WXQcDyrn9Zd4eWaYF2OEdg==
X-Google-Smtp-Source: ABdhPJw++Udgn1IeBKegHsQgscxxX+V01340gZv0n6oYlTpZVbPptZM9/TVKjK2WhSSYg5Z+1aCntg==
X-Received: by 2002:a5d:6446:0:b0:20e:667b:a9dd with SMTP id
 d6-20020a5d6446000000b0020e667ba9ddmr18387744wrw.345.1653303069745; 
 Mon, 23 May 2022 03:51:09 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.51.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:51:09 -0700 (PDT)
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
Subject: [PATCH v10 10/21] drm/mediatek: dpi: move hvsize_mask to SoC config
Date: Mon, 23 May 2022 12:47:43 +0200
Message-Id: <20220523104758.29531-11-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035110_333925_BDE07193 
X-CRM114-Status: GOOD (  12.05  )
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

Add flexibility by moving the hvsize mask to SoC specific config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index bf098f36a466..6eeda222a973 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -129,6 +129,8 @@ struct mtk_dpi_conf {
 	bool swap_input_support;
 	/* Mask used for HWIDTH, HPORCH, VSYNC_WIDTH and VSYNC_PORCH (no shift) */
 	u32 dimension_mask;
+	/* HSIZE and VSIZE mask (no shift) */
+	u32 hvsize_mask;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -243,8 +245,10 @@ static void mtk_dpi_config_interface(struct mtk_dpi *dpi, bool inter)
 
 static void mtk_dpi_config_fb_size(struct mtk_dpi *dpi, u32 width, u32 height)
 {
-	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE, HSIZE_MASK);
-	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE, VSIZE_MASK);
+	mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE,
+		     dpi->conf->hvsize_mask << HSIZE);
+	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE,
+		     dpi->conf->hvsize_mask << VSIZE);
 }
 
 static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi)
@@ -816,6 +820,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -829,6 +834,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -841,6 +847,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -853,6 +860,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
+	.hvsize_mask = HSIZE_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
