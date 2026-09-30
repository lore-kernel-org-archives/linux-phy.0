Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 765F1CA5FB1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+3MpRrSLSxZx8nRHawQ8aUMHLLniQsdf9aXEUFZJ2OU=; b=TGgiXHwAtmKRIb
	AdhFoEvaOkhsYQ4D150IcX0XxJPaWsaPfEuvaxUmyVGx5TazU9fvp+7OsH+tUppHdxAtV384yRncJ
	jkJHdDyLe3mOKOShBuFUyGlQ223Cl61qlD46EoPfLFdmxGrns6Mk2wi8LqUqZsXUD3i2X9yRD4pph
	9xxnVjKyssDUTVHjhcjBtp2iCKtuWC3H4CX80+LDbXHMs6l3dISO02Gpwqo6WX3F4ZVaHiZqFQOBl
	+JJYqrdtfL+4kmQMzvbSGTk+K60+xya7LSdjmeKgMdpiowNxI82ktBYwMerjBYiVZhBeL/YRhptd/
	l7hhdK9TjZkWHq3mQnkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqV7-00000005XtL-0Alk;
	Wed, 30 Sep 2026 09:21:21 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqV5-00000005XsA-03es
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 09:21:20 +0000
Received: by mail-pj2-x11.google.com with SMTP id 98e67ed59e1d1-396ccda24afso2637657a91.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 02:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790760078; x=1791364878; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4uFxrRSZblzhovR/kIrS1Ft+xK7V+IoAvsNqkY5KOFo=;
        b=Q3aFfmdWxilFcZClxVih40TbHSxgtJfCgSJoe20tpydfWTpBnLI/F5CaI/yhROPzdE
         g35qMGPaGvuGdrcTBjZHPP6eRT506kG5OWNXh653HV/f2AH7797UkW0yDo61+WOcHnyZ
         k2/hJkquzeD8dwCxNJA4zK5j7hmBIsFIsu+/uI54iYySe+MOf+5+Voksa4x8vqjcdtgt
         Fc9pWXRikhpfFgxoaaO7Ke4qjpYLqyDbiT3RG1Xw66dP/dycdJadzBjlaF3Ql3gMOrOy
         K9k6tHZXrXDTYCZCYBrya6jhGRJsrdgAe153N+1Iv4+GU/A36qR2dBjLsUjC6c1bc6y2
         fj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790760078; x=1791364878;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4uFxrRSZblzhovR/kIrS1Ft+xK7V+IoAvsNqkY5KOFo=;
        b=RKeJaFLXWvHfMKbeSGwJAjOh/Wns//JPpFA5Qxn0iessVgO11mAqyyOxkcB8YIN82c
         TUxEVuDPTgK3z/VPU+QM10SbP2fT1Sn0UkYDVjl8pg1hBm5C+3V+9JE8INnQZy40nZ5D
         A0za9ZYDSJxiKMGBEHrLZkbVhm0oGJZIX3RQElNuQ6s6JpgYdlQ8BJoDIkhRww2C+QLn
         wtB6LZP+ALtyga9xAp5MvP9uxL5WxAHJL5f6AYT9fMSZNysbQ2EUUQ12TJ6z8CR5RsdG
         //c3esNYHFEc3IxS/bSiQwP5JCcwMHgsr5U+vy1g4nFSOyAScKYqO/p1SuJ/1TTIjtGy
         VDFA==
X-Forwarded-Encrypted: i=1; AKwUvBzCi+eg/h6dyFE21j0n7DtYkP3NqKb4aZrrkcr6/VFm6bsLoeXNCZPNWMy7dMoF6ANm04q13wsg4KE=@lists.infradead.org
X-Gm-Message-State: AFq9FYIZUVfXvEIbtBqyQZUsA42F9I05iPPibnkP4brcCRj+4ltl/ces
	LNb1tIYiosfcmEp0+e+Ma9eP/a9JCWFMD5+tsicHFKSjGCj/Lbe5sBsc
