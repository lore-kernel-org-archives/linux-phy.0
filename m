Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37B97C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 23 May 2022 11:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUyzomO6yGtKayezpw9+SU3tSslA1pRbt89nSRKtusk=; b=lg7shwnkL5YBMP
	K4lUgx5Ysy08w8fMYhMWCCCHp9wUcqnLVjs5qDy5CGezCaa5JfajWA0vZIdy/InP+ZSGMDKXh5qI3
	K7Dp88OuyllhuQTsnscZ0bqJZKsS2aznNhRaYwb/eG0IN3wsivi2CTvx/A6yGCp60X8nE0XZEN4Yj
	cp9TBdes6Be7zcOhZIEa1vChIiqkRYtQ491LCQl/OSk/TtvIL96HqEQ8S5ajp4TLckxBrjthwfSWs
	rihg9xf20yOVOALO1S2Wmj76Z/iVgDsZDSXlLCUIPiUCLNjdzSr1lHh4EphtJT0IMx8Jby3lOIqSD
	aGOcUKfNDbSzLB7qjZXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt6Pb-003mZo-C0; Mon, 23 May 2022 11:39:47 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt5f6-003QLS-G7
 for linux-phy@lists.infradead.org; Mon, 23 May 2022 10:51:46 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 r9-20020a1c4409000000b00397345f2c6fso6340118wma.4
 for <linux-phy@lists.infradead.org>; Mon, 23 May 2022 03:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L59GiR9dWwoU3bIhqqTo2XYxtqfhGwikIlZ2jdUecpc=;
 b=2GpBC1024UFGepfN4EeJgCuO1UN/4rP8fzM4ZTL1Oy3Eb3PQ2YbsieGfwd/wr19Az/
 vWLap0skRbcSkUKW+aQZeMenpJ688qxeEMD6FtIdTctSUfNDjNU3ehuSa8LsbZCQyUSK
 Zy+t65L6dGDUIql6D2yeRE+ALRoFTHsQeKMF2wqO2ShIe7QcffeUStrl7exDqGkmebos
 xLpftSD8FbLe/y/SJYDwky1vcICDBek0D4TMe/W6PIp1v0fzs2QFFKULXHPK5y2KoT2H
 8pWePMqWJBCozqwdHN94XLhrb7SeHk7Zo861HG5+ZCYdcczXlH57WTcJRxLCU2WW9NiG
 XpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L59GiR9dWwoU3bIhqqTo2XYxtqfhGwikIlZ2jdUecpc=;
 b=Shkxxg0PwGkz+QeMQsdsAiRaV7eD7GcMtfHoF2zrqW1428oCafMrY0nKxGULXZCjRI
 mtLIB9KX1nVJxWck9YWqxeSUUCqQ4Zch1nq+S0CtgxGeC88ygdXsCvuR4lhUva0mqmzO
 Mcv7m0b9B02kFRVOb+fYYFac3FYTeFAfA56b7BgVY31G18/C2e54rN17mbNsSytY4h35
 mdDJKB7YNOz23AZFzSNWHC+Y7+xLKc2Zi4px3LEKdBKxXi3xJwfqANmXVIyFlfTMIjE+
 3FrIRGQuQzfS9JkwE5VDqPlOYLghQZxj4R85GILQanqGex8xQKLc0YTCRTb1KD6EnkYJ
 kIZA==
X-Gm-Message-State: AOAM5311cxBSw/7KSyO4TM7iLqLhWMNfpbhB4iXlcVS6FiTBMre9zKsE
 tY/xEp0OkXaWYDp9V+MxovdJzA==
X-Google-Smtp-Source: ABdhPJwNegNr44So8xq4D2p9JaCnMXp0VvpDOo2fky113Q7b9TeovIyeLXQjxBiFJh/CiujqFzERLQ==
X-Received: by 2002:a05:600c:3048:b0:394:436b:76b6 with SMTP id
 n8-20020a05600c304800b00394436b76b6mr19844563wmh.63.1653303103041; 
 Mon, 23 May 2022 03:51:43 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-9d1b-3074-96af-9642-0003.rev.sfr.net.
 [2a02:8440:6141:9d1b:3074:96af:9642:3])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a7bc5cb000000b003942a244f38sm8453607wmk.17.2022.05.23.03.51.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 May 2022 03:51:42 -0700 (PDT)
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
Subject: [PATCH v10 15/21] drm/mediatek: dpi: Only enable dpi after the bridge
 is enabled
Date: Mon, 23 May 2022 12:47:48 +0200
Message-Id: <20220523104758.29531-16-granquet@baylibre.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220523104758.29531-1-granquet@baylibre.com>
References: <20220523104758.29531-1-granquet@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_035144_657759_83D34237 
X-CRM114-Status: GOOD (  12.51  )
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

Enabling the dpi too early causes glitches on screen.

Move the call to mtk_dpi_enable() at the end of the bridge_enable
callback to ensure everything is setup properly before enabling dpi.

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
 drivers/gpu/drm/mediatek/mtk_dpi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 763bfb700135..a6b6d62a17e7 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -478,7 +478,6 @@ static int mtk_dpi_power_on(struct mtk_dpi *dpi)
 	if (dpi->pinctrl && dpi->pins_dpi)
 		pinctrl_select_state(dpi->pinctrl, dpi->pins_dpi);
 
-	mtk_dpi_enable(dpi);
 	return 0;
 
 err_pixel:
@@ -711,6 +710,7 @@ static void mtk_dpi_bridge_enable(struct drm_bridge *bridge)
 
 	mtk_dpi_power_on(dpi);
 	mtk_dpi_set_display_mode(dpi, &dpi->mode);
+	mtk_dpi_enable(dpi);
 }
 
 static enum drm_mode_status
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
