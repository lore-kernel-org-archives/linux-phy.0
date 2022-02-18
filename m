Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45E48C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pCJ6sBKlxGZHfaKQH2/LwddURH3MHm6x9/YqgEpY/I=; b=Kjl8mLKg4ZdTNL
	Qf0l8RD2IJhTe8c7dxZi6NckMJn718Zrv0ssvLNnUFRC8lo1nMA0R0aH7cC6b+XqxQ9JWt3Nm/LM6
	1o9GQAovr1ViDU0m29hl4Isn2RmPXaY+D+yVASh4+KRX2CHy3kznQN5PZ/KOM9Pc0wG8eWLRD9R5H
	Smhl/3RiaMrzzokoj6krcI5XIFS/ytBtdOPNrJSS6nFvmOm2sevyGwBBiWiEmweEllGZdVlapstQe
	rDdIlpiC6spbREONDbupzF25Z9O2HcmmTQ09+EnGkNg5VDA8iLt5pO18YP+AlFJKqq9Bv3fM8u6wX
	1E1vhu0a9hHi1cO30Jow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4tD-00EzCR-US; Fri, 18 Feb 2022 15:09:43 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4gE-00EsBd-6M
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:24 +0000
Received: by mail-wr1-x431.google.com with SMTP id u1so15006042wrg.11
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BY2INqP5/ML6M0B5RXCe3qW6LaccjrUVhDYjta1rw28=;
 b=Nn5Qt5GlmO2JofQtcrAgsfqSOdkqB7Tu5hXL1wU5yHulSqYqZhoEI/4feFzqNbfqrp
 br80hHQ0W+SbYWnzHMvh/tsB4sBXwJMWrskwR8RT0d2fbx8ec92r8h/SAac/iyzsUjns
 Hm7TyLj+eAsJmiUPkoHrACNiEWJnPW18SlQorK+lfzAg4XeO202ydsKvTFsBPBqoU9kU
 AEkryKI9f3gbLYaDDo22CnDnQz6r27txIm57q33phelJy8ZbZ64oU0fO/yu8RCR3tmb3
 tonoAnsfjNBqmJxBULHXKDDtF/5bUV5u8iE1X6tNQHhlIgoyXIRTPuzVSrIVoZ5WOMOE
 QL7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BY2INqP5/ML6M0B5RXCe3qW6LaccjrUVhDYjta1rw28=;
 b=3tMZQnBZmXM5VGoCojAe4j4GcYRP8TeubpHSb+w9xVbVLMJMvciMQYovqhgWLAJL+c
 nlsYg0OgW6XW9/bEIzIaTT9OB82Tp2IUw/MDXGglrfStb1cPxxt7GaPuSFMgv8NuQFZO
 hsv4G5Vzjc1PtnKQafVUMdur2HNf3dp8ctRKJe41lwisq/ZYk4snbJUn2DsA8ELy2W4q
 IAV7KJTT7LyAvJVtFwPLKeyZhqQh9NsvQZhKfNLOegSYW0yYsS0zQYBeXMBZDvIV8BNM
 VUfF7fmnBEewllbBM/Nwczv1Zg7oRFOI4U4nhH2nldehHk6zebEB/4rH5s7wRoxzHjDG
 rT6g==
X-Gm-Message-State: AOAM531u6GFYC3pT1C16lwhrVlS12sklfFl0gSGbwnsfFjqzj9IfyGrs
 2LD2gpHXSrcgpS3uDZT4K29zxA==
X-Google-Smtp-Source: ABdhPJx1nSDEfTBmLfQ7yKV8krgbtdoJ22jOuH5HY/NqNK/26S8qJNcxP8B0rTBJCXywchzlr5iR6Q==
X-Received: by 2002:adf:d20c:0:b0:1e5:952c:34b5 with SMTP id
 j12-20020adfd20c000000b001e5952c34b5mr6528939wrh.82.1645196176558; 
 Fri, 18 Feb 2022 06:56:16 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:56:16 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
To: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, robh+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, matthias.bgg@gmail.com,
 chunfeng.yun@mediatek.com, kishon@ti.com, vkoul@kernel.org, deller@gmx.de,
 ck.hu@mediatek.com, jitao.shi@mediatek.com,
 angelogioacchino.delregno@collabora.com
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v8 09/19] drm/mediatek: dpi: move dimension_mask to board
 config
Date: Fri, 18 Feb 2022 15:54:27 +0100
Message-Id: <20220218145437.18563-10-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065618_382476_A9B1C3CA 
X-CRM114-Status: GOOD (  10.30  )
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

Add flexibility by moving the dimension mask to board config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 8ca3455ed64ee..0d3acd08ea358 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -129,6 +129,8 @@ struct mtk_dpi_conf {
 	bool swap_input_support;
 	// Mask used for HWIDTH, HPORCH, VSYNC_WIDTH and VSYNC_PORCH (no shift)
 	u32 dimension_mask;
+	// Mask used for HSIZE and VSIZE (no shift)
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
