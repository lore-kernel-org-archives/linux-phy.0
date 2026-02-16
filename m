Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30FACE81A40
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 16:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xhrd3WbVrUdSJQoUTclvuF/HU+zGtTspilDExA5BzSU=; b=GX6wUwVijT5EJV
	KSA2GJq8W6f0pjSl0VdhaDgnSl2B+wEDwSm9KfRL8cYC0EcboIEpud80UxBJm0crrSEmg0yMd5hby
	VYb3gDUiMDc5z5wERH/Q6e0yDHgs+wD8s+9BeYk8xiEHdeHyMX/9efbXqDxAg3gZ58tFeU11LR6vP
	xUM3NyHf8cVZdfRunw4UrX5XZVqTiJSBVfGlj7P2a9BA59SLdFHk4LW5JTbZGJj1TIuWddtojZIgv
	plR4a4qAg8LVln1u7pg+6fdo+Ws/uW0MXwUP27Zu8k4PFeTyxWSLE2WyIjibFZQo6r6d4v1ROszy7
	l5XEM0TCmkNauy5G6ing==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1P5-000000070mr-3td0;
	Mon, 16 Feb 2026 16:24:55 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs1P2-000000070kW-3N8m
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 16:24:54 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43626796202so3106177f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 08:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771259090; x=1771863890; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eFUae8M607uXIOUb6KuR+f1ZcnqADfRg4QxjDLkY0MQ=;
        b=Hf0f016kNMMNWUyaHj9FxHf7p2Vf0fUMSVMOkwfhWT17G5+zutvYEM1sZxu+v9SCJG
         T/D9G5pdCNlkB9rGK1HVkBGKqCIzuqDwSA6JDrQtxDqC+G+3WQ63yYn+Lpmxu1x9Lq+N
         OhYIGVsUp/XotrfzndPCvdHSOuXCZq/FGmxy5CZ7/7g5m+393FhOvFKz7UPb7qP0Hnpv
         g2X7JOkShko8Ue8eKu+pa5jgMnKKDvReb9KcUcacPYySjUVq8RD8AHt9TIYLC8P87amA
         uOl1Sm6wY5rYDHPVbi275uUJvEIFD8FidjJL4+sqJfY20ZyRI1RjQKPaXAXLc+6qlQQg
         6RNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771259090; x=1771863890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eFUae8M607uXIOUb6KuR+f1ZcnqADfRg4QxjDLkY0MQ=;
        b=xAmgqXKRNOqHzOsmBKKInEBR9oP9OQIAfJHHWGwwtfXIe9L7P3PWheijm0psYG1/27
         TQa+xEQXRIwoI0dm/zE5Mhe+Ez6xSTLunMyc53V0LImEZCaWGAA1VrIdwKABlrTu/tpl
         rvyyVBnyHE9LWRvt3fauIXFN79YOHHMIlDSxIhBpIVpapw3R6FrYrP3JbXOftx+ka4dc
         OjO1BtaND44U99JMTZsfZkztCAsXNRNJ3CzYyEv1v+FWUB/811hCf7WckI+8JnmTHv2i
         W7dr1jCo0LNbkqKfhcO8Z4MyI95sysFPtUiKZiHyfSfAao9P2XsGb66wyp04lI0nHIS4
         tX1w==
X-Forwarded-Encrypted: i=1; AJvYcCU9/dZXmknzRnk0RKBKCVRWYsLdFWdBUOP/Oe4iAXEvmvFXS/PqjcoDDxtZaAg0cP4i0yrm/1V2xPI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzOkoKHDsjy7j83ZSsdrtK/ee10oqh46x/kJkh9QSzOzBdBR0l
	2nD/x7Dt9cMR7pdVPTJQ1ZTrTHeLNoHmNU7fxWl4WJi/3q/pCXRM4/aV
X-Gm-Gg: AZuq6aLsnBOBEm570TTSGrk3pPqIoQd1V2jCAntTtfEnVuUKurGuzBm0TYqGdfr1P4h
	qsFtFAIIdqRrA/o9oR5OOKfYv3VZI+E9wRgz5RboDCaFPBwzSd68DQ5Lq+UhghYGv+bRZTIN7y/
	QN4OrdPOT3LTdFpNKtT98KEZNgLm+BwN1OlN9HoCiTCuicrHylsbD+dDZyb14v2Z1Zk3E4nKQ0M
	rlNQBpjym6oPjAK6AC+bSyOp5rM4OzxztyAsWw7ScKpImg6z2X9FJnuOHVX+2Lp2QPOcZAQogUl
	ejRXQHEVVApNVj+4OGdIEZ955bCoQLJakZijPPjoJLBGUvoSfW6z72ajlZ4ouGYADepWJdxFApc
	Zsh1qqymG6pKvRQgvImI3WNrU13Pusd9/J7qvDt0gwQwcXdJwVhb694Mnw3fh0zJI7A3tKK8vN1
	aO0WuurQcASkGkXrY+tLo=
X-Received: by 2002:a05:6000:2501:b0:435:e460:235b with SMTP id ffacd0b85a97d-4379795572emr15102960f8f.59.1771259089859;
        Mon, 16 Feb 2026 08:24:49 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6a6desm28775962f8f.10.2026.02.16.08.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 08:24:49 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jitao Shi <jitao.shi@mediatek.com>,
	Fabien Parent <fparent@baylibre.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/6] Add support for mt8167 display blocks
Date: Mon, 16 Feb 2026 16:22:11 +0000
Message-ID: <cover.1771258407.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_082452_858227_6DF7B6DC 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

This series adds support for the display blocks on MediaTek mt8167.
Tested on Xiaomi Mi Smart Clock x04g.

The first patch just does some reordering of dts nodes with no other changes
as this makes later patches cleaner and easier to follow.

v2:
 - Separate patch for mediatek,dsi-phy binding;
 - Separate patch for mt8167-dsi binding;
 - Simplified OF graph endpoints in mt8167.dtsi.

Luca Leonardo Scorcia (5):
  arm64: dts: mt8167: Reorder nodes according to mmio address
  dt-bindings: display: mediatek: Add compatibles for MediaTek mt8167
  dt-bindings: display: mediatek: Correct compatibility for mt8167-dsi
  dt-bindings: phy: mediatek,dsi-phy: Add support for mt8167
  arm64: dts: mediatek: mt8167: Add DRM nodes

Val Packett (1):
  gpu: drm: mediatek: ovl: add specific entry for mt8167

 .../display/mediatek/mediatek,aal.yaml        |   1 +
 .../display/mediatek/mediatek,ccorr.yaml      |   4 +-
 .../display/mediatek/mediatek,dither.yaml     |   1 +
 .../display/mediatek/mediatek,dsi.yaml        |   5 +-
 .../display/mediatek/mediatek,gamma.yaml      |   1 +
 .../display/mediatek/mediatek,ovl.yaml        |   1 +
 .../display/mediatek/mediatek,rdma.yaml       |   1 +
 .../display/mediatek/mediatek,wdma.yaml       |   4 +-
 .../bindings/phy/mediatek,dsi-phy.yaml        |   1 +
 arch/arm64/boot/dts/mediatek/mt8167.dtsi      | 381 ++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  12 +
 11 files changed, 377 insertions(+), 35 deletions(-)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
