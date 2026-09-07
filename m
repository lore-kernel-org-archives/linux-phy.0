Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E7FC79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 22:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXsP4w4Cix1KPPzSTwnUtTQvJdCQNFfCwEpTA0w0Z2E=; b=u+p5HAZ/H1lGOy
	lSXYskB1drYoEnR5BE1pt8p0RTf+tryUmndkvci5T0HALkvbSlPYHEPfSKkVGHQnHW3IRw8QCnZhw
	nqKhR6KDmXvfGPUvD06rS32xWCj5Bilm/3ko3jmDKR3P3trwIxByNUik0mUSAE9xKm1ObP+lytPHU
	kBa8MPsUIo41yIeaDNIQ6N+wRddCZVPxcTspZtsQnPC/Vov5xva+vm/FpnEvO//a1dcjpHmR0pfec
	+1zOz9T1iwU9M0myvHeyjrynEkJTLGoappJoxzJlMYiYISaNVCP0jmX0P4tASogJ+/moSEaYzbn4b
	d1onxj1O7cmyAIZ87i+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3hhk-00000007oAz-008B;
	Mon, 07 Sep 2026 22:20:44 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3hhe-00000007o9m-1nBq
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 22:20:43 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-8558c0b26a8so2620056b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 15:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788819637; x=1789424437; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=w3uMI72I/xhLGwFiurXv4VQZSEIckFSObSIhl5Xmf68=;
        b=Oov+vkecV8Pe28QAhPLItFGCBTc4FB/g/tPdBVbYHrNGIQiXEARmVuU6pRZTug1yVI
         XIelAUoHoGOqIL/UK2JiYgmf4EApuS0WCxfZE9JyTErILNYTwlygCFzVCR5CmrMp8OUV
         ZqJpUoBk74IX98wCMZ3jgw0T9KJd1eeQjyrAtUf+v9h1UwJbu2v0Hw31vpPWpBuzn1gX
         dKRmqmNfnfhOwBlFKKxrsa8EHbHqmOGWcW59tSjjUhEnF8cUGQT8Xq9hN/RDs7eu4Eni
         6QDHopqOupOtkA6nD4h2WkFgSR/itB4cAFOhWP5W1xcIOdEi2j81Fio4DIdII60ZDT/g
         s38g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788819637; x=1789424437;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w3uMI72I/xhLGwFiurXv4VQZSEIckFSObSIhl5Xmf68=;
        b=jUkKGA0+0rR/xfM6UDY1BGUZXEaTGT92GBSjhLKK/R2zo/8c4cU4ptgUYYYQgvXkoo
         eKKlcjyBWTmZvA0CsVC9QiKUqnzx4l/QywGzb6rBTuqFvTZUSGV/EjaNKHmKkdvnx3Gb
         90pT/BVJxCbBFGY7K/DQAlIyMf1724kg4bzeAzSkTdxM56Ii3Bc44+GSMia1uXRx0CrW
         KK+P+yZGtFLdYqUjuxMu+oDWRSsdGeo/c4HsFqALburCq//gG35PQc2MEtFlvR5bA72P
         2fgXfY14ddYozyHUvNx8FZbDqQ5HNVWQMOBdltl7x7s/SCpDudN1sMRytuAV9PKYH7Mq
         0yZw==
X-Forwarded-Encrypted: i=1; AKwUvBxTaMAKY7laHQ1QsraXrX7irdBayZMM/C6Tt47feSyLQ3XbV5rqYgAc86tfM4wye0at6HFkWx7TIP8=@lists.infradead.org
X-Gm-Message-State: AFuF++lk4GmVGoPPbd/fHy9R7j/CFoeQLnSwJBbD+aQM7lJP8TD1aEp8
	cFGXtuOIL2DQlqSkPbBPHbW9nFd5PMj3/O7QisvG5qzK4O1g0y1nIuemI8kcb4CQ
