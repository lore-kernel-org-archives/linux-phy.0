Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B24C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:20:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BfI6TFU57nDjmNG2wEmo9GYQe2xtMOtRTaxVSL92ZiY=; b=X5ddZ2dBYEz6M1
	pOOEJK9BcAAcUPqqZ0yCX2+Zd06jozlWYR8WQzHDC+Lf1pUJfaMx6lSf1Tyl+Gz+UGXnUxllU+mC3
	/9q56I7BA1WRlDqiHiKgll84Abk2jiM6sp+FA++78rIazcn18E/AI0VKwuEseFmGSVnrLrbSQRi/F
	BMCV1inSboPNKRk8xK3WIYY3st4I2Vo/Q4fX2HpVw/wizU7g5IfJx/44iOvpwI8kfQe4QihDemYjY
	hJeV7y6Ue9zw/y9bhgrIGLUw1oFpsuHvskp3dtjq+IMUlPyBsSyG0rYEVnoT6eIKa9ziPL1Q0P3Fr
	6WZYa4j87vSJNkIpkIqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXnbz-002jlM-41; Fri, 25 Mar 2022 17:20:31 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnYb-002hYb-1B
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:04 +0000
Received: by mail-wr1-f44.google.com with SMTP id u16so11764230wru.4
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jrGtzUb1A9DfB89A9VTRS7pXkzrbTky760VebZOoHK0=;
 b=iQSrsH9BD/B641T27ogEpQH/ydFOoaJdiqKcbNEnBHC71WQgfBklLXsCO2WIbLIfHH
 SaGxrPOt/7Ecer7T5920AespR95oBeigGrtrdJdDoG+SGqZ87UyNwdAm16FA+7NVTIiQ
 W82/Fr7wrq68kVqdQCyQctxG3KuRVv4eaXEK9lycWy4wUztjAdlbKTCnIe6aB+M3LPx2
 l7XXlSNBwzh6L6FOthayduEAjl1DSGgWG4DRiKUY0b6gdWCRvrbdv+BxHduUheVqyhto
 QNxPul63aBFuQMVCURI0sTYm6AGH1ZoEvBV+TlYdljbWGU/zc5m36a6wYy7BOw8DQYRv
 575g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jrGtzUb1A9DfB89A9VTRS7pXkzrbTky760VebZOoHK0=;
 b=LSZMqwrYwjR40BQQDSx8/g6FUJfJMEPA6rzLy7SircSwGUDQnl3BLgTQx9TJ2P0812
 OQVEKCAWOPpgvlMoLiMPJdHJ8JT+gDYwYGss2Lz9tJiyVGs/LlDgoiVOdckey7B05nV6
 PZK4DupYEDuKUI3Wy8sXVfTp6KHfQxhq0cwbA7V5Pdxes+zaS4VujaQZGYazosmgqui2
 Ba6QcBZUQeWEk1UwMK8imyJH7+u4hYNOraAHS0lOgYCJAw6YXsEUtUF03x7orXp/FIiJ
 1ffm39mggh4wrKSs4fyGoUwboTjkdIKbgTWs2OuoE83rBTEu4dYVgCZCxrvP66Lf0vws
 Io+Q==
X-Gm-Message-State: AOAM5323g2MB4qzmH5f7AaEdMRA1YeNKitRvFhzsfvozbS3rxVpYtAyt
 dajqcj3vE9XQ+f2M5awy4bC9mg==
X-Google-Smtp-Source: ABdhPJyr/MHqNoxrEZxkSxI69GzpBet5NWJv730TUb5gDeppIGg95/PkafvqVtTJGsSmjnsTffPwUA==
X-Received: by 2002:a5d:47a6:0:b0:205:97fc:8e98 with SMTP id
 6-20020a5d47a6000000b0020597fc8e98mr7810743wrb.103.1648228617894; 
 Fri, 25 Mar 2022 10:16:57 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:16:57 -0700 (PDT)
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
Subject: [PATCH 07/22] drm/mediatek: dpi: move dpi limits to SoC config
Date: Fri, 25 Mar 2022 18:14:56 +0100
Message-Id: <20220325171511.23493-8-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_101701_117596_275FB0B6 
X-CRM114-Status: GOOD (  12.07  )
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

