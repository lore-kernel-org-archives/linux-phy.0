Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BDA7C83F01
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 14:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucXS6ZiDOXmwn0kuwxSMl/X8dW15uMorayzHMRkeL7A=; b=EmO6OmX9Q5ZLNw
	oFJUU1t2t4lug1AdRpdLQpRU3D/hfTzbB735oaa8gCa3hftWSwh75t8O16JorYVEv4RO6TfPwEyfJ
	O1oqqEI9oz6N2QDTxo9pOiGDUmA8TydKgV9YZUNlD1g82x8mX3XP0KKMykHJ+FxmRbov3ksjxpzs5
	B/d9szMt52yweMzA0G+aRx0GuKq5UKKBCpkuUGtpsmzjw3LprrDmm75SMVBk2BrnY+C1deS1GckhV
	AfjsEI0UYg6sbSpk80rJr+BMYI3hyfUPS3/I8Qw1BBr2xERfy7lG+0xnbk2bmfwZbBkayXEiyAe5B
	fYR/179xzBZ1nQxUL8Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbipe-00FRm9-0w;
	Thu, 31 Aug 2023 14:39:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbipb-00FRlk-0s
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 14:39:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62AE462DC0;
	Thu, 31 Aug 2023 14:39:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48A02C433C8;
	Thu, 31 Aug 2023 14:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1693492773;
	bh=N8DtHNl1jNWVWQK82zzMjR1bGyqL9EXTwZb/Dzu6Iqw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1RsLZLN7QzOI6W8IKszzzpxv86Nv2obnf0IFW0gv4Jl4DkSl6IZoJg3hku9rwzImW
	 Hxkwvk0m9eOH9/HKjpsEo69ZzwgYsptL1/ZQwbFIFlFVg2Ol/1XiPt7dSOtMZtQoGH
	 w06pgv/nunzxi7Q/ovLXnWBy3V/CLavPFAqhQP9E=
Date: Thu, 31 Aug 2023 16:39:31 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jinjie Ruan <ruanjinjie@huawei.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>
Subject: Re: [PATCH] phy: realtek: usb: Fix the NULL vs IS_ERR() bug for
 debugfs_create_dir()
Message-ID: <2023083101-jester-trillion-ba31@gregkh>
References: <20230831140559.3166158-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230831140559.3166158-1-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_073935_374999_CB9743F8 
X-CRM114-Status: GOOD (  20.13  )
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

On Thu, Aug 31, 2023 at 10:05:59PM +0800, Jinjie Ruan wrote:
> Since both debugfs_create_dir() and debugfs_create_file() return
> ERR_PTR and never return NULL, So use IS_ERR() to check it
> instead of checking NULL.
> 
> Fixes: 134e6d25f6bd ("phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY")
> Fixes: adda6e82a7de ("phy: realtek: usb: Add driver for the Realtek SoC USB 3.0 PHY")
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> ---
>  drivers/phy/realtek/phy-rtk-usb2.c | 6 +++---
>  drivers/phy/realtek/phy-rtk-usb3.c | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
> index 5e7ee060b404..67ca78762c80 100644
> --- a/drivers/phy/realtek/phy-rtk-usb2.c
> +++ b/drivers/phy/realtek/phy-rtk-usb2.c
> @@ -853,11 +853,11 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
>  
>  	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev),
>  						phy_debug_root);
> -	if (!rtk_phy->debug_dir)
> +	if (IS_ERR(rtk_phy->debug_dir))
>  		return;

No, please just drop this check.

>  
> -	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
> -				 &rtk_usb2_parameter_fops))
> +	if (IS_ERR(debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
> +				 &rtk_usb2_parameter_fops)))

Again, no, please never check the return value of debugfs_create_file(),
it's not needed at all, and no kernel code should ever do something
different if debugfs returns an error.

debugfs calls should not be checked, they can just be safely passed back
into other debugfs calls, if needed.  That is it.  This api is supposed
to be simple and safe, please don't make it harder than it needs to be :)

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
