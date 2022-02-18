Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50154C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 18 Feb 2022 15:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lp+TWlYBhyW+qnyHl24oXXp8T5BEbmQM8I6DFrjrgeI=; b=kBpbsG7CVkDiND
	K/PFZN342ZxwMBrhcqVuSaCJ22FqUF30zK3P+QMOEmwUT2Uy6XzXsM+8/shS4GoQN4UivS0petFbU
	PI+C2hdvr0/qfmNzT6+hY7kQFfY1FXOxru520WC8d/m5MH+2EoTHl009njJuTS3rpqVdYKnMsJES2
	ggeALEBncBkUBNkjUlzHkpebG9FdJyNlLfxS5tNbc77vyNn1rLK492BRhFS2H3frmDN73hXXl7cZg
	hzuzpwQVJtAdY2aBRB0MP7L9VffWV6qoh+BBANS1ISTcfCvsVShxHvG5uACDGOVPTIyls1OWhx/yb
	ak5y9dYMsEGseDb57PQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nL4lk-00Evf2-16; Fri, 18 Feb 2022 15:02:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nL4fv-00EruD-An
 for linux-phy@lists.infradead.org; Fri, 18 Feb 2022 14:56:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id
 q198-20020a1ca7cf000000b0037bb52545c6so8811544wme.1
 for <linux-phy@lists.infradead.org>; Fri, 18 Feb 2022 06:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XGn4CkzlW3He7suVzPqPn3VD7gzaiArcrGd2MUYMtSU=;
 b=0znZPsKcNdd1NmNr2Xn13+NpX3iZlRQKoZJpfmDBFyv5A0hV+K4AlVPvPmlaPIjpVE
 7fV47gN4i6t29kArBwEYgJSBczEv/nhXke4N9H3Hm85Y3XHkjFf85bxzhlp52AZQvSPn
 rnkl0YXYxpzLD0S/pxVg32Zn1CezaUjxvhzki+Ry7QhjX49Dub4bj6dC5TRoTFnYBhXM
 vZ+K08ltxEWzFTsOK6QKSO16W/X0c7+69Gc7+LTNOdN487vCKHrdHNNkWM5LIYKYkyhY
 U0FNxmKO9N7fC4g+j/xGKQdY2P8oQxtECcNg0HJbXJbgmiGtOqrxff2COk75zT1joSIu
 HspQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XGn4CkzlW3He7suVzPqPn3VD7gzaiArcrGd2MUYMtSU=;
 b=pvvIf0Q5hD1DjnBVhj6aYR4XTT2eRmGBnYqXYkiv9uhQJsJ7IcDlAN312AyeaI/P0H
 peaFQIS7R1yWYQkDqaoUHLgUt13TnbE+O8ZZ9kDKZd4Nug3Z6nN+iocykpICGCMUDVMP
 c6ZZs/pFL0xDBK97Dzy5AHq4FkID1gA8+s23ghsAqieNvEmOqjupQS2s/E29gqpj5MPo
 fXhzLk1yyFY41Il1ypB4GjMQxl4EJhU4/56HcnbuWiYb0IOBuLNt1I4JahZd9I0fP37V
 8ZrUXe0p6jN6Vcu3hHT18Yhk7wwbTBpa8DM50Yo9Tmd6rm0AQxjj3Fg3bNBdk4TfGVbX
 ZGjw==
X-Gm-Message-State: AOAM533nKf4dBYVe8nuPZ10HW2jcwm8hyfbVjS0AHwyBJO1L1raNY98T
 WV/X6dNj5LNNy+K/Y70gG4b5hw==
X-Google-Smtp-Source: ABdhPJy/hWg5q4suBUdAaXAZ8422BePcDuhOqnlAR76Tw+/0DUL9qkMSzTulm5CpJQZwKlZUAe2+6A==
X-Received: by 2002:a05:600c:154f:b0:37b:c5cf:40e8 with SMTP id
 f15-20020a05600c154f00b0037bc5cf40e8mr10984119wmg.27.1645196156766; 
 Fri, 18 Feb 2022 06:55:56 -0800 (PST)
