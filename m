Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C8CCA5FF0
	for <linux-phy@archiver.kernel.org>; Mon,  5 Oct 2026 10:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZ0Mram5R2eKx7WTWrQw82uKwnIrqdRcJmrHLVr4h84=; b=IYizoHE9O4ncRA
	ZlYN/YjHa5K0le/EUonER9fX5T0+IiTGMqNJBZQXUoGnNkBNb5oVCX+7qCOnMhHFwe9br7HPh0XXM
	y/LvrH0nCdq83rb6rMiE7rG2Xz8nZXivDWWZ9bQUZwm9DIyfX+Jpo2U38vylMv5W6uDyqj5fSKMBl
	qqa6XLcVE2+qHyLqE2YFhkn0+ZBhvkVRlBVJQgtozTr5GtROMrQMDN0BReEa6p5rj+b7mX1NSXDDA
	cp58hG3FtGfOikzqdluXNX/diICPG7vJ3pCvBzGST4Hn0nDrbS5VqlGfWY1KYqwp7Ziwwtfp2xJ3g
	z4lzM6p/bxnqQenB1WKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfgm-0000000G8Ph-3NgJ;
	Mon, 05 Oct 2026 10:12:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDfgk-0000000G8P7-3KHW
	for linux-phy@lists.infradead.org;
	Mon, 05 Oct 2026 10:12:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 648E541B6F;
	Mon,  5 Oct 2026 10:12:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97E4D1F000FF;
	Mon,  5 Oct 2026 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791195174;
	bh=9SNdcPGhwA6p0Y49OM4WNGclRIzBx9bpXy4BEe7n/TA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RYA6x7w65uDKnrsrTriIpnIqd6iuskr/4R4eySUnZwM3l9n5Uzt175TIkhm6/bfcu
	 PFmhNcDfdraZQvuVEkmxQJk9iAjyy/eKzP+0kOUJ2dznVRFD7152nw1oItmwas99PE
	 8CAKsD3aEozz2qbGs0YDocKl1hYr0qtzkM7nKHHqXjRxmgqu+dDS3andZ5X2LZt5g/
	 rXSzvV82WSySTCuYtiCWf+fNxVnZkkJMv2HiQxUonmq3Lvd7QpgbM831slyUONEYNu
	 9cDEE9MKkpxsflpnz7pUgFf5CXtxDl7iaD8MQC/NQ1yGKFoDWui9dWcxPKjeSjg1su
	 /mbBgKVKjZ0ng==
Date: Mon, 5 Oct 2026 12:12:51 +0200
From: Vinod Koul <vkoul@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rhys Tumelty <rhys@tumelty.co.uk>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <asN4I1cpVb5HLNu7@parshuram>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929085235.469515-4-inochiama@gmail.com>
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

On 29-09-26, 16:52, Inochi Amaoto wrote:
> Add several helper functions that allow drivers to get several phy
> consumers in one operation. If any of the phy cannot be acquired then
> any phys that were got will be put before returning to the caller.

Do we have many such examples? Phy is not a many resource like
clock/regulators... Do we really need this. How many in kernel users
will benefit from this API?

