Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 423AEC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 10:30:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B835A60EBB
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 10:30:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B835A60EBB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QWpr7v8kB9lCae3v7cPjPKZZLwAga9nBND9Jrfwgwcg=; b=ISmFzs464pupR+
	su6SA+pibQyopk5gtFVkj3LhR4rxoEN964cN0oHXKY5QPhKJlYPfW6YqrEO0IJRbIC9BZ5NqPypFk
	9wp3FMeSCZb5R22L8AkF27wtDHkE6562yLD3Uid3+41UWuhUsTGxGdziT7pWEz2sPftI9hSF1WzC8
	P+7INx75hL99HEBcMDeCSQXdfyCrmquunFXo5k0pVXv5zTRaufBIVg7NRk3AH0/RLaOhWaLTCnNx7
	W9SlgJEFdG23MA9ZehkhgIqBr7SM46TpIyuEMx4iJ3FMiR0WeRMialOCVyY7qtuhhgWrAFOpC1DOu
	nrdyLmgXx2Itey1FO2OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdVLK-007EVz-7T; Thu, 21 Oct 2021 10:30:38 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdUMC-0070qP-2J
 for linux-phy@lists.infradead.org; Thu, 21 Oct 2021 09:27:30 +0000
Received: by mail-wr1-x42a.google.com with SMTP id y3so64407wrl.1
 for <linux-phy@lists.infradead.org>; Thu, 21 Oct 2021 02:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DZYjp3Dh8hYAEBhaoFo5fj7lc6MgCHR723xl76CUYQw=;
 b=53f8z8rb58oZUqdOszfjJfIxosmnNwBcT1tAWZBniM9HagD5l5e0NJ8M5Oi4LwEmaE
 0pmfn0sSI9zhlBuDjCHI6LvDeNF8e4YQrNVKDeRJ03VQ+xkOANXibCao2miiaaAtVERk
 WHM3i67jMrN0iEMwhYdibUilq9GW9ZGmpLseHf/SX9T+xLW1iLih8aBd/HiETzTFrDCn
 O2bZTFE1SVtseOO1JGcYp3AqMs2T5lc2ft6QIVD+IvTuNCd0LvWem6Xv+Aw7eIXVZjS+
 QYLM3b93FYUKaMpAk1YI1I0dmzD0xOnzREXZnU1uL1p8LLzuyScie0IEUZR47dGFS1U9
 ToMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DZYjp3Dh8hYAEBhaoFo5fj7lc6MgCHR723xl76CUYQw=;
 b=hf8eZ4Igp4NS3nrEH3uW0ujI7lLjfMgOLjsQ/8hXB+BEjH3Fi+RKDTjwdU6weG4gZn
 5uyyXvlFq/86ilXlijFP8GWTfu6yJNZ8BfibDlhJrICbrFFuX8gIj5aud9/uSce+OMZb
 YN+3LM3E7IeXBCqNLpU5o3OgW7daridPHI3Al+HpwE4RV1b7nYEDcD0boceEf80ilab6
 hIrNfZSRtO9/XB98Lyvatz/C2qPJuBLPemugrhRJMWaLlM6qofTze0vr8XfyKviqh6vf
 an/DlX3GJl2GOKAf/kBSQEMtpXyJ8flARSf1c2jnGH/GEedH5gjeNZLLK826cHRUyVCC
 T41A==
X-Gm-Message-State: AOAM533a6WiemKGrpIeg1cUhInpctIKSOP7Ruti5UNZQqjG/AyTDhDtq
 FogB6uP6D7mHZK2E7GiMXq6CvQ==
X-Google-Smtp-Source: ABdhPJxKwvQe1h4U5lHSzGW5G0U7Y6O6CUrkRgxaTKQUauPRqxI+Wryg0o4Rsh3TqDUBSnokeRxL1Q==
X-Received: by 2002:adf:f305:: with SMTP id i5mr5850502wro.155.1634808445339; 
 Thu, 21 Oct 2021 02:27:25 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
 by smtp.gmail.com with ESMTPSA id d3sm4538468wrb.36.2021.10.21.02.27.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 02:27:25 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v5 0/7] drm/mediatek: Add mt8195 DisplayPort driver
Date: Thu, 21 Oct 2021 11:27:00 +0200
Message-Id: <20211021092707.3562523-1-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_022728_181808_BFFA35E9 
X-CRM114-Status: GOOD (  14.27  )
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

Hi everyone,

this series is built around the DisplayPort driver. The dpi/dpintf
driver and the added helper functions are required for the DisplayPort
driver to work.

In v5 I reworked the mtk-dpi so that dpintf is only using the same three clocks
as dpi does. This lead to the removal of the separate dpintf binding document.
Also there are minor updates to the mtk-dp binding and driver.

The series is based on v5.15-rc1 but also applies cleanly on linux-next.
Note: This patch series is currently tested on v5.10 and I am still
working on testing it on v5.15.

Thanks in advance for any feedback and comments.

Best,
Markus


Functional dependencies are:
- Add Mediatek Soc DRM (vdosys0) support for mt8195
  https://lore.kernel.org/linux-mediatek/20210921155218.10387-1-jason-jh.lin@mediatek.com/
- Add MediaTek SoC DRM (vdosys1) support for mt8195
  https://lore.kernel.org/linux-mediatek/20211004062140.29803-1-nancy.lin@mediatek.com/

Older revisions:
RFC - https://lore.kernel.org/linux-mediatek/20210816192523.1739365-1-msp@baylibre.com/
v1  - https://lore.kernel.org/linux-mediatek/20210906193529.718845-1-msp@baylibre.com/
v2  - https://lore.kernel.org/linux-mediatek/20210920084424.231825-1-msp@baylibre.com/
v3  - https://lore.kernel.org/linux-mediatek/20211001094443.2770169-1-msp@baylibre.com/
v4  - https://lore.kernel.org/linux-mediatek/20211011094624.3416029-1-msp@baylibre.com/


Markus Schneider-Pargmann (7):
  dt-bindings: mediatek,dpi: Add DP_INTF compatible
  dt-bindings: mediatek,dp: Add Display Port binding
  drm/edid: Add cea_sad helpers for freq/length
  video/hdmi: Add audio_infoframe packing for DP
  drm/mediatek: dpi: Add dpintf support
  phy: phy-mtk-dp: Add driver for DP phy
  drm/mediatek: Add mt8195 DisplayPort driver

 .../display/mediatek/mediatek,dp.yaml         |   87 +
 .../display/mediatek/mediatek,dpi.yaml        |   11 +-
 MAINTAINERS                                   |    1 +
 drivers/gpu/drm/drm_edid.c                    |   74 +
 drivers/gpu/drm/mediatek/Kconfig              |    7 +
 drivers/gpu/drm/mediatek/Makefile             |    2 +
 drivers/gpu/drm/mediatek/mtk_dp.c             | 2813 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         |  535 ++++
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  199 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   12 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |    4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |    1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    6 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |    1 +
 drivers/phy/mediatek/Kconfig                  |    8 +
 drivers/phy/mediatek/Makefile                 |    1 +
 drivers/phy/mediatek/phy-mtk-dp.c             |  219 ++
 drivers/video/hdmi.c                          |   83 +-
 include/drm/drm_dp_helper.h                   |    2 +
 include/drm/drm_edid.h                        |   18 +-
 include/linux/hdmi.h                          |    7 +-
 include/linux/soc/mediatek/mtk-mmsys.h        |    2 +
 22 files changed, 4019 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp_reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
