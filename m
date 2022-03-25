Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DAAFC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ZkzEleOIGnxbj7avmKwLvLimcyE7TPzyppVlPPYCf8=; b=N2SkNW7HW33N8T
	KcVmamFIBQaAZvtMSLXP+BnQj6l8q23C1TiTCgQ5CS6HQQcOoHppoI/NNaPV3xzhsAhMjdbPJk2bH
	f8Sl1em35KwYixAzIX2sXPK6GUdL8wNQhWVuC7L1IkxMPBDhtPIcfVamj/hk74mPnQim4+JRuRByU
	HQfY+YEV0qgfv6yahvtzl545S7vzo3ZPX6N1Q5AqQxNaj6zUFcdDfuP0CanQW0wSP5KOCkTnXOorX
	oZHl7MXzxDzNEXbXpC3LBYWJ7uvPWcBkU4+LGL3atTR6umpbao+UNnnX6hkVWpslRliyExwsCgi4C
	MIfn0T5ajEYW4T+X4Faw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXncW-002k5i-SB; Fri, 25 Mar 2022 17:21:04 +0000
Received: from mail-wm1-f42.google.com ([209.85.128.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnYc-002haQ-8I
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:04 +0000
Received: by mail-wm1-f42.google.com with SMTP id
 l7-20020a05600c1d0700b0038c99618859so9385590wms.2
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z0UyPlWzo4y5KtqMIJtLeHp3pqp/XkkAPry5DhA+scQ=;
 b=nK1lACwsSe7yZ3o29QQ6+6LAQXlxmu33SzVyzVt0/58cIz6yqIZK4LVHTdn/y/nXa5
 /phwBmD8Xwg45AKK2t28fX0I+lQWTfsIC5T370z21ccs1KQN4iKIA7ud0yQAqta2HWyL
 TeQ37+O1zjxS5J6PF+PZvfkRpKYaOcngE9UCN0pClS16YPQVAm1tSnJS3conrPYsL2+j
 GTY9h2ht0vbLF5K5xr/k8DalzyZmBr6jf2ZGRdlooXYNI5DG2l6pTXxyes3xxGPw9ypn
 nnZaeIjkaBPqjPI7gWan+GxMlcwfC1cDuPjjR5rUNKGsMPiB+i0cMnOfRZCT37p1TbwL
 jb/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z0UyPlWzo4y5KtqMIJtLeHp3pqp/XkkAPry5DhA+scQ=;
 b=BCJ50DS9TSDFWIGW1ejtvxFhsnTSphJXxchAePEVdFnGkqUUUGoJKSWfNTjhufsDW3
 AUVWT+DW1Y4TVvlB7wRwUnBKAqxnM/qVzalfjpn9VZ/rx2CINTWid4Vgh8wGXY2mZKo0
 CVQebQuv/ut4Cx5XHZ4maifi9KJQaqZqr0pvl7cwnQ6mBwpUfiI3Y/VDM0zOqizRHoNO
 S3ny/lhP2iXLge2CMtsh6S1JzUZ/AILhK8CPUB/vcrzCEfuJR70q53Shv8gmBn6zSMex
 +TpqRK3rlsZFk/TRO31YUKLP7csQcosH6DFA33JWNONxSnCsd9e2+zbL9V11RpGucpb4
 9TFA==
X-Gm-Message-State: AOAM530fjR1dLsz+1ltCnP42gnwJ/jCWm3lJL5s4vjSw9mDsSigwHaRe
 4uhu3x1RJ7R1atgUx+0Arz0khw==
X-Google-Smtp-Source: ABdhPJyXo6ik6r6RQSTysIePMHUG22CLd2y8/JaDeZs3aASy/dXgh8ev1U594xWC7kSgpqvduNejAg==
X-Received: by 2002:a05:600c:4e4b:b0:38c:eebc:2ec4 with SMTP id
 e11-20020a05600c4e4b00b0038ceebc2ec4mr2058412wmq.47.1648228619892; 
 Fri, 25 Mar 2022 10:16:59 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:16:59 -0700 (PDT)
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
Subject: [PATCH 08/22] drm/mediatek: dpi: implement a CK/DE pol toggle in SoC
 config
Date: Fri, 25 Mar 2022 18:14:57 +0100
Message-Id: <20220325171511.23493-9-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_101702_357562_DD1C1748 
X-CRM114-Status: GOOD (  11.87  )
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

Adds a bit of flexibility to support SoCs without CK/DE pol support

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 4746eb342567..545a1337cc89 100644
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
