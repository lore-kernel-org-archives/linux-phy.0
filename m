Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44699EB64D7
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jun 2023 15:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3JGsDOzohu52PWdC/F7ijWqIGTWQPfSlyBmATJw0F3I=; b=SQi98dtQXHQfKz
	VQQ76QhksyFlHnhw/yOkiYQKdhLfaITF+2ivk7ZnNmJyzjqQijUSOd9nmJdP2V/ZUZJlnZnmBgDCc
	AJWI+dQ//hWZm2f20qwxXvHvcX7otuJdqlbxeMnB/dzLjKoO8bohLeAyRF2xEa/Mu3dH6G0YBF1KU
	SojdhptApw5r/Z9bXBYm1ZH1qGSraDbw9HfXvP5Z/k6eyonsZK7lM2R34Lbyl25rtzY85FdSTlLRg
	0Px9/CaP5DoVz5N0jbW0D9EdXX3LG90G+IMN0ddT84YAzboWq3R/+LCFkCXD32NZzEU61EBrtVD6N
	V5Eijj/iGPwYp45NVcDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCiuj-003yRD-2r;
	Fri, 23 Jun 2023 15:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCiuh-003yQJ-2i
	for linux-phy@lists.infradead.org;
	Fri, 23 Jun 2023 15:41:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qCiuF-0005nd-N4; Fri, 23 Jun 2023 17:41:03 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qCiuE-0007FL-Eg; Fri, 23 Jun 2023 17:41:02 +0200
Date: Fri, 23 Jun 2023 17:41:02 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Gerald Loacker <gerald.loacker@wolfvision.net>,
	Bingbu Cao <bingbu.cao@intel.com>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vincent Shih <vincent.sunplus@gmail.com>,
	Mark Brown <broonie@kernel.org>, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] media: tc358746: select CONFIG_GENERIC_PHY
Message-ID: <20230623154102.gjyorfxpzvbnfa4y@pengutronix.de>
References: <20230623152318.2276816-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230623152318.2276816-1-arnd@kernel.org>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230623_084131_880017_7419B648 
X-CRM114-Status: GOOD (  20.28  )
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

Hi Arnd,

thanks for the patch.

On 23-06-23, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> The tc358746 driver selects CONFIG_GENERIC_PHY_MIPI_DPHY and links to
> that, but this fails when CONFIG_GENERIC_PHY is disabled, because Kbuild
> then never enters the drivers/phy directory for building object files:
> 
> ERROR: modpost: "phy_mipi_dphy_get_default_config_for_hsclk" [drivers/media/i2c/tc358746.ko] undefined!
> 
> Add an explicit 'select GENERIC_PHY' here to ensure that the directory
> is entered, and add another dependency on that symbol so make it
> more obvious what is going on if another driver has the same problem,
> as this will produce a Kconfig warning.
> 
> Fixes: 80a21da360516 ("media: tc358746: add Toshiba TC358746 Parallel to CSI-2 bridge driver")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/media/i2c/Kconfig | 1 +
>  drivers/phy/Kconfig       | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> index cf675ac4b1326..226454b6a90dd 100644
> --- a/drivers/media/i2c/Kconfig
> +++ b/drivers/media/i2c/Kconfig
> @@ -1305,6 +1305,7 @@ config VIDEO_TC358746
>  	select VIDEO_V4L2_SUBDEV_API
>  	select MEDIA_CONTROLLER
>  	select V4L2_FWNODE
> +	select GENERIC_PHY
>  	select GENERIC_PHY_MIPI_DPHY
>  	select REGMAP_I2C
>  	help
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index f46e3148d286d..8dba9596408f2 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -18,6 +18,7 @@ config GENERIC_PHY
>  
>  config GENERIC_PHY_MIPI_DPHY
>  	bool
> +	depends on GENERIC_PHY
>  	help
>  	  Generic MIPI D-PHY support.
>  
> -- 
> 2.39.2
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
