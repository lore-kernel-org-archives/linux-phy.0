Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 762A1CA0EFC
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wOVxcYzOdr5mBQugrRd6bZ3gOANtkdyzWiEU2i4l70=; b=HjeU3XLbxdm3vY
	JPXQKs8Xkd32d7/8L5j7qRYEbs31YllPBeIoHQYRlGoRvXU/DmMkMJ+1frFyzJljsCwZ32SS5nnGC
	inf1scOCqoc99NIJ8tdoXNce+m6EqR+TjPFlyIdVBgsMIPb6vM5lIyWDrK3kt9jhPGfUuEvsvxW0t
	2RXqKKXxpzXdaEUkMNqdGiwDnEHQpDg4IeEVN40bscZyWcg63sGUi94nSw1qpyr2jS8GWaH22b1sy
	dpS2xWRMI8cFXMj43HPjeg/k6lk01/t8/eT55nzLY9tprMvQJxQcoG5E3a9vJDPX2NHPHfvS4+2hj
	553bdd1jGtD4b7q6odKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoplG-0000000EtGL-3mqG;
	Wed, 20 Aug 2025 20:50:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uolVA-0000000EN7V-3rpr;
	Wed, 20 Aug 2025 16:17:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5A0F2601E5;
	Wed, 20 Aug 2025 16:17:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0149BC4CEEB;
	Wed, 20 Aug 2025 16:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755706640;
	bh=fONdSSWLD4ciYiiYXbL5hX7jHz6dYO1YgPzjDtd1z2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uMW9dXlDZPJXeW4+QXLmySJuT9NWSD5weVPY9F1YR2z7W7y861mVHF9PbtkN6u+Rt
	 QHEreW6gwrcrYFhPaxFDZwrMuOiMykNohoQpBMmB/OLplJoMF2AOwMWIrbPLubn7p0
	 vdhDjuZCTxFXgmWsNR5hVb6N7fg76n6FaiglEh87wRYpoBzMh4qOZ697eZVPw3Op34
	 Kc18qXW8Be16tw2WkEkHjGU6BITglxm5iIqU7qJUtVFoySwAp6qbBM5XOF2Pw7E2y6
	 shyD3n6WygFBUZrOk038tn+Gm66qQhDMElBc/6xtFy/9p6J1zEwPV5mWhBrXqisTdM
	 9uB594EVlImYQ==
Date: Wed, 20 Aug 2025 21:47:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "payne.lin" <payne.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	sirius.wang@mediatek.com, vince-wl.liu@mediatek.com,
	jh.hsu@mediatek.com, Bincai Liu <bincai.liu@mediatek.com>
Subject: Re: [PATCH] phy: mediatek: Modify mipi clk upper bound to 2.5Gbps
Message-ID: <aKX1CxD_2mlOwYn-@vaman>
References: <20250814125406.4161220-1-payne.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250814125406.4161220-1-payne.lin@mediatek.com>
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

On 14-08-25, 20:54, payne.lin wrote:
> From: Bincai Liu <bincai.liu@mediatek.com>
> 
> Mipi dphy can support up to 4k30 without dsc.

Good, how does that translate to below value change, can you please
explain?

> 
> Signed-off-by: Bincai Liu <bincai.liu@mediatek.com>
> Signed-off-by: Payne Lin <payne.lin@mediatek.com>
> ---
>  drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
> index 553725e1269c..b8233c496070 100644
> --- a/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
> +++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c
> @@ -100,7 +100,7 @@ static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
>  static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
>  				       unsigned long *prate)
>  {
> -	return clamp_val(rate, 125000000, 1600000000);
> +	return clamp_val(rate, 125000000, 2500000000);
>  }
>  
>  static const struct clk_ops mtk_mipi_tx_pll_ops = {
> -- 
> 2.45.2

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
