Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43C14C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 12:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NHPR01W+3jSeRuyv/jaoed+A1g8FedWWWAX0WKChYo=; b=W4UufNaRgVWzVK
	q4BkSu+4pgsqO5lmRY25D0vzMFjVC9y7AhJNTJstBaREh89TUvoV2TIhAOohLWlO2CI1jzF2lUwmH
	zvncg8Zb2UfrUXaTmprjt4voEbKIeYpaGrCXP8KmA8e00/ntxC/zhtIkhiJG1op4XU3Hglzpsf/d3
	Jp6QQlcivJ4htzEhsJdP78wTFsWz6zsD7Qk4Ef+eu/bzlJiCPKm0O9I8NmM24HIdhekLW/jwk8QpT
	BsCRPGc7iPECyIEDQWqq5AURn/WUaT+NkLuv59fULt0eJhrlDVO1GpX/cKcxWO9VXdcX2lXqp2zhn
	ttEWzR9OH5Ae6sHvGY8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YGB-00000006m68-3YeV;
	Mon, 07 Sep 2026 12:15:39 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3YG9-00000006m5k-1Qyc
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 12:15:38 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-39b2ad862bdso3735759a91.2
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 05:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788783336; x=1789388136; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=uXPQPcM6Co9Pv6uvVSmI8m5rkwob2bI+bnvsiN0S4hk=;
        b=O2O15Zi5/b8W5ulF/ohX5DeJMhEoG0CcZrfj6XjWsoPdaKYcj3qoCIdMKSOyQSXTF8
         KQS8jM11cpN8L5c97vpUVLfYHhofha4c1kJHVmYGPeSkvaRMVu2bfeYshIKEGr4LlYb4
         6ez5BH+KT+YDANNG/P7t4+c7Fs31zfB+GAOx5teDox4/x8DEu4Wb295V4+KyYFKQz2OX
         IIDzhDRTH/U7OQA3blKJKcVptknhNaH0vH2xUyQu5vg9w9E7KT5r9YnMfgqMSb2guxmR
         Z28WnTNF/Ip/wRUxosRNVRturuuqoRzvX7hCg2jAvOPURL/IouWbEoY5KJL5AUnUWZfi
         EqxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788783336; x=1789388136;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uXPQPcM6Co9Pv6uvVSmI8m5rkwob2bI+bnvsiN0S4hk=;
        b=maeQKO5AFHtS/5wniVAsZ5oXX0bZaf8Zm1AxRFGVpqUWOvH5VkSLI9KtHPfz2Gw/kM
         3IeXAx5rWhTQt8KHPJDqkUuT/J2GUPH05x9nn5LcnJHY9GIx5TOWWJafzylAq6WEzwfE
         GRoECJE2Xhn1I9PszKMBpXthE82/D5em1CxryXE5Zrpi5YtJcDYGF5xRfMqsfzqsGNcf
         OcxN6DVGlf+PnO+3QFxnRYLGj40JZjZJqxsMfnt8fMiTRWrl5D9tFUdwJyDsQ1eZ/2oG
         ogjYH0fiA8O7v5JLIpDz7uTf4dbvwp0wNismKbn0O02U+Gz2CM1THEIxC4KHcYZQ6b5h
         coZw==
X-Forwarded-Encrypted: i=1; AKwUvBwpWgT/rDaZC/y8SxXvMoYJdIclEy/zFYTkpegKf0gGejHLTuOZ8hzIio2jtEdS0/QTgcM2yqmdyRc=@lists.infradead.org
X-Gm-Message-State: AFuF++lNCdiQ79Qh6XAyG66U4+YDd3P0DYXQLqlvIrM+QgALqJT2lCak
	/4uVvJoPEJAAX36RA2RaFqs3ZKhVEqGZ8WXXNtLtS5UHi8AADqSY7bnh
X-Gm-Gg: AYBFou125x1uvKyBKOz1AjJKDSQSM6igxKoIwRa5LB90xNH5SSP0BDgilsyqwTFU8yb
	t+EsZDsthHDaZwVo6jj59eiu4sirQvK83mMoMBEgJ2jICOGSR+xcrW5a5OTG356D1on7Km0dXRl
	ECh15olKUWBb4g/4Izei+f+d1s8UsQLs80PKINhpUPG3MU6ZVr3oXxNIGTslCvOUjAi40aTtGRx
	aq8blhUE7h5E5MnT9aE8mpHBgDXO6VqoEIcR1eBPxnrnwKRkfF/Z53xCYeznywucAlAkZPEsUk4
	ucVEnsLO3a+hyRvuRM3nioKDjvqFXC8CvYVs6wWEraELBBeRIGWBLALsdlTW65YDwQ1tltl9gQ4
	kIOn8oY6xd8GNaTJKAN/LfrvMIXDYCZw0Hl9ln3owLjnUAEj/nkmyxst8izEL+H0mH7yFG5Tow1
	C8TZiZ+k2pOJFF1cOxDmrMbo5xR85QgjagGEjDlB7kbl8DwBQ+8CWCereJrItMnI8koebzJQ==
