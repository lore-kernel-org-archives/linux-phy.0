Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069BBC79F89
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lP1YoIyP814ygYjre1zdNCSalnnWIYDKt4oCDw3QrE=; b=LzR5frkOvx3al5
	usOg6YRr+r+eDM9M7/5xKToXPf+a0wPB+EaicjTpU+P0QMTF9bNIOSG200QM4sF2CuhKjrQGiQUlQ
	NWgqf4vCiTRVvm0M0wXxWzVpcfC9U4e5dKFTMQGH2nQVxr0g3zZnL4mD5A+UDsHgBEhGhbt39LCpa
	AFalK4fcvyxBsrrWXmYZfo4++1kmC5uXlPu11+IsM41gFOtyihL6JtOSuhqFcoklTt0x0ezH/tl12
	fUPSv0IkRzx8Q+FtZy02bENodZXv+av5FKNw4XxswwSbSoGKBckkfF+uQ7xgwKRxqNuAIrJNdyq/f
	im//dHU1cjpWfqIVeZ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XZG-00000006fCy-2zw1;
	Mon, 07 Sep 2026 11:31:18 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3XZE-00000006fCH-1jNm
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:31:17 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2d91ded8174so26287355ad.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788780675; x=1789385475; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EGym5Igy1VmQiAX5TVELJlk0ohvxnDxKp7lmlY7ezN8=;
        b=CnLczK/+eQLsdEgOt/6NkVeKjDlibq0QoszqrB//0ZKO4z3AcEOXMNx25G5SGbxYeD
         pa6GYkc3U5WiRTQAT7MS4geTnT/qrbAqVwg4ThbUciHDIn4MLsgB9cwBwsIFXu2+Gge+
         BXoyGIAGmMRl5oLPVqcsxQX2PQW/GIkMYfsIS8HaOmYW3ZTso87eLphQtySj6JJhrvpC
         gWhda7gneAyvUcI7fOfYzqzCaLCxpxBsaKwKu8x0cUQyW1NcV4a5pl7uNg8ZlQnXn/nT
         OrVrkONkJasiGKSvpJZubjHGJMe0Gj1aZKUkdAW/GvpiCTgWZLDE3WrK3HR4XE5pEErJ
         FgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788780675; x=1789385475;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EGym5Igy1VmQiAX5TVELJlk0ohvxnDxKp7lmlY7ezN8=;
        b=XMZKj7CQi61vmT2zqT7VO7u4+eNudgFjeWPUw2gX72OQf3RKl467/rOzjF4sPLM6kd
         OirXdZyfFnGpVeuxrURQkbolS31Ic8Oao5aI13zByNqggptSSS1WayJiBqVbSybS5Fm4
         aeaEPInpWOyAtqQyTWzZo09bFNBiESVn0yRU4Wr8L5AHEyXCjuezpVVHGEeyD72XGhHd
         f419efszmo8/9FBatyCOn0VOMv+Gu+JdnK6usImFmOSjGd4ggoXXxK5Da5mNCGwVgDf8
         uDASLVZgE6riRbKu0Jhj1tKnWFzK9GA5KpDkSc77Nr2PEo6YZDZFfcfqR2vOMZEQ0y1Q
         L+zg==
X-Forwarded-Encrypted: i=1; AKwUvBxmeiQpOuzwLQzK8lm9Mrl3r187dRbKIWQC5cS3KWjlpTjrRMLo9YVWtr/vYztwW9Y5pa1dbuby1xc=@lists.infradead.org
X-Gm-Message-State: AFuF++m8JmO7cP/JzXujB1X2JrMlb9yi57llSvU8VPHxAATL3R4fhK3l
	d3uVLU9YPfl82uESm9W7iJPQQXv2vPNsawRJZHyyqPBbttI4/lgpeXpm
X-Gm-Gg: AYBFou1a17jDOsCVmk39WK49TCErkIv80o/YLnFXkrwmm3WJ0kpUKZeC4ghSOXrdZop
	a2orDSEZLFcfCTTzj298MmQFAFx+V6HZY5iJKJZ0QpPl/kPbOySYFV/Nstk1m+EYVe5Lvm1wMxV
	I0pgIvRTmGGks2FxZHG+Adnm6Fa3KxetFkgNPQDgLlinUmirqqQn+FjWPzzMFyMA4Q6kNVLKNTH
	WK/W/elphH65uYZ9Tcdcm4/+j8sHJI71I/YJnjgRh4yhkRjuhTmS3Pjh20AnkoQMoSFF7/9e3MX
	oyOyu4ScxoK2qF/esKshe7k4QisFMQSjl1U2l1hjjc6vus8kV+QhEuTl3GbUTPQZsBjrOQjzgtn
	zcHwjuEsXtkdS/cDCDQlF9VwSiACNJFva7hrI31xdSSCbIGBAK/LJcjr4lzFouhtF8Nz7vARKtZ
	I1dnllEX9Vsf771KpRuGFoJszubIOC7hELEKl8VT1PEysX8Z//G52UY+Nk7UjiJL6kEzJMIQ==
