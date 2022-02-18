Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A75EC433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSY4eUF6UcuJ4UFBIQ+A6cEhtHNIclZIbEMoQmfhB/E=; b=rbWAVX3hkYG+uy
	R9NnBPDA/zLDuYJBNoF4DMRKgVgtdycQh0T1E5TnsWjp1ZKwGrQiRwc1PRzwYaFJI+xPmKdAZe+0J
	Rl/DflF0du+MiTIPUGBXaL2MqdsnLipVVxalDBj9dKKOnnnQat+vjbb/R227SZqF0xTmYDSf8QDqY
	Rvo+ZOsKqzcolE7w3HIunFI389E+XON7OTkdUPwId1/9ByxplatjuCqih5Rm3cXFmMWlIRe41zMHX
	GyZP8hr3zz09LyWYbLEZcSG6tU+AUco3ILJitwrw9A8E/WmD2EMXZILGQXrRr2d1kBSMxFBYgtYdh
	DgA2d2/x4K62o4h2v65g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4rA-00EyIy-5o; Fri, 18 Feb 2022 15:07:36 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4g7-00Es6H-PS
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:18 +0000
Received: by mail-wr1-x42f.google.com with SMTP id x5so10179982wrg.13
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=74eAjite1YksdGIU0aBC39Xndc2WIe2LazK2htC4zfk=;
 b=HoHQ/qui2T0BIpjk7uFcqqXA+59MESDkpbd4jX3EgaODmxpm8DiFx/ESXwZGyAm7RE
 +1bDYwDbtRQvInmytiZG0dsjPa/vfLvQs5U0w4A6CEGcMhHpe6uzZ3Z9WYSOwdDEaAXU
 Mm9G3C9lRiGVfEZ1jPX8BOq7Ja0JI7eqCXiURCVkjJ0au1AaTH1Pw2rxE/iVn4LA/yUw
 LK9M/DKvTdp/QUh+o/X0uigtfJ5viGx5t4yWya9hNiGWRmnkP8EWfwQ/SQKai9Nv3KQO
 dnDCiiHMZlTp1gMZC6jXc+5E/BKtvoaERTnqf+OUCAEUXWSMC+D2HYRqWaVuQw6YgWrO
 lDdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=74eAjite1YksdGIU0aBC39Xndc2WIe2LazK2htC4zfk=;
 b=jECh/uvfKMU5XB6igOPT87mKvM6CSl+H8pW1gxneJptTfJi2QjerNgcf3dhAWZnybT
 ndNL+rTpIeqxsW7i7zWw16MzGuGgmxBX81H058YvrTItKpVFIDMQrPwyKW0Ge+OsKUSj
 kmYtLdcdnTbjcmv1qYdCPpNyw0KaYI6pdd4NQ3NudKJtzky8Nj6OV4hbyfCAenp0pF+Z
 ReWjKIV1al6JFNqu/snXXYvvlii+nVyUEem+OT4uGIhbLJi8BjKkcQqWVn7kgTs04C9Q
 qDGFZXGax4fQBDfSk+oQ3MGPjS6WhqI3Uut8Mkbf0qWfXxW+tYzKA9rdLEDfNbHpREjx
 /JwA==
X-Gm-Message-State: AOAM532l9PXTkWxNmJiuizOLBRgeXlJHS7YLoLNEkHFip/3W3UIoOezp
 JNM4nbHHoarQSRv2Y2ecVOYGVQ==
X-Google-Smtp-Source: ABdhPJykBR0WcjKdOJgGeDVbCzSmsQ2DzFr1mKmqIp5hyqDnSRTrae+KtQ1kIOkfZyByjJW30hC/7g==
X-Received: by 2002:adf:9f45:0:b0:1e3:20e8:489a with SMTP id
 f5-20020adf9f45000000b001e320e8489amr6109613wrg.602.1645196170187; 
 Fri, 18 Feb 2022 06:56:10 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:56:09 -0800 (PST)
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
Subject: [PATCH v8 06/19] drm/mediatek: dpi: implement a CK/DE pol toggle in
 board config
Date: Fri, 18 Feb 2022 15:54:24 +0100
Message-Id: <20220218145437.18563-7-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065611_898759_F56BA8C8 
X-CRM114-Status: GOOD (  12.03  )
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

Adds a bit of flexibility to support boards without CK/DE pol support

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 4746eb3425674..545a1337cc899 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -125,6 +125,7 @@ struct mtk_dpi_conf {
 	bool edge_sel_en;
 	const u32 *output_fmts;
 	u32 num_output_fmts;
+	bool is_ck_de_pol;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -211,13 +212,20 @@ static void mtk_dpi_config_pol(struct mtk_dpi *dpi,
 			       struct mtk_dpi_polarities *dpi_pol)
 {
 	unsigned int pol;
+	unsigned int mask;
 
-	pol = (dpi_pol->ck_pol == MTK_DPI_POLARITY_RISING ? 0 : CK_POL) |
-	      (dpi_pol->de_pol == MTK_DPI_POLARITY_RISING ? 0 : DE_POL) |
-	      (dpi_pol->hsync_pol == MTK_DPI_POLARITY_RISING ? 0 : HSYNC_POL) |
+	mask = HSYNC_POL | VSYNC_POL;
+	pol = (dpi_pol->hsync_pol == MTK_DPI_POLARITY_RISING ? 0 : HSYNC_POL) |
 	      (dpi_pol->vsync_pol == MTK_DPI_POLARITY_RISING ? 0 : VSYNC_POL);
-	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, pol,
-		     CK_POL | DE_POL | HSYNC_POL | VSYNC_POL);
+	if (dpi->conf->is_ck_de_pol) {
+		mask |= CK_POL | DE_POL;
+		pol |= (dpi_pol->ck_pol == MTK_DPI_POLARITY_RISING ?
+			0 : CK_POL) |
+		       (dpi_pol->de_pol == MTK_DPI_POLARITY_RISING ?
+			0 : DE_POL);
+	}
+
+	mtk_dpi_mask(dpi, DPI_OUTPUT_SETTING, pol, mask);
 }
 
 static void mtk_dpi_config_3d(struct mtk_dpi *dpi, bool en_3d)
@@ -799,6 +807,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.max_clock_khz = 300000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -809,6 +818,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -818,6 +828,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.max_clock_khz = 100000,
 	.output_fmts = mt8183_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8183_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -827,6 +838,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.is_ck_de_pol = true,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
