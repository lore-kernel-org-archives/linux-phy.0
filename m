Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569C1CA5FC1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 09:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPMNbapY3/Qmqs1xeOVfwlfSC25yfxvUM5w5SHxM5TQ=; b=CthsmkOgB5QPdA
	vn47yuFkHev8jp3RzVC56YbGJ47Iohybhp5azG5KrI2g2IUow4fs2Vmd19ocIZ1Y6BAjXWBI4Jx0b
	A2nXip6tPWC0Vtm2DkCRMASGuWH4xl6kQ7VEWFPu1nqft6R2V2rUZcIoQK7UVSB7i9nyYjUZ1NUZb
	0W8xP/7+JxE9vDQjeqthHBblwx/65kCMH8Wm9+AYtMKuRtHmfXHQ/A6oTis0T1XyFX+hti8nsgyJW
	HfhJC7u6Q1ibR4VOkA6Rb9Gi0BbARUZw4R1Bj/xcW880hlsjy+ZEyQotGzIDhE3Zi7n1TC4Ev6CaW
	nNdQ0DM4xz1BZawqpICw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqXg-00000005YM2-3sCl;
	Wed, 30 Sep 2026 09:24:00 +0000
Received: from mail-pj2-x2a.google.com ([2607:f8b0:4864:39::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBqXc-00000005YLH-41VU
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 09:24:00 +0000
Received: by mail-pj2-x2a.google.com with SMTP id 98e67ed59e1d1-3a4b940d3d7so505592a91.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 02:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790760236; x=1791365036; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=/L4XHSUdBohZKJ1UYQ2m/Jl2xTbitdNZU3UCx3w2VvM=;
        b=Vl9Rt0XyS7FJdmp//CdP3+uhcNpCUgpRag+VTkHNAQavLTjl/ZEmu8rABXszLhJTHl
         1dh74gtNjoXEoSwqd4BQkTzh5VSghbwU5FSxc86AjTTe8ver+5byz73RMScWRIrGo+ym
         nZWS99jqhC5t2yqCb8ZWdOkh6Q3+tub5PFix94QQD4bhmMLnKy8gPzAQxSyox+w2fkwb
         XKcYQ6ESKeLC75E05Ke+wM/MDoGa2M3lfvW4nchMZqhm+UYlqQaL6f75tguNFHQdpTDX
         TNx8sU4t82W7rD6+mYe7zugXc3QxsmxK8BQGL1AitH6fCwJenvvd1zJDjVHRcSaGKqCy
         A7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790760236; x=1791365036;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/L4XHSUdBohZKJ1UYQ2m/Jl2xTbitdNZU3UCx3w2VvM=;
        b=2b4Nq6utbPDJfcNc/WkqJ/wTNwEUa3uSPGD3wGwURnR9D2To2QFQ/gVpsG/IRenPMp
         BP/44ps6SrFA/qW6k0PBV4fepr6dfvv4qyT7FqHdgbm9FaEkyXmIgidJzZqnAN9UDMPp
         Cm+vFzFR5nsfp0SeAKNzBaoITyWmI2EZ8PWCR1U0q/i0jxfa8iRUH0koe6mwC+S0s8Vu
         eRDPl10CYT66uvlOmEPNOdTke0GFnnvYR3xN5m9bTE86k6pHLZP0SLJqeFtljaJJsCcg
         Flfvd3AW3MC4B8S+2oFKdkAXZN/cOHLZBIttql3B4JWwWZAd5srsN1QAK3mY40n2yxcx
         3+1A==
X-Forwarded-Encrypted: i=1; AKwUvBwGLSmXB4O5g8pGUASfK2fvbPoHjTAyP1d2xl8Btb+IcUxD3HgRF4HflE+wsoay8q4RyAdpqky4IN0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJ4uA5sGGc+4H7plPUBXX29Q8rKXlKRrNcgMvhUY22AdC9iiPvM
	eCafuSqzzyNj2obUU5H++gj8/5MbniUt4xhGCXOLZawY2o3o8B5hpJ2N
X-Gm-Gg: AYBFou1nuoj1NDrpLy7Mag+TL5zcK+oMvjiJTBhfo/QwA2LmsZ+4h8OZ0Pqkc+TWO/j
	QCSYYssrVTC2jep5XrrjysvRmnyhYpNEJXp8WHb3DBTz/3+PzCfRzYRIF/y0Eo4uFU3JyLSBvFW
	8gupcaBnOvLFlQXwGiF47roIam4SZZAMe9eAiZz0jupsJrpmWkZFm1IK8euc687vGRNEnROqqe6
	9T+tZ1TrxANWEifsIOg6VYMfhQeczbnkB4WfHeU2PSNg7scVNzVt7fN6mtVsFuNQF/gaAbFMHXT
	QrQM8lLFp63clp7mk+3sE3b5/NijwEgfdfPEyqu+GsOeivkCydLbl9q6tt+SQ+914UybKsk8w/a
	5MxWX3ZUUANmaUSCrMkUei0ACdLBKM5kmUqZ5iGaJam6rKuggVb1ry5SqpsoMkimdh7oZwwKOFR
	mBLk81MWU9B1WwJS752gef/iqJ4A6LeqNd49X7IDhmnfbXMOwer/IktEDgrOB/tZB60l0O
X-Received: by 2002:a17:90b:4d09:b0:39e:6c69:f472 with SMTP id 98e67ed59e1d1-3a4d18c0f59mr733608a91.49.1790760235777;
        Wed, 30 Sep 2026 02:23:55 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4ce40a6d5sm2319062a91.15.2026.09.30.02.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 02:23:55 -0700 (PDT)
Date: Wed, 30 Sep 2026 17:23:47 +0800
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
Message-ID: <arzU-dIIxrHt-wW7@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-5-inochiama@gmail.com>
 <arzITUCmgUp3uiRn@ashevche-desk.local>
 <arzSkE1kY_u4jJWT@inochi.infowork>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <arzSkE1kY_u4jJWT@inochi.infowork>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_022358_814372_A3EFACAC 
X-CRM114-Status: GOOD (  29.93  )
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

On Wed, Sep 30, 2026 at 05:21:08PM +0800, Inochi Amaoto wrote:
> On Wed, Sep 30, 2026 at 11:29:01AM +0300, Andy Shevchenko wrote:
> > On Tue, Sep 29, 2026 at 04:52:34PM +0800, Inochi Amaoto wrote:
> > > Add device managed variants of the phy bulk helper functions. So
> > > the driver can benefit from automatically managed phy handles.
> > 
> > ...
> > 
> > > +int devm_of_phy_bulk_get_all(struct device *dev, struct device_node *np,
> > > +			     struct phy_bulk_data **phys)
> > > +{
> > > +	struct phy_bulk_devres *devres;
> > > +	int ret;
> > 
> > > +	*phys = NULL;
> > 
> > Why?! In case of error we modify the output, this is usually not the best
> > approach as in most of the cases the expectation is that whatever user
> > provide (including a garbage) should be left untouched in case of an error.
> > 
> 
> This is something I think this is wrong and I need to removed.
> 
> > > +	if (!np)
> > > +		return 0;
> > 
> > Same here. On top why do we even care about np like this? Interestingly that
> > some other APIs consider this as np == dev_of_node(dev) case, and automatically
> > propagate that.
> > 
> 
> After a deep recheck. I think you are true. We do not need to care
> about that, just let the internal api decide whether it should be
> an error is better. I misunderstand that it should check it at early
> stage to avoid some bad use in the following logic. Now I found it
> is meaningless.
> 
> > > +	devres = devres_alloc(devm_phy_bulk_release_all, sizeof(*devres),
> > > +			      GFP_KERNEL);
> > > +	if (!devres)
> > > +		return -ENOMEM;
> > > +
> > > +	ret = of_phy_bulk_get_all(np, &devres->phys);
> > > +	if (ret > 0) {
> > > +		for (int i = 0; i < ret; i++)
> > > +			phy_add_device_link(dev, devres->phys[i].phy);
> > > +		*phys = devres->phys;
> > > +		devres->num_phys = ret;
> > > +		devres_add(dev, devres);
> > > +	} else {
> > > +		devres_free(devres);
> > > +	}
> > > +
> > > +	return ret;
> > > +}
> > 
> > ...
> > 
> > > +static inline int devm_of_phy_bulk_get_all(struct device *dev,
> > > +					   struct device_node *np,
> > > +					   struct phy_bulk_data **phys)
> > > +{
> > > +	if (phys)
> > > +		*phys = NULL;
> > 
> > Same as per above.
> > 
> > > +	return 0;
> > 
> > Why not an error? I do not see the _optional word in the function name.
> > 
> 
> IIRC get_all it a special optional meaning: treat not existing device as
> 0, this follows the same meaning like clk. Vladimir has a good explaination
> on this in the previous version:
> https://lore.kernel.org/linux-phy/20260907124318.6q4rr2huxyehm3zs@skbuf/
> 

s/device/property/.

> > > +}
> > 
> > -- 
> > With Best Regards,
> > Andy Shevchenko
> > 
> > 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
