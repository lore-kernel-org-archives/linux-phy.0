Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36DB7C0015E
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 06:37:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsW1rfx8ZAyYwpgyNfxt0aJcDWn7LXdLjnKJ+M/QM/s=; b=EKh4swhVsQPNr5
	1zgNIK632RU9KjTBYBRuiORjL8zTb19Ty+nIIfKgU7bMAHLyqAUWhY7SytCAZS3jcZFhq8e+i6u3F
	PsFrrdCRsJJm7pzeuIJLUhF77N9lzWTYV4XHPoh/s8fgNgS8w/QyxRYpxmJLr0LcrYE9gNGvENdtA
	FccDvppzm2WjIv7PmfIM8brjinmmk0t3V9HSVgc86sc4/F5MgevzVa+wW5cWrzotPUthYC9dTGrMG
	SOSeG5w3OwrTCmXEOOEfTbIOXXrlpE0bp6djZc4K60azod/0KIgf+MJ9jBWNJr8X/KVFyQNVqA3hY
	ow7VA19T73SnWP3Y0Qww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBg4-006QfT-2u;
	Tue, 25 Jul 2023 06:37:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBg2-006Qc4-0F
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 06:37:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 73DAD60F12;
	Tue, 25 Jul 2023 06:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E3FC433C8;
	Tue, 25 Jul 2023 06:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690267046;
	bh=0twEmuEDKo4xVg6pLhDdfll7YiCV2CSYZ/2lSY0xAq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qAVg8NATXw9sPNODiyIFvr7VuRokpWo4Zy+Xu16/EG3Rr9nA4AWMBbnShYgdeC00R
	 acHPqfoGlAqY3kzGNT20VZIcQdpicbvc00N/vPKp8qOqDlmDw7KFhZEpixmJXaaTS/
	 3Q7zVdgynR61QhAK9yAXhkuuYMBWbNvLeqUtZsNzLnOORkUtQqJxDJJjed+uuGubWF
	 J0lkx/QWRMIah8gTX1ydDIQaON3EVGhfXvHnlzfrNkl6WhVMrg4bfJDso3KRbjwnpu
	 a9zW8rmerN/cO+JKM2TvoaBb/bd/y6UV6O7R0UQfY069ko6J906Y14P54UNeDhMHIk
	 vRbT/pVs4sPYA==
Date: Tue, 25 Jul 2023 12:07:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Minda Chen <minda.chen@starfivetech.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, Roger Quadros <rogerq@kernel.org>,
	Changhuang Liang <changhuang.liang@starfivetech.com>,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] phy: starfive: make phys depend on HAS_IOMEM
Message-ID: <ZL9toiRzky+Lz0fF@matsya>
References: <20230725062216.481909-1-vkoul@kernel.org>
 <f09f3229-96ba-67a8-ccf1-e2184006c979@starfivetech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f09f3229-96ba-67a8-ccf1-e2184006c979@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_233746_182353_3AB07BF0 
X-CRM114-Status: GOOD (  17.93  )
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

On 25-07-23, 14:27, Minda Chen wrote:
> 
> 
> On 2023/7/25 14:22, Vinod Koul wrote:
> > the startfive phy drivers use devm_platform_ioremap_resource() which on
> > some archs (s390) is not present. So make the drivers depend on HAS_IOMEM
> > 
> > Fixes: f8aa660841bc ("phy: starfive: Add mipi dphy rx support")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Closes: https://lore.kernel.org/oe-kbuild-all/202307250509.oeudxG28-lkp@intel.com/
> > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > ---
> >  drivers/phy/starfive/Kconfig | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
> > index a560533a674e..ea82261ca818 100644
> > --- a/drivers/phy/starfive/Kconfig
> > +++ b/drivers/phy/starfive/Kconfig
> > @@ -5,6 +5,7 @@
> >  
> >  config PHY_STARFIVE_JH7110_DPHY_RX
> >  	tristate "StarFive JH7110 D-PHY RX support"
> > +	depends on HAS_IOMEM
> >  	select GENERIC_PHY
> >  	select GENERIC_PHY_MIPI_DPHY
> >  	help
> > @@ -24,7 +25,7 @@ config PHY_STARFIVE_JH7110_PCIE
> >  
> >  config PHY_STARFIVE_JH7110_USB
> >  	tristate "Starfive JH7110 USB 2.0 PHY support"
> > -	depends on USB_SUPPORT
> > +	depends on USB_SUPPORT && HAS_IOMEM
> >  	select GENERIC_PHY
> >  	help
> >  	  Enable this to support the StarFive USB 2.0 PHY,
> Hi Vinod
> 
> The USB_SUPPORT already depends on HAS_IOMEM.
> 
> menuconfig USB_SUPPORT
>         bool "USB support"
>         depends on HAS_IOMEM
>         default y

Yes I will drop the second part of the patch, will post v2 shortly


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
