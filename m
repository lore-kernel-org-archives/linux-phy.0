Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9869CA5FCE
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 11:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=512nJ1qFfLAytbfTQEDvJU2yNq2JUGRtyUx2j5GOoP4=; b=S2cItN+23L2h2G
	QofgAO2P2rDEptXgyRPUWQbvyv4klQpL4vIoztOxJqgHmIJM2uLJj73WjNhiLulTWsbJ0uvwuhUpA
	i+a5rnWbv0Iijr1EfCD4AV0f1QIvVxch6Tf/kTa2saoytayul9Hz17xPr6JMZ8YiOB8qD9zS6bRlM
	v+NPAX4aeRBk0B78QMRf3kPzBuMjJSrdT8/CPM5xI0nqTtRVgCkYAotdTZQDbLN6OMhs7SC1tiM7X
	Ie1GJl/YgMNOPQ7A/3S/6gvZqVBvy0eT9/gIApGOpA/7rvi85BfxejQv0/kALwTrCCQaO0B7IPUfe
	+XbXYVloP261Myp+Gmjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDh5I-0000000GLrJ-126L;
	Mon, 05 Oct 2026 11:42:20 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDh5D-0000000GLqU-2w9L
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 11:42:19 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-88aea027391so729734b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 04:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791200534; x=1791805334; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4vqyfelfFGSwkjEBG7zfjrJS3enkPtGtmBJ59OEhynQ=;
        b=gDSAGzyFG3jw9UJbA/qC147q5L2Uc2hwy77aw7hA0Y6zuyJ0dys4oZpJJmvWjXuBLR
         gcOhRL/K9ZPMoy58KFSXYgs3MZnRDr19FAH+PQ5YMsko2sQpIc/l9LTheQhgHUH76tgk
         6Txzzuc6cQQHQQOgaksSrUoRz4513/uAz8asfcO4DnC+Qn/KCFMpH6KmJZFc/Aq0FPqm
         YNFvLma+ghZ2vlea0OP16JzIjsA90G+ajNwOHaH01t8MeB6l1f25ztp8P8GEOilMZIio
         aWzZqK8/MCWdASqaoiFgWQ7pgYDVCtPKW+ntKxRxIU2eKC9u8hxkEWDCI9LKcqCGNBWc
         rCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791200534; x=1791805334;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4vqyfelfFGSwkjEBG7zfjrJS3enkPtGtmBJ59OEhynQ=;
        b=KJqdZI9PSG1gRwHCBVjnouZ0rcoIRvlRjzhTCNkpsv1coKq/miHl3oUrF7iq3r081w
         KGyk0O4WRN4hjQuyhoT/JoXt9OzFe1lOcVRpNe/eTwzr56SCFTb6zI7gJ4GHniJF2Fq9
         8qXA+g9is9roHXghkEa5gP/21cSm56yAHMiD9WL0tcrg8iwOi/vpKcgG0ddHC2vD+Yhv
         SsqDSCNQrejRs+XgxW+wZmsfGF92mIfwUZU3uhTT2PK20YXTLYmoDDz1kYgj7Phc6zLv
         YNt3BZG5dMJNhDXMXR/MxNqPyjuPejXcx/POUtrn+/PAQ6r5XKTZH3w960LO3ydfxmG6
         rdpg==
X-Forwarded-Encrypted: i=1; AKwUvBzSU1LAiKfiMV2+b0WMOdG79t/WBH4Rt/llSZKBd3FrJBe7FJDO82+FWkJpDrpa4CAvga0t89HgZyU=@lists.infradead.org
X-Gm-Message-State: AFuF++lN8DGq5qusXfB3TJ6l8lVvdG09sgIfzUwimNwPvXzuZndDHkVY
	crze7pOK5tvNUx6kWU5tL1l061OE943jb+Ns9tXs5w36ZxulcGvKLN9f
