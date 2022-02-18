Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4035EC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PE80eRgLLkal+ltYvHFFPld5Qsz1AiTGq2saMM/W3Kc=; b=jcVBV5LlLF60jS
	7BpT0VRTbo/QmTlFBBin98G0+cvikIKONnQMGIXTOA2HP4uTjB3WMr86KsD27XLV+HfJoFoQMnldn
	prtavfKiUbmGFxXonMoeUS+vkI2rAu6R4EDhoL3f4jMshGApsPYTyHk4LkJSixEC6l66O2i46zaT/
	klhGbOtOojbSWoWdy4JS/fKlU9hjYZ4Zvy+H00xFIo/nHW6YGkNv9af/qtmO3TpSWyFRAIWEhqYw3
	maa6o6lxFNpEvzTUVvQdFj5QofIKb8N3F0GMOZdIa9DZKcIjvp6Ris3GPyMY+HPtpfjcv4uqmyQFc
	uumg+jcsCV9GKofs6x8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4tu-00EzWu-71; Fri, 18 Feb 2022 15:10:26 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4gI-00EsG9-I6
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:29 +0000
Received: by mail-wr1-x431.google.com with SMTP id d27so15031578wrc.6
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=90lBj+uvWW6J+7Bhe1asD0wMcJbCNndSndMWto6+sjw=;
 b=XCTWGHlVeYj1NHNSyLYY4w0WnpflUMMYUJs+ess0tZVzbocvNTlCQ32s2o4ObZQDRW
 P9lK9H/8fBoZHEjWDufRSJ1SsI+Jwr9zO1Ab63LWNxkvl2jhoq/DGKchky7BseFFRARF
 LyYojephNA2plGL6u1WNgFcztI4Zy3fhwQzbyrj1kKcqm5LfLRYIpmoO6a5Yb0d4nAc/
 515MHQEC6IF2aADAxmOC2/g7/goAvZA6GwkBv4WG0pGTgINFjhXO/tyS5P2tYDuXDmmQ
 XlN4Ni6JYJ2UNwlPzA4tAAx8OiewWSjTLOtHopCdrZNvJSLBzd5T0R0FRqnjnljonZM7
 wPfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=90lBj+uvWW6J+7Bhe1asD0wMcJbCNndSndMWto6+sjw=;
 b=FZyNeUtyHl1Z0sajsyekFH5HUnfkkKJpg3WVf7Mm58n+c7SszB+GdG3s4PZ6pmOVqL
 6QIc71dMBb3x1K/eZvtl5/T3jtRGYQE7hy3gvNhuzttl82B/S0mEnEimImfBF01OJyfn
 USfCcjYHga5DhiDShfdPjdSInaQ9923qJbhtQrer6JiGBvK06bgsBShp74ApqU/yYQTb
 3kjVd9xqgnZeRhjE9n0un9AzmuNkyroU0BgBnrSz4wFByR7CIMDDz2vFv3YhpZEt7wLg
 OKk3K/8J9XggQcoM6Npb8ibq4QiKdUoHN5pzQQM88+QLsy1A+55kjEcG26d2V/rdS7pg
 KEtQ==
X-Gm-Message-State: AOAM533XIBC+UUe4rhFN0+6I32qwpql5aMVmjS90G+yZdWo4IRYm0C0N
 B30cCdJVzfJKXoTwdFViVCsbLA==
X-Google-Smtp-Source: ABdhPJxdT+Md4Etk8DpDZL2AZLj2CChbsYlZ101cupA/36VJ0hpWjcFNACS2lJ1DlsOujik8l4G8dg==
X-Received: by 2002:a5d:6a8a:0:b0:1e3:310c:8b1e with SMTP id
 s10-20020a5d6a8a000000b001e3310c8b1emr6285623wru.717.1645196181080; 
 Fri, 18 Feb 2022 06:56:21 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:56:20 -0800 (PST)
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
Subject: [PATCH v8 11/19] drm/mediatek: dpi: move the yuv422_en_bit to board
 config
Date: Fri, 18 Feb 2022 15:54:29 +0100
Message-Id: <20220218145437.18563-12-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065622_697452_2A9984DD 
X-CRM114-Status: GOOD (  10.71  )
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

Add flexibility by moving the yuv422 en bit to board config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index ec221e24e0fee..fcf88dcd8b89d 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -132,6 +132,7 @@ struct mtk_dpi_conf {
 	// Mask used for HSIZE and VSIZE (no shift)
 	u32 hvsize_mask;
 	u32 channel_swap_shift;
+	u32 yuv422_en_bit;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -356,7 +357,8 @@ static void mtk_dpi_config_channel_swap(struct mtk_dpi *dpi,
 
 static void mtk_dpi_config_yuv422_enable(struct mtk_dpi *dpi, bool enable)
 {
-	mtk_dpi_mask(dpi, DPI_CON, enable ? YUV422_EN : 0, YUV422_EN);
+	mtk_dpi_mask(dpi, DPI_CON, enable ? dpi->conf->yuv422_en_bit : 0,
+		     dpi->conf->yuv422_en_bit);
 }
 
 static void mtk_dpi_config_csc_enable(struct mtk_dpi *dpi, bool enable)
@@ -824,6 +826,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -839,6 +842,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -853,6 +857,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -867,6 +872,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
+	.yuv422_en_bit = YUV422_EN,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
