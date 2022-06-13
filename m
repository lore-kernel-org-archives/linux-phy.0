Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B54CC43334
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 10:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSmTaWxZ4TzAR5WXQK3etP3tRwbc2lu+vMbZcBlLEFg=; b=CIvE0WgLuN6fZb
	2eQIoiXOgQ56dsqZQz8g+VynBB6Ur8nR9VfVsVnUPJGoW+zyjUHhp6UOTxHgMya4m8jZmE4N/jWsB
	o9nH5S3NCX7Rfb9GiIudaauR61V2C1ZcvWm/aCgwnj1AIh3xocJyAlQ3HQgqfkGVJHW5pFIbbQeRm
	aQFE8/Y6VOlUwetFNPwgxCgKQ2Bf1GE658lWaoB1crBhmEmh4HmYgO9OZZbfNCZEMC691YjC4bl9s
	1g3MHfHC44ja/W+r1udLhlND7fuGCrvYAQ+angfQDFb+9L6ZYlVXVQZnN0hRBhBTSfNuOZ3LMdoIQ
	by3yh5OTQChegeDMfCYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0hUD-002wXI-L1; Mon, 13 Jun 2022 10:39:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0hU2-002wQ5-0i; Mon, 13 Jun 2022 10:39:47 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C69E66601652;
	Mon, 13 Jun 2022 11:39:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1655116781;
	bh=3fY9PYB9PhNS2MZFOLYAaBtLhPjrOVQJSWIC+nCM9cs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LRgmghN5uXYInfi0t0BsNuDg6Z/oiZRcZJ2Jo4VKcPd0KQnwD5IwZ+4eKNPJnVDl0
	 dfollf3m/u9jySVLhfKv9tjgIAcj8Fbcc4SV6gU6eJGEoNS6ArXDUNWE/btMnF6do9
	 Wc4hDJYmPWNZ3f6yWm9iI8UR+gmlTO3glvth8BK5H0vDgFHWlA1K3h04nrjQBlqlxv
	 Rbghe6kn6Mtk6+z1HtYV1EUmEc6WGATD3NAE72CtskD0uk5yxNiqyyODl0Bv2tWhi0
	 i+ESeZ0SD6+nirCaEnQQNsbL7LN4rgsNv4LwBfXMkazFIZGM89y1DQ18qGg87lOZhY
	 Llu96jmftJGPA==
Message-ID: <8a87d094-1c9e-d899-6671-ebf8c80ffbe6@collabora.com>
Date: Mon, 13 Jun 2022 12:39:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v11 1/1] phy: phy-mtk-dp: Add driver for DP phy
Content-Language: en-US
To: Bo-Chen Chen <rex-bc.chen@mediatek.com>, chunkuang.hu@kernel.org,
 p.zabel@pengutronix.de, chunfeng.yun@mediatek.com, kishon@ti.com,
 vkoul@kernel.org, matthias.bgg@gmail.com, airlied@linux.ie
Cc: msp@baylibre.com, granquet@baylibre.com, jitao.shi@mediatek.com,
 wenst@chromium.org, ck.hu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220613072648.11081-1-rex-bc.chen@mediatek.com>
 <20220613072648.11081-2-rex-bc.chen@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220613072648.11081-2-rex-bc.chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_033946_244462_ACEF5978 
X-CRM114-Status: GOOD (  17.85  )
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

Il 13/06/22 09:26, Bo-Chen Chen ha scritto:
> From: Markus Schneider-Pargmann <msp@baylibre.com>
> 
> This is a new driver that supports the integrated DisplayPort phy for
> mediatek SoCs, especially the mt8195. The phy is integrated into the
> DisplayPort controller and will be created by the mtk-dp driver. This
> driver expects a struct regmap to be able to work on the same registers
> as the DisplayPort controller. It sets the device data to be the struct
> phy so that the DisplayPort controller can easily work with it.
> 
> The driver does not have any devicetree bindings because the datasheet
> does not list the controller and the phy as distinct units.
> 
> The interaction with the controller can be covered by the configure
> callback of the phy framework and its displayport parameters.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> [Bo-Chen: Modify reviewers' comments.]
> Signed-off-by: Bo-Chen Chen <rex-bc.chen@mediatek.com>

There's no power_on()/power_off() callbacks and looks a bit weird, but it's
also right... the only thing that's missing, IMO, is a comment in the actual
file explaining that power for this PHY is always on when the DP block is on
and that no PHY specific power sequence has to be carried on (being managed
elsewhere and strongly tied to the specific DP IP).

Besides that,

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