X-Gm-Gg: AYBFou3XsT6VTTeltylmwtmSxy4RicZ+9Lb+rEf52vzyfkZOxTvTsfSoTwAQlP6xC+h
	mfaEH8R+UNF7hrewjBFcNf+Rl6l0wcgJN4azHpLKtqKzql+QRLQWlPet4nsFhLyOjb1kNeUyqmo
	h0fXaEabog/0kMbsA3eClun6Bm+v7apjnFIu5worSc2pbUxLrVSIrDLZmBKOT+OStC4GRoE8O2r
	4GxdHHds/yt9HUsn7H/B+6fugCITCQCmykmjIlaqIj91Ydw13yO4Of2BV9uPQvX63ZZwrU9OtYf
	NsgwrRdV6KTa8hFZwz5MOVBL2gl10V2zNIkevvQk49S+sRPQ80+JnaSir40nK6Bs+nX8AqQXeta
	b2iGZ4l/xIOlC8D5cm35TtGVkF/d1yd4lBjgtkKnTbNXwRTDFvXCCFv9vtb43OdqXFfMzd3W9Xh
	iQCs1XulTOC6hcG5d43Y2xxR74RkY3UH2aedb8UZIe1bS9jM/VP8C66ozgXIc=
X-Received: by 2002:a05:6a21:7983:b0:3da:7140:da35 with SMTP id adf61e73a8af0-3da7140ddebmr15960630637.15.1788819637220;
        Mon, 07 Sep 2026 15:20:37 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc455451b46sm4424962a12.18.2026.09.07.15.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 15:20:36 -0700 (PDT)
Date: Tue, 8 Sep 2026 06:20:08 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Message-ID: <ap82-cuyTD4yNxKY@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
 <20260907114837.2y55l7dfqqrgcka2@skbuf>
 <ap6or7kpWUj1wBI4@inochi.infowork>
 <20260907124318.6q4rr2huxyehm3zs@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907124318.6q4rr2huxyehm3zs@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_152038_476645_0556FB66 
X-CRM114-Status: GOOD (  41.37  )
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

