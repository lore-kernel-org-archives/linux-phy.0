Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14381C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJl1l1LgzlPiGksBeiULkAV8puH5/zaaT+U7X8FhIZQ=; b=PKPdqqmm+T3+CJ
	BrypY1/9J+IUfJZVLPCW0T/8c2i04/74nBjuMt/dtdea8NZ0WT9/lU/Yct1ox58lU4zP5beKOS5aA
	7a6y+OFPpQVVnWwgQkLX7QlQTKmJiV6U69CnO6HNxMwxWrqYGBu8azw3sjyGxe6PSdFHVzpaz07fi
	HVr/sx9BfqWPzqVuJb7TdQxmV/yXp2WgYzN5IRWd7yvRK7zRqeglL8+eBjeXvj93onnti+wr2OWYP
	OMPD2Znc/RjM61gLG02lT69li0MHgbh6gBk3d+naHSMBsit2Qq4Tg02vmwv+lYmayhze4txHuYuaU
	uLMwi5AV9lGmyTSxIaAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6NG-003lTE-51; Mon, 23 May 2022 11:37:22 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5el-003Pxm-MG
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:51:25 +0000
Received: by mail-wr1-x432.google.com with SMTP id p10so2128006wrg.12
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CWgqk9KhFkOffkb3OEMTrNnAfqhM77Ox4JDvfW/o1S8=;
 b=JdEhccv00JjYKHfLCeZR4SBq3r1mpyIzHgvk2jWMBa66ocy5zkNG+dqpG02U2B2q2h
 Tjkw4VDmRWqGKrSi9mU5AagmMOybaI/eIkEkeE09PZHVg979ODz5Jjp/v5dI4f/3hJWU
 WRMWTbgCLTkeVezqAa360Eus1As226/OURVlVyn+52XT6QfeGjrUuZUi9MDK33Pq6nqB
 ZVBc96O81UYVu/wJS9JCyqra8bVi6dWW651erb9THLCb/zMJycaLyCMJcvj3W3MBdExS
 zi8hR5nIJAmtFB9zOxjMsTc3HlNcX6vTR6r79xtjeziCBr6IltidQMFpXz0YxO3cNNuv
 SPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CWgqk9KhFkOffkb3OEMTrNnAfqhM77Ox4JDvfW/o1S8=;
 b=FZEh4FxJeSJ/U16pI/JQPMcwmVUaUHuQ0RPSUOBbxAM505zRqCY0ynklNjxTOlfJ4l
 6I1f4saZTE22sNF78icR3AvSTZXjK9JeLeoaJ4aNXt9n9t9aUZeIkFfCUUK9Qmx7AxNK
 DHmpDRRrsQfRRe3pPU7HcS0y/2CUkQ3XqYVf8AINH4DsMJKPYjncUVcGVoh8AXtwHzme
 FB77wFVEN49ySw72Ip5EV77TNUZToF3UrS2mdMC7sU/6as9nNSEfYEqk4NZTHs9FtXuo
 MCQVYKasLMn6hM4XHliQqd3IT1renS6bhGMz0SfCNOEjpzebaSZ/tqxxL5m72nEKR9mE
 e8Nw==
X-Gm-Message-State: AOAM532TBovHl99kGpbISlvEcrEJNUHiUvJ3BMTtotH1o8CStbXpDItx
 xaivJOYJbX/8x5LloNo0s8Uing==
X-Google-Smtp-Source: ABdhPJw2E7On4Oju2hfmLb0SDCcJA1GzQfEtMNUlIfdbD/oZpt27PE8H5IfsS//agrMc544Csh+BrA==
X-Received: by 2002:a5d:4207:0:b0:20e:63c3:e398 with SMTP id
 n7-20020a5d4207000000b0020e63c3e398mr18892329wrq.642.1653303083160; 
 Mon, 23 May 2022 03:51:23 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.51.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:51:22 -0700 (PDT)
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
Subject: [PATCH v10 12/21] drm/mediatek: dpi: move the yuv422_en_bit to SoC
 config
Date: Mon, 23 May 2022 12:47:45 +0200
Message-Id: <20220523104758.29531-13-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035123_775079_55BF876F 
X-CRM114-Status: GOOD (  12.10  )
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

Add flexibility by moving the yuv422 en bit to SoC specific config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Reviewed-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 6d4d8c6ec47d..40254cd9d168 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -132,6 +132,7 @@ struct mtk_dpi_conf {
 	/* HSIZE and VSIZE mask (no shift) */
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
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