Add flexibility by moving the dpi limits to the SoC specific config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 4554e2de1430..4746eb342567 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -125,6 +125,7 @@ struct mtk_dpi_conf {
 	bool edge_sel_en;
 	const u32 *output_fmts;
 	u32 num_output_fmts;
+	const struct mtk_dpi_yc_limit *limit;
 };
 
 static void mtk_dpi_mask(struct mtk_dpi *dpi, u32 offset, u32 val, u32 mask)
@@ -235,9 +236,10 @@ static void mtk_dpi_config_fb_size(struct mtk_dpi *dpi, u32 width, u32 height)
 	mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE, VSIZE_MASK);
 }
 
-static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi,
-					 struct mtk_dpi_yc_limit *limit)
+static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi)
 {
+	const struct mtk_dpi_yc_limit *limit = dpi->conf->limit;
+
 	mtk_dpi_mask(dpi, DPI_Y_LIMIT, limit->y_bottom << Y_LIMINT_BOT,
 		     Y_LIMINT_BOT_MASK);
 	mtk_dpi_mask(dpi, DPI_Y_LIMIT, limit->y_top << Y_LIMINT_TOP,
@@ -449,7 +451,6 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 				    struct drm_display_mode *mode)
 {
-	struct mtk_dpi_yc_limit limit;
 	struct mtk_dpi_polarities dpi_pol;
 	struct mtk_dpi_sync_param hsync;
 	struct mtk_dpi_sync_param vsync_lodd = { 0 };
@@ -484,11 +485,6 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	dev_dbg(dpi->dev, "Got  PLL %lu Hz, pixel clock %lu Hz\n",
 		pll_rate, vm.pixelclock);
 
-	limit.c_bottom = 0x0010;
-	limit.c_top = 0x0FE0;
-	limit.y_bottom = 0x0010;
-	limit.y_top = 0x0FE0;
-
 	dpi_pol.ck_pol = MTK_DPI_POLARITY_FALLING;
 	dpi_pol.de_pol = MTK_DPI_POLARITY_RISING;
 	dpi_pol.hsync_pol = vm.flags & DISPLAY_FLAGS_HSYNC_HIGH ?
@@ -536,7 +532,7 @@ static int mtk_dpi_set_display_mode(struct mtk_dpi *dpi,
 	else
 		mtk_dpi_config_fb_size(dpi, vm.hactive, vm.vactive);
 
-	mtk_dpi_config_channel_limit(dpi, &limit);
+	mtk_dpi_config_channel_limit(dpi);
 	mtk_dpi_config_bit_num(dpi, dpi->bit_num);
 	mtk_dpi_config_channel_swap(dpi, dpi->channel_swap);
 	mtk_dpi_config_yc_map(dpi, dpi->yc_map);
@@ -790,12 +786,20 @@ static const u32 mt8183_output_fmts[] = {
 	MEDIA_BUS_FMT_RGB888_2X12_BE,
 };
 
+static const struct mtk_dpi_yc_limit mtk_dpi_limit = {
+	.c_bottom = 0x0010,
+	.c_top = 0x0FE0,
+	.y_bottom = 0x0010,
+	.y_top = 0x0FE0,
+};
+
 static const struct mtk_dpi_conf mt8173_conf = {
 	.cal_factor = mt8173_calculate_factor,
 	.reg_h_fre_con = 0xe0,
 	.max_clock_khz = 300000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.limit = &mtk_dpi_limit,
 };
 
 static const struct mtk_dpi_conf mt2701_conf = {
@@ -805,6 +809,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.limit = &mtk_dpi_limit,
 };
 
 static const struct mtk_dpi_conf mt8183_conf = {
@@ -813,6 +818,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.max_clock_khz = 100000,
 	.output_fmts = mt8183_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8183_output_fmts),
+	.limit = &mtk_dpi_limit,
 };
 
 static const struct mtk_dpi_conf mt8192_conf = {
@@ -821,6 +827,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.max_clock_khz = 150000,
 	.output_fmts = mt8173_output_fmts,
 	.num_output_fmts = ARRAY_SIZE(mt8173_output_fmts),
+	.limit = &mtk_dpi_limit,
 };
 
 static int mtk_dpi_probe(struct platform_device *pdev)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