Received: from localhost.localdomain
 (2a02-8440-6241-3b28-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6241:3b28:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id b10sm47431454wrd.8.2022.02.18.06.55.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Feb 2022 06:55:56 -0800 (PST)
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
Subject: [PATCH v8 0/19] drm/mediatek: Add mt8195 DisplayPort driver
Date: Fri, 18 Feb 2022 15:54:18 +0100
Message-Id: <20220218145437.18563-1-granquet@baylibre.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_065559_531671_485F0766 
X-CRM114-Status: GOOD (  13.29  )
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

this series is built around the DisplayPort driver. The dpi/dpintf
driver and the added helper functions are required for the DisplayPort
driver to work.

Changes from v7:

As requested from CK Hu, I've split the DP driver into multiple patches
with initial support for eDP, then DP and finally Audio.

the dpi patches have also been split to isolate all the boolean/config
options added to the board config structure.

I've thus removed the "Reviewed-By" tags (from AngeloGioacchino Del Regno) touching these patches.

I've also included 2 patches from Jitao to the series:
  drm/mediatek: add hpd debounce
  drm/mediatek: change the aux retries times when receiving AUX_DEFER

Older revisions:
RFC - https://lore.kernel.org/linux-mediatek/20210816192523.1739365-1-msp@baylibre.com/
v1  - https://lore.kernel.org/linux-mediatek/20210906193529.718845-1-msp@baylibre.com/
v2  - https://lore.kernel.org/linux-mediatek/20210920084424.231825-1-msp@baylibre.com/
v3  - https://lore.kernel.org/linux-mediatek/20211001094443.2770169-1-msp@baylibre.com/
v4  - https://lore.kernel.org/linux-mediatek/20211011094624.3416029-1-msp@baylibre.com/
v5  - https://lore.kernel.org/all/20211021092707.3562523-1-msp@baylibre.com/
v6  - https://lore.kernel.org/linux-mediatek/20211110130623.20553-1-granquet@baylibre.com/
v7  - https://lore.kernel.org/linux-mediatek/20211217150854.2081-1-granquet@baylibre.com/

Functional dependencies are:
- Add Mediatek Soc DRM (vdosys0) support for mt8195
  https://lore.kernel.org/all/20211026155911.17651-1-jason-jh.lin@mediatek.com/
- Add MediaTek SoC DRM (vdosys1) support for mt8195
  https://lore.kernel.org/all/20211029075203.17093-1-nancy.lin@mediatek.com/


Guillaume Ranquet (11):
  drm/mediatek: dpi: move dpi limits to board config
  drm/mediatek: dpi: implement a CK/DE pol toggle in board config
  drm/mediatek: dpi: implement a swap_input toggle in board config
  drm/mediatek: dpi: move dimension mask to board config
  drm/mediatek: dpi: move dimension_mask to board config
  drm/mediatek: dpi: move swap_shift to board config
  drm/mediatek: dpi: move the yuv422_en_bit to board config
  drm/mediatek: dpi: move the csc_enable bit to board config
  drm/mediatek: dpi: Add dpintf support
  drm/mediatek: Add mt8195 External DisplayPort support
  drm/mediatek: DP audio support for mt8195

Jitao Shi (2):
  drm/mediatek: add hpd debounce
  drm/mediatek: change the aux retries times when receiving AUX_DEFER

Markus Schneider-Pargmann (6):
  dt-bindings: mediatek,dpi: Add DP_INTF compatible
  dt-bindings: mediatek,dp: Add Display Port binding
  drm/edid: Add cea_sad helpers for freq/length
  video/hdmi: Add audio_infoframe packing for DP
  phy: phy-mtk-dp: Add driver for DP phy
  drm/mediatek: Add mt8195 Embedded DisplayPort driver

 .../display/mediatek/mediatek,dp.yaml         |   87 +
 .../display/mediatek/mediatek,dpi.yaml        |   11 +-
 MAINTAINERS                                   |    1 +
 drivers/gpu/drm/drm_edid.c                    |   74 +
 drivers/gpu/drm/mediatek/Kconfig              |    7 +
 drivers/gpu/drm/mediatek/Makefile             |    2 +
 drivers/gpu/drm/mediatek/mtk_dp.c             | 3067 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         |  568 +++
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  287 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   38 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |    8 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |    1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    6 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |    1 +
 drivers/phy/mediatek/Kconfig                  |    8 +
 drivers/phy/mediatek/Makefile                 |    1 +
 drivers/phy/mediatek/phy-mtk-dp.c             |  199 ++
 drivers/video/hdmi.c                          |   83 +-
 include/drm/drm_dp_helper.h                   |    2 +
 include/drm/drm_edid.h                        |   18 +-
 include/linux/hdmi.h                          |    7 +-
 include/linux/soc/mediatek/mtk-mmsys.h        |    2 +
 22 files changed, 4399 insertions(+), 79 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp_reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
