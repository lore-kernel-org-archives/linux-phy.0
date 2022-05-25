Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534B7C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 25 May 2022 13:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pLUUUDxVLtw7341B6lznJB8NKGrRfds2VV/5NNggFlc=; b=n4nyOrCD8Sq18i
	/1uKdX/VThTXKcFhpCo+WRLvvvljC2cRr3lO7vmzj3U/R14/Yl5EZuDFD1+t+lzsrp2iJ7UjIqGPL
	Ok0lq7/TpaXhH9qZs5zvg9eWUBN02e1sV9TSw4NUYUuDVlIXP+fyh90hAUZqDfLOXHQnyta2aM5g4
	pjMFW9yVfty+52hMnmo5hgH7Qi3arifd5e8EjlkRx+v9QY/lt2tYLK7Vv9lChkbTd8RiLkY+5LYKu
	Y5TQBjFA8eaRlisn+z+n+zOdH4bN0IYty1m+Wge/f+STVQkZRFvL8bB3PEDYj7TIqveVJwoWzVnGt
	v4MQpCQUMuA95KlTeCaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntqhR-00BBlT-Kj; Wed, 25 May 2022 13:05:17 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntqhE-00BBiH-QE; Wed, 25 May 2022 13:05:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: kholk11)
	with ESMTPSA id 098BF1F44E8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653483902;
	bh=gViAEDYmrng0CSzEk780jnUimbEF/5qLDHyneG+N2y0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=l1YD1DbCcvxx0b2C9BAQPdR3sMaZT6pjm6m0/b9f9Z53w11xMF/QGKDJdQu4/dO+8
	 Ddj4Wvok1u9FMBprtouSjtEb1qRwZo3tKrnTgJ9ZJG6+bbPtQsrmOnyRs61TuCcFtA
	 JPe3ei96GsuPKoIr9igulzhrqsJCh9+Ie3I5+qTVA8As9U+HjdJpPmu3KPGfmyuFxC
	 NtVRDyRnENOxfwqvpxkopl+p4LDlvsUaQHCnSSsp0iR0FHweY9ZaqME94NXDUQidC8
	 jnUp6b2Wankw5/iPlTSEleo90ERD5EpGQpw0pKy2k2TtVBUyYcdsgidMzBiqLRS6No
	 4OJr/vKoGaM/Q==
Message-ID: <5cc99fd7-1401-511d-37c3-77f18b08e597@collabora.com>
Date: Wed, 25 May 2022 15:04:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v10 19/21] drm/mediatek: Add mt8195 External DisplayPort
 support
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Helge Deller <deller@gmx.de>, CK Hu <ck.hu@mediatek.com>,
 Jitao shi <jitao.shi@mediatek.com>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-fbdev@vger.kernel.org
References: <20220523104758.29531-1-granquet@baylibre.com>
 <20220523104758.29531-20-granquet@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220523104758.29531-20-granquet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220525_060505_032919_C2116801 
X-CRM114-Status: UNSURE (   9.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 23/05/22 12:47, Guillaume Ranquet ha scritto:
> This patch adds External DisplayPort support to the mt8195 eDP driver.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> ---
>   drivers/gpu/drm/mediatek/mtk_dp.c | 104 +++++++++++++++++++++++-------
>   1 file changed, 81 insertions(+), 23 deletions(-)
> 

Your patch [18/21], contained in this series, introduces mtk_dp.c.
This patch [19/21] cannot be applied cleanly on top of 18/21.

What happened here?!?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
