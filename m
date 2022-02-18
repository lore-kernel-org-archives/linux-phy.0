Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6B9DC433F5
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOJ5Q6Y8KqjXdkLMmR2xlcR0PnOBvmL0kGxTSVJLQ6g=; b=3BDfnvSbDrQaqS
	8fChdlNsnND5iOtra2J7l63OXd5u9u9mp47oBPpoOJTFgYsR8MLNBysfgxFPtRPlgfx6N+1xUyrdJ
	GcaYiW/I224NUNmLX8hagDtQ9+N/jrg0hq2NS74kj0nFIJzrNbU6OpEeY64kWLXehgAA7W3DDigM7
	+CBlJMtWcRNPNSMU2GuDbzXAfUUnPjlXHdMLoFPcUWI5AjQT52cyRUHgIxCCfS+W6NkSk4gkCJ++w
	9a1NzapVQvE/OkLKZHm6vHCEC9u+E02ibVtJUMWTTPwyWgQmj+mhiRH9dJBfv2fW83XwMYFJ5PCnz
	dtKpHUT7cu36NcsZIdhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4vU-00F0HX-97; Fri, 18 Feb 2022 15:12:04 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4gL-00EsIQ-CI
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:33 +0000
Received: by mail-wr1-x42c.google.com with SMTP id u1so15006524wrg.11
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4n+TZK7KbEUWOxLwDOr/TfxysKvgpkHmktiIGYd/K7I=;
 b=AYIJhoYSI/uBVyX7bKr0EN1LMOI9DxVA+XSltqNaOrt2mARRYDaY5J64JbYiCTP7IZ
 VKDnRnXSySg9ti8q2Gdd3ZT0Wyy7ynM+UAAvTdKD8U0Tlw/rdFU0Ax+Bl31KHyQvR6J+
 ApEGo756/YXVILQcaJjKh6mpjgrnE6hH2BcxMa0PSZfAbZ1ii4qMye2ff32XGm+aMqWW
 I4JiP+ajubHk33IS1IZ3S8JjYTWhjCMn2KKcc8E9C8JUJwyz2G0tABN5GfQXUKJTkUEx
 lSLU6qH/VrjTJXGL8HJZcnUdu8gPP2xdjRyeQv76DPON8zKmYDxfu3kR4iYgimxYtDmD
 9uRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4n+TZK7KbEUWOxLwDOr/TfxysKvgpkHmktiIGYd/K7I=;
 b=DvfjDE4GfiMfnlfro4kpX9NvmCLHNd4w9J1ZKT4ycSpjJohUMTZhfKBRIngXpL1Ndk
 IBFeV3RSP95d/u4Pz2H27kAl6A/w+lWvqORJLDSTdAXtR4/WggijT7lcpmnSe7HhEFeT
 jsoMWBFzWBKEJC9djG6tvKbMGr0vfi2KYngW+ib4W7YI46z64RMCmFyDp4eRQNIBrsVC
 CF9i8CyB4/LXSVR27zSm1yg8TT8YP6pKAKXyhgROlpuXkF8U5NxDLzO99MHT62f6P/aC
 mL8KYnD0jODuM2GruLzQcQKoPkGIEQb80WjLaNgPpu8v1Vo9f1BM3Eyigvpk3qzWeueT
 qgfQ==
X-Gm-Message-State: AOAM532ySBbnc4BhdYDeSljGODtYpx70w9QzpdNYzf/P4+SAdKhVFTih
 4dvSekv0pvcEwhkRUqq8zvxmbw==
X-Google-Smtp-Source: ABdhPJxA3E5twbEB2QJP6JHl07PRCaBz7TlkWHIbHPK96lIV8OG5te3hJNfKAZY7HiAKl5ltEPTi9Q==
X-Received: by 2002:a05:6000:1a8c:b0:1e8:88ae:f908 with SMTP id
 f12-20020a0560001a8c00b001e888aef908mr6354423wry.532.1645196183454; 
 Fri, 18 Feb 2022 06:56:23 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.56.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:56:23 -0800 (PST)
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
Subject: [PATCH v8 12/19] drm/mediatek: dpi: move the csc_enable bit to board
 config
Date: Fri, 18 Feb 2022 15:54:30 +0100
Message-Id: <20220218145437.18563-13-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218145437.18563-1-granquet@baylibre.com>
References: <20220218145437.18563-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065625_503372_585186EA 
X-CRM114-Status: GOOD (  10.70  )
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

Add flexibility by moving the csc_enable bit to board config

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index fcf88dcd8b89d..be99399faf1bb 100644
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
