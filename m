Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E81C6C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jan 2022 05:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:CC:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9nPNyWBbC+x5UCU41MxApxWq5fU1Q3DNTC7vKS/VYI=; b=x75vTPA2nzLl1C
	aQteoRtrQZJEKAXPkmf/s8m6hIY2ZJSyJxVYVhaixyWgtFsN1ECe/SCX2BIfJsvWx5j9I44kBHZaq
	dNG1FsjtNmcIjKv6DuOaNia0ELE93lV9JBLouTNKyV8flCZa6A4SUbQyxTMgtjRvxwBJGQBDGFAiN
	gdUnJFnqAxX0udhVifIPXPozs2Cum6YphAafYrFFLDSno4vxgxVeoHfnL148w6iMYhs5CM1rLOleZ
	ppAfT2b5F4PuZLREjBeAtjYmn236FN5OBWsJvw7/xqKyMCSWtTxGu9DwKF8lm90EcC+rl7/IEfiTs
	9feAJSE62X58El9+ouvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5i2b-002T60-IB; Fri, 07 Jan 2022 05:43:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5hrC-002OYN-FG; Fri, 07 Jan 2022 05:32:10 +0000
X-UUID: 1571ba0fe9ec4b789c74d73f214212e1-20220106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yOyhSybCVKwL6f9Dj2Yrfcp2GMZppE3rd+pnbUwSqSY=; 
 b=SXppUhy85uxMGv8v/EEk+0Co3WslGKkZ7GFz7T+skXuahnAHyrRLdR2n19F99sgFD8TZhaYeE3Z9AKsnQ6on8tctbSnYV3ru96FPFk+0cx/B8C167kO6VD7occ0gwWq3B2pev+7InYMIYDVmf7hrhwPlUyEcTNEnuMpdq8dgLy8=;
X-UUID: 1571ba0fe9ec4b789c74d73f214212e1-20220106
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 1505165310; Thu, 06 Jan 2022 22:32:01 -0700
Received: from mtkexhb01.mediatek.inc (172.21.101.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 6 Jan 2022 21:32:00 -0800
Received: from mtkcas10.mediatek.inc (172.21.101.39) by mtkexhb01.mediatek.inc
 (172.21.101.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 7 Jan 2022 13:31:53 +0800
Received: from mhfsdcap04 (10.17.3.154) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 7 Jan 2022 13:31:51 +0800
Message-ID: <54af6850e07aba2ca8002e344be86498c810067d.camel@mediatek.com>
Subject: Re: [PATCH] phy: phy-mtk-tphy: Fix dumplicated argument in
 phy-mtk-tphy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Wan Jiabing <wanjiabing@vivo.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
 Vinod Koul <vkoul@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, 
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <jiabing.wan@qq.com>
Date: Fri, 7 Jan 2022 13:31:52 +0800
In-Reply-To: <20220107025050.787720-1-wanjiabing@vivo.com>
References: <20220107025050.787720-1-wanjiabing@vivo.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_213207_357930_65F655A5 
X-CRM114-Status: GOOD (  15.84  )
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

On Fri, 2022-01-07 at 10:50 +0800, Wan Jiabing wrote:
> Fix following coccicheck warning:
> ./drivers/phy/mediatek/phy-mtk-tphy.c:994:6-29: duplicated argument
> to && or ||
> 
> The efuse_rx_imp is duplicate. Here should be efuse_tx_imp.
> 
> Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>
> ---
>  drivers/phy/mediatek/phy-mtk-tphy.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c
> b/drivers/phy/mediatek/phy-mtk-tphy.c
> index 6d307102f4f6..8ee7682b8e93 100644
> --- a/drivers/phy/mediatek/phy-mtk-tphy.c
> +++ b/drivers/phy/mediatek/phy-mtk-tphy.c
> @@ -992,7 +992,7 @@ static int phy_efuse_get(struct mtk_tphy *tphy,
> struct mtk_phy_instance *instanc
>  		/* no efuse, ignore it */
>  		if (!instance->efuse_intr &&
>  		    !instance->efuse_rx_imp &&
> -		    !instance->efuse_rx_imp) {
> +		    !instance->efuse_tx_imp) {
>  			dev_warn(dev, "no u3 intr efuse, but dts enable
> it\n");
>  			instance->efuse_sw_en = 0;
>  			break;

Acked-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thanks a lot

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
