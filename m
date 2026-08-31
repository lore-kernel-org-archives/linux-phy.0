Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 437DCC61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 10:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hlnzZHBiKH28h/48kxDqad2uSOGK0a/BuGVkQIj3iLk=; b=srNP4K+yr1KQpM
	uFGqBEpzaw/f9uRFPQePEwMq4hEGwUTqtEmfJlHm6rJL7U6zDvxAdgonc1LJsYXoEwb6uKuDKOXFz
	zBiOlQdvKErITwXXNKBrIL9QxvGFOfFSLHF+gRgByB3gkz5VFhXRtZ2Q53XL/ODgtgOgfpefKl5Lk
	M4OqI6n9mpoplYtV35kwmD7qy7Cq4K9gqBfoqCJ7boIK3FRhCwPjvUaYhXdnXSN3QjNoxxhCJ9fp7
	6TrSRzqNhINOPRCBNl8Wn7eIqn3U4Kz+MKYM9ol1ZbcuPEPBw9ty3Su16r9Cj52BUSfZFm16txMWT
	rutIHfoayTRnvINByWpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0yow-000000094tM-3PtU;
	Mon, 31 Aug 2026 10:00:54 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0you-000000094si-1vAo
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 10:00:53 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2d7195706f1so31682655ad.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 03:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788170451; x=1788775251; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4qrQTjIOkpT8zIVKPBnb0BW8F6n+G9iLSS3jQwYKHHM=;
        b=UkgATGCGe1E1hISE4s3YqCCYwpJDsoV+2SasCpVJ+xMkty4+HvUv/BBAu9s8YdZnGb
         fjonKJrQxJWdPxwKcAZcBHsK8ujJxgE7qw/UmFeuMA540+YRxYAUxCyJdlJilNh5KGIr
         oOpsLajZApTB383e9IUxwER7aNf4wem6zmSXb1zFzP+K6UMWVYDF5dbk1Mv4W1qTD3AG
         SvVlKcY6NNISz8/FPyFuV5VGNcq4fwkaw/zqJO3X73rZakGuPRNtPbk2OWLWMLuvI3Fu
         4umajouvenherSq7nGKZjjL7jkNo0XlhcpmBTZWCXifgVoe/c5NRcxwVavP2TcxA9Kw7
         QOYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788170451; x=1788775251;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4qrQTjIOkpT8zIVKPBnb0BW8F6n+G9iLSS3jQwYKHHM=;
        b=fuN9U4mFwUe5Eh1WQNpqlOVDTGqQzvKk36PRWrT8DUgeY5iTevRcjfizqZQRdwfv8L
         cjIHptGu+Ga8RuJKUJl8ni+WbTUAsZK6KkpN1rgP+PgJNiz/ZsgzSzSctF0KFRvXIwOs
         7VwE0kWLwQ/5oWtKraWkCtaAsnm7BUdKOW5k+B7EzBryUlqywKz3LuXvxRUmII79Nn5y
         cwcICXqLkb+Ux7/22ghgTBwtOcf3LbukUJKjyEjiWFiaZ7QSK2Du5nEY09RryZWW+5wQ
         0rMatmQgqvoK5aNoh2+5+9iuwoHfnDqukdT8/VMPzzugWvilGLaDHXRqY/xHK6HP935L
         +q7A==
X-Forwarded-Encrypted: i=1; AKwUvBx05DfKYEhJKF8/gZHDoVpKHBkUr4UgsgHAznXTWMbnCYuX8UjaK89deUX0Nx2eYCGGdLWmG3dTSBc=@lists.infradead.org
X-Gm-Message-State: AFuF++n4UmWv8i/0d9f5LqsyCHebcBg5kQqLjj/eqkittBG63FczVzpO
	wACcA8ZJFgRv4iejVBdv+mD+AZ7BA4hkfnI7r0/xPbkf7YvfB9UjBXCiD/6Dzhiv9bE=
