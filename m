Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA698CA5FC1
	for <linux-phy@archiver.kernel.org>; Wed, 30 Sep 2026 08:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCOLZU4+hbfiSzXKlrosjDuGtk4CoenFycu6y2xYofo=; b=11ysYzb68Lx6wU
	Ra/5gCkAjqS1kkAbI9XHuBqjCuhFvwa+zST8pX5V3T5KRyTly3TBDYDKmbyFZ9hTFdN7oDN5aUf1M
	uO0pdXEV++MptPrYR8z+r10f451EQadqEhAPeX0HhwnEs7z2V+2zTT1oslyDbipwWj+EFXHKFwCYb
	OSObmqT3wkWNW8eJhLrWwRpL2wN7dfQMb5qG23kkRJaaWvP3h55M/rE2QRK8JdeCYsuKEy360XaA5
	/ypoKdAEkAWhc+oUlcCOEXexF+EjyFjKms4FPTUKVnKb/QJ5sIxtTz2ljZBRCtw7u1opbKE+3w6Nn
	Er0hQLy9cqnxhKMSe1mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBq9u-00000005VmQ-0yeg;
	Wed, 30 Sep 2026 08:59:26 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBq9s-00000005Vll-1Zxc
	for linux-phy@lists.infradead.org;
	Wed, 30 Sep 2026 08:59:25 +0000
Received: by mail-pj2-x10.google.com with SMTP id 98e67ed59e1d1-396ccc02279so2811241a91.1
        for <linux-phy@lists.infradead.org>; Wed, 30 Sep 2026 01:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790758763; x=1791363563; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lwqDJJxq+i6yiMKe3H7XeoLAk9BxxMBDZsuZ7Sfnq6I=;
        b=Z2/6vvMpNYqisNXZcDRvO0Ouam8iFOapZHTz52kSmAT5XHukVE40oEOC/BAehfr6cJ
         PAoEOurw3Uqqj4WZPWjbhsrtB4epLwMOMG+AK1KxWMCSfy8qgbm4peDOkSAssWppOc46
         ujTDWC2wCU58Lam5ODuD1OZwU8oZBayIiSs8Vl6zz+USOV7GhYEM9Uc660BRQ4nLKjUl
         sKYJHmUaDR9NqvbfiipVskvWdlug6Wn52D0N4FcBFrBz3vpxOTLBYnqp4eVffJQU/+Mw
         dy0i2bENjieqGq0JztG2aA9HirI4mY76QOaGTWGXSzIIwhvHmpTPABfbU01GehSafyI6
         J6eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790758763; x=1791363563;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lwqDJJxq+i6yiMKe3H7XeoLAk9BxxMBDZsuZ7Sfnq6I=;
        b=NNZDIyZMIKO8H0aINDslvxAewdJ5e6R6o5XW9WuCZMH8pURx+mvfK6pEuyqWl0+j0k
         dQlwdYapiMs7Y3hQCggp0/AvG/hvHmDLt0Pyk9QGZ8bdHMxrI0LXYPeJo8NI6wmCi8ei
         x5k1a/AGn/IhjC+aEhPlbVPzW/YBWrXbfttEEiqK84R+Brz9oekaphIXH/O3ABXY1Ich
         z0NF8wfLLa8ilROM6DoqnE2F7t+aCw5IsQrqXhw9Ji8xeT/J7+Ppj3CxjvwcZ8q2K3nE
         MqDHtAkY2mLt5SAHtnQ0VFKh1YsE+kRD/KDMqn5HnJHU46H2b6jNaP8566NQ46erNsor
         weUw==
X-Forwarded-Encrypted: i=1; AKwUvBxzx9ii6Qh79F2N+3IE499OyDc8MzFvbMw1UKfunjL8Smkq3pySTdbFlNn3bKvOu8LW+FekjBMEE2w=@lists.infradead.org
X-Gm-Message-State: AFq9FYK5XHD4s8umcwuUquu6ZIwpTLijmnQqG1aknD9agwXb3KKLvWwh
	dIMvSohICxFZflX85+w5OpdDDaUWGpHb14VdKQiUZ1VW/ok0hvyqZP8S
X-Gm-Gg: AYBFou0ipSJuDD9BNZwHTk7j5P67mUelE6Xo7b61zG+a0mapbUmtNuRU0ip+HMTyiZA
	3M2wFvhCWeq5rI6Ou6VbHFI+vJYlYeuycR/Po6vGCsxd4v5RivYHMMLOXnTQ3kIPCamA+Udk32k
	b6eQvewvHIUUjM+drjXYfbuQRKpk2p/Jf565qeqHYj9FOmSfBX1pmXoGI2KIVK/Qo2Vice0avTs
	VQQpBB7jDe7rwDcYkZVR0OFIVjWo2V/5PPfamwMzZt857xI3qSWUFse42+Sgu/bZz2IKeoCZkKy
	t5SZAKfyltf9m+387BG3vuJpIsCDY8E8n9iehCUO0YUCcSFA63CF0256CzRIt/+gIxJxVL7KNuF
	AHvHpwupsukBaXQAQRQUkVTluy03Auapk1ziIR0tJd6DDP6YwpPdCTl2SHkx0g5K7/YysrMrPdk
	jMYswYztC+5Pg1p5ZRQSrt/ioYvoD7pXpBzLSUNb7c+M8xoXjNn1csZmQ77Sl2UHIEKor8rA==
