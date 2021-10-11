Return-Path: <SRS0=o6wI=O7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14284C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 09:51:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C91CF60E8B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Oct 2021 09:51:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C91CF60E8B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9L18BrLO7D9krE5Pnc+adePu/0HHlOsDayHhdb4UXEQ=; b=vBbjrNmgGiNNa1
	OEflvKOyNSAgl/MQPKHiCOygVEPuAm0ze2Jc6RDSDSalsglT2siHAbo6owJI7LIYZd9uLAK+SNxyB
	vak7rcvyAWuFmCdOl4wMm/RDO9mkyQFYR4hKhZ/byRTwo5Du8x09Uug/E+/prumS58BLxXhLpZJdB
	IekO7Q5A1oi0C1OHZ0DggUfaQH7uyQ5bOH8IPRszYU53ht77bUb4ENccyRaggfhp3c1ISX7r/wmt/
	okcSW5IW0thxXobrP0W/PD6j5Sa0qGNMH+taUDNo7lBxr6mPue719eoxr75rj+C+xPS4WwZTBdh+8
	FDIg0cftkn8wywnir05A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZrxx-008ej5-1A; Mon, 11 Oct 2021 09:51:29 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZrtA-008cMX-P0
 for linux-phy@lists.infradead.org; Mon, 11 Oct 2021 09:46:35 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r18so54248439wrg.6
 for <linux-phy@lists.infradead.org>; Mon, 11 Oct 2021 02:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eSc57xuE9GFmk4sxP/W9phMrvO3YpoWm1qxIDAy9GJs=;
 b=aLMYJJl2jay10utJpCqgLmwjoJoHF2aWNffZ8CcQdQbjpmToq1xKpzaix08JuBwetA
 n15W8fKyqZhVG3QRv36cWd8qXOPo//x+dDwbY+YzcxYCdcJsOsuFtJgy1hPxgDVfs5Lg
 V0hqggcuQ08di7ZkzkVpudUVokVEYmNKzx0gk0mfEV7PxTFUP4AzPeEUlHyarb1QJnpu
 vV7FeRP0kJ49E8L0rXCaAuc4O2MGCjQqvqB/R1iraABe8wTaMiQW5Rkcqc5Ip1O3Rp2+
 GZeyaaTeyhQFIoZhM/jTR5qfghgQjGLsZoglkhL6NIxAWBfVkGcSfHgWrnXUhriYYgqL
 klbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=eSc57xuE9GFmk4sxP/W9phMrvO3YpoWm1qxIDAy9GJs=;
 b=Lio7aOhj1xbdb3WnZgpBxmXdu2DD76mVvreIJ+TrLSUIedmJ2uTGAPOU/CA0TLc2NH
 q7GTZvnpAsuqhn88NcMqpnQv5kuB/WKh61KJO3nOFF4yCSZ0zlvTJxz7ObUOf3KjlzNL
 2NM0mOMavGIN+5dENMESIN8F5loMnPCRqNjkEg72x6InhOd+IfilIJdtZyU1vGA1cVvv
 OAneGXOKh8ZQtoxgkdCrFO4n/fmxzIU2oGA+UipYvqamT3j09UBjBAykj2sQ4SpTWkTk
 ro4/U2xwemW2xBdtcc85AhaVZWEnpvGXC5F5pfaFWZgWP9gHAtuu6cuM17MOnAFM/iXo
 kw2Q==
X-Gm-Message-State: AOAM530y9GGeFg1Lm5URBcPkCxTitRzeGeVGg78IRSl9fQAZOQFXI3kQ
 134/NvTquH3I2Xnp5vm4ZYq4SQ==
X-Google-Smtp-Source: ABdhPJwkrZ9coXI9B2VtoJT63Rqn0d6J1tuxlDndRciOkM9VYSuyidpeDF3QUBhFQb6wD8MsN7tNdQ==
X-Received: by 2002:a7b:cc0d:: with SMTP id f13mr18750694wmh.85.1633945590291; 
 Mon, 11 Oct 2021 02:46:30 -0700 (PDT)
Received: from blmsp.lan ([2a02:2454:3e6:c900::97e])
 by smtp.gmail.com with ESMTPSA id o8sm21349291wme.38.2021.10.11.02.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 02:46:29 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 0/7] drm/mediatek: Add mt8195 DisplayPort driver
Date: Mon, 11 Oct 2021 11:46:17 +0200
Message-Id: <20211011094624.3416029-1-msp@baylibre.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_024632_899121_0D373160 
X-CRM114-Status: GOOD (  13.64  )
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

In v4 I split the phy driver and dp driver into two patches as
requested. Also I added an entry for phy-mtk-dp in MAINTAINERS and made
tiny fixups to the binding files.

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


Markus Schneider-Pargmann (7):
  dt-bindings: mediatek,dpintf: Add DP_INTF binding
  dt-bindings: mediatek,dp: Add Display Port binding
  drm/edid: Add cea_sad helpers for freq/length
  video/hdmi: Add audio_infoframe packing for DP
  drm/mediatek: dpi: Add dpintf support
  phy: phy-mtk-dp: Add driver for DP phy
  drm/mediatek: Add mt8195 DisplayPort driver


 .../display/mediatek/mediatek,dp.yaml         |   89 +
 .../display/mediatek/mediatek,dpintf.yaml     |   86 +
 MAINTAINERS                                   |    1 +
 drivers/gpu/drm/drm_edid.c                    |   74 +
 drivers/gpu/drm/mediatek/Kconfig              |    7 +
 drivers/gpu/drm/mediatek/Makefile             |    2 +
 drivers/gpu/drm/mediatek/mtk_dp.c             | 2825 +++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_dp_reg.h         |  535 ++++
 drivers/gpu/drm/mediatek/mtk_dpi.c            |  248 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h       |   12 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c   |    4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h   |    1 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c        |    6 +-
 drivers/gpu/drm/mediatek/mtk_drm_drv.h        |    1 +
 drivers/phy/mediatek/Kconfig                  |    8 +
 drivers/phy/mediatek/Makefile                 |    1 +
 drivers/phy/mediatek/phy-mtk-dp.c             |  218 ++
 drivers/video/hdmi.c                          |   83 +-
 include/drm/drm_dp_helper.h                   |    2 +
 include/drm/drm_edid.h                        |   18 +-
 include/linux/hdmi.h                          |    7 +-
 include/linux/soc/mediatek/mtk-mmsys.h        |    2 +
 22 files changed, 4156 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpintf.yaml
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_dp_reg.h
 create mode 100644 drivers/phy/mediatek/phy-mtk-dp.c

-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