X-Gm-Gg: AYBFou0eewAz1As85IOb6zCBCziuXC7oVigpMIh1IkM+0sSi76OU4rMDSkdRc7gdCd5
	Zq+6igDbFmmGU3rTr+g6p5ijUDzLGSTNkRNRU3cv1Tfzvq3BrPwC92zW/dZO52js+eZW2ZUKFaf
	q5JmaaZtMSryPYwZIDZ4tSHZpv8I+nH2XK/w1fqGxa+IyJDMB2Hr11lBeFpLJpXqxnNu97ivnSn
	t/sVK6Bmjs1onVw+9JE+LJ3K4x8EGaP050c+mt+2Yh9GN0+FmpAi+1m337Nc1Dn0DEZICfPKb64
	+psS4vumMbpNfiLtvJwHz+zWW8O6jRsFX6x+YzjUS/JIRcU0smTqTm/6Usa0EZzeOFXzDFREIbQ
	KSySp7S38pu4eI8ilOsiekBbU4SO+yb6HdhddZx//i4tnZdw6KR/oeIBKEM6meu6DxL7z90eybS
	QgbifPDjqAToCDzquGFmmvq4Jz2Z+Ga8WCfptkiwXd0YOevW7jWvIHNGk1FVN5pEIRsnh1
X-Received: by 2002:a05:6a21:6e92:b0:3df:c9eb:126a with SMTP id adf61e73a8af0-3e0d6cdd667mr6604767637.45.1791200533496;
        Mon, 05 Oct 2026 04:42:13 -0700 (PDT)
Received: from localhost ([2001:19f0:8000:3e6e:5400:6ff:fe38:3d01])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88b0c3a39f6sm3327875b3a.28.2026.10.05.04.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 04:42:12 -0700 (PDT)
Date: Mon, 5 Oct 2026 19:41:52 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Inochi Amaoto <inochiama@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <asOMP3uJJmdpfvtt@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
 <asN4I1cpVb5HLNu7@parshuram>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <asN4I1cpVb5HLNu7@parshuram>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_044215_755775_E19E5826 
X-CRM114-Status: GOOD (  39.37  )
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

On Mon, Oct 05, 2026 at 12:12:51PM +0200, Vinod Koul wrote:
> On 29-09-26, 16:52, Inochi Amaoto wrote:
> > Add several helper functions that allow drivers to get several phy
> > consumers in one operation. If any of the phy cannot be acquired then
> > any phys that were got will be put before returning to the caller.
> 
> Do we have many such examples? Phy is not a many resource like
> clock/regulators... Do we really need this. How many in kernel users
> will benefit from this API?
> 


I guess the following driver may benefit from bulk api. Most of them
are PCIe drivers....

drivers/ata/ahci_imx.c
drivers/pci/controller/cadence/pcie-cadence.c
drivers/pci/controller/dwc/pci-dra7xx.c
drivers/pci/controller/dwc/pcie-tegra194.c
drivers/pci/controller/pcie-rockchip.c
drivers/pci/controller/dwc/pcie-qcom.c

Note: I mean the bulk api, not just the things I added. I guess many
may want devm_phy_bulk_get() or devm_of_phy_bulk_get() instead of
devm_phy_bulk_get_all().

Regards,
Inochi