X-Received: by 2002:a17:903:11c8:b0:2d8:d4de:fa80 with SMTP id d9443c01a7336-2db1235721dmr306706525ad.4.1788780675312;
        Mon, 07 Sep 2026 04:31:15 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db1cdb4acesm40477485ad.4.2026.09.07.04.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:31:15 -0700 (PDT)
Date: Mon, 7 Sep 2026 19:30:46 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 2/4] phy: core: Add common helper for get phy phandle
 by index
Message-ID: <ap6gVPncPzdcNWAa@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-3-inochiama@gmail.com>
 <20260907110308.nc3jwwoyv7j2mlxp@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907110308.nc3jwwoyv7j2mlxp@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_043116_475239_832A556F 
X-CRM114-Status: GOOD (  29.99  )
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

On Mon, Sep 07, 2026 at 02:03:08PM +0300, Vladimir Oltean wrote:
> On Fri, Sep 04, 2026 at 04:37:06PM +0800, Inochi Amaoto wrote:
> > Several phy helper use index to get phy phandle of a device node,
> > add a common function for the future reuse.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  drivers/phy/phy-core.c | 51 +++++++++++++++++++++++++-----------------
> >  1 file changed, 30 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > index ea79913fbb87..a7d7acb5d3c2 100644
> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -681,33 +681,49 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
> >  	return phy;
> >  }
> >  
> > +/**
> > + * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
> > + * device_node by index.
> > + * @np: device_node for which to get the phy
> > + * @index: index of the phy from device's point of view
> > + *
> > + * Returns: the phy driver, after getting a refcount to it; or
> 
> Not driver, but device.
> 
> > + * -ENODEV if there is no such phy. The caller is responsible for
> > + * calling of_phy_put() to release that count.
> > + */
> > +static struct phy *of_phy_get_by_index(struct device_node *np, int index)
> > +{
> > +	struct phy *phy;
> > +
> > +	phy = _of_phy_get(np, index);
> > +	if (IS_ERR(phy))
> > +		return phy;
> > +
> > +	if (!try_module_get(phy->ops->owner))
> > +		return ERR_PTR(-EPROBE_DEFER);
> > +
> > +	get_device(&phy->dev);
> > +
> > +	return phy;
> > +}
> > +
> >  /**
> >   * of_phy_get() - lookup and obtain a reference to a phy using a device_node.
> >   * @np: device_node for which to get the phy
> >   * @con_id: name of the phy from device's point of view
> >   *
> > - * Returns the phy driver, after getting a refcount to it; or
> > + * Returns: the phy driver, after getting a refcount to it; or
> 
> Same comment here. You are changing this line anyway.
> 
> >   * -ENODEV if there is no such phy. The caller is responsible for
> >   * calling of_phy_put() to release that count.
> >   */
> >  struct phy *of_phy_get(struct device_node *np, const char *con_id)
> >  {
> > -	struct phy *phy = NULL;
> >  	int index = 0;
> >  
> >  	if (con_id)
> >  		index = of_property_match_string(np, "phy-names", con_id);
> >  
> > -	phy = _of_phy_get(np, index);
> > -	if (IS_ERR(phy))
> > -		return phy;
> > -
> > -	if (!try_module_get(phy->ops->owner))
> > -		return ERR_PTR(-EPROBE_DEFER);
> > -
> > -	get_device(&phy->dev);
> > -
> > -	return phy;
> > +	return of_phy_get_by_index(np, index);
> >  }
> >  EXPORT_SYMBOL_GPL(of_phy_get);
> >  
> > @@ -957,7 +973,7 @@ EXPORT_SYMBOL_GPL(devm_of_phy_optional_get);
> >   * @np: node containing the phy
> >   * @index: index of the phy
> >   *
> > - * Gets the phy using _of_phy_get(), then gets a refcount to it,
> > + * Gets the phy using of_phy_get_by_index(), then gets a refcount to it,
> >   * and associates a device with it using devres. On driver detach,
> >   * release function is invoked on the devres data,
> >   * then, devres data is freed.
> > @@ -972,19 +988,12 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
> >  	if (!ptr)
> >  		return ERR_PTR(-ENOMEM);
> >  
> > -	phy = _of_phy_get(np, index);
> > +	phy = of_phy_get_by_index(np, index);
> >  	if (IS_ERR(phy)) {
> >  		devres_free(ptr);
> >  		return phy;
> >  	}
> >  
> > -	if (!try_module_get(phy->ops->owner)) {
> > -		devres_free(ptr);
> > -		return ERR_PTR(-EPROBE_DEFER);
> > -	}
> > -
> > -	get_device(&phy->dev);
> > -
> >  	*ptr = phy;
> >  	devres_add(dev, ptr);
> >  
> > -- 
> > 2.55.0
> > 
> > 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

Ok, I will fix them, thanks.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
