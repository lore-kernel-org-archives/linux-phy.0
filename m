Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F2BC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1ReBEiboZVrPaQDkaZ65lmAb5cb20DpMnhzzWnWsgc=; b=uDphuTjDj3oDRH
	xZl6dpfuovIGJBaQKo6hLJbBhb3h3kGU6ulKtf9jOACstu3Lam05j/muigC4DNp1pzmUjf0YlbmRd
	HsC4toBA6pIjt+bnICOYx5SSIVOn7W+S8slTo07nDKaIORI5/MJ1alkd0++k0cg067jcf+g9Nr7/C
	IsO/PGovOibQcZlO0lXGdDjK8INx/Z4fPUFJ0PKgTFKuI9qO8qAOz6hyWIsTBp8PVn0P8T5Gtub74
	3+o1tkqcPFIRONITVewEa3CU5X/0qU32lPyXxdtYNJgD6Xug2GM8u2LoGAXVXK6nZcj6UnxjT8aX1
	EoBgA+O+HXQ/y//kxeog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4tE-00EzCe-M9; Fri, 18 Feb 2022 15:09:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4gK-00EsIB-QJ
 for linux-phy@bombadil.infradead.org; Fri, 18 Feb 2022 14:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=vuTaFtig3SnFf6C4slaInn4xvK8Id+vB8cmRoSwKiFg=; b=mBKu6acokv2SSx+4zPgGBphgpd
 J0cUz+321Lu5czUYBkOvygvkk6gJvoCVvVmGKoh2PuhlpwPGb3ViXQGRoKLab1vcQTxXDysvNQi+R
 Iyj9QFS6yJT7m56VXzip/txGVtUKbN/u6bAXrc3jr3g5Nz6ekU3LdYlFnYyBzSo3HD1SDPZKBXDJK
 tn0HpkSQn5iuDVr9ClYON21X4zqnUhi9Bva9PvHht8vOK7SsLFK/1M9HLY2c0wqMfxYnwIe/QFxe6
 BrmwDS5E250/YBL/tipHjtJcmSfFcvwNUK9+L7F3eurMlb0sUAcbxkLdZl2vUaT8eLj1MCSbFmSwD
 PRJEGq1w==;
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4gF-00AqcA-RP
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:23 +0000
Received: by mail-wr1-x432.google.com with SMTP id x5so10180296wrg.13
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vuTaFtig3SnFf6C4slaInn4xvK8Id+vB8cmRoSwKiFg=;
 b=68FMR/GwLKH+1rzhdAaaORUi8Efwl2E63rdWqTClx3MF5LIQOBP06VQCfGDmM4hVuJ
 uIpYAWoh0jGwC/h7fpyRyEj7ZD2+3J5AcMjpqaKdLXbEpk7YDzgqlZ18w6ipyDuWM+Cb
 5w4aBMEzhyKtHQU5UH94TiUSHpu7Xb12+KjQzkrwDxSgu8fXQqiS4gl4uB1r0DJbz66F
 u3RNVWyF6gEVDZKvUd8Q6w5uGWQQ8TTrzLbfdeN5XxNh4IZ/DEk3niX/FAlGY1HeH7oc
 y5zdaQhk6884w5sTxqJPhWDrcS8NCsgU+vOsPvoVrZiZ0Bw4nrFcsNNgjCZaAAtjSLTl
 qzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vuTaFtig3SnFf6C4slaInn4xvK8Id+vB8cmRoSwKiFg=;
 b=6Lw1X9BS+x8QTe2omvLN0vnurbsZOkKsuJGy0YSwKhAvBqAOyxcPvIMQV/T8QOLbrB
 Ew0AzDYl/AaO8cy6SLnEfoz0OiL43Iv8gfVV/J8R0Lg7TMeFwz1jYB1rgqoYWEUmuaMN
 zCX0cqfvPVc790/1KWNUOG6W+o5VVs/p2nrOVfRVRCEwg00Us3rPip0Jl/+r7+6N1BWJ
 JU2p6T9iHZBIWLmw3uO0bg8LP56jZcsQadWAaahUii/ZjogvW6/3kX6PqgzjuzyWZIEQ
 nfSZiZwuNihrGeG0UH+XNgqcjgM6m8uKxlh4gIQ/zOrZAT0nnfnQ8gpMGN6hgCeSdNrt
 e78g==
