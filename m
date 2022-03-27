Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74E3EC433F5
	for <linux-phy@archiver.kernel.org>; Sun, 27 Mar 2022 22:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5e7Q+EhFjNjtDkD7OO4eH5M/qO0w1g5+yJcDoNE/eJY=; b=V9WezkS4ITZQN3
	lbG+GFjI0Da7c+WNbQs9j0/4zYBlt8xYuN+PYw/ieF5SDLgJO+HhhIZ6Y8BgyTQshrwhd3FKt4qQx
	N1aFRo4l2gyhlbDmi1A2uweZamtog8HlL6wV3Su8/zVxg9KMkqFW6zvMgw3bnrW0lHZsZbGTIwKGV
	Gxcai8pzNQbnvYffyQ+zsPP4PU9PxfXJok8EF4B8hdhKRsm9HGDY/8AtcVl3zzb+KaOQ4U4EXHWyC
	SUk/S5QhTZDtvV/SKj0OV9aDP929GBXcV3yw3BzCt8aWXD0kyZYleA4b8aQP7vtAwU1hz6UVTj4uj
	SkfFXQYZOvD02FHu9iFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYbgn-006ZVq-OH; Sun, 27 Mar 2022 22:48:49 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYbZe-006VES-NV
 for linux-phy@lists.infradead.org; Sun, 27 Mar 2022 22:41:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id u16so17912251wru.4
 for <linux-phy@lists.infradead.org>; Sun, 27 Mar 2022 15:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NwaCkEqFprXU1DDLFh3M1rthbSN4qp5btRr4op3u7Dg=;
 b=iR4hb0eiA/yMyu09+mRgbnoSC/7qohqOzylOoDiFDgH3Rm+c3s7WIszZVaVy+GImNV
 DTSRSqdmfABnk/xat2efXMy1mhyJpzBS+TT2Bo75iQNq56Zir2I/bXyyr9fjFLWjxvNb
 lySLAFpXdhfTvJIIbzQ4kJ+UJxpDQCD7FFe/Pz7gB2zTJV+6XDH2G/EwGHt9X30cYP/I
 wNdBN3harmrRCeBtvLDP+RuIcQF0yiQBlUnWQ8NXwfC3QZTUuQ10/9inAvac5ha5qrEr
 tK1Z9hHyDh5Ic98lIXlYbSKETLhv3W20iVpVJW86d8TFe487NdmrnA2h4iaWXAqPuNPv
 SZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NwaCkEqFprXU1DDLFh3M1rthbSN4qp5btRr4op3u7Dg=;
 b=CT/cbbvfUWp6eMv/skBY7oXhgKkr8SxhaW/ecESuU6Ba6Hb/Ki2Ci/85K9ksviIuPg
 OBqjIO5b4ptcuDaukqW3jm7Z/rziVl1HlOE+/yQt6I3xG6k3bGU67QWLYezCgzGHDb+7
 /MhKKyRp26IB87h/WUgjiso553DVaelvvrnOJe36UUpm1Y7cLqkNggsbfr8KE9zfp8WS
 aWPrDEFTxTlFrdC7NotyWy5w+NkDJJADrJjvTOB7bex+9vsauYfBogGxBIk6igT31nmn
 QPQFScuaEm1TN9Yo4B/9gBfNtNhGMNCAo9zIp1Fm7Qy+GxNAUNw6a30RKj0VtYuyzEAS
 2VVA==
X-Gm-Message-State: AOAM530g2BnKzkPPRTKYBWK1w9GI/WIOqLc06vT0l8WXVGFynGmWVmc1
 6bhIXWzAbWgerxs3x/G50TXL7g==
X-Google-Smtp-Source: ABdhPJwopKrzbeQi71t9oGesuR9nTk+ttZWzOngQzcK6unOKCfR+nbvvbDNuuP8jxHUdXyvs6NC+NA==
X-Received: by 2002:adf:de81:0:b0:203:fcba:84c3 with SMTP id
 w1-20020adfde81000000b00203fcba84c3mr19091884wrl.398.1648420885440; 
 Sun, 27 Mar 2022 15:41:25 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6341-357e-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6341:357e:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id
 v5-20020adfe4c5000000b001edc1e5053esm10400867wrm.82.2022.03.27.15.41.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Mar 2022 15:41:24 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: airlied@linux.ie, angelogioacchino.delregno@collabora.com,
 chunfeng.yun@mediatek.com, chunkuang.hu@kernel.org, ck.hu@mediatek.com,
 daniel@ffwll.ch, deller@gmx.de, jitao.shi@mediatek.com, kishon@ti.com,
 krzk+dt@kernel.org, maarten.lankhorst@linux.intel.com,
 matthias.bgg@gmail.com, mripard@kernel.org, p.zabel@pengutronix.de,
 robh+dt@kernel.org, tzimmermann@suse.de, vkoul@kernel.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org, markyacoub@google.com
Subject: [PATCH v9 16/22] drm/meditek: dpi: Add matrix_sel helper
Date: Mon, 28 Mar 2022 00:39:21 +0200
Message-Id: <20220327223927.20848-17-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220327223927.20848-1-granquet@baylibre.com>
References: <20220327223927.20848-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_154126_836949_E4637FE7 
X-CRM114-Status: GOOD (  10.22  )
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
