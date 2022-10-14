Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EB90C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:Date:From:MIME-Version
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bZiCVJ+/1bom/Z3RzErsZM5JXfkID7+/sSpDbl/2R+Q=; b=B7WUUqzZDpZ1Wl
	4d36HvMwJShWehDqXYP4vvjbXatoi6xjRV5npCsvcsjkp3oA/3syH96Jkw9+Odu3J8gDIt0T9o17U
	F7N2ffFGjMvNJekGUwnog6hQiyVT51a/Jk2Mmme1LXhESr8Won22/ypC7nlZoVqwy5ARLpYUhRVxM
	/DNKNtQEUcaGlq8Z41dfSyEr6HmXnM7AlHIS7JITZpwAYGZTo0xjxm8JVpacjOdqU7LwlgM3DF1KG
	cI52txElmx2AaYJrzuijWr72mF9j7aXBL1tGzwVrZNZi+R/n3SL/gmwYcc8yGgIZXrqLUxLtyXXSj
	GOvNu2lup/lAhHdnPudQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNaG-00FLhm-OS; Fri, 14 Oct 2022 16:30:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMTk-00F9be-4G
	for linux-phy@lists.infradead.org; Fri, 14 Oct 2022 15:20:09 +0000
Received: by mail-wm1-x332.google.com with SMTP id bg9-20020a05600c3c8900b003bf249616b0so3752070wmb.3
        for <linux-phy@lists.infradead.org>; Fri, 14 Oct 2022 08:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=XC5LEu3vClkmtksdzdUgpje8SO37USDa4/NkLEkuaxk=;
        b=ThIpzCsPF1rVHTCbtQrYisKePnMrSzk+2OLerVouDguzlws+D4XMeeA4rZGTV3rOre
         XEKXdHplc3i7l2jHu/vicLuSzRHcYqKKlQqEQ19bBpOKATPsXbTLdsYjdoVRlK0rXfc+
         oA4iDiMUAXBGa9RY/GTLmphYivCkq8p7tLEKKbzynqie0dj1u5zkarzqdkXseGoU35PG
         e6h0o8PsGG53Fpl+7QXyB1ZWH1HQgbcG/32hRln18cPZJKygABPeB+hPuyLjlSUck8uX
         v+Fmcf6vuia//lQOL+X1G0o9W1eafCc/rGIZ4RyGEk2wLFQqZ3m0R1yRCxJX6gVw2x9+
         ptlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XC5LEu3vClkmtksdzdUgpje8SO37USDa4/NkLEkuaxk=;
        b=3xDBYeno0FaMmPXZ8/Pxu4SyrdSe+0aYGnq0GtSNfl5KyP9HIa4OvVamgjsK2a3+Vd
         kdU7V97i9Itjj81ufHYkBzqsS4lgu6aYWTNw4I57IPgVorb1dMhasM/LRWP0P6O37vRv
         yYCQ7h0qqO7w5bEExOQJsvmhJFfvzIieX4I8j+XUg7UNFKDPQRuObKe7Vc8iAc0kMyWO
         cYJXeuF4OvAwlgYFpVhtgXjE0VP+rMK7EncFM3sM2I0MvZlR76bbe4MqFnwPK27jBEWO
         YaK9RUuP8Gb1O8Zwt/OiwuLxO60fuKTrP1mw5J/g66cxS3v2EQZpcEbhOs6ZB5jRmayx
         dR/Q==
X-Gm-Message-State: ACrzQf3CcTQsMM4MpWXrijOBntzvycJdZ7O7xYk0p+DcQjZLo6CU43aL
	IG3MPMXy8gZMwUrJThApqVBnsw==
X-Google-Smtp-Source: AMsMyM4VkTLDxpgmuvAJhKLbTOzq4iW8KsRFV4M9ozA3gWvMUm7ECSR35q/G8eUTOdT/6vou6Rojqg==
X-Received: by 2002:a05:600c:4f52:b0:3c6:cd82:5943 with SMTP id m18-20020a05600c4f5200b003c6cd825943mr10786580wmq.185.1665760801147;
        Fri, 14 Oct 2022 08:20:01 -0700 (PDT)
Received: from [127.0.0.1] (2a02-8440-6241-7429-3074-96af-9642-0004.rev.sfr.net. [2a02:8440:6241:7429:3074:96af:9642:4])
        by smtp.gmail.com with ESMTPSA id z11-20020a05600c0a0b00b003c6bd91caa5sm2818223wmp.17.2022.10.14.08.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Oct 2022 08:20:00 -0700 (PDT)
