Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2FDBC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h0IEPr+SDqBsZPwilAUFjpDWHf4Z0IUiVFJz7kRq/ZY=; b=eFSksKwKbIMgky
	1eAeyLZKmJ3Y9G/4ssd6U1AMPMzktqk3oqsbCK8irBm+HCwEta34eirL0jSikFwm3fMK3vPIEqG/F
	wxYBwwyqn+/M3CZTJDLeV+uCyKZZx9Y7R87vekOPJX/YD3jO6GMZGO5K/oWFKRBv9FJeSgnyt4ZbX
	IzkFP5KlmgEUZbqnRp9f6qQztqWTTroDpUwKz3+yTnZm+OvFuwgYVop65CpjIb8Ft9cs3F/aKhhIZ
	a80DzJHT6PTF/+vd9OH1X9Hda+R8961GIpqlJ+vk6Hg4riAm2TIP7rBNmn/9Jl5nSQgbBeqF97FE7
	DAmaHFd+Nzzj/LwRKXNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXnda-002kkK-Pd; Fri, 25 Mar 2022 17:22:10 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnYh-002hfs-SN
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:11 +0000
Received: by mail-wr1-f44.google.com with SMTP id r13so11733815wrr.9
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=N+2J73LOuWbWcemSAZjUl4sSAKtMqGO4YAvYLQzrZlU=;
 b=6mQIlmOLDdfFl06bVDNJL4jkgT5Pifeg06GKXYSLJt9XTyK0oDRagi0sdMmJm5lP3y
 LHc7x5xyRqMHpAyxdqoXmCgBjjRYMNPig0UhqItbZWDv0hpbIYCUpJtvd/emNaq0DO0V
 d4nHKxRk7bVa6/z5sLNasuIhvwVGBYXv0K1cQcNBawazJw2yWOyv5zIdpyB1nXHZwBpK
 j+oKk89Wz8D53+r75WLm09Sp2wartFw5T9aapcs40u8OAUpYHfcxGURdwXh2K7TrJ56v
 +OiJPv+/nGARuuofLocJEn2P8K9YqOhrMeyHzl4+gugC22hbMQlP/+ZP8PjzF9NMqCMT
 DbMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=N+2J73LOuWbWcemSAZjUl4sSAKtMqGO4YAvYLQzrZlU=;
 b=JfpoiWK1SnoUtoSHPuISzfL/F06WlAT04GdaBRdMzSqjA3w4+lG6KtD2f+X4VlBFIY
 1rzJyF949ucC+tVKFN/QWkfXzffE5fe1BmKAZomH6lUTr+PrLYcJySNT67vFnRR+nLqB
 3CxwTWG4GQ+vbrKeXtXMYFODx/90vBiI2bYd0wVp1GyigGzlwW0LOxN5bbqfP/XH85kD
 Nv+jhU+roTO3EOlDSRY2wkcBd0uPZ2TUosojlOuhSZ8q3v9vztg5GNkfOuRgur5IaNkg
 1dkInY9EJYcDG2eoVwGy8OwF3LqOcabrP04/fZUXWFV6G4XoRRgmMkRgtmF/iiPsbPOX
 nk6w==
X-Gm-Message-State: AOAM533jlS4kV1XRDkRidrxLIjL8UKk2D2nsWg+5dmwF1+OG45vupRvf
 f3XoU5R5tqU08j84kgC0QKmHUA==
X-Google-Smtp-Source: ABdhPJyVRn/4huKKw6y+EuOivtvJN55w2DTGfCsIXhFN27KhyJ9q5fpwb1MbnhcIyxinFhO8DC2wVQ==
X-Received: by 2002:a05:6000:1a85:b0:205:a234:d0a5 with SMTP id
 f5-20020a0560001a8500b00205a234d0a5mr4759856wry.126.1648228626249; 
 Fri, 25 Mar 2022 10:17:06 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.17.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:17:05 -0700 (PDT)
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
 linux-fbdev@vger.kernel.org, markyacoub@google.com
Subject: [PATCH 11/22] drm/mediatek: dpi: move hvsize_mask to SoC config
Date: Fri, 25 Mar 2022 18:15:00 +0100
Message-Id: <20220325171511.23493-12-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_101708_002707_03240485 
X-CRM114-Status: GOOD (  10.69  )
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
