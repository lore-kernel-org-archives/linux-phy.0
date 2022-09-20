Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BEA3ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2srNzJTkoF0XUvSZVLw/PlH+nWkfjAZo58E1+rBpyA=; b=4Ba0JPFnprkUik
	/VPuRFhj7k5Q1eFQq7lPLwi0o7jt3h8xr2kp+YaXqujacVIZG0sMcDHkjkfVyE/DKuJuPS/9g48OH
	hRySkSAIirNHcUh0Pl1UyhvuYE+0eJ2YqbFzdO4jF8UgnbwAW8+Rm3qODNaZYVgkffFYQ7njCEvMZ
	6LC5apu2hKvguEoYyg9Zi4Vl54716An+0ynmKNToyYYFgK2EO2EPLLqTDQHoiWQ0kOz7iHwx0eyAd
	NmNmht6I/Yk6GZQQ8Xv8cy/fEqFjX3K5S7swD27Ar7/Nqp88Ggzc+kiFL3Bfs57jDfzW0fe5wJE7Y
	r6Y/01kHxPWsFdrdOzYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaaS-0030bO-PP; Tue, 20 Sep 2022 10:34:44 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaaG-0030Uq-VE; Tue, 20 Sep 2022 10:34:34 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 640596601F3B;
	Tue, 20 Sep 2022 11:34:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663670071;
	bh=Ly/Gd/BN8cZIA8HYYtUp7eyC8GP8ws7pSAuEwyx/X5o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XUSr6mTZd0KrAR17T81pA/3sXiF88jPHisabDNPtgK3vjBm3IG4jNbju3JvH2nZ1P
	 vkjCshGNakNla1CP5FeOMLER2lO0EdPtfRbeeSz0m3uuA0H9MF7x+cF668zOxeur3g
	 PcYf0wAG6mA/uVRZ9WLVy1aK+cop7Auxnv7zaV9k5znPLe/5wKf60oDe4b62eBspxM
	 +gh5SAN6aq7CYRHpff/mvhCcNF4ORhPVxJ1/AbSYaNx066mGNdqXuGC+nMLRqi+Z9G
	 6FwhjDGNmmvMgSZ0AjrScXDd+7tP+yWpAeEQCOPBpUdv24dBszOkTV0H/462MD0Jpd
	 WHNRBP8jig7xA==
Message-ID: <b2ab259b-404d-a267-6fef-913c4514b078@collabora.com>
Date: Tue, 20 Sep 2022 12:34:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v1 08/17] drm/mediatek: hdmi: add cec flag
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@linux.ie>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mattijs Korpershoek
 <mkorpershoek@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-8-4844816c9808@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220919-v1-8-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033433_167024_94B3D0E3 
X-CRM114-Status: GOOD (  14.10  )
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

Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
> Add a flag to indicate support for cec.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> index bfcca6f8b839..86653ebaacfd 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> @@ -154,35 +154,38 @@ int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
>   		return ret;
>   	}
>   
> -	/* The CEC module handles HDMI hotplug detection */
> -	cec_np = of_get_compatible_child(np->parent, "mediatek,mt8173-cec");
> -	if (!cec_np) {
> -		dev_err(dev, "Failed to find CEC node\n");
> -		return -EINVAL;
> -	}
> +	if (hdmi->conf->has_cec) {

I think that's a pointless overcomplication: I know why you're doing this but I'm
not sure that this is a good solution.

I would simply disable CEC support if there is no CEC child node and that's it...

Regards,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