Subject: [PATCH v2 00/12] Add MT8195 HDMI support
MIME-Version: 1.0
X-b4-tracking: H4sIACl9SWMC/0WMzQoCIRSFX2W46wwVCW3Ve0SEOpKX/AGdhGHw3bu0aXX4Dt85B/TQMHS4Lge0ML
 BjLQTytICPtrwCw5UYJJeSG2FYXDM+8/YGMpztgblmi4/klE9KVEbsW23773EIivt/PATjTGmltLh4 o7m+ObsndC2cfc3wmHN+AdU1/fiSAAAA
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 14 Oct 2022 17:15:53 +0200
Message-Id: <20220919-v2-0-8419dcf4f09d@baylibre.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jitao shi <jitao.shi@mediatek.com>, CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, stuart.lee@mediatek.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, mac.shen@mediatek.com, linux-mediatek@lists.infradead.org,
 dri-devel@lists.freedesktop.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_082004_419446_D124AF6C 
X-CRM114-Status: GOOD (  15.09  )
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

Add support for HDMI Tx on MT8195.

This includes a split of the current "legacy" hdmi driver into a common
library of functions and a two dedicated compilation units with specific
code for mt8167 and another for the "new" mt8195 SoC.

Support for the new mt8195 hdmi phy and the dpi/drm_drv adjustements to
support hdmi.

Based on next-20221014

test branch with dts and various "in flight" patches available here:
https://gitlab.com/granquet/linux/-/tree/granquet/linux-next_HDMI

I haven't updated the vdosys/mmsys/ethdr and mutex patches in a while
in that test branch, they might be outdated..

To: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
To: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
To: David Airlie <airlied@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
To: CK Hu <ck.hu@mediatek.com>
To: Jitao shi <jitao.shi@mediatek.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mac.shen@mediatek.com
CC: stuart.lee@mediatek.com
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
Changes in v2:
- Removed syscon requirement from the hdmi node
- Use as much as possible bit FIELD_PREP/FIELD_GET macros across all the
  patches
- Make cec optional dynamically instead of hardcoded with a flag
- Renamed hdmi variants to v1 (legacy) and v2 (mt8195) while waiting for
  a better name
- Rework hdmi v2 code to use a connector (same as v1)
- Remove "magic" 0x43 addr special handling in hdmi ddc code
- Link to v1: https://lore.kernel.org/r/20220919-v1-0-4844816c9808@baylibre.com

---
Guillaume Ranquet (12):
      dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
      dt-bindings: display: mediatek: add MT8195 hdmi bindings
      drm/mediatek: hdmi: use a regmap instead of iomem
      drm/mediatek: extract common functions from the mtk hdmi driver
      drm/mediatek: hdmi: make the cec dev optional
      drm/mediatek: hdmi: add frame_colorimetry flag
      drm/mediatek: hdmi: add v2 support
      drm/mediatek: hdmi: v2: add audio support
      phy: phy-mtk-hdmi: Add generic phy configure callback
      phy: mediatek: add support for phy-mtk-hdmi-mt8195
      dt-bindings: display: mediatek: dpi: Add compatible for MediaTek MT8195
      drm/mediatek: dpi: Add mt8195 hdmi to DPI driver

 .../bindings/display/mediatek/mediatek,dpi.yaml    |    1 +
 .../bindings/display/mediatek/mediatek,hdmi.yaml   |   67 +-
 .../display/mediatek/mediatek,mt8195-hdmi-ddc.yaml |   51 +
 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |    1 +
 drivers/gpu/drm/mediatek/Makefile                  |    5 +-
 drivers/gpu/drm/mediatek/mtk_dpi.c                 |  143 +-
 drivers/gpu/drm/mediatek/mtk_dpi_regs.h            |    5 +
 drivers/gpu/drm/mediatek/mtk_hdmi.c                |  655 +-------
 drivers/gpu/drm/mediatek/mtk_hdmi.h                |   16 +
 drivers/gpu/drm/mediatek/mtk_hdmi_common.c         |  477 ++++++
 drivers/gpu/drm/mediatek/mtk_hdmi_common.h         |  224 +++
 drivers/gpu/drm/mediatek/mtk_hdmi_ddc_v2.c         |  367 +++++
 drivers/gpu/drm/mediatek/mtk_hdmi_regs_v2.h        |  309 ++++
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c             | 1592 ++++++++++++++++++++
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.h             |   31 +
 drivers/phy/mediatek/Makefile                      |    1 +
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c         |  546 +++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h         |  131 ++
 drivers/phy/mediatek/phy-mtk-hdmi.c                |   15 +
 drivers/phy/mediatek/phy-mtk-hdmi.h                |    2 +
 20 files changed, 4004 insertions(+), 635 deletions(-)
---
base-commit: 98035e7c0bb29bf68a2f4b650656f3a3dd07a494
change-id: 20220919-hdmi_mtk

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