X-Gm-Gg: AYBFou3Y81lm6ZeA22+41wZTJGp2yFo9BnMg9M2q53pr0iN1qzyVNIxS6lipiL6Ty42
	U+J7e8a48V9R90NSuw0Rp4OdIM9H7PVLEdwirV8u1PCb9X6w7PglawtX3acSQ3hZRgnIum1jY6g
	9u/19QyoCr4/AtBzFocAp/L0kOXqjuXQ1egBQQDNgU1sxc36c0x/+J5vybMiYSG/du+FbQOF4Ow
	j+vGNVai66gP6qQruTlfZ8Ht/n+CXaatz8/tE1PfCwPV8h2fPga5B7AFcrn6+eFwjIUMCBUCswy
	MeWUPhQHEqf0hXqYiHxZ7ZDo0q0FrmeQfPMlD5bhN6pT1wa1SBQssMJFB88BdnX/JY7k29B5/M6
	aSMUaP4FlHTN/14hVfc8YEaFUmYXkJMIU1VJwO+K5bkXWY8ted9n78wFlnOxQmXZxAZx3PCv+nq
	SLL1KNJQ16r4IeU60D1ILoq1xnp3Qcwlsdw6CL4V5yluVJB+mvZwuFL2wt/uCUXO+t2xJj
X-Received: by 2002:a17:90a:f944:b0:39d:f08e:e6e7 with SMTP id 98e67ed59e1d1-3a4d0f038e8mr414812a91.9.1790760077844;
        Wed, 30 Sep 2026 02:21:17 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4ca7810d6sm3182760a91.6.2026.09.30.02.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 02:21:17 -0700 (PDT)
Date: Wed, 30 Sep 2026 17:21:08 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 4/5] phy: core: Add managed phy bulk data helper
 functions
Message-ID: <arzSkE1kY_u4jJWT@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-5-inochiama@gmail.com>
 <arzITUCmgUp3uiRn@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <arzITUCmgUp3uiRn@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_022119_068935_B17AF2FD 
X-CRM114-Status: GOOD (  26.06  )
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

On Wed, Sep 30, 2026 at 11:29:01AM +0300, Andy Shevchenko wrote:
> On Tue, Sep 29, 2026 at 04:52:34PM +0800, Inochi Amaoto wrote:
> > Add device managed variants of the phy bulk helper functions. So
> > the driver can benefit from automatically managed phy handles.
> 
> ...
> 
> > +int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
> > +			     struct phy_bulk_data **phys)
> > +{
> > +	struct phy_bulk_devres *devres;
> > +	int ret;
> 
> > +	*phys = NULL;
> 
> Why?! In case of error we modify the output, this is usually not the best
> approach as in most of the cases the expectation is that whatever user
> provide (including a garbage) should be left untouched in case of an error.
> 

This is something I think this is wrong and I need to removed.

> > +	if (!np)
> > +		return 0;
> 
> Same here. On top why do we even care about np like this? Interestingly that
> some other APIs consider this as np == dev_of_node(dev) case, and automatically
> propagate that.
> 

After a deep recheck. I think you are true. We do not need to care
about that, just let the internal api decide whether it should be
an error is better. I misunderstand that it should check it at early
stage to avoid some bad use in the following logic. Now I found it
is meaningless.

> > +	devres = devres_alloc(devm_phy_bulk_release_all, sizeof(*devres),
> > +			      GFP_KERNEL);
> > +	if (!devres)
> > +		return -ENOMEM;
> > +
> > +	ret = of_phy_bulk_get_all(np, &devres->phys);
> > +	if (ret > 0) {
> > +		for (int i = 0; i < ret; i++)
> > +			phy_add_device_link(dev, devres->phys[i].phy);
> > +		*phys = devres->phys;
> > +		devres->num_phys = ret;
> > +		devres_add(dev, devres);
> > +	} else {
> > +		devres_free(devres);
> > +	}
> > +
> > +	return ret;
> > +}
> 
> ...
> 
> > +static inline int devm_of_phy_bulk_get_all(struct device *dev,
> > +					   struct device_node *np,
> > +					   struct phy_bulk_data **phys)
> > +{
> > +	if (phys)
> > +		*phys = NULL;
> 
> Same as per above.
> 
> > +	return 0;
> 
> Why not an error? I do not see the _optional word in the function name.
> 

IIRC get_all it a special optional meaning: treat not existing device as
0, this follows the same meaning like clk. Vladimir has a good explaination
on this in the previous version:
https://lore.kernel.org/linux-phy/20260907124318.6q4rr2huxyehm3zs@skbuf/

> > +}
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
