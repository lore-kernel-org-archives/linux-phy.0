Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F1B2C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Mar 2022 17:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F1oUYoErfCcYe20cPw1nELTTa2U23GQTOdsfouoNfT4=; b=103lStiGlsTuzq
	B8mG1vzDsGkrG5+73woeo7LT9F4gc5JrtEljstPP+0hZJhJu9wvzz4N4q5ZGdaRvJL+0VakvlV/+0
	JfQ7WlDImm0piO2eAlPDbDXxeEDRgnbLSaG+sc8PD0DWrIK4cEMNggvDIT8y78c6i3T9tBDZqlGgM
	byftLQZa5znla1ft806O94/tnSjyouV48EYRibC5XyvfwPf6RKVZodm09Uoe45ncCrbWuCu9c/ycz
	TOTnyMXTsl/rzP2LrSJmSHt/bf5Cor3mS43Q3fsBTgUI+XhFL2zpxZmRISpGczyNu4vDk/JBwnKfs
	aRxeXoH7eZprJQ3CwPWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXnfv-002m3g-Kd; Fri, 25 Mar 2022 17:24:35 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXnYo-002hm4-R9
 for linux-phy@lists.infradead.org; Fri, 25 Mar 2022 17:17:18 +0000
Received: by mail-wr1-x42b.google.com with SMTP id d7so11752837wrb.7
 for <linux-phy@lists.infradead.org>; Fri, 25 Mar 2022 10:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KMvfz+B/fO4XaHRDT9xBCSiSBmXbtSzCBQeXFCLeYNU=;
 b=p/bzvqcoe7xmjeGx0bzZZKr3QkGpvN1OffJqFUZIQSXRwAILqcf+RcRhigcNIVuytf
 gdMEjPWkXeWQUCajFWsp/Aue26OZT25LAtjITkO/AbC7JId1qwsj5MMxiZobBbJXcGBA
 XxelquKvDUapJkpBpWzf6hj7DWbR/IkirEcEat0Tcvi6e7sL8jfWN/dm9iVMQlYhEj1t
 dJTdtiFJv/lWnkTJ9S++ymuxEz5s8t4NoGCrjK3oSoDoFNwFQSnpE+l6ExBubJ1I/2OA
 jbh+S2ZhgOPMjLJ9Bbx4HrkzcNbX3QXmv795tI/LYBkxXIzIvObYQGo/LdNRhdXcgzE9
 xEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KMvfz+B/fO4XaHRDT9xBCSiSBmXbtSzCBQeXFCLeYNU=;
 b=4aXX4OvO3q2x51ra1P5sHRdWBdOjz6rIebzKpwxHKXA8eOp5gy2dcukQA+AvB04CUI
 h60e/kNL2m3rT1RMoWuLbsXoTWSvPVYNRhhP8UUNU5qGGw4vmQaPcoiRzcesEA5K+lQG
 ZhUSacvRfTbsHb0axRaR0gRk2EYV/qQpPdAGgq+c6IC1k9JPRMzhk+rf1Oo3grSZi3jn
 ywXSQjV13BPLbdlMGvk0oHNgFtgXnwp7O8Q8ofjPMdyfeLjBBrx2cLKfv0SzPwHrpHBo
 W08OR2itDgUcpCbp50o3AIO5F241WmnMUYwI7r+vnfL8kuswSIFgBT0Jvwr8Nn44l2Qy
 GKeA==
X-Gm-Message-State: AOAM5323QHnjYqMQts1OaYIVTSmh8XDkbiA6U+zhb/hn0CPI52O5dvVI
 zsddThPhXXb8ZiXchrzPwgcXBw==
X-Google-Smtp-Source: ABdhPJx6jyzSTLucPsEMVBbYsGniaNIpeoyfEh/lkHKnA/tWkx4gSFEuQudHfuWGo39hyWySDlHC0A==
X-Received: by 2002:a5d:4d43:0:b0:205:9376:5d8 with SMTP id
 a3-20020a5d4d43000000b00205937605d8mr8887728wru.193.1648228632808; 
 Fri, 25 Mar 2022 10:17:12 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6240-cc41-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6240:cc41:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a5d6390000000b00203ffebddf3sm7547464wru.99.2022.03.25.10.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 10:17:12 -0700 (PDT)
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
Subject: [PATCH 14/22] drm/mediatek: dpi: move the csc_enable bit to SoC config
Date: Fri, 25 Mar 2022 18:15:03 +0100
Message-Id: <20220325171511.23493-15-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325171511.23493-1-granquet@baylibre.com>
References: <20220325171511.23493-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_101714_940314_B3A0A816 
X-CRM114-Status: GOOD (  10.92  )
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

Add flexibility by moving the csc_enable bit to SoC specific config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 40254cd9d168..eb969c5c5c2e 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -133,6 +133,7 @@ struct mtk_dpi_conf {
 	u32 hvsize_mask;
 	u32 channel_swap_shift;
 	u32 yuv422_en_bit;
+	u32 csc_enable_bit;
 	const struct mtk_dpi_yc_limit *limit;
 };
 
@@ -363,7 +364,8 @@ static void mtk_dpi_config_yuv422_enable(struct mtk_dpi *dpi, bool enable)
 
 static void mtk_dpi_config_csc_enable(struct mtk_dpi *dpi, bool enable)
 {
-	mtk_dpi_mask(dpi, DPI_CON, enable ? CSC_ENABLE : 0, CSC_ENABLE);
+	mtk_dpi_mask(dpi, DPI_CON, enable ? dpi->conf->csc_enable_bit : 0,
+		     dpi->conf->csc_enable_bit);
 }
 
 static void mtk_dpi_config_swap_input(struct mtk_dpi *dpi, bool enable)
@@ -827,6 +829,7 @@ static const struct mtk_dpi_conf mt8173_conf = {
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
 	.yuv422_en_bit = YUV422_EN,
+	.csc_enable_bit = CSC_ENABLE,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -843,6 +846,7 @@ static const struct mtk_dpi_conf mt2701_conf = {
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
 	.yuv422_en_bit = YUV422_EN,
+	.csc_enable_bit = CSC_ENABLE,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -858,6 +862,7 @@ static const struct mtk_dpi_conf mt8183_conf = {
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
 	.yuv422_en_bit = YUV422_EN,
+	.csc_enable_bit = CSC_ENABLE,
 	.limit = &mtk_dpi_limit,
 };
 
@@ -873,6 +878,7 @@ static const struct mtk_dpi_conf mt8192_conf = {
 	.hvsize_mask = HSIZE_MASK,
 	.channel_swap_shift = CH_SWAP,
 	.yuv422_en_bit = YUV422_EN,
+	.csc_enable_bit = CSC_ENABLE,
 	.limit = &mtk_dpi_limit,
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
