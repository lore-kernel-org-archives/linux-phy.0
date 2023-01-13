Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F1FCC677F1
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 18:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kE2OTIC2q4pXjI3//ewVEDKmpB4UeRsad43TG8NDM60=; b=Gzj4+AjYax3RwX
	j9q6vHSUooZkOZocCgUxeCmTb37X2CJt48yZ+dQCeeVCg4SXwrZQg2Ik3rBxIExXhwE8rfJLFzzSQ
	3RiPnmfq4Z79fnx8BLLN3BNYEwcBfMji+5Ya+rCZWbAbalFNUGKRw99ilPfHS3vpGfZsTffugYiai
	uMtQ518Kday0AwBYKzuysIxVgAxIQauRdcY01yfdh9tlWTG6nqT5mhqLCKirxlUnE0yO3IRO9i5EU
	Kd/09bmb3mzCT+obc4cHQWduLkyTkYtsuQkkmIc1vgvkJ6IgolzwGCd1rljkY2fOilSG5NBDDmNWp
	ynaS64KlJ784UGeKGPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOYH-003zwZ-SK; Fri, 13 Jan 2023 18:13:17 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOY4-003zrL-Gm; Fri, 13 Jan 2023 18:13:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 88E89622C8;
	Fri, 13 Jan 2023 18:12:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60B57C433EF;
	Fri, 13 Jan 2023 18:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673633578;
	bh=AWYF8QZT7dhWyqdwAD+PgRtuUEj1eK3feaQ0K0yLsz4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sqDpL4GiS2XY4lejfm20O5QA4dNAM3WTZgDgvM5vXaen8boIcynjSQLrz095RTRzt
	 NO8okpQbLqKLVmrOsHkjhaqNlT5brUyytpzP1RpBWZ+52XhLyjDmsT7RGz6T9+mnWo
	 cPbgoqlU3c5QjybswdIH+YaI60zETsH7ja54aBdP8T5lmIE5GDlmLXDbzxkq69/HWN
	 g84ZG+Ex4sBYLTnaQTsXw4xoFwdXxIcClOFTRqXExSML/3nLGGl+y5L3mEPA+/dOv2
	 NJJjSM4bR9CYujJpqQB9Sde3YaqoJqh1qI18z4Sk/f0sgTJO53dUq6sWNZMnrcSfAa
	 qe1vzmsaOMR+Q==
Date: Fri, 13 Jan 2023 23:42:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
	Eddie Hung <eddie.hung@mediatek.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v6 1/3] phy: mediatek: fix build warning caused by clang
Message-ID: <Y8GfJpirOrRdOKLs@matsya>
References: <20230104132646.7100-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230104132646.7100-1-chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_101304_612686_A954F1AA 
X-CRM114-Status: GOOD (  20.88  )
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

On 04-01-23, 21:26, Chunfeng Yun wrote:
> Remove the temporary @mask_, this may cause build warning when use clang
> compiler for powerpc, but can't reproduce it when compile for arm64.
> the build warning is -Wtautological-constant-out-of-range-compare, and
> caused by
> "BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask)"
> 
> After removing @mask_, there is a "CHECK:MACRO_ARG_REUSE" when run
> checkpatch.pl, due to @mask is constant, no reuse problem will happen.
> 
> Fixes: 84513eccd678 ("phy: mediatek: fix build warning of FIELD_PREP()")
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v6: modify the title

Title still does not tell what this patch is.. It tells me effect of the
patch but not the changes, pls revise...

"remove temp mask" can be better title

> v5: no changes
> v4 new patch, I'm not sure it can fix build warning, due to I don't cross compile
>     it for powerpc using clang in office.
> ---
>  drivers/phy/mediatek/phy-mtk-io.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/mediatek/phy-mtk-io.h b/drivers/phy/mediatek/phy-mtk-io.h
> index d20ad5e5be81..58f06db822cb 100644
> --- a/drivers/phy/mediatek/phy-mtk-io.h
> +++ b/drivers/phy/mediatek/phy-mtk-io.h
> @@ -39,8 +39,8 @@ static inline void mtk_phy_update_bits(void __iomem *reg, u32 mask, u32 val)
>  /* field @mask shall be constant and continuous */
>  #define mtk_phy_update_field(reg, mask, val) \
>  ({ \
> -	typeof(mask) mask_ = (mask);	\
> -	mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
> +	BUILD_BUG_ON_MSG(!__builtin_constant_p(mask), "mask is not constant"); \
> +	mtk_phy_update_bits(reg, mask, FIELD_PREP(mask, val)); \
>  })
>  
>  #endif
> -- 
> 2.18.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
