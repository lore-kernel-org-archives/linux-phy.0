Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62668C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Feb 2022 16:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjfCXoHiKPhqcLWQbNjNpGdY0j/0399rjaiZioctH6E=; b=uDmvfiTCyJ42o1
	wQpRkCZruRNz9q4zYXL+J2TtPkKHU7KVPh8L+OLSPJMrL3XFkldTeQk/ZPAxEcp8FIqKZRcdqJtag
	FhRXgX8OBZse6xTRghI7aTevT04e7HIUvMOJ4Pvl5GeTO4UPG9ZBUUh/d691zgeAaA7FNxDmqfK21
	otJp6Zxn+ioxXrh5vgUZv+PdlLU+6KJibxEg8Tmm6hHyeFMjq8ZtvyinJfFpWvj6+5WNOlZg81Sba
	Ot7mNdFD4h/lgU2uE9xMEBhH+ywMuDbm/rB1iKt3qijU/9CiLH5QLOz3H8HMqcImGedjlTkPk58UC
	1nNrsyUYb4CjBin4IggQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJeGM-00G1Uj-Ps; Mon, 14 Feb 2022 16:31:42 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJeG7-00G1QQ-2C; Mon, 14 Feb 2022 16:31:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644856287; x=1676392287;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/rNAITY1+98uvbGAZzlsiQlo0IS/4Nq0dkDRoszUuaY=;
 b=W6axuujmjvAjLQRpiOzAYHdbcoJ0q49qHSCw6jS7giXebA8QU8QkVmus
 uE9HAcyJknh0CVYP/ubtofGGmvzXdWr86mxGWmwQnSis1B8QTpDEv7GbK
 tbnFLjBW/CMtP4OwDqF3tsnGMo2VTor8gYr7lIQyeee3ycTSJCGizZfPL
 qLFRRbZGDghR4YTbJOe0LI8Y54gybULmfw0QSbPmcnfkN10HK1R3Qrufo
 0b1fcnsdgODmq+Qya6/uHM71lbP1QR6mD64Y90spjtpoNOeBEvI0DOWUG
 WpynS71okhl29crK1M1Qx7NjpbvVtoAcgrvZDZ0WTKWVoA+tRBltkN51+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="274696744"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="274696744"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 08:31:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="603341808"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com)
 ([10.237.72.43])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 08:31:04 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id C7AE6201DB;
 Mon, 14 Feb 2022 18:31:01 +0200 (EET)
Date: Mon, 14 Feb 2022 18:31:01 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 21/66] media: sun6i-csi: Always set exclusive module
 clock rate
Message-ID: <YgqDxWwUeVQu+05O@paasikivi.fi.intel.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-22-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-22-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_083127_166716_741B6330 
X-CRM114-Status: GOOD (  21.97  )
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

Hi Paul,

Thanks for the patchbomb.

On Sat, Feb 05, 2022 at 07:53:44PM +0100, Paul Kocialkowski wrote:
> In some situations the default rate of the module clock is not the
> required one for operation (for example when reconfiguring the clock
> tree to use a different parent). As a result, always set the correct
> rate for the clock (and take care of cleanup).
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 54 ++++++++++++++-----
>  1 file changed, 41 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> index 8155e9560164..2355088fdc37 100644
> --- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> +++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
> @@ -856,28 +849,53 @@ static int sun6i_csi_resources_setup(struct sun6i_csi_device *csi_dev,
>  		return PTR_ERR(csi_dev->clk_ram);
>  	}
>  
> +	if (of_device_is_compatible(dev->of_node, "allwinner,sun50i-a64-csi"))
> +		clk_mod_rate = 300000000;
> +	else
> +		clk_mod_rate = 297000000;

This would be nice to put in OF match data.

Of course the driver did this already before the patch. The approach still
scales badly.

-- 
Regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
