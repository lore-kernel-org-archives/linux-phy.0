Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E928C636CC
	for <linux-phy@archiver.kernel.org>; Thu, 16 Feb 2023 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=okYV7P4ovU1Hzur11jOG3Bz92nzpjXKMBzD06Rj16cE=; b=BqQLvkSdpaCbzB
	/X1o7ZrmQQ7pUhgl62YVCRVez1hiwOqdshPQ/lAe5xaQZFTFaKB7bVYpBJrzlGoYGB2/OwFd33Oi3
	CLH9cCyvYaoNcjqLgMkMNpfgWEeBLdneGynBafKncEOi/iHzOw7W87hM/aH5dQIsFeUsUuXL4n18h
	FDufUWSH9nVpRGI4oV7gMTWvF86/1MInVtlVBsMSQ1MvuVmOmKBMDxEDAMqeNnA+He8jYQx0hdNIm
	1fEo5PfyhDIl+xBcyka+ZfcYEwWk/nWQeSF7K98gCRUjDAph5AxmWxSTs9rMEL52sruYWgDje534u
	7C1kZxagJbgV05pyd78Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pShrM-00BJFS-EZ; Thu, 16 Feb 2023 17:15:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSgrs-00B6So-9T
	for linux-phy@lists.infradead.org; Thu, 16 Feb 2023 16:12:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id by3so2339787wrb.10
        for <linux-phy@lists.infradead.org>; Thu, 16 Feb 2023 08:12:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9lFXqhOt2OsAjZlN9q24biXqlMln9UilMimz3k+ZbCE=;
        b=L0sVkWCeH5g7Y1SN9yP507VBDypXN55J/yXZKy5ne+L5Zy1kHCp1Kj+tL+6mSj5H2d
         Qvyl5gTe2zGLS3cXoRhnibKk3SzJSDifV12O+6PXYb9KiC5olmaeDwQd/YlojJ+leF2i
         VwfdJn9HiWl+waQTF2siGDa0oII4sQp7flT/SOb8dU13EHDt5XNM5FiUPi9oc3Wr1PcJ
         2OFoLOety3Fetv4cSosf1x9KLuCz8UpDV72gD6M+jnFkOymTW6HCEC0hbtYdgRDFcAgu
         /5XEUKrKLEsINNiqkO/JxDcLVRmmoUI6W+JEAnKYgHc2xDCEe3gjeotvDWDPkWkec3dc
         LzBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9lFXqhOt2OsAjZlN9q24biXqlMln9UilMimz3k+ZbCE=;
        b=7ctVgbW0Omasj4dgBqiYAxeBGZZ5ExAg1YI6EPZ8oTDfO0cQflwtZycQBKzDPE2Jsq
         D+AIzpM/YFaQ1W/MCHVhoE11J2MI74cKwsZWBttELBVVlK7AnBoQqsmSDhxUAhp+HE11
         +j8AKIXRny8etS5lfDRa5VAmSTsYDS8GARZDotF5sNkI63wLJY2Du3bfvqXpY4tq9Rkb
         OdWNGqSv8jUI1ne1885mxWrGKkt08qu2MMHn/hU01DXQkg5G6cD/7QttfetXNDJxTO/o
         qI7BnbqlS/V3cyQgBjL1KkKrphMb6Mz4dPJ/NS+hUATI94h5RHvepI2sKgQqaEsmNe5k
         fJ8w==
X-Gm-Message-State: AO0yUKUmTkvqmEEwmW1BoAiNOM6jEJtj3acNJCPZIUhNT0GiLe3LF88s
	RwS0kQGuKAMGilsPvIogv13/aw==
X-Google-Smtp-Source: AK7set9HfpJ/WtYQfwUA/WaYWlKP16uqXWuqMuHS3egf3HT7MZs2MM9vbGhFeIU7EHTCRrVrA+8KpA==
X-Received: by 2002:a5d:55cb:0:b0:2c5:4154:9f32 with SMTP id i11-20020a5d55cb000000b002c541549f32mr5049388wrw.65.1676563935831;
        Thu, 16 Feb 2023 08:12:15 -0800 (PST)
