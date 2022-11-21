Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C15C43219
	for <linux-phy@archiver.kernel.org>; Mon, 21 Nov 2022 14:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:Date:From:MIME-Version
	:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GBmVgB9yhtBpfH0Dr1WZ05NFD9XlBjwRwxBwFgOj8bk=; b=MRIW4rOxuqgT83
	2jvNueCntfLH/KXYxuaFe7PWCTAI+EeMU3WYV5vRUiXsX9NLBVGiLJudN17KF48dPP83h57PpY0aU
	dkgrXLUTrk/m1YtYh6lvxEyop2HKwFTm4jMxh7kF3XKAL/Lx0MK8M2hxcVl5jYn/0K9rIvT/NoRpp
	fu3rXb4IMC5YIVDBk8b8rTvFY90D/A+P6Zl2F+u2cWXGPnMfMtd7tigmND7RzerPx+U/ZXyBbSYVY
	+aZVG2rEqCa2eUZqJmDlWcCPkflfcoAuofHYFA+7Eb8+MIhs5bkNgDZf+uVr48siYts8O1Qc9ZDNe
	yFocyjtwM1ztQ/vvBieA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7i2-00EPEe-Kd; Mon, 21 Nov 2022 14:23:42 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox7hf-00EOsf-12
	for linux-phy@lists.infradead.org; Mon, 21 Nov 2022 14:23:23 +0000
Received: by mail-wr1-x42e.google.com with SMTP id l14so1208140wrw.13
        for <linux-phy@lists.infradead.org>; Mon, 21 Nov 2022 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date:message-id:reply-to;
        bh=ApgbBZshAeQOw9pkeKTeXHyu/sDAx7l2fVv7nBtVMo4=;
        b=JOj8ERrSkiiFbvhLUOS10gbdm3dGjio1sc0L+J+VhUjPOtREOV5XC6V5KMnetrOj7Z
         MqlTFilZxnRBw5U34g0W/99jVnzlDBgjEkl0cJq9cc+zW7lCsZuKJmJLniXbj18sfn6q
         wjZPYk8Rpmir1EmWy0FgcKpinL7Wh/ovXYkUm8iQYBe43aScTrtTEjMDggnsI5wPLvCy
         /STO9raP2yYZowKD+UKXBO+Noq3BOEso0jV6VE6jRVFYIE4aG03pLMcQ/yk+hdxToHDH
         dSmCQEdwO+k1vwDIFKNRm+b1PG46FUK1eS4iNFo7oMMDVUb0EQzjVmcrr2ibmRamEGHY
         maXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ApgbBZshAeQOw9pkeKTeXHyu/sDAx7l2fVv7nBtVMo4=;
        b=zlseOSfelLE8h7oBwauI/U/Me1o6CvIx4nU6mhApxtVBa64KXQgiKNzfQVz6N/1wMG
         7ykxzKXbOqsW6f1heBK5dPwxP4YkM75v5Fh0xAxpUwCNZENnKRZSMlpSQNO3J0IAGEol
         virvg8Hih0nuq+J56PXqcrOuIvrQRWU1GipI1cPwZXI6zR078HweJCnB7QcvAdNntiEk
         ifbDgqnc93ewbO4lJze5xObqvaXJnIyOEKoXLC2E0rl7ZYbZRI12SNFYMMr+j1LeNTkk
         wkEKbvrbtv3hvUEhCwfZdFj3rWXRIdXhJ/+E0co5vE83HcPO8uov/dpt9PlG2kfops95
         FPZw==
X-Gm-Message-State: ANoB5pntFlz7jk7HUo+0s4f16f+G24SbLnsdc+NTdhYzin/dIpI4HJEe
	YLTX2qvZEKSbNT5KJyqQCCnEsQ==
X-Google-Smtp-Source: AA0mqf6RSC4twqdaC4T+eNyvJRXlNyhsDoJT4o9bQNdbOdWsagRC7U2kD1RJas+wAHB1EBwcNi5PLA==
X-Received: by 2002:adf:e303:0:b0:22e:3c66:bda1 with SMTP id b3-20020adfe303000000b0022e3c66bda1mr2684983wrj.139.1669040591732;
        Mon, 21 Nov 2022 06:23:11 -0800 (PST)
Received: from [127.0.0.1] (2a02-8440-6441-244f-3074-96af-9642-0002.rev.sfr.net. [2a02:8440:6441:244f:3074:96af:9642:2])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c4f4700b003b4fe03c881sm20206468wmq.48.2022.11.21.06.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 06:23:11 -0800 (PST)
Subject: [PATCH v4 0/3] Add MT8195 HDMI phy support
MIME-Version: 1.0
X-b4-tracking: H4sIAN6Ie2MC/23MTQrCMBAF4KuUWRtJ0lATV72HiOSvJtimkNRAKb27gxuhuBre432zQfE5+gLXZo
 PsayxxThjEqQEbdHp6Eh1m4JRzqpgiwU3xMS0vwIXRxROTdbIBN+k9jliGWJY5r9+PleG5/XBlhBIh
 hZCss0pS2Ru9jtFkf7bzBHfklR8IRyIFU84OYqDK/SHtgbRItKTtwLuOMn45kH3fP9SYURL4AAAA
From: Guillaume Ranquet <granquet@baylibre.com>
Date: Mon, 21 Nov 2022 15:19:10 +0100
Message-Id: <20220919-v4-0-bdc21e1307e9@baylibre.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jitao shi <jitao.shi@mediatek.com>,
 Daniel Vetter <daniel@ffwll.ch>, Kishon Vijay Abraham I <kishon@ti.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, David Airlie <airlied@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: Guillaume Ranquet <granquet@baylibre.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 stuart.lee@mediatek.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, mac.shen@mediatek.com,
 linux-phy@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailer: b4 0.11.0-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_062319_151483_AA071D3A 
X-CRM114-Status: GOOD (  12.32  )
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
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c         | 541 +++++++++++++++++++++
 drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h         | 111 +++++
 drivers/phy/mediatek/phy-mtk-hdmi.c                |  15 +
 drivers/phy/mediatek/phy-mtk-hdmi.h                |   2 +
 6 files changed, 671 insertions(+)
---
base-commit: e4cd8d3ff7f9efeb97330e5e9b99eeb2a68f5cf9
change-id: 20220919-hdmi_mtk

Best regards,
-- 
Guillaume Ranquet <granquet@baylibre.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