X-Received: by 2002:a17:90b:1d0d:b0:3a0:e476:576b with SMTP id 98e67ed59e1d1-3a4d179ece8mr721296a91.37.1790758763142;
        Wed, 30 Sep 2026 01:59:23 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4ce16ac10sm2149770a91.8.2026.09.30.01.59.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 01:59:22 -0700 (PDT)
Date: Wed, 30 Sep 2026 16:59:13 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Shuah Khan <skhan@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <arzLeuO0qbRxofFv@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
 <arzGyL8gGrxeZoN7@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <arzGyL8gGrxeZoN7@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_015924_421731_5C89BD4A 
X-CRM114-Status: GOOD (  36.38  )
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

On Wed, Sep 30, 2026 at 11:22:32AM +0300, Andy Shevchenko wrote:
> On Tue, Sep 29, 2026 at 04:52:33PM +0800, Inochi Amaoto wrote:
> > Add several helper functions that allow drivers to get several phy
> > consumers in one operation. If any of the phy cannot be acquired then
> > any phys that were got will be put before returning to the caller.
> > 
> > This can relieve the driver owners' life who needs to handle many phys,
> > as well as each phy error reporting.
> 
> ...
> 
> > +/**
> > + * of_phy_get_count() - Get the number of phys of a device node
> > + * @np: device_node for which to get the phy
> > + *
> > + * Return: the phy count if successful, %0 if no phy handle is found,
> > + * negative error value if error occurs.
> > + */
> > +static int of_phy_get_count(const struct device_node *np)
> > +{
> > +	int count;
> > +
> > +	count = of_count_phandle_with_args(np, "phys", "#phy-cells");
> 
> > +
> 
> I would drop this blank line.
> 
> > +	if (count == -ENOENT)
> > +		return 0;
> 
> I'm not sure about usefulness of this kind of trick in the _count API.
> 
> > +	return count;
> > +}
> 
> ...
> 
> > +static void phy_bulk_put(struct device *dev, unsigned int num_phys,
> > +			 struct phy_bulk_data *phys)
> > +{
> > +	while (num_phys--) {
> 
> > +		if (!IS_ERR_OR_NULL(phys[num_phys].phy))
> 
> This should be part of phy_put(). In general many kernel resource release APIs
> are NULL and/or error pointer aware. This is a slow path and it makes user's life
> easier
> 

Something reasonable, As of_phy_put does have a check, but phy_put
does not and it use phy->dev directly. I think this is acceptable
QoL change.

> > +			phy_put(dev, phys[num_phys].phy);
> > +		phys[num_phys].phy = NULL;
> > +	}
> > +}
> 
> ...
> 
> > +static void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	while (num_phys--) {
> > +		of_phy_put(phys[num_phys].phy);
> 
> > +		phys[num_phys].phy = NULL;
> 
> Is NULLification mandatory?
> 

I think it may not be as the phy is managed internally.
But I think it could be keeped to avoid misuse.

> > +	}
> > +}
> 
> ...
> 
> > +static int of_phy_bulk_get_by_index(struct device_node *np,
> > +				    unsigned int num_phys,
> > +				    struct phy_bulk_data *phys)
> > +{
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		phys[i].id = NULL;
> > +		phys[i].phy = NULL;
> > +	}
> 
> But why? The below does the assognments.
> 

I refered of_clk_bulk_get(). And at least I think the init for
phy field should be kept for an initial state. For id, I think
it is possible to be removed.

> > +	for (i = 0; i < num_phys; i++) {
> > +		of_property_read_string_index(np, "phy-names", i, &phys[i].id);
> 
> > +		phys[i].phy = of_phy_get_by_index(np, i);
> > +
> > +		ret = PTR_ERR_OR_ZERO(phys[i].phy);
> > +		if (ret) {
> > +			phys[i].phy = NULL;
> 
> Same Q: do we need a NULLification in this case? Perhaps the respective APIs
> should be error pointer aware?
> 

I think this should be removed to keep the error info. This is the
thing I have missed. Thanks.

> > +			goto err;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +
> > +err:
> > +	of_phy_bulk_put(i, phys);
> > +
> > +	return ret;
> > +}
> 
> ...
> 
> > +/**
> > + * phy_bulk_exit() - exit multiple PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data to exit
> > + *
> > + * Exits the PHYs in reverse array order. All PHYs are processed even if an
> > + * error occurs.
> > + *
> > + * Return: %0 if successful, the first negative error code otherwise
> > + */
> > +int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	int ret = 0;
> > +	int err;
> > +
> > +	while (num_phys--) {
> > +		err = phy_exit(phys[num_phys].phy);
> > +		if (err && !ret)
> > +			ret = err;
> > +	}
> > +
> > +	return ret;
> 
> So, we return an arbitrary error and inconsistent state of the phys[] array.
> What can caller do about all this? Any type of recovery? TL;DR:
> I put in doubt the function prototype and the implementation (error handling).
> 

This is something I have done wrongly. It should return when the first
error occurs. So the caller can continue to exit the left phys.

As the phy_exit() does not check whether the init_count is 0, I think 
an additional check is needed fpr phy_exit() to avoid a negative 
init_count.

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
