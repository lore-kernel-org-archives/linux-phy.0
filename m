Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EED6C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 29 Mar 2022 14:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNHrRc+GWoqBYt7NKrcQpQoG1vM4Pvo9X6i/vIaEXLQ=; b=u6Sl4D7U/drjbg
	oReHUVlrACcXez+mRHccHYLGW19qTYB9oLMZ6I9n0lzOdkCLDA5oBVS7HSeyzgvWtoozXA5LI5co1
	IMJzwvP/gLZ1nv4SVmqWTPDhCxpPRGJP+qWPw/a1KyIw/T08PTuKiUBr38iWpNJl9MttFRk56z8zZ
	HtoyxItp6uZSUw6g3dWUe8MApFEW5uJYIAF/25uBbo4e0wMJIRdjfK0wpu2k7eYmd6imnZmPBcaEE
	EJEqhoElb8ZWCu58M70kOlDfnxHGmQC1F++pcaOcddDEcTzQep1HpEWROoylhQbOTL2LcEU/BeX+0
	xfn0pVcwAyL7ScX3Uhxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZCgH-00CTTX-Tb; Tue, 29 Mar 2022 14:18:45 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZCgG-00CTRL-3X
 for linux-phy@lists.infradead.org; Tue, 29 Mar 2022 14:18:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0F93FB81814;
 Tue, 29 Mar 2022 14:18:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23DC5C340ED;
 Tue, 29 Mar 2022 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1648563504;
 bh=lf9NWkAyWC0EVdJrjgHsBG3yJqg4WHrv+l72W6YK8G8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e3gvAA3jAxASAndEQg62IkyejbfpGnC8uxXWcI250maIoBPWCYCMJnSinJGM0Q1jb
 ZRwI1TxPvcWS5NPSPcvwuDAXdwHKrXCKY5s1iwSXDlebYewTar92VOklJME8eiMPtn
 PUeYN0reCLR+wJ1sqqUiZ2TherHoClVtyh0N6+dI=
Date: Tue, 29 Mar 2022 16:18:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Richard Zhu <hongxing.zhu@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 "David S . Miller" <davem@davemloft.net>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] phy: PHY_FSL_LYNX_28G should depend on ARCH_LAYERSCAPE
Message-ID: <YkMVLNHo+iMLHZRg@kroah.com>
References: <20220329125631.2915388-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329125631.2915388-1-geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_071844_326599_C529933C 
X-CRM114-Status: GOOD (  23.75  )
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

On Tue, Mar 29, 2022 at 02:56:31PM +0200, Geert Uytterhoeven wrote:
> From: Geert Uytterhoeven <geert+renesas@glider.be>
> 
> Freescale Layerscape Lynx 28G SerDes PHYs are only present on
> Freescale/NXP Layerscape SoCs.
> 
> Move PHY_FSL_LYNX_28G outside the block for ARCH_MXC, as the latter
> is meant for i.MX8 SoCs, which is a different family than Layerscape.
> Add a dependency on ARCH_LAYERSCAPE, to prevent asking the user about
> this driver when configuring a kernel without Layerscape SoC support.

Why the artificial ARCH dependency?  What happens when people want to
build kernels for multiple arches at the same time?  We shouldn't put
these restrictions on just to have to go back later and remove them.


> 
> Fixes: 02e2af20f4f9f2aa ("Merge tag 'char-misc-5.18-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc")
> Fixes: 8f73b37cf3fbda67 ("phy: add support for the Layerscape SerDes 28G")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/phy/freescale/Kconfig | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index 8d945211c7b40727..f9c54cd02036285b 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -26,14 +26,15 @@ config PHY_FSL_IMX8M_PCIE
>  	  Enable this to add support for the PCIE PHY as found on
>  	  i.MX8M family of SOCs.
>  
> +endif
> +
>  config PHY_FSL_LYNX_28G
>  	tristate "Freescale Layerscape Lynx 28G SerDes PHY support"
>  	depends on OF
> +	depends on ARCH_LAYERSCAPE || COMPILE_TEST
>  	select GENERIC_PHY
>  	help
>  	  Enable this to add support for the Lynx SerDes 28G PHY as
>  	  found on NXP's Layerscape platforms such as LX2160A.
>  	  Used to change the protocol running on SerDes lanes at runtime.
>  	  Only useful for a restricted set of Ethernet protocols.
> -
> -endif

The movement of the #endif is fine, how about just sending that change
as that is the merge issue here.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
