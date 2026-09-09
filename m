Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48A52C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 12:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv4r6e9mbS5jibpSM8DLblOctU2XkEWF2lwkBfoZKxU=; b=4BVr4Ddbg5/1Ec
	MWsV95zvYTtgHDigjnxOO7cHlDxwwOG+dAcPc7DvmCTEE45SafdnSEml8EFL8mzcTv4NABxz8/LOG
	IuRdMq1jLUQjP6cyL/fuz8Jddr8yu4MYUsZGh8rPSnMTrLcwZYej8iUM0BWWBAkRUaX9Ww6Aq3hoI
	wOzs65eHMoPv0t7GqJD76FBtehqTYT2lHB8pMyyYN+mIFPsMBM2a9MSyD7LA6f+4Jfu0PUbRnieGG
	fEcptSKYDx2x1Tk2Yt91QnkaaEn8AHZDLDQx6yo9/FqSga5NoQt+taj6tnZtNBq958/3/Ec00Fmsq
	g6pnOnL/Zf+uPuR3hf1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4H5n-0000000Bdmg-49TW;
	Wed, 09 Sep 2026 12:07:55 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4H5l-0000000Bdlm-0LOd;
	Wed, 09 Sep 2026 12:07:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788955670;
	bh=9BQBuj38BgdWrXH6eq4U/hcUK1ngD19b+0vvYWTFybM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qWtKsL0FUA45YboMn0D+j7Up82RtUceDTesYdNppRsOMTe4csgne7JNe3fzIcRJ5l
	 kIJhI0s0J3tr3oPhI+Lcl97CN7tSxf9TIAOeKVE0XLyLlYnm+b5CEZDyugzqw77x/b
	 IpcABsa4Ynn5BhtNZiYpyblNP0JZ9or1O6cWO31+srQ0lLRSjadlk9ghr7zuTnXa2U
	 z4d3a3iQL97yag4sLyVqrFLEelidYnczgOnYHB/0SnbCJJbYbOsGfQpYb85MFvmWUf
	 rqVaY0UX3zxdXlGi9CrT1N+GGXFaSXaZE5JcV6oKWpVEHO11gScYHQRkJhbempS0u+
	 Xkn6jlGNJnU/w==
Received: from [100.64.1.21] (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6E3AD17E092F;
	Wed, 09 Sep 2026 14:07:49 +0200 (CEST)
Message-ID: <a343f3ed-deb8-4105-82da-d652966a0c6b@collabora.com>
Date: Wed, 9 Sep 2026 14:07:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] MediaTek MT8195 HDMI PHY Fixes
To: chunfeng.yun@mediatek.com
Cc: p.zabel@pengutronix.de, chunkuang.hu@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, matthias.bgg@gmail.com, granquet@baylibre.com,
 justin.yeh@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260701121936.19407-1-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_050753_375674_7356D737 
X-CRM114-Status: GOOD (  10.04  )
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

On 7/1/26 14:19, AngeloGioacchino Del Regno wrote:
> This series adds two fixes for the MT8195-class HDMI PHY, found in
> MT8195, MT8188 and Genio variants.
> 
> This is fixing PLL calculation, and TMDS clock dividers, to achieve
> all of the modes requiring data rates higher than 3.4Gbps, with the
> successfully tested target being 3840x2160@60Hz.
> 
> This was tested on MT8395 MediaTek Genio 1200, Radxa NIO-12L and on
> MT8390 MediaTek Genio 700, with 3 different HDMI displays (two TVs
> and a 4k LG workstation display).
> 
> AngeloGioacchino Del Regno (2):
>    phy: mediatek: phy-mtk-hdmi-mt8195: Fix PLL calc divisor overflow
>    phy: mediatek: phy-mtk-hdmi-mt8195: Fix TMDS clk bit ratio setting
> 
>   drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 4 ++--
>   drivers/phy/mediatek/phy-mtk-hdmi-mt8195.h | 3 +++
>   2 files changed, 5 insertions(+), 2 deletions(-)
> 

This series * performing fixes * got completely ignored.

PHY maintainers, ping.

Cheers,
Angelo

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
