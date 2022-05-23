Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02698C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1eOBh3AnwH5IlzmFx/L2EaYH3v98i8ox8Yt8OdKFpM=; b=r9XrFNTbiApHOn
	xPWqlcVYF9ySImlZT1AwdliR1jQPJpD+Fwp6Tide5gYiBlSRi1Ph4ZLiHR+x3dkOKb6pkGpEk35P8
	ni0EjLYXPfYdFJH4ewpgT2Y52lYUmQ/H8ZmQXPVJz2hqVM1rV5UqzPpbV9KLgl8wBfPnvDVx826gc
	PoyTocw6T+Q3gXjyMLWaQ45sBRtVO+fAB52+vUCx9ZEdrUoMAyfzUiifkjo2IKx+xAYcXzPme+Nbh
	jBbC2Rad6DD4IQYWQVPx/YxCzkm2DXQO+9ktPUUwUyvj/zzPxlVoCw/xH2i42kgdHhPetPBtGneHN
	ullIY5CLQGGncAH2WOiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6QJ-003muR-7S; Mon, 23 May 2022 11:40:31 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5fB-003Pu5-Ti
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:51:51 +0000
Received: by mail-wr1-x436.google.com with SMTP id s28so20622673wrb.7
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4zP6HMIa2YPzZ4Ud3UnVV9v/2WWghDZEujrnaWZbPns=;
 b=CVxXAcJ7h3wlqtwZU9H9KpppU+0u/RTKAuP4gBIGTnyBTrBe1J9DA3/oPGdgksz0xy
 GLUAXoK2K5PD5Qa5uoLYqngMrUqTrBQJ22WiVornX3mY7lg3WgNkr4opKRljcDGJ+/bZ
 bW3RuhkiUKraQUELKEkJxDdqc9nVn+Cdrp9idbZpPPJXCWSoi+iPXeHO6GRdDakV8A0+
 KEZmDMyXYpfBriNae5MHHjylHFP8Q/FOiVWpPyPtKhse51L0ASaj2EH1H/nCY3QgBzmZ
 PDdfqUyUduPQmp+OuR3gzYBUFeiFmKAZZCk6UmkCYrXc5uFd1B9NK+3wO+q7fCqOFV0R
 g8Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4zP6HMIa2YPzZ4Ud3UnVV9v/2WWghDZEujrnaWZbPns=;
 b=z7VsBR4J+MUAsJ7HoMzM/vccyl65uwyRY/qhNJhYyuZMCAFXZ3EJzrWQCLt2JOuR5Z
 zMYSMQQ9N9fQ0rmr5LDWHCeg2+EeuKHzJTmB1W26T8NcmChh9m6ZiddQUAlraAOk9G00
 pDJx/v4JzMY1mdTP0UeKhuGxoeK6yv4GkWdicWJdzGedpiasA1jNON7hgsCrzKPkx361
 HWGfFVf9EE0TFInUXlXV6L73xGkwhkJsafiRXCsuA1JaEKp4UhL9cvI7rMIh8O6sCkzs
 jw8zZD0ciq6OPr084q/P6c7yDdG4SoFnMqQApvTd1cWndkSVQ8FtpY51hr+FSLXHxU2D
 04Wg==
X-Gm-Message-State: AOAM531eH/+DHnLm6D70W/KqNXBpPMgvnlwT4YOXBB+10uNw+Y2GW+95
 ZdoUerq+mKGbG7OVHQPTe0NLyA==
X-Google-Smtp-Source: ABdhPJyQ9VeNqhjj7qlI7JhdS3acBdep+9UKDmpO3Y91brQHC2cBHqOMlHX3SGs3/FwHb18YDgbYJA==
X-Received: by 2002:a5d:6484:0:b0:20f:cc0b:e3f1 with SMTP id
 o4-20020a5d6484000000b0020fcc0be3f1mr8011615wri.237.1653303109362; 
 Mon, 23 May 2022 03:51:49 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.51.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:51:48 -0700 (PDT)
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
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
Subject: [PATCH v10 16/21] drm/meditek: dpi: Add matrix_sel helper
Date: Mon, 23 May 2022 12:47:49 +0200
Message-Id: <20220523104758.29531-17-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035150_013761_2E3F6FE9 
X-CRM114-Status: GOOD (  12.97  )
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
 drivers/gpu/drm/mediatek/mtk_dpi.c      | 21 +++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index a6b6d62a17e7..5b88a7ed5845 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -386,6 +386,25 @@ static void mtk_dpi_config_disable_edge(struct mtk_dpi *dpi)
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
@@ -393,6 +412,7 @@ static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 	    (format == MTK_DPI_COLOR_FORMAT_YCBCR_444_FULL)) {
 		mtk_dpi_config_yuv422_enable(dpi, false);
 		mtk_dpi_config_csc_enable(dpi, true);
+		mtk_dpi_matrix_sel(dpi, format);
 		if (dpi->conf->swap_input_support)
 			mtk_dpi_config_swap_input(dpi, false);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_BGR);
@@ -400,6 +420,7 @@ static void mtk_dpi_config_color_format(struct mtk_dpi *dpi,
 		   (format == MTK_DPI_COLOR_FORMAT_YCBCR_422_FULL)) {
 		mtk_dpi_config_yuv422_enable(dpi, true);
 		mtk_dpi_config_csc_enable(dpi, true);
+		mtk_dpi_matrix_sel(dpi, format);
 		if (dpi->conf->swap_input_support)
 			mtk_dpi_config_swap_input(dpi, true);
 		mtk_dpi_config_channel_swap(dpi, MTK_DPI_OUT_CHANNEL_SWAP_RGB);
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
index dd47dd3f2e4f..91b32dfffced 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
+++ b/drivers/gpu/drm/mediatek/mtk_dpi_regs.h
@@ -231,6 +231,9 @@
 #define EDGE_SEL_EN			BIT(5)
 #define H_FRE_2N			BIT(25)
 
+#define DPI_MATRIX_SET	0xB4
+#define INT_MATRIX_SEL			BIT(0)
+#define INT_MATRIX_SEL_MASK		(0x1F << 0)
 #define RGB_TO_JPEG			0x00
 #define RGB_TO_FULL709			0x01
 #define RGB_TO_BT601			0x02
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