X-Gm-Gg: AYBFou1/s9eISnRSMF4cRLZX/pDrxnbuYMuIp8ndlcUY6AghfH/LeLEvRs9FFIb3zXD
	2Yvz2F3wfCaMbeItq+4+dGE0K3Kjyeffbpbl62gNcIX3pjKsRoDLAL22KAoqZcO22sUkvjzttPB
	ukSfwtWj6/iSrF6TUCkomQ37Cf+bjq4PA/JtlGMfQYkHOxQsFANrrHhbtAELpA+T7lK2M8oh6tN
	cHMtCOkYz2GH0vdbP6xNq8mhZpCPeYMmJmdZEiOloCtTuWe4b2rrgtYhada18Ny6uHPpZlhIfqs
	ZO/26sB0pZ8OXvHscO1QOAV+70o0nW8da6hcKNtyDwmu+nlh/8Mqfvi4C7VDOySJCPJ2XSgqoqv
	gnM0A5oxY8/CGGiG9zoFG4QTpdxsEQycNqlnrbruFAU7M/3EffRbCPBd+UHYdgn/wknSOfgrNev
	SeGGJUBPrWkwiTWnKFw9j5fsg3JIVfScBse76e5IRAuzlcXLRBBaIWYYTlIhc=
X-Received: by 2002:a17:902:fc84:b0:2cf:4339:aaa with SMTP id d9443c01a7336-2d93f9f9d7amr34369695ad.12.1788170451338;
        Mon, 31 Aug 2026 03:00:51 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d75963a250sm32609235ad.31.2026.08.31.03.00.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 03:00:50 -0700 (PDT)
Date: Mon, 31 Aug 2026 18:00:32 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH 3/3] phy: core: Add phy bulk data helper functions
Message-ID: <apVOES6c42e_NBbe@inochi.infowork>
References: <20260831025319.94886-1-inochiama@gmail.com>
 <20260831025506.95548-1-inochiama@gmail.com>
 <20260831025506.95548-3-inochiama@gmail.com>
 <apVJW6H8_y0uiVtj@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <apVJW6H8_y0uiVtj@ashevche-desk.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_030052_503810_E16E225B 
X-CRM114-Status: GOOD (  39.06  )
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

