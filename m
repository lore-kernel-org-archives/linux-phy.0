Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC41C54EAA
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jan 2023 16:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:Date:From:MIME-Version
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c5ec0xSwdwmCMs0nFGLHfPPRBwVCfl8kRbt/2cbPc0E=; b=q0sMmFuS+qOhR9
	UyMbZBuVP5fFdaHaKKIvfRR9QrNKiVXBr1AzJ2Tzlq7K+YdKfhD3HYx/9iuroid08sWDvTI0cSUiK
	nbHVcJglanCq+S/DnLLuVLTyMDjiqnaU6bCnx/X8/NJnhqu4vV9bOpkxwkP15XgLsx6rgrkMvjCLf
	k2fOnpxaprXasqr02zeiToP1J67h8ZZhcEOrry6YsZlpvMvY8LbUKPP7pFuF92mdrfa3PYHQHYNb2
	y0lpZRXI1+qMK5zdOyCl/RmpjHmMFu3Wmik60FwDbr+IsFPPR3NewI5Rj2ePnVKDHSzYeJ0hK2iBb
	CMALOfJidQRqwDhRTe+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLR9m-00FZP2-To; Fri, 27 Jan 2023 16:00:51 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLR92-00FYyp-JE
	for linux-phy@lists.infradead.org; Fri, 27 Jan 2023 16:00:08 +0000
Received: by mail-wr1-x42e.google.com with SMTP id h16so5342156wrz.12
        for <linux-phy@lists.infradead.org>; Fri, 27 Jan 2023 08:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=6AO8Wz0u03xQDCdINgTFwoolBurWKDLddXY3VYk4B+s=;
        b=cfGKXGy6jB1Gr9nmWaUv+Q92QA2JF0D1vQTXYRo/qtQPv/n8CxDqky+m4f/LapHdaC
         V1H6DhAQlIXeBzAm3PE2aw//nLeTCUJLwvd9Zb/nqxpqUB2VLaDc4gWFSZGN1CaX9vXn
         Kjst7ZgC+IkK5tNM0K65qh9PPz0D//eYBHe1P7cJ9mAornRjtTprXTsVkKljVFY98SBy
         rXTbgO+7qMA6ll8zBqboocigNzUuLU2y9FyA57Kd5/mnCKwsktyt/xCsIFnEdVg/DEvI
         qzV2VhX9403CCxSVF7uSjnKS8Z6tyoB6B6vzJSjW67tlH/CBiRUgJstJRlu7rEY+N0+J
         SD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AO8Wz0u03xQDCdINgTFwoolBurWKDLddXY3VYk4B+s=;
        b=t/wSCkqFioK3j0wiqzy8X2a/y2TqakrFxy+JtH81U7SOfQsd0yC76a5fSqBB43b1AZ
         7GxZPA2T/vJpmTmICQbF4GdbV7eopmLh+07qD9TPA8rr7b7N/bUiDwalclogHhgDqhvO
         W1DEqXuza/XRimHxXBgkOW7KvlIM9wcgNJT1W6xNpAdaoGeuGKzInd08j7LhWooDqLXB
         zmPvCuQkuSP3sFqXT8/M1NU7IHvKMFlw6dM5QTZH214XKlzeQlnkN8d5kfYwggY9x9qC
         AVQLqKzEgEZKiPTx+YjgqF5IL6ygbTF7g8apohPE26GD+HuSOa3j7QN50fvrou0iYEKy
         MXjw==
X-Gm-Message-State: AO0yUKUcfpDDeZDwEVu4qumAD+b76lHOvsqYb6TZg1BRE76PNdACZEe4
	4Vy+9JpcFNHg2kWgGeA6AZwgLQ==
X-Google-Smtp-Source: AK7set85MlINC1wX4kubGlvrGJsyxc6hLXlmKS/ArhQuSin31sebkVDcYK0X3xLR5HCG9POJz7mtaw==
X-Received: by 2002:a5d:6dd2:0:b0:2bf:b0e6:f463 with SMTP id d18-20020a5d6dd2000000b002bfb0e6f463mr11858738wrz.13.1674835199706;
        Fri, 27 Jan 2023 07:59:59 -0800 (PST)
Received: from [127.0.0.1] ([2a01:cb19:85c2:1100:7fe1:513:212f:568e])
        by smtp.gmail.com with ESMTPSA id b11-20020adfe30b000000b002bfcc940014sm3171942wrj.82.2023.01.27.07.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 07:59:59 -0800 (PST)
Subject: [PATCH v5 0/3] Add MT8195 HDMI phy support
MIME-Version: 1.0
X-b4-tracking: H4sIANvz02MC/23MTQrDIBAF4KsE17WosYl21XuUUvxLlSYGNBVCyN07dFOQrIb3eN9sKLsUXEbXZk
 PJlZDDHCFcTg0yXsWXw8FCRowwRiSV2NspPKfljWChVXZYJxWNh038jCOUPuRlTuvvY6Fw7n9cKCaY
 C84F7YwURNy0WsegkzubeUIP4IVVhAERnEprBj4QaQ9IW5EWiBKkHVjXEcr6A8IrwoFoaxh1tCW9kx XZ9/0LLLTAOysBAAA=
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Fri, 27 Jan 2023 16:55:07 +0100
Message-Id: <20220919-v5-0-cfb0e5ad29b2@baylibre.com>
To: Vinod Koul <vkoul@kernel.org>, Jitao shi <jitao.shi@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 David Airlie <airlied@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 CK Hu <ck.hu@mediatek.com>
Cc: linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 mac.shen@mediatek.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-phy@lists.infradead.org,
 Guillaume Ranquet <granquet@baylibre.com>, devicetree@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, stuart.lee@mediatek.com
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230127_080004_716505_9241E550 
X-CRM114-Status: GOOD (  13.32  )
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

This is split from the previous v3 to contain only the phy related
changes to the HDMI support for mt8195 as suggested by Vinod.

This is based on top of next-20221121

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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mac.shen@mediatek.com
CC: stuart.lee@mediatek.com
Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
---
Changes in v5:
- Adapt clock bit ratio when TMDS is over 340M
- Used sized integers for register read/writes
- Removed useless comments
- Shortened function names
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c         | 523 +++++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h         | 111 +++++
 drivers/phy/mediatek/phy-mtk-hdmi.c                |  15 +
 drivers/phy/mediatek/phy-mtk-hdmi.h                |   3 +
 6 files changed, 654 insertions(+)
---
base-commit: e2f86c02fdc96ca29ced53221a3cbf50aa6f8b49
change-id: 20220919-hdmi_mtk

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
