Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B47C77B6E
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 15:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDiLfzG4ZpQSKh8uUtRas/MOb0miKpPTgzR0Etu1wKQ=; b=Sbcbepzon0UaNM
	rfP624l7Gxphd25EX0nw86+CP+dRyMWpb5t1H2Sc2H0Gj9ctY2BADfg5V0VLgANMU+LR6ktGHWQc4
	zPTRhwsRlX04cNjDEOMKgOgxf+0hWj6RY8w13xxnyg+Tm1DzngYU9hxC90860w+mm7jXsnvjY1tqZ
	0yLiFELPEHLJC1BE9dR3Qt9YktTrReVQK4dYlV6vZZqwcKUG+QTtjX9qCIAOl+NAx7ArpDxQ8LaZQ
	V3xlVF1meEdyjsCfPriV8xX2p90WLGpssFFWwkKWpzcUnhZyhieGvx5oXFAyfdS0Y+8bJv2jszV8f
	0w7uDxxVWKoLzqER1s/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnLg1-00A0VJ-3C;
	Fri, 14 Apr 2023 15:49:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnLfy-00A0UC-0N;
	Fri, 14 Apr 2023 15:49:27 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 12AE960B8D;
	Fri, 14 Apr 2023 15:49:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C7CCC433EF;
	Fri, 14 Apr 2023 15:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681487364;
	bh=5DqrhCTzuzTjvwCGlt19FA3g4stRfeUyytfgLiO4ps8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D+M4c8lZ8CKUyLB4075G4N7ODWaHSg88hJWbhdpIVYS8u7hwMnq7mfLEE+BniHyD6
	 asCaVPm64ZeLyeyNT+N0Y6+uXFBgz8E7bJygkylSKH+9QA5IJT9yttrVxK6jqwCZfv
	 mcev16XlcOWWVwZqZa3svHdx6UeQN9splmLRfZ6PUJB4OMfgKLqihc7YlLo9sHiy4Q
	 ENYiYmQlt6YadBkHXG74JdINOamfMUJaUkXICj/tm4hnGviEnjxRcTG8fREkzOHriy
	 Ove74Hq/km8t/N+sARfWLfYXXZsnOPXx4Kgf6P5LpHKBJ0i71O0haS/6m03hvzia75
	 FkmDD8tCgTO1g==
Date: Fri, 14 Apr 2023 08:49:21 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de,
	chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com,
	ndesaulniers@google.com, granquet@baylibre.com,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH] phy: mediatek: fix returning garbage
Message-ID: <20230414154921.GB1931632@dev-arch.thelio-3990X>
References: <20230414122253.3171524-1-trix@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230414122253.3171524-1-trix@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_084926_217684_F60BB375 
X-CRM114-Status: GOOD (  19.38  )
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

On Fri, Apr 14, 2023 at 08:22:53AM -0400, Tom Rix wrote:
> clang reports
> drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable
>   'ret' is uninitialized when used here [-Werror,-Wuninitialized]
>         if (ret)
>             ^~~
> ret should have been set by the preceding call to mtk_hdmi_pll_set_hw.
> 
> Fixes: 45810d486bb4 ("phy: mediatek: add support for phy-mtk-hdmi-mt8195")
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Angelo brought up a good point on another patch to fix this issue that
we should probably be returning ret instead of unconditionally returning
-EINVAL but it sounds like it does not really matter at the moment since
mtk_hdmi_pll_set_hw() can only return -EINVAL or 0.

https://lore.kernel.org/ada769e0-0141-634f-3753-eb3a50f0eee3@collabora.com/

> ---
>  drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> index abfc077fb0a8..c63294e451d6 100644
> --- a/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> +++ b/drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c
> @@ -292,9 +292,9 @@ static int mtk_hdmi_pll_calc(struct mtk_hdmi_phy *hdmi_phy, struct clk_hw *hw,
>  	if (!(digital_div <= 32 && digital_div >= 1))
>  		return -EINVAL;
>  
> -	mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
> -			    PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
> -			    txposdiv, digital_div);
> +	ret = mtk_hdmi_pll_set_hw(hw, PLL_PREDIV, fbkdiv_high, fbkdiv_low,
> +				  PLL_FBKDIV_HS3, posdiv1, posdiv2, txprediv,
> +				  txposdiv, digital_div);
>  	if (ret)
>  		return -EINVAL;
>  
> -- 
> 2.27.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