Received: from [127.0.0.1] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id m16-20020adff390000000b002c56a1a5a95sm1845586wro.30.2023.02.16.08.12.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Feb 2023 08:12:15 -0800 (PST)
From: Guillaume Ranquet <granquet@baylibre.com>
Subject: [PATCH v8 0/3] Add MT8195 HDMI phy support
Date: Thu, 16 Feb 2023 17:02:24 +0100
Message-Id: <20220919-v8-0-a84c80468fe9@baylibre.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJBT7mMC/23PS2rEMAwG4KsMXjfFlmXH7qr3KMMQy3Zjmgc40
 8Aw5O5VuymYrMQv9AnpKbZUS9rE2+UpatrLVtaFg3u5CBqH5TN1JXIWIAGkV74b41xu8/1L8EQ
 YttSFOiw08szyPU3cHMt2X+vjb+OuuHz84111skOH6JQl76R7D8NjKqGmV1pncWW+Q0OAiUPlI
 2XM0scTohuimQxO6gzWSgX9CcGGIJMQCVRSWvbJnxDTEMMka7SIGAjNGbENsUwgW1SEABTsCek
 b0v8eZoJxZIhItr8cx/EDtv41ScQBAAA=
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>, 
 Jitao shi <jitao.shi@mediatek.com>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 mac.shen@mediatek.com, stuart.lee@mediatek.com, 
 Guillaume Ranquet <granquet@baylibre.com>
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230216_081220_610922_FB624A0B 
X-CRM114-Status: GOOD (  13.20  )
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

Add support for HDMI phy on MT8195.

This is based on top of next-20230213

I'm sending v8 despite a pending question from Vinod [1] regarding some
odd register writes for impendance.
I'm trying to get some feedback from MediaTeK regarding the content of
thse registers, but It may take some time...

[1] : https://lore.kernel.org/all/Y+upK4nCCYlg+4dU@matsya/

Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
Changes in v8:
- Used GIGA / MEGA macros where applicable
- Link to v7: https://lore.kernel.org/r/20220919-v7-0-b5b58c5ccc07@baylibre.com

Changes in v7:
- Removed lkp reported-by trailer
- Fixed checkpatch --strict warnings/checks (besides two lines at 102
  chars instead of 100)
- Used constants where applicable as suggested by Vinod in v6 review
- Link to v6: https://lore.kernel.org/r/20220919-v6-0-2f641c422cb6@baylibre.com

Changes in v6:
- Adapt clock bit ratio when TMDS is over 340M
- Used sized integers for register read/writes
- Removed useless comments
- Shortened function names
- Link to v5: https://lore.kernel.org/r/20220919-v5-0-f346444bc459@baylibre.com

Changes in v5:
- Fix compilation errors on 32 bits platform with no support for __udivdi3.
    Compile tested on mips with gcc-12
- Link to v4: https://lore.kernel.org/r/20220919-v4-0-bdc21e1307e9@baylibre.com

Changes in v4:
- Dedicated series for HDMI phy support (without the drm/ related
  changes)
- Removed useless variable initializations in phy driver
- Link to v3: https://lore.kernel.org/r/20220919-v3-0-a803f2660127@baylibre.com

Changes in v3:
- phy: Grouped register and bit definition together to add clarity
- dt-bindings: Addressed comments
- Link to v2: https://lore.kernel.org/r/20220919-v2-0-8419dcf4f09d@baylibre.com

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
Guillaume Ranquet (3):
      dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible
      phy: phy-mtk-hdmi: Add generic phy configure callback
      phy: mediatek: add support for phy-mtk-hdmi-mt8195

 .../devicetree/bindings/phy/mediatek,hdmi-phy.yaml |   1 +
 drivers/phy/mediatek/Makefile                      |   1 +
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c         | 495 +++++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h         | 113 +++++
 drivers/phy/mediatek/phy-mtk-hdmi.c                |  15 +
 drivers/phy/mediatek/phy-mtk-hdmi.h                |   3 +
 6 files changed, 628 insertions(+)
---
base-commit: 09e41676e35ab06e4bce8870ea3bf1f191c3cb90
change-id: 20220919-hdmi_mtk

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
