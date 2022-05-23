Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9270C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cj1RJz3VwqeXbWW5JOrCeWBEPWJdgiJt9/ClNEGk3RI=; b=iQgQzMLFMkIScK
	+ekJRR5/9y5l2tD9GQ5T5psejQbWL+lx0tIfZWlElf3pm2boVnhGN2ppLtwg3lJsS/Lt13qbYnJRI
	sB5+qDRdJbtqVooMUYKcQFIl/acja3AJbIay2wjEx4BGb05AOHjIG3K7hWUzkOUPu47auWMhrY5wj
	iNIEf2HL0BUWLdEAEh2qlePEsmcbjTV9Di9v/QIlUj4lKu1nbhA4Olyn3Cd4sb+/Jz4FI3ngLnRZq
	MUFAQ4ILmZTiuM1b40j/w2wdK0GGwovyvRjQUUw53UbBSpuwA4uV6luhmk/9NyEUPELlMUtCmh/9M
	5+hTKifimDAtpyVL1S9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6ND-003lRw-7F; Mon, 23 May 2022 11:37:19 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5ef-003PgF-1k
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:51:20 +0000
Received: by mail-wr1-x432.google.com with SMTP id u3so20779268wrg.3
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZjEEU2tcOn2SYqyaJsPZFLm0mU3b0pMoXygicmkjseI=;
 b=ktTyW4/79xvFoOcPUUH2aQHwWFmEz6Zyl0Us0VagMDHD6R6SCXxTrrluLMeG6ge5f9
 CxTVvDb9sbMdt1rHYN4NQ+mXPS2mMXU4NCJMRboSXIxAHycaz2I7b3UipyDVcOYMiM2/
 x+e27ODovt96LoMRD2zrdpOQoYNcl7a84J1NQjPztUFntCoUszyl0zapZOBbLODZBnhv
 /fDAiWfZei0iWQd1hnu5w7S3GPcWG0db+mkg5ZnXweOIK+tu5qLqeGU2RI8d+NynCKmY
 b8JfwOzr2rGxUFF2zRSPqKsDUA87rYVBURUriNXR+zvw8UQyt+H2FUNj0IMCgDBkADxe
 s6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZjEEU2tcOn2SYqyaJsPZFLm0mU3b0pMoXygicmkjseI=;
 b=wc/3OAaTfnNfE6r5y4Sx14jW69e6W0wI1Q2tHnt+2awkkwhEB32quu7QFpqBeePnwU
 MlLyV6P8gdBn2fZIZr1bPX181hU4fd7vBTZAxCiY9B/N74C0XLBR7l+R7F/Dic2K/WQT
 fGeW6C4yRaJVdgJs5ILlmryEHxTvhb4eH0b7hE01/GK+EovBDlmghceBIR7YULMZcr9f
 Zi0F7r6WVScJyx1U+RPxR7ZPOeQpUjJ6MCqhFzLSxDjozayWevSKtQCAJEnhmQGLMOwH
 48dQpp8C5YPeaHXG8hu/nZet0uTTAKEAxVwA08Qr5Y5EtdtJ8YZKQBuenl4lQMrhw4hJ
 KhaQ==
X-Gm-Message-State: AOAM530+msMUdwV3uJtkFe4g2V4IkAZj5rkW3L9hZ00xIXNGpevKnrDH
 VpzPlE6jd+83YuzLmo7BrqlzYw==
X-Google-Smtp-Source: ABdhPJwBlhpRHoko2XqERgHJP96HrEyOYLOAizuB+tTxI/6ziGJg0XnUwhSNxRFgrYWMju7TsKrLUA==
X-Received: by 2002:a5d:5910:0:b0:20d:6e9:d4e9 with SMTP id
 v16-20020a5d5910000000b0020d06e9d4e9mr18399125wrd.69.1653303076558; 
 Mon, 23 May 2022 03:51:16 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:51:15 -0700 (PDT)
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
Cc: Rex-BC Chen <rex-bc.chen@mediatek.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v10 11/21] drm/mediatek: dpi: move swap_shift to SoC config
Date: Mon, 23 May 2022 12:47:44 +0200
Message-Id: <20220523104758.29531-12-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035117_176522_8E3B0FDB 
X-CRM114-Status: GOOD (  12.02  )
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

Add flexibility by moving the swap shift value to SoC specific config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 6eeda222a973..6d4d8c6ec47d 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -131,6 +131,7 @@ struct mtk_dpi_conf {
 	u32 dimension_mask;
 	/* HSIZE and VSIZE mask (no shift) */
 	u32 hvsize_mask;
+	u32 channel_swap_shift;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -349,7 +350,8 @@ static void mtk_dpi_config_channel_swap(struct mtk_dpi *dpi,
 		break;
 	}
 
-	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << CH_SWAP, CH_SWAP_MASK);
+	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, val << dpi->conf->channel_swap_shift,
+		     CH_SWAP_MASK);
 }
 
 static void mtk_dpi_config_yuv422_enable(struct mtk_dpi *dpi, bool enable)
@@ -821,6 +823,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -835,6 +838,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -848,6 +852,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -861,6 +866,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.swap_input_support = true,
 	.dimension_mask = HPW_MASK,
 	.hvsize_mask = HSIZE_MASK,
+	.channel_swap_shift = CH_SWAP,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