On Mon, Sep 07, 2026 at 03:43:18PM +0300, Vladimir Oltean wrote:
> On Mon, Sep 07, 2026 at 08:15:04PM +0800, Inochi Amaoto wrote:
> > On Mon, Sep 07, 2026 at 02:48:37PM +0300, Vladimir Oltean wrote:
> > > On Fri, Sep 04, 2026 at 04:37:07PM +0800, Inochi Amaoto wrote:
> > > > +static inline int phy_bulk_get_all(struct device *dev,
> > > > +				   struct phy_bulk_data **phys)
> > > > +{
> > > > +	if (phys)
> > > > +		*phys = NULL;
> > > > +
> > > > +	return -EOPNOTSUPP;
> > > > +}
> > > > +
> > > > +static inline int of_phy_bulk_get_all(struct device_node *np,
> > > > +				      struct phy_bulk_data **phys)
> > > > +{
> > > > +	if (phys)
> > > > +		*phys = NULL;
> > > > +
> > > > +	return -EOPNOTSUPP;
> > > > +}
> > > 
> > > Why do the stub definitions of *_get_all() return an error?
> > > I would expect these to have optional semantics, i.e. 0 PHYs are not an
> > > error to the consumer.
> > > 
> > > For reference, I am comparing with clk_bulk_get_all() which returns 0.
> > 
> > This is the thing I am not very clear to. I found the clk_bulk_get_all()
> > return 0. But something in the reset return -EOPNOTSUPP for non optional
> > get (I reference __reset_control_bulk_get, as reset does not have an
> > API that is the same as this). I am not very sure whether it is best. 
> > 
> > Since you think we should follow this optional semantics, I think it is
> > fine for me to change this to 0.
> 
> I am only talking about the *phy_bulk_get_all() functions, which have no
> num_phys argument, and which as you said, have no reset_control equivalent.
> 
> The optional nature of *_get_all() should come specifically from the
> fact that the consumer isn't specifically asking for "this many" PHYs
> (num_phys). So the core can return 0 and say "that's all", and technically
> not lie. Not a fatal error to the consumer; the bulk API supports other
> calls with num_phys=0.
> 
> > > > +
> > > > +static inline void phy_bulk_put(struct device *dev, unsigned int num_phys,
> > > > +				struct phy_bulk_data *phys)
> > > > +{
> > > > +	if (!phys)
> > > > +		return;
> > > > +
> > > > +	while (num_phys--)
> > > > +		phys[num_phys].phy = NULL;
> > > > +}
> > > > +
> > > > +static inline void of_phy_bulk_put(unsigned int num_phys,
> > > > +				   struct phy_bulk_data *phys)
> > > > +{
> > > > +	if (!phys)
> > > > +		return;
> > > > +
> > > > +	while (num_phys--)
> > > > +		phys[num_phys].phy = NULL;
> > > > +}
> > > > +
> > > > +static inline void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
> > > > +				    struct phy_bulk_data *phys)
> > > > +{
> > > > +	phy_bulk_put(dev, num_phys, phys);
> > > > +}
> > > > +
> > > > +static inline void of_phy_bulk_put_all(unsigned int num_phys,
> > > > +				       struct phy_bulk_data *phys)
> > > > +{
> > > > +	of_phy_bulk_put(num_phys, phys);
> > > > +}
> > > > +
> > > > +static inline int phy_bulk_check_disabled(unsigned int num_phys,
> > > > +					  struct phy_bulk_data *phys)
> > > > +{
> > > > +	if (!phys)
> > > > +		return 0;
> > > > +
> > > > +	for (unsigned int i = 0; i < num_phys; i++)
> > > > +		if (phys[i].phy)
> > > > +			return -EOPNOTSUPP;
> > > 
> > > For consistency with the individual API, I believe this should be
> > > -ENOSYS (not that I know why we would be using this error code).
> > > 
> > 
> > In fact I think -ENOSYS is more suitable, but I found almost every
> > subsystem use -EOPNOTSUPP for such a blob.
> 
> Why do you consider -ENOSYS to be more suitable? In include/uapi/asm-generic/errno.h
> it says "/* Invalid system call number */" which makes it pretty use
> case specific.
> 

I said it is more suitable as the phy subsystem already uses this, so
use "-ENOSYS" will have the same view of the existing code. But in fact
I think -EOPNOTSUPP is a better option as it provide the right 
information.

> > So I think it will be
> > good to follow a generic -EOPNOTSUPP. In fact I found nothing about
> > why the phy subsystem use -ENOSYS for this, maybe someone can
> > answer it.
> 
> It's been that way since initial commit ff764963479a ("drivers: phy: add
> generic PHY framework") with no explanation.
> 

Yes, this is something confused me. I see nothing for this.

> > 
> > Instead of switching to -ENOSYS, I think it could be more proper to
> > change the existing blobs to -EOPNOTSUPP?
> 
> Personally I have nothing against this, though it depends on how deeply
> you want to go in.
> 
> If you want to make this change, watch out for the following callers
> which explicitly check for -ENOSYS:
> - drivers/ata/libahci_platform.c:374
> - drivers/usb/dwc2/platform.c:246
> - drivers/usb/dwc3/core.c:1591,1608
> - drivers/gpu/drm/bridge/analogix/analogix_dp_core.c:1363
> 
> Only devm_phy_get() / devm_of_phy_get() return codes get parsed this way.
> For the runtime consumer functions, all consumers seem -ENOSYS-unaware.
> 

I think I can have a try by sending another patch. I think I should do
some search before doing a change. Thanks for this reminder.

> Though after seeing how some drivers treat -ENODEV (for an absent PHY)
> and -ENOSYS (for the disabled Generic PHY framework) the same, I think
> it might make more sense to return -ENODEV from the stubs.
> 

Actually, I think this could be aligned with non stub code. I found some
of them return -ENODEV in some case. This could be make sense in some
case.

Regards
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
