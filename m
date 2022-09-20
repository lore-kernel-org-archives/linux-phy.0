Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29437ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 10:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChBmdFlB0J+qvQeon0cNiZ3uSPy+S5cKqR08KBT6MTw=; b=O3LQFhRuE5YwdD
	pDCnQYn8QmhTbLq/kFjK74XQt3wShUBAolPDzUVcAYJFzOledqZWFVBHLi7A1rpIRfLlo3RrCPCqE
	sCkY+mhhZ8FIlNFvCX8wF9ykJ2i1qwSGs7RGm5hFB0tOb9Ml73PK68jU63bUFxxDB8r9m0eM1/HDt
	yyq+pt6VWCtOdpsJMmXAQzh8py00xPZWMH7KXojDXt5+tVpdghk1sW5SbitBerjdxHF1XpkGJi+sO
	pUGdQIcbkGIYlQawgNIpr1grhHMv+GRlukOn87IOM/cpKokmQ3e0yoD6Ni9eASYIAvg4lw/SoRbDd
	yrBkb0p0/bnBdcOZT52A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaeT-00329T-GS; Tue, 20 Sep 2022 10:38:53 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaeB-0031y9-0B; Tue, 20 Sep 2022 10:38:40 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 6FF5F6601F3B;
	Tue, 20 Sep 2022 11:38:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663670313;
	bh=CPxTsxwwUNVTZuVWPCLD0D4xQtfZBz/Zni7nORIgDcQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eTw9OQKFdxPnrguxbqFoyF1fV4CKVwuPAMQyMRgJuj+DgcKN1WIFBGD1ZHYBk6yIE
	 jZTpkwMJakGsN+IqRkGfy3++gp9bSfK3mVqkP8RIm1uIXVcwyLuQnP+85hn81XTlow
	 9mRz1PqsPAlZ6SBEAqK5twFvYSTwJvXzBmY+wTqKDwBuoRCnnjUIzGAAKwVMS5sP06
	 z7jE6JkaFMLkNGe2tVfuITbdu7JWfhrgFPJpiAKDFTlPyzhmhGD8T8b6JeZ/YXcRY7
	 csx15Vlm7Vl2z/uhn9HRswHDyT5pXPho4M6/FLRUuDTg4yo1zsvtvqntZ7/UycAnwL
	 dcf85iGHGCMGQ==
Message-ID: <5920ba96-886c-1195-656a-a98d7b1f6623@collabora.com>
Date: Tue, 20 Sep 2022 12:38:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH v1 09/17] drm/mediatek: hdmi: add connector flag
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
 <20220919-v1-9-4844816c9808@baylibre.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220919-v1-9-4844816c9808@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033836_812998_39B87271 
X-CRM114-Status: GOOD (  13.48  )
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
> Add a flag to indicate support for an external connector
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> index 86653ebaacfd..30407603d693 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
> @@ -199,20 +199,22 @@ int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi, struct platform_device *pdev,
>   		goto put_device;
>   	}
>   
> -	remote = of_graph_get_remote_node(np, 1, 0);
> -	if (!remote) {
> -		ret = -EINVAL;
> -		goto put_device;
> -	}
> -
> -	if (!of_device_is_compatible(remote, "hdmi-connector")) {
> -		hdmi->next_bridge = of_drm_find_bridge(remote);
> -		if (!hdmi->next_bridge) {
> -			dev_err(dev, "Waiting for external bridge\n");
> -			of_node_put(remote);
> -			ret = -EPROBE_DEFER;
> +	if (hdmi->conf->has_connector) {

If MT8195's DPI uses the internal HDMI->DP converter, I say that the external
DP has HDMI input and DP output.
Logically, you can't have a HDMI port that's connected to nothing.

Please, rethink this change.

Regards,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