X-Gm-Message-State: AOAM532i89iO6QFv1IV9ETYJY7Ln4KWcjty3084inVKYR6d9OKGMo6dI
 2RQugQUYKaS5H8pltx45dQAvtg==
X-Google-Smtp-Source: ABdhPJxH+Er1c3Cm6J7dlW1f4Qgz72n7Sr/ISnyeoyasJ9oKxmU3w2ECuou3CoUasJq43XiV/koKYQ==
X-Received: by 2002:adf:8170:0:b0:1e0:6087:9d42 with SMTP id
 103-20020adf8170000000b001e060879d42mr6297959wrm.217.1645196174524; 
 Fri, 18 Feb 2022 06:56:14 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:56:14 -0800 (PST)
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
Subject: [PATCH v8 08/19] drm/mediatek: dpi: move dimension mask to board
 config
Date: Fri, 18 Feb 2022 15:54:26 +0100
Message-Id: <20220218145437.18563-9-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_145620_099771_9965BB07 
X-CRM114-Status: UNSURE (   9.78  )
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

Add flexibility by moving the dimension mask to the board config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 454f8563efae4..8ca3455ed64ee 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -127,6 +127,8 @@ struct mtk_dpi_conf {
 	u32 num_output_fmts;
 	bool is_ck_de_pol;
 	bool swap_input_support;
+	// Mask used for HWIDTH, HPORCH, VSYNC_WIDTH and VSYNC_PORCH (no shift)
+	u32 dimension_mask;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -156,30 +158,30 @@ static void mtk_dpi_disable(struct mtk_dpi *dpi)
 static void mtk_dpi_config_hsync(struct mtk_dpi *dpi,
 				 struct mtk_dpi_sync_param *sync)
 {
-	mtk_dpi_mask(dpi, DPI_TGEN_HWIDTH,
-		     sync->sync_width << HPW, HPW_MASK);
-	mtk_dpi_mask(dpi, DPI_TGEN_HPORCH,
-		     sync->back_porch << HBP, HBP_MASK);
+	mtk_dpi_mask(dpi, DPI_TGEN_HWIDTH, sync->sync_width << HPW,
+		     dpi->conf->dimension_mask << HPW);
+	mtk_dpi_mask(dpi, DPI_TGEN_HPORCH, sync->back_porch << HBP,
+		     dpi->conf->dimension_mask << HBP);
 	mtk_dpi_mask(dpi, DPI_TGEN_HPORCH, sync->front_porch << HFP,
-		     HFP_MASK);
+		     dpi->conf->dimension_mask << HFP);
 }
 
 static void mtk_dpi_config_vsync(struct mtk_dpi *dpi,
 				 struct mtk_dpi_sync_param *sync,
 				 u32 width_addr, u32 porch_addr)
 {
-	mtk_dpi_mask(dpi, width_addr,
-		     sync->sync_width << VSYNC_WIDTH_SHIFT,
-		     VSYNC_WIDTH_MASK);
 	mtk_dpi_mask(dpi, width_addr,
 		     sync->shift_half_line << VSYNC_HALF_LINE_SHIFT,
 		     VSYNC_HALF_LINE_MASK);
+	mtk_dpi_mask(dpi, width_addr,
+		     sync->sync_width << VSYNC_WIDTH_SHIFT,
+		     dpi->conf->dimension_mask << VSYNC_WIDTH_SHIFT);
 	mtk_dpi_mask(dpi, porch_addr,
 		     sync->back_porch << VSYNC_BACK_PORCH_SHIFT,
-		     VSYNC_BACK_PORCH_MASK);
+		     dpi->conf->dimension_mask << VSYNC_BACK_PORCH_SHIFT);
 	mtk_dpi_mask(dpi, porch_addr,
 		     sync->front_porch << VSYNC_FRONT_PORCH_SHIFT,
-		     VSYNC_FRONT_PORCH_MASK);
+		     dpi->conf->dimension_mask << VSYNC_FRONT_PORCH_SHIFT);
 }
 
 static void mtk_dpi_config_vsync_lodd(struct mtk_dpi *dpi,
@@ -813,6 +815,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -825,6 +828,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -836,6 +840,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.num_output_fmts = ARRAY_SIZE(mt8183_output_fmts),
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -847,6 +852,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
 	.is_ck_de_pol = true,
 	.swap_input_support = true,
+	.dimension_mask = HPW_MASK,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