> 
> This can relieve the driver owners' life who needs to handle many phys,
> as well as each phy error reporting.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  drivers/phy/phy-core.c  | 253 ++++++++++++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h |  55 +++++++++
>  2 files changed, 308 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 8fbaea003b90..5b76c006575b 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -1004,6 +1004,259 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
>  }
>  EXPORT_SYMBOL_GPL(devm_of_phy_get_by_index);
>  
> +/**
> + * of_phy_get_count() - Get the number of phys of a device node
> + * @np: device_node for which to get the phy
> + *
> + * Return: the phy count if successful, %0 if no phy handle is found,
> + * negative error value if error occurs.
> + */
> +static int of_phy_get_count(const struct device_node *np)
> +{
> +	int count;
> +
> +	count = of_count_phandle_with_args(np, "phys", "#phy-cells");
> +
> +	if (count == -ENOENT)
> +		return 0;
> +
> +	return count;
> +}
> +
> +/**
> + * phy_bulk_put() - release a set of PHYs
> + * @dev: device that acquired the PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data with PHYs set
> + *
> + * Releases the PHY references in reverse order and clears the PHY pointer in
> + * each entry. The caller owns the phys array and is responsible for freeing it
> + * if necessary.
> + */
> +static void phy_bulk_put(struct device *dev, unsigned int num_phys,
> +			 struct phy_bulk_data *phys)
> +{
> +	while (num_phys--) {
> +		if (!IS_ERR_OR_NULL(phys[num_phys].phy))
> +			phy_put(dev, phys[num_phys].phy);
> +		phys[num_phys].phy = NULL;
> +	}
> +}
> +
> +/**
> + * of_phy_bulk_put() - release a set of PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data with PHYs set
> + *
> + * Releases the PHY references in reverse order and clears the PHY pointer in
> + * each entry. The caller owns the phys array and is responsible for freeing it
> + * if necessary.
> + */
> +static void of_phy_bulk_put(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	while (num_phys--) {
> +		of_phy_put(phys[num_phys].phy);
> +		phys[num_phys].phy = NULL;
> +	}
> +}
> +
> +static int of_phy_bulk_get_by_index(struct device_node *np,
> +				    unsigned int num_phys,
> +				    struct phy_bulk_data *phys)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i = 0; i < num_phys; i++) {
> +		phys[i].id = NULL;
> +		phys[i].phy = NULL;
> +	}
> +
> +	for (i = 0; i < num_phys; i++) {
> +		of_property_read_string_index(np, "phy-names", i, &phys[i].id);
> +
> +		phys[i].phy = of_phy_get_by_index(np, i);
> +
> +		ret = PTR_ERR_OR_ZERO(phys[i].phy);
> +		if (ret) {
> +			phys[i].phy = NULL;
> +			goto err;
> +		}
> +	}
> +
> +	return 0;
> +
> +err:
> +	of_phy_bulk_put(i, phys);
> +
> +	return ret;
> +}
> +
> +/**
> + * of_phy_bulk_get_all() - obtain all PHYs from a device node
> + * @np: device node containing the PHY references
> + * @phys: pointer to store the allocated array of struct phy_bulk_data
> + *
> + * Gets every PHY referenced by the phys property in index order. PHY names are
> + * read from phy-names when present.
> + *
> + * Return: the number of PHYs on success, %0 if no PHYs are found, or a
> + * negative error code otherwise
> + */
> +static int of_phy_bulk_get_all(struct device_node *np,
> +			       struct phy_bulk_data **phys)
> +{
> +	struct phy_bulk_data *phy_bulk;
> +	int num_phys;
> +	int ret;
> +
> +	num_phys = of_phy_get_count(np);
> +	if (num_phys <= 0)
> +		return num_phys;
> +
> +	phy_bulk = kmalloc_objs(*phy_bulk, num_phys);
> +	if (!phy_bulk)
> +		return -ENOMEM;
> +
> +	ret = of_phy_bulk_get_by_index(np, num_phys, phy_bulk);
> +	if (ret) {
> +		kfree(phy_bulk);
> +		return ret;
> +	}
> +
> +	*phys = phy_bulk;
> +
> +	return num_phys;
> +}
> +
> +/**
> + * phy_bulk_put_all() - release and free PHYs
> + * @dev: device that acquired the PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data to release and free
> + */
> +static void phy_bulk_put_all(struct device *dev, unsigned int num_phys,
> +			     struct phy_bulk_data *phys)
> +{
> +	if (IS_ERR_OR_NULL(phys))
> +		return;
> +
> +	phy_bulk_put(dev, num_phys, phys);
> +	kfree(phys);
> +}
> +
> +/**
> + * phy_bulk_init() - initialize multiple PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data to initialize
> + *
> + * Initializes the PHYs in array order. If an initialization fails, all PHYs
> + * initialized by this call are exited in reverse order.
> + *
> + * Return: %0 if successful, a negative error code otherwise
> + */
> +int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i = 0; i < num_phys; i++) {
> +		ret = phy_init(phys[i].phy);
> +		if (ret)
> +			goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	while (i--)
> +		phy_exit(phys[i].phy);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_bulk_init);
> +
> +/**
> + * phy_bulk_exit() - exit multiple PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data to exit
> + *
> + * Exits the PHYs in reverse array order. All PHYs are processed even if an
> + * error occurs.
> + *
> + * Return: %0 if successful, the first negative error code otherwise
> + */
> +int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	int ret = 0;
> +	int err;
> +
> +	while (num_phys--) {
> +		err = phy_exit(phys[num_phys].phy);
> +		if (err && !ret)
> +			ret = err;
> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_bulk_exit);
> +
> +/**
> + * phy_bulk_power_on() - power on multiple PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data to power on
> + *
> + * Powers on the PHYs in array order. If a power-on operation fails, all PHYs
> + * powered on by this call are powered off in reverse order.
> + *
> + * Return: %0 if successful, a negative error code otherwise
> + */
> +int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	unsigned int i;
> +	int ret;
> +
> +	for (i = 0; i < num_phys; i++) {
> +		ret = phy_power_on(phys[i].phy);
> +		if (ret)
> +			goto err;
> +	}
> +
> +	return 0;
> +
> +err:
> +	while (i--)
> +		phy_power_off(phys[i].phy);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_bulk_power_on);
> +
> +/**
> + * phy_bulk_power_off() - power off multiple PHYs
> + * @num_phys: number of entries in the phys array
> + * @phys: array of struct phy_bulk_data to power off
> + *
> + * Powers off the PHYs in reverse array order. All PHYs are processed even if
> + * an error occurs.
> + *
> + * Return: %0 if successful, the first negative error code otherwise
> + */
> +int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys)
> +{
> +	int ret = 0;
> +	int err;
> +
> +	while (num_phys--) {
> +		err = phy_power_off(phys[num_phys].phy);
> +		if (err && !ret)
> +			ret = err;
> +	}
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_bulk_power_off);
> +
>  /**
>   * phy_create() - create a new phy
>   * @dev: device that is creating the new phy
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index ea47975e288a..77d9d74682b7 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -81,6 +81,18 @@ union phy_configure_opts {
>  	struct phy_configure_opts_hdmi		hdmi;
>  };
>  
> +/**
> + * struct phy_bulk_data - Data used for bulk phy operations.
> + *
> + * @id: phy consumer ID
> + */
> +struct phy_bulk_data {
> +	const char	*id;
> +
> +	/* private: Internal use */
> +	struct phy	*phy;
> +};
> +
>  /**
>   * struct phy_ops - set of function pointers for performing phy operations
>   * @init: operation to be performed for initializing phy
> @@ -309,6 +321,12 @@ void devm_of_phy_provider_unregister(struct device *dev,
>  	struct phy_provider *phy_provider);
>  int phy_create_lookup(struct phy *phy, const char *con_id, const char *dev_id);
>  void phy_remove_lookup(struct phy *phy, const char *con_id, const char *dev_id);
> +
> +int phy_bulk_init(unsigned int num_phys, struct phy_bulk_data *phys);
> +int phy_bulk_exit(unsigned int num_phys, struct phy_bulk_data *phys);
> +int phy_bulk_power_on(unsigned int num_phys, struct phy_bulk_data *phys);
> +int phy_bulk_power_off(unsigned int num_phys, struct phy_bulk_data *phys);
> +
>  #else
>  static inline int phy_pm_runtime_get(struct phy *phy)
>  {
> @@ -493,6 +511,43 @@ static inline struct phy *devm_of_phy_get_by_index(struct device *dev,
>  	return ERR_PTR(-ENOSYS);
>  }
>  
> +static inline int phy_bulk_check_disabled(unsigned int num_phys,
> +					  struct phy_bulk_data *phys)
> +{
> +	if (!phys)
> +		return 0;
> +
> +	for (unsigned int i = 0; i < num_phys; i++)
> +		if (phys[i].phy)
> +			return -EOPNOTSUPP;
> +
> +	return 0;
> +}
> +
> +static inline int phy_bulk_init(unsigned int num_phys,
> +				struct phy_bulk_data *phys)
> +{
> +	return phy_bulk_check_disabled(num_phys, phys);
> +}
> +
> +static inline int phy_bulk_exit(unsigned int num_phys,
> +				struct phy_bulk_data *phys)
> +{
> +	return phy_bulk_check_disabled(num_phys, phys);
> +}
> +
> +static inline int phy_bulk_power_on(unsigned int num_phys,
> +				    struct phy_bulk_data *phys)
> +{
> +	return phy_bulk_check_disabled(num_phys, phys);
> +}
> +
> +static inline int phy_bulk_power_off(unsigned int num_phys,
> +				     struct phy_bulk_data *phys)
> +{
> +	return phy_bulk_check_disabled(num_phys, phys);
> +}
> +
>  static inline void of_phy_put(struct phy *phy)
>  {
>  }
> -- 
> 2.55.0

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