> > 
> > This can relieve the driver owners' life who needs to handle many phys,
> > as well as each phy error reporting.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  drivers/phy/phy-core.c  | 253 ++++++++++++++++++++++++++++++++++++++++
> >  include/linux/phy/phy.h |  55 +++++++++
> >  2 files changed, 308 insertions(+)
> > 
> > diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> > index 8fbaea003b90..5b76c006575b 100644
> > --- a/drivers/phy/phy-core.c
> > +++ b/drivers/phy/phy-core.c
> > @@ -1004,6 +1004,259 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
> >  }
> >  EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);
> >  
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
> > +
> > +	if (count == -ENOENT)
> > +		return 0;
> > +
> > +	return count;
> > +}
> > +
> > +/**
> > + * phy_bulk_put() - release a set of PHYs
> > + * @dev: device that acquired the PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data with PHYs set
> > + *
> > + * Releases the PHY references in reverse order and clears the PHY pointer in
> > + * each entry. The caller owns the phys array and is responsible for freeing it
> > + * if necessary.
> > + */
> > +static void phy_bulk_put(struct device *dev, unsigned int num_phys,
> > +			 struct phy_bulk_data *phys)
> > +{
> > +	while (num_phys--) {
> > +		if (!IS_ERR_OR_NULL(phys[num_phys].phy))
> > +			phy_put(dev, phys[num_phys].phy);
> > +		phys[num_phys].phy = NULL;
> > +	}
> > +}
> > +
> > +/**
> > + * of_phy_bulk_put() - release a set of PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data with PHYs set
> > + *
> > + * Releases the PHY references in reverse order and clears the PHY pointer in
> > + * each entry. The caller owns the phys array and is responsible for freeing it
> > + * if necessary.
> > + */
> > +static void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	while (num_phys--) {
> > +		of_phy_put(phys[num_phys].phy);
> > +		phys[num_phys].phy = NULL;
> > +	}
> > +}
> > +
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
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		of_property_read_string_index(np, "phy-names", i, &phys[i].id);
> > +
> > +		phys[i].phy = of_phy_get_by_index(np, i);
> > +
> > +		ret = PTR_ERR_OR_ZERO(phys[i].phy);
> > +		if (ret) {
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
> > +
> > +/**
> > + * of_phy_bulk_get_all() - obtain all PHYs from a device node
> > + * @np: device node containing the PHY references
> > + * @phys: pointer to store the allocated array of struct phy_bulk_data
> > + *
> > + * Gets every PHY referenced by the phys property in index order. PHY names are
> > + * read from phy-names when present.
> > + *
> > + * Return: the number of PHYs on success, %0 if no PHYs are found, or a
> > + * negative error code otherwise
> > + */
> > +static int of_phy_bulk_get_all(struct device_node *np,
> > +			       struct phy_bulk_data **phys)
> > +{
> > +	struct phy_bulk_data *phy_bulk;
> > +	int num_phys;
> > +	int ret;
> > +
> > +	num_phys = of_phy_get_count(np);
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
> > +
> > +/**
> > + * phy_bulk_put_all() - release and free PHYs
> > + * @dev: device that acquired the PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data to release and free
> > + */
> > +static void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
> > +			     struct phy_bulk_data *phys)
> > +{
> > +	if (IS_ERR_OR_NULL(phys))
> > +		return;
> > +
> > +	phy_bulk_put(dev, num_phys, phys);
> > +	kfree(phys);
> > +}
> > +
> > +/**
> > + * phy_bulk_init() - initialize multiple PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data to initialize
> > + *
> > + * Initializes the PHYs in array order. If an initialization fails, all PHYs
> > + * initialized by this call are exited in reverse order.
> > + *
> > + * Return: %0 if successful, a negative error code otherwise
> > + */
> > +int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		ret = phy_init(phys[i].phy);
> > +		if (ret)
> > +			goto err;
> > +	}
> > +
> > +	return 0;
> > +
> > +err:
> > +	while (i--)
> > +		phy_exit(phys[i].phy);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(phy_bulk_init);
> > +
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
> > +}
> > +EXPORT_SYMBOL_GPL(phy_bulk_exit);
> > +
> > +/**
> > + * phy_bulk_power_on() - power on multiple PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data to power on
> > + *
> > + * Powers on the PHYs in array order. If a power-on operation fails, all PHYs
> > + * powered on by this call are powered off in reverse order.
> > + *
> > + * Return: %0 if successful, a negative error code otherwise
> > + */
> > +int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	unsigned int i;
> > +	int ret;
> > +
> > +	for (i = 0; i < num_phys; i++) {
> > +		ret = phy_power_on(phys[i].phy);
> > +		if (ret)
> > +			goto err;
> > +	}
> > +
> > +	return 0;
> > +
> > +err:
> > +	while (i--)
> > +		phy_power_off(phys[i].phy);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(phy_bulk_power_on);
> > +
> > +/**
> > + * phy_bulk_power_off() - power off multiple PHYs
> > + * @num_phys: number of entries in the phys array
> > + * @phys: array of struct phy_bulk_data to power off
> > + *
> > + * Powers off the PHYs in reverse array order. All PHYs are processed even if
> > + * an error occurs.
> > + *
> > + * Return: %0 if successful, the first negative error code otherwise
> > + */
> > +int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys)
> > +{
> > +	int ret = 0;
> > +	int err;
> > +
> > +	while (num_phys--) {
> > +		err = phy_power_off(phys[num_phys].phy);
> > +		if (err && !ret)
> > +			ret = err;
> > +	}
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(phy_bulk_power_off);
> > +
> >  /**
> >   * phy_create() - create a new phy
> >   * @dev: device that is creating the new phy
> > diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> > index ea47975e288a..77d9d74682b7 100644
> > --- a/include/linux/phy/phy.h
> > +++ b/include/linux/phy/phy.h
> > @@ -81,6 +81,18 @@ union phy_configure_opts {
> >  	struct phy_configure_opts_hdmi		hdmi;
> >  };
> >  
> > +/**
> > + * struct phy_bulk_data - Data used for bulk phy operations.
> > + *
> > + * @id: phy consumer ID
> > + */
> > +struct phy_bulk_data {
> > +	const char	*id;
> > +
> > +	/* private: Internal use */
> > +	struct phy	*phy;
> > +};
> > +
> >  /**
> >   * struct phy_ops - set of function pointers for performing phy operations
> >   * @init: operation to be performed for initializing phy
> > @@ -309,6 +321,12 @@ void devm_of_phy_provider_unregister(struct device *dev,
> >  	struct phy_provider *phy_provider);
> >  int phy_create_lookup(struct phy *phy, const char *con_id, const char *dev_id);
> >  void phy_remove_lookup(struct phy *phy, const char *con_id, const char *dev_id);
> > +
> > +int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys);
> > +int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys);
> > +int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys);
> > +int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys);
> > +
> >  #else
> >  static inline int phy_pm_runtime_get(struct phy *phy)
> >  {
> > @@ -493,6 +511,43 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
> >  	return ERR_PTR(-ENOSYS);
> >  }
> >  
> > +static inline int phy_bulk_check_disabled(unsigned int num_phys,
> > +					  struct phy_bulk_data *phys)
> > +{
> > +	if (!phys)
> > +		return 0;
> > +
> > +	for (unsigned int i = 0; i < num_phys; i++)
> > +		if (phys[i].phy)
> > +			return -EOPNOTSUPP;
> > +
> > +	return 0;
> > +}
> > +
> > +static inline int phy_bulk_init(unsigned int num_phys,
> > +				struct phy_bulk_data *phys)
> > +{
> > +	return phy_bulk_check_disabled(num_phys, phys);
> > +}
> > +
> > +static inline int phy_bulk_exit(unsigned int num_phys,
> > +				struct phy_bulk_data *phys)
> > +{
> > +	return phy_bulk_check_disabled(num_phys, phys);
> > +}
> > +
> > +static inline int phy_bulk_power_on(unsigned int num_phys,
> > +				    struct phy_bulk_data *phys)
> > +{
> > +	return phy_bulk_check_disabled(num_phys, phys);
> > +}
> > +
> > +static inline int phy_bulk_power_off(unsigned int num_phys,
> > +				     struct phy_bulk_data *phys)
> > +{
> > +	return phy_bulk_check_disabled(num_phys, phys);
> > +}
> > +
> >  static inline void of_phy_put(struct phy *phy)
> >  {
> >  }
> > -- 
> > 2.55.0
> 
> -- 
> ~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
