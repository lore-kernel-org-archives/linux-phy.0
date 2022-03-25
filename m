Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED24BC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5e7Q+EhFjNjtDkD7OO4eH5M/qO0w1g5+yJcDoNE/eJY=; b=ZHQ1d5lC/3H5Xo
	4g4Jeqdl56YdI9n5jikY+KAJwl80XkNlwksu4T/RZZ8XOEaeuJelYlN7NOABB0T/8WzFkWDV6ehTV
	4xJ9nJgk5pcp5OEYyU5GOYBR7eCL8ChC8jQNztIQRoE/fLXORnXDp61RRw0LJGCgidWxNbYh6k4hP
	3cafrN083NUkPbELutLnSJ7RWUsX4MvnmLnzcACJxWfHFhL29tGmRVMej2oMga6uhNpy8ItTxk7uv
	SPfsJeZSWCjq9XNr5Z4XObdD2lppE7/ki8NfJ5RXqkoOzlqNc/D2j7gobZdhbgQO5ny237IQJPvQe
	iNtRmJy+C856e9bi1CpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXngk-002mTa-8l; Fri, 25 Mar 2022 17:25:26 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnYs-002hr0-PO
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:23 +0000
Received: by mail-wm1-x32c.google.com with SMTP id q20so4832827wmq.1
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:17:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NwaCkEqFprXU1DDLFh3M1rthbSN4qp5btRr4op3u7Dg=;
 b=7+559TLX/pioNdz1OStNbK5yndhEtZqY7oRe7DN3eda0eZGYiKl7cuYaeNKN9wfO5+
 2EVK0jBa2hpoOb2M+o3xC/kOAzMg/p+jLHr312Zr2oqH6JbHqm+hS0jQcfW0c+YDN8rM
 dNwh2bYxcWpeEsblHgYn2R1bpZ19mfs3/U4hWWoo7Wo7+84TzrDVVqpDeGEnrLDFEpjk
 2MIuXtJk4s9pmQxwXc8scdaoDXiunsLCYjovDLxlFSyYMOCef2wAm3klalE9kmryA4fr
 VbeoPziB2NXy+FW+t5+ArlEH8rbXlxr6pn15lJkU+4OhelKVwl/1pvER4s+xO1KjM2TV
 YgYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NwaCkEqFprXU1DDLFh3M1rthbSN4qp5btRr4op3u7Dg=;
 b=VQY77Z/lB1iRVx/dVuBQ2Rlb0kqLUIEX8ihiRW94r7d7oeZV7jxAaWh4tbKTpgJKBE
 86TCn/TuTSXTUk/BoAlnKdXkb6MphUl0Phaa3fXoeSJ0RtvrzzwnUvVVw8k1DD2iOrUd
 xAMvtFRDQ8s/4IzrQEGlPT0UYl3ihWofZcCXMtLUctzADns6sDYOenUADZNV0ODLKbHS
 yazXLUrfUUq8BO0/KlHnnQv2FyF8AwyxJZDIIn1CQtvd/dilvThy/JhKy4yk8TFk69z6
 LD9HcVbqHtWpXjTG9e3oBp9wFUVd/zg3X1hLBWypvhSK3pXobInBrBK15ScP0oF+zNwy
 IO9g==
X-Gm-Message-State: AOAM530AuJLJR16Un+CNUgIA3Lc2/AfTj2aRHZi8BI/vd1zotjYdKzXu
 gnWLBr1kEhzJgtBnz6zC1VugLA==
X-Google-Smtp-Source: ABdhPJxEd+5sCQHRN5kY92E454qYqOoufquWOJKPEAnY7ClBAak5cOcqSUJO3F8SRwH3b790AmcVyA==
X-Received: by 2002:a05:600c:3b1e:b0:38c:da9f:9309 with SMTP id
 m30-20020a05600c3b1e00b0038cda9f9309mr7351158wms.9.1648228637535; 
 Fri, 25 Mar 2022 10:17:17 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.17.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:17:17 -0700 (PDT)
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
Subject: [PATCH 16/22] drm/meditek: dpi: Add matrix_sel helper
Date: Fri, 25 Mar 2022 18:15:05 +0100
Message-Id: <20220325171511.23493-17-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_101718_906551_FAB9E321 
X-CRM114-Status: GOOD (  10.49  )
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

Add a mtk_dpi_matrix_sel() helper to update the DPI_MATRIX_SET
register depending on the color format.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 8198d3cf23ac..82f97c687652 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -385,6 +385,25 @@ static void mtk_dpi_config_disable_edge(struct mtk_dpi *dpi)
 		mtk_dpi_mask(dpi, dpi->conf->reg_h_fre_con, 0, EDGE_SEL_EN);
 }
 
+static void mtk_dpi_matrix_sel(struct mtk_dpi *dpi, enum mtk_dpi_out_color_format format)
+{
+	u32 matrix_sel = 0;
+
+	switch (format) {
+	case MTK_DPI_COLOR_FORMAT_YCBCR_422:
+	case MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL:
+	case MTK_DPI_COLOR_FORMAT_YCBCR_444:
+	case MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL:
+	case MTK_DPI_COLOR_FORMAT_XV_YCC:
+		if (dpi->mode.hdisplay <= 720)
+			matrix_sel = 0x2;
+		break;
+	default:
+		break;
+	}
+	mtk_dpi_mask(dpi, DPI_MATRIX_SET, matrix_sel, INT_MATRIX_SEL_MASK);
+}
+
 static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 					enum mtk_dpi_out_color_format format)
 {
@@ -392,6 +411,7 @@ static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 	    (format == MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL)) {
 		mtk_dpi_config_yuv422_enable(dpi, false);
 		mtk_dpi_config_csc_enable(dpi, true);
+		mtk_dpi_matrix_sel(dpi, format);
 		if (dpi->conf->swap_input_support)
 			mtk_dpi_config_swap_input(dpi, false);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_BGR);
@@ -399,6 +419,7 @@ static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 		   (format == MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL)) {
 		mtk_dpi_config_yuv422_enable(dpi, true);
 		mtk_dpi_config_csc_enable(dpi, true);
+		mtk_dpi_matrix_sel(dpi, format);
 		if (dpi->conf->swap_input_support)
 			mtk_dpi_config_swap_input(dpi, true);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_RGB);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