X-Received: by 2002:a17:90b:3c05:b0:393:288:29e3 with SMTP id 98e67ed59e1d1-39b26106c44mr34397361a91.10.1788783333930;
        Mon, 07 Sep 2026 05:15:33 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39b26155324sm19914915a91.17.2026.09.07.05.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 05:15:33 -0700 (PDT)
Date: Mon, 7 Sep 2026 20:15:04 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vladimir Oltean <olteanv@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 3/4] phy: core: Add phy bulk data helper functions
Message-ID: <ap6or7kpWUj1wBI4@inochi.infowork>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-4-inochiama@gmail.com>
 <20260907114837.2y55l7dfqqrgcka2@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907114837.2y55l7dfqqrgcka2@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_051537_387943_A381A0EF 
X-CRM114-Status: GOOD (  26.19  )
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

On Mon, Sep 07, 2026 at 02:48:37PM +0300, Vladimir Oltean wrote:
> On Fri, Sep 04, 2026 at 04:37:07PM +0800, Inochi Amaoto wrote:
> > +static inline int phy_bulk_get_all(struct device *dev,
> > +				   struct phy_bulk_data **phys)
> > +{
> > +	if (phys)
> > +		*phys = NULL;
> > +
> > +	return -EOPNOTSUPP;
> > +}
> > +
> > +static inline int of_phy_bulk_get_all(struct device_node *np,
> > +				      struct phy_bulk_data **phys)
> > +{
> > +	if (phys)
> > +		*phys = NULL;
> > +
> > +	return -EOPNOTSUPP;
> > +}
> 
> Why do the stub definitions of *_get_all() return an error?
> I would expect these to have optional semantics, i.e. 0 PHYs are not an
> error to the consumer.
> 
> For reference, I am comparing with clk_bulk_get_all() which returns 0.
> 

This is the thing I am not very clear to. I found the clk_bulk_get_all()
return 0. But something in the reset return -EOPNOTSUPP for non optional
get (I reference __reset_control_bulk_get, as reset does not have an
API that is the same as this). I am not very sure whether it is best. 

Since you think we should follow this optional semantics, I think it is
fine for me to change this to 0.

> > +
> > +static inline void phy_bulk_put(struct device *dev, unsigned int num_phys,
> > +				struct phy_bulk_data *phys)
> > +{
> > +	if (!phys)
> > +		return;
> > +
> > +	while (num_phys--)
> > +		phys[num_phys].phy = NULL;
> > +}
> > +
> > +static inline void of_phy_bulk_put(unsigned int num_phys,
> > +				   struct phy_bulk_data *phys)
> > +{
> > +	if (!phys)
> > +		return;
> > +
> > +	while (num_phys--)
> > +		phys[num_phys].phy = NULL;
> > +}
> > +
> > +static inline void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
> > +				    struct phy_bulk_data *phys)
> > +{
> > +	phy_bulk_put(dev, num_phys, phys);
> > +}
> > +
> > +static inline void of_phy_bulk_put_all(unsigned int num_phys,
> > +				       struct phy_bulk_data *phys)
> > +{
> > +	of_phy_bulk_put(num_phys, phys);
> > +}
> > +
> > +static inline int phy_bulk_check_disabled(unsigned int num_phys,
> > +					  struct phy_bulk_data *phys)
> > +{
> > +	if (!phys)
> > +		return 0;
> > +
> > +	for (unsigned int i = 0; i < num_phys; i++)
> > +		if (phys[i].phy)
> > +			return -EOPNOTSUPP;
> 
> For consistency with the individual API, I believe this should be
> -ENOSYS (not that I know why we would be using this error code).
> 

In fact I think -ENOSYS is more suitable, but I found almost every
subsystem use -EOPNOTSUPP for such a blob. So I think it will be
good to follow a generic -EOPNOTSUPP. In fact I found nothing about
why the phy subsystem use -ENOSYS for this, maybe someone can
answer it.

Instead of switching to -ENOSYS, I think it could be more proper to
change the existing blobs to -EOPNOTSUPP?

> > +
> > +	return 0;
> > +}
> 
> Can you update Documentation/driver-api/phy/phy.rst with some terse
> references to the bulk API and its intended use? Not much, just say
> what it's for (like multi-lane protocols, and why some operations are
> missing: phy_validate(), phy_set_mode_ext() etc). I guess they are
> missing because currently they have no user, which is OK, but the rest
> of the world should be on the same page w.r.t. the future of this API.
> 
> Thanks!
> 

Yes, I will, this is something I missed. Thanks.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