On Mon, Aug 31, 2026 at 12:28:59PM +0300, Andy Shevchenko wrote:
> On Mon, Aug 31, 2026 at 10:55:05AM +0800, Inochi Amaoto wrote:
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
> > + * of_phy_get_parent_count() - Get the number of phys of a device node
> > + * @np: device_node for which to get the phy
> > + *
> > + * Return: the phy count if successful, 0 if no phy handle is found,
> > + * negative error value if error occurs.
> 
> Just for the reference, here is the correct format of the kernel-doc!
> 
> > + */
> > +static int of_phy_get_parent_count(const struct device_node *np)
> > +{
> > +	int count;
> > +
> > +	count = of_count_phandle_with_args(np, "phys", "#phy-cells");
> 
> > +	if (count == -ENOENT)
> > +		return 0;
> 
> Why? And if so, the function perhaps needs to return unsigned type. Also
> kernel-doc says about negative error codes.
> 

There is a special reason for -ENOENT is the of_count_phandle_with_args()
return -ENOENT if is can not find "phys" property. I think it is the case
that there is no phy required for this device. So I judge it and return
0. For other errors, they should not be translated so return them as they
are.

> > +	return count;
> > +}
> 
> ...
> 
> > +void phy_bulk_put(struct device *dev, int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	if (!phys)
> > +		return;
> 
> > +	while (--num_phys >= 0) {
> 
> It's hard to follow.
> 
> 	while (num_phys--) {
> 
> will do the job. Ditto for other similar cases.
> 

Thanks.

> > +		if (phys[num_phys].phy)
> > +			phy_put(dev, phys[num_phys].phy);
> > +		phys[num_phys].phy = NULL;
> > +	}
> > +}
> 
> ...
> 
> > +static int __phy_bulk_get(struct device *dev, int num_phys,
> > +			  struct phy_bulk_data *phys, bool optional)
> > +{
> > +	int ret;
> 
> > +	int i;
> 
> Do you expect num_phys to be negative?
> 
> static int __phy_bulk_get(struct device *dev, unsigned int num_phys,
> ...
> 	unsigned int i;
> 
> Same comment to the rest of the similar changes.
> 

No, all should be postive, this is a mistake I have made, thanks
for pointing out.

> > +
> > +	for (i = 0; i < num_phys; i++)
> > +		phys[i].phy = NULL;
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		phys[i].phy = phy_get(dev, phys[i].id);
> 
> 		ret = PTR_ERR_OR_ZERO(...);
> 
> > +		if (IS_ERR(phys[i].phy)) {
> 
> 		if (ret) {
> 
> > +			ret = PTR_ERR(phys[i].phy);
> > +			phys[i].phy = NULL;
> > +
> > +			if (ret == -ENODEV && optional)
> > +				continue;
> > +
> > +			dev_err_probe(dev, ret,
> > +				      "Failed to get phy: (%s)\n",
> 
> There is room on the previous line.
> 
> > +				      phys[i].id);
> > +			goto err;
> > +		}
> > +	}
> > +
> > +	return 0;
> > +
> > +err:
> > +	phy_bulk_put(dev, i, phys);
> > +
> > +	return ret;
> > +}
> 
> ...
> 
> > + * Return: %0 if successful, a negative error code otherwise
> 
> Note, the reference to 0 is inconsistent with the previous changes.
> Make it there [of_phy_get_parent_count()] to follow.
> 

Thanks for this information.

> ...
> 
> > +static int of_phy_bulk_get_by_index(struct device_node *np, int num_phys,
> > +				    struct phy_bulk_data *phys)
> > +{
> > +	int ret, i;
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		phys[i].id = NULL;
> > +		phys[i].phy = NULL;
> > +	}
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		of_property_read_string_index(np, "phy-names", i,
> > +					      &phys[i].id);
> 
> The line limit is exactly 80, please fix your editor and double check that you
> use as much room as available (with the correction on the logical splits where
> it makes sense).
> 

Yes, you are right, I misjudge this as my completion plugin output the
arguments name. I will change that.

> > +
> > +		phys[i].phy = of_phy_get_by_index(np, i);
> 
> 		ret = PTR_ERR_OR_ZERO(...);
> 
> ?
> 

Right, I missed this.

> > +		if (IS_ERR(phys[i].phy)) {
> > +			ret = PTR_ERR(phys[i].phy);
> > +			phys[i].phy = NULL;
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
> > +int of_phy_bulk_get_all(struct device_node *np, struct phy_bulk_data **phys)
> > +{
> > +	struct phy_bulk_data *phy_bulk;
> > +	int num_phys;
> > +	int ret;
> > +
> > +	*phys = NULL;
> 
> > +	if (!np)
> > +		return 0;
> 
> Dup check? The OF APIs are usually NULL-aware.
> Same Q to the ress of the code.
> 

Thanks, I will remove them.

> > +	num_phys = of_phy_get_parent_count(np);
> > +	if (num_phys <= 0)
> > +		return num_phys;
> > +
> > +	phy_bulk = kmalloc_objs(*phy_bulk, num_phys);
> > +	if (!phy_bulk)
> > +		return -ENOMEM;
> > +
> > +	ret = of_phy_bulk_get_by_index(np, num_phys, phy_bulk);
> > +	if (ret) {
> > +		kfree(phy_bulk);
> > +		return ret;
> > +	}
> > +
> > +	*phys = phy_bulk;
> > +
> > +	return num_phys;
> > +}
> 
> ...
> 
> > +struct phy_bulk_devres {
> > +	struct phy_bulk_data *phys;
> > +	int num_phys;
> 
> Why signed?
> 

My mistake. It always needs to be unsigned.

> > +	bool free_phys;
> > +};
> 
> ...
> 
> I stopped here. It's too many stuff in a single patch. Please, split to two for
> a starter:
> - non-devm additions
> - devm coverage
> 

Sorry for a bad time, I will do a better check and fix them. And I will split
the patch into two in the next version.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
