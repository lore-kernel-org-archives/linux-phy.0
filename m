Return-Path: <SRS0=iYEg=N5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36155C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 08:39:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE7B9610FF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 08:39:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EE7B9610FF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HGuL/D9oV6EyK96CIpFeqjq0us0hp56TbruehRo/yzE=; b=Aw/sbOKrXIFQ3s
	7jKOQIG8wtI49JzS79p0d7AOpvqmo/SiMk4mFG9U5HiU0zHfx6HKa+SiOJkFNOMreKgCXSdoAloT4
	EkQszG2+HjAlro98qZrZz6JOjnG11E0Gbhq+2W13YEWAMu8EHJi2Zcig70sUlqevHWwlZ8nFwPF9Q
	JD1vyXh+f6F4HYcwZ695y6v9ZB5aG8tAMpSQkpTL6/qAC8X2uLpuFLqstDrnnomFeEfQIsSvpC85O
	GvKPtdlgAYFIV/bgbv2l0z0VsBpLFqoOdRMZqRIv8rkQA2qOA8TRL6kMgRDcrLBPHqQrCl9BEY6wa
	EqLd8qLT7U6d8pd1l7YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNWdk-002tQG-Ca; Tue, 07 Sep 2021 08:39:36 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNWdV-002tMU-Uo
 for linux-phy@lists.infradead.org; Tue, 07 Sep 2021 08:39:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id m9so13247456wrb.1
 for <linux-phy@lists.infradead.org>; Tue, 07 Sep 2021 01:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F98RMuT2qFWn1szuv2XyNIrHwLbg9F30PRmPPAi7A0M=;
 b=MDFH+AX1/fhl1Q9N+IereO8Pv8T3Mm3NxuqG0nXQ0iJM91QqmIndAAnmE5IN5EETDV
 emEiMPVTOYFSILl9MQAzJF4Zv5FHPLdOEjm0hg8AIR2PnQC9sepBJ6EzIxxd2S/r7SIP
 q5tJFNrIEn5ojPe/SmJQYKTTZoUc8dnjnu1ukSMlz78DtSeHOhjnfwHdaDxnEwCe22mG
 vDZHysPOUYvrwgDrYg6cFSTpLxUzsZhf1r3NFwTahZRauK4C86uoYipp2ZaKib5yQPAJ
 vLFpP2yYlff4IDGqrAQzxQ5dxgYcNAg8H/CiMCQCJZ/ZPs0sBG2HXOOIW5TVQT3PsTFi
 DYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F98RMuT2qFWn1szuv2XyNIrHwLbg9F30PRmPPAi7A0M=;
 b=E7KpOleFynY9H9hKhXbR9FmvAamF9TkMMLnGLBPPSMyqwdPVDyfAl0UVN9CpG7SUqp
 6W7NJ/QqNgjuNcbRyIMHDA4GcJIiqfUFiE0/0LgTotqmBb0fCytWiHyiqx5hOcQHp9kd
 qiMCrwNmeeNiR8mxKkVYT+VsD8ZnvDvOgGLx+DjjsuozsM+1mq8d9Sa11WrQ0iRb6epk
 4wiq/TiA2cUTYzJxyqjgCL+NdHodW4yXA6oR6RiEYrAMdnJrk8DWVas56IxaOO6fYNV+
 SahFAKIm/PvSvxjk+RlQpX4XX7KmM044Eda3uaG5uGwa3ZQw8zez7xGFmxelNElAMnl+
 fVhA==
X-Gm-Message-State: AOAM533nzgtuHQUDChsBAMvD5ZkLsyiO5P10UHyvxCX4oetlmqE/aMlN
 pfm0rXynMHdAyYFJXi+3XhllSw==
X-Google-Smtp-Source: ABdhPJwRMagq1ACw4+bT2LsmQvYIfLHSi87xUNxOtgU30yHDEHYEuHkRzaIGYpva6Z4k8qxO99HQvg==
X-Received: by 2002:adf:efc2:: with SMTP id i2mr17652012wrp.94.1631003959316; 
 Tue, 07 Sep 2021 01:39:19 -0700 (PDT)
Received: from localhost.localdomain
 (2a02-8440-6141-3317-3074-96af-9642-0002.rev.sfr.net.
 [2a02:8440:6141:3317:3074:96af:9642:2])
 by smtp.gmail.com with ESMTPSA id m186sm1737027wme.48.2021.09.07.01.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 01:39:18 -0700 (PDT)
From: Guillaume Ranquet <granquet@baylibre.com>
To: 
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH 0/4] MT8195 HDMI Tx support
Date: Tue,  7 Sep 2021 10:37:17 +0200
Message-Id: <20210907083723.7725-1-granquet@baylibre.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_013922_083178_537A6F79 
X-CRM114-Status: GOOD (  13.21  )
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

This small series aims at implementing basic HDMI TX support for the
MT8195 SoC family.

This series has been tested on a chromium 5.10 kernel but not yet on an
upstream 5.14.
It builds, boots and probe on 5.14 but due to some missing dependencies
in the drm chain, it couldn't be tested as of today.
I'm still working to get this series fully tested on 5.14.

This series is based on:

- Add Mediatek Soc DRM (vdosys0) support for mt8195
  https://lore.kernel.org/linux-mediatek/20210825144833.7757-1-jason-jh.lin@mediatek.com/
- Add MediaTek SoC DRM (vdosys1) support for mt8195
  https://lore.kernel.org/linux-mediatek/20210825100531.5653-1-nancy.lin@mediatek.com/

Guillaume Ranquet (4):
  phy: mediatek: add support for phy-mtk-hdmi-mt8195
  drm/mediatek: add mt8195 hdmi TX support
  dt-bindings: phy: Add binding for Mediatek MT8195 HDMI PHY
  dt-bindings: display: mediatek: add MT8195 hdmi bindings

 .../mediatek/mediatek,mt8195-hdmi-ddc.yaml    |   46 +
 .../mediatek/mediatek,mt8195-hdmi.yaml        |   99 +
 .../phy/mediatek,mtk8195-hdmi-phy.yaml        |   71 +
 drivers/gpu/drm/mediatek/Kconfig              |   10 +
 drivers/gpu/drm/mediatek/Makefile             |    4 +-
 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c    | 2413 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.h    |  147 +
 .../gpu/drm/mediatek/mtk_mt8195_hdmi_ddc.c    |  541 ++++
 .../gpu/drm/mediatek/mtk_mt8195_hdmi_ddc.h    |   20 +
 .../gpu/drm/mediatek/mtk_mt8195_hdmi_regs.h   |  276 ++
 drivers/phy/mediatek/Makefile                 |    1 +
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c    |  777 ++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h    |  179 ++
 13 files changed, 4583 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,mt8195-hdmi.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mtk8195-hdmi-phy.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi_ddc.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi_ddc.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8195_hdmi_regs.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
 create mode 100644 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h

-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
