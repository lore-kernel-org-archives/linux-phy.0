Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 636D5C79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LsqiGweUDEkWfhuzsT0OxoaUEjsWB9H3LhX4Dl/h68=; b=ILTwCaQhuQf8gE
	3lDKdf/Tm8RL7l19bVnejPfvbOF14jec2kjU5yODDANnEonB1NwZ81tMJbKCNtR/jt3LXpRgZNu6R
	wQ9qnqnpNL21GfJK9Zk71qPzswoXlZaxSSoATNoM0lSPYkjrebsb/9xtzMcQwY89c28LcpuXGzCqn
	Ignq2HfE/oP99Z35Mf4ggaoaS7aUjddCos1YlPyQJyXNMigET0/AUtfqyajmYhZmj8T7rMRyCz5JV
	GuH7s3+tM2KLJfNTw2HW9z8ocaUhLQ4BYXpHplbH3yeSkLsXGV8ThK7bJoXWY7mtE5lzVg1dNdTzH
	r6xpdW2JidWa5BSdU1Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xc6-00000006fX8-0eYO;
	Mon, 07 Sep 2026 11:34:14 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Xc4-00000006fWX-0OIR
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:34:13 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2d58efc7356so42772895ad.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788780851; x=1789385651; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=b0HO00FFYat2iO5z4XYKUwvadSW1KbkDr8EJUWfNwQM=;
        b=iaAeQsJKyHqryC/usWIsFPC5Vgh/8gQrCnPuRS9rXyrpdfDDhmOkY1w0ZgDWr8gkTn
         q8mUxWAwF0kmOnQKNF3LepIk6WcEjp86dlHiHblUe1bg7u785hu7lVseSKAOMMFuio/f
         6NexwdXkToOA91+Uryej0Zl789VQxIv1uln27ynTBY3SndfsQaDboTwBdezntYDPStrZ
         jrUSC2JTwqu7ILGF+JBYiIbey87I+9NdN7PU00zmFDpNWTse9caIAkFwjg9/Kcw7NVLF
         W0zwMRcStW1RS4UPJ3DgsNl7e8FUGMmmnSnBkaGoT7ktT1zN9pZIzY+OuiLmgIiGV2p/
         Y3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788780851; x=1789385651;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=b0HO00FFYat2iO5z4XYKUwvadSW1KbkDr8EJUWfNwQM=;
        b=OZcZW2lYJx0I6wt8uZSU9TfpbYseAfEWQfVHN5QjDfixyysQrWTyQh6MXAwKl1oh2g
         dyayN0dZKtpyKOT4zkATFZTMeddotMh1GNtRHifnmaqe40IWWfnjMumZNz4eYHyopl+n
         n1pYcXG7TUeoV9eFxeGWHxQIE5dIIyJoHw/DSIi0YBw6qpRYDjkHTx+iVap2O4whzW6k
         6Nq6CztmOxY5yQplfh+zCX5rMTLo0mVxWllTLHxnqIu3JLaVjn3pIbdD5pSVHHgyaJnp
         aI4Rs28CA1NmYaiXlphDucbsGgkb5w2sugQbGwxWJ+cf2tXf85Ef0LUaeEoCpJbeIBXg
         ss8g==
X-Forwarded-Encrypted: i=1; AKwUvBykjZ8PRg/3yNopeslABtAwKiDVX3jNCMRpSIFYz8k9amkS3OIKdq1ppVcIttTA4NvhAhH5629lO7U=@lists.infradead.org
X-Gm-Message-State: AFuF++kweOuyVxxcPL8ATv9n2X6bh2mzuPzYHAm8nYvi16ZxDJLz2Zr4
	Ii5XDHwiUj2RFJKeyVfBcNSfZPKs1IQYniYHXvd9W1J/gSUJs0kSOuC5
X-Gm-Gg: AYBFou1XRSIAOmLsjY2dH1aaLrBJtjUKqmaoSmKrxhrCH//iwKkoye4xSyNJzx80C+h
	AAwEN2RFvZ3Vvtt8vBOTjAUi3fHdWa9xj7L1erzWFHP7Se69MJ61nesc5ZHaHzJoIaOy5Uhmc7j
	8AL0dfJjK2YLSVIwjst8s0jsVak2WpcWhfs2hTirrW6vjfT+K40JaALIC19Hp6bulNdWbKvOd6W
	kcSE0x43sRAH3/s0gBifL6v+wXiZFEPV/myNufyBwI0kmUC84Lby48JvTbKox1ejfnUDKgiVStu
	9fR40tnriaOdBJYOH0/++OD1/glawky2ZJNc4W6lyvIsC+x4Y7eMKxzaP2cku8MhuE+U3Qe1BSX
	OmG/vufPkogkXXZtuBtxllI1AJerax9WZGfQnTUQhsLZig8vBlwmhF8A57/sg5qcue0r8HOI7fk
	Z/JWRjR9sPHJZ2t4bax6awSLRsjm6FvHOsTUYwaBvxgA1UKDZFK9Eq8PQ/wDs=
X-Received: by 2002:a17:903:2ca:b0:2d9:3850:2741 with SMTP id d9443c01a7336-2db12255f7bmr330259655ad.0.1788780850921;
        Mon, 07 Sep 2026 04:34:10 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2db1497d9ddsm43944095ad.31.2026.09.07.04.34.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:34:10 -0700 (PDT)
Date: Mon, 7 Sep 2026 19:33:41 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 1/4] phy: core: Add common helper to add phy phandle
 device link
Message-ID: <ap6g-SwI6vvmdnB6@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
 <20260904083709.425893-2-inochiama@gmail.com>
 <20260907110121.hfrblphv5vhzobj7@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907110121.hfrblphv5vhzobj7@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_043412_157632_A8CE65F5 
X-CRM114-Status: GOOD (  23.13  )
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

On Mon, Sep 07, 2026 at 02:01:21PM +0300, Vladimir Oltean wrote:
> On Fri, Sep 04, 2026 at 04:37:05PM +0800, Inochi Amaoto wrote:
> > It is very common for adding a device link for phy phandle
> > for device managed phy helper functions. So add a common
> > helper for future reuse.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  drivers/phy/phy-core.c | 38 +++++++++++++++++++++++---------------
> >  1 file changed, 23 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > index 21aaf2f76e53..ea79913fbb87 100644
> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -606,6 +606,26 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
> >  }
> >  EXPORT_SYMBOL_GPL(phy_validate);
> >  
> > +/**
> > + * phy_add_device_link() - Associate the phy with the device
> > + * @dev: the device to link the phy
> > + * @phy: the phy to associate
> > + *
> > + * Associate the phy with the device by using device link.
> 
> I guess it would be good to specify somewhere "consumer" device, because
> there are multiple devices involved.
> 

Reasonable. I will update this comment. Thanks.

Regards,
Inochi

> > + */
> > +static void phy_add_device_link(struct device *dev, struct phy *phy)
> > +{
> > +	struct device_link *link;
> > +
> > +	if (!phy)
> > +		return;
> > +
> > +	link = device_link_add(dev, &phy->dev, DL_FLAG_STATELESS);
> > +	if (!link)
> > +		dev_dbg(dev, "failed to create device link to %s\n",
> > +			dev_name(phy->dev.parent));
> > +}
> > +
> >  /**
> >   * _of_phy_get() - lookup and obtain a reference to a phy by phandle
> >   * @np: device_node for which to get the phy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
