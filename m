Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D348FC77B6F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Apr 2023 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTw8BsU2RecYxyMSKdMGQfNUmHHSamPHeDRDSbnbPrM=; b=P20AkuHngP4zej
	9OwHeSbAfYbTJp5bX1uTA6RHOIumYjKbuNGvz4QId8DaMcRAIKV6kv7EA0YJjqf3BNuY4weqfZKOD
	OjAhAZMR5w1j11geoTVGDEr5e6QKxGsD93/pO1w+AR3t21T4M5QZCbW4qiJFLa+9JkOb8HEt3xS+n
	H3vaWMqCCC9P45O6yXz0mQo2t3CXukLZBhG27IFW5lG4eJFKYrflP2PIAgcm9wjgjVzfnGpe6+1lm
	55vgaOFuVlKsS0SPNUWTIIDcrEsg2hQAy378wfa5f8f8/5kpo1bVFDQt43AWWbYcl0WNrdrTlcYx/
	uLzmhDZW5Siz5VdSEy7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdeP-003rzH-1J;
	Wed, 12 Apr 2023 16:48:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmdeM-003ryT-0D
	for linux-phy@lists.infradead.org;
	Wed, 12 Apr 2023 16:48:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 89F4362C24;
	Wed, 12 Apr 2023 16:48:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AA1EC433EF;
	Wed, 12 Apr 2023 16:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681318129;
	bh=7qe6tDINt8atXyxbretT9jduzqXkPutQK0imrEiy+jo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PZUq7itMDWtTyuJxZZ7hnxLSxoYqyEqPpkXLHoOo/ISgDljUXmwlYcrACkWfi63dm
	 VSdnEw+KjcR53FZqpWqbjLJ/IFcd5KfkKeWCBrUkilEQgJ610Uu5u0qBaYPVSumBQN
	 mOA0mYad6qXgUJ4TtNAllT4nhdguqyPRwPQfSrV9aH9n2Vn1hyGrGbQtP0+x2fusCT
	 3SBxZn4jYNjwwf7pN86zhx6qnlKSzn1f4jENG0ybKUck1c7OXDvbtACohDwAvGQUod
	 VURAs4el3aGXSunUoOLQhNK0FSgG4Tx5759uloWOYmHfq1zz1Sl1UwsBQVMG5DLm6q
	 xWsS0OXK2LvLA==
Date: Wed, 12 Apr 2023 22:18:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Herve Codina <herve.codina@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 2/4] phy: Extend API to support 'status' get and
 notification
Message-ID: <ZDbg7HMj+x88QXwN@matsya>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
 <20230323103154.264546-3-herve.codina@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230323103154.264546-3-herve.codina@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230412_094850_179844_3DAFEEA3 
X-CRM114-Status: GOOD (  40.91  )
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

On 23-03-23, 11:31, Herve Codina wrote:
> The PHY API provides functions to control and pass information from the
> PHY consumer to the PHY provider.
> There is no way for the consumer to get direct information from the PHY
> or be notified by the PHY.
> 
> To fill this hole, two API function are provided:
> 
> - phy_get_status()
>   This function can be used to get a "status" from the PHY. It is built
>   as the same ways as the configure() function. The status information
>   present in the status retrieved depends on the PHY's phy_mode.
>   This allows to get a "status" depending on the kind of PHY.

what does 'status' mean and communicate to used? How does having this
help?

> 
> - phy_atomic_notifier_(un)register()
>   These functions can be used to register/unregister an atomic notifier
>   block. The event available at this time is the PHY_EVENT_STATUS status
>   event which purpose is to signal some changes in the status available
>   using phy_get_status().
> 
> An new kind of PHY is added: PHY_MODE_BASIC.
> This new kind of PHY represents a basic PHY offering a basic status This
> status contains a link state indication.
> With the new API, a link state indication can be retrieve using
> phy_get_status() and link state changes can be notified.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/phy/phy-core.c        | 88 ++++++++++++++++++++++++++++++++++
>  include/linux/phy/phy-basic.h | 27 +++++++++++
>  include/linux/phy/phy.h       | 89 ++++++++++++++++++++++++++++++++++-
>  3 files changed, 203 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/phy/phy-basic.h
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 9951efc03eaa..c7b568b99dce 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -551,6 +551,94 @@ int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
>  }
>  EXPORT_SYMBOL_GPL(phy_validate);
>  
> +/**
> + * phy_get_status() - Gets the phy status
> + * @phy: the phy returned by phy_get()
> + * @status: the status to retrieve
> + *
> + * Used to get the PHY status. phy_init() must have been called
> + * on the phy. The status will be retrieved from the current phy mode,
> + * that can be changed using phy_set_mode().
> + *
> + * Return: %0 if successful, a negative error code otherwise
> + */
> +int phy_get_status(struct phy *phy, union phy_status *status)
> +{
> +	int ret;
> +
> +	if (!phy)
> +		return -EINVAL;
> +
> +	if (!phy->ops->get_status)
> +		return -EOPNOTSUPP;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->get_status(phy, status);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_get_status);
> +
> +/**
> + * phy_atomic_notifier_register() - Registers an atomic notifier
> + * @phy: the phy returned by phy_get()
> + * @nb: the notifier block to register
> + *
> + * Used to register a notifier block on PHY events. phy_init() must have
> + * been called on the phy.
> + * The notifier function given in the notifier_block must not sleep.
> + * The available PHY events are present in enum phy_events
> + *
> + * Return: %0 if successful, a negative error code otherwise
> + */
> +int phy_atomic_notifier_register(struct phy *phy, struct notifier_block *nb)
> +{
> +	int ret;
> +
> +	if (!phy)
> +		return -EINVAL;
> +
> +	if (!phy->ops->atomic_notifier_register ||
> +	    !phy->ops->atomic_notifier_unregister)
> +		return -EOPNOTSUPP;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->atomic_notifier_register(phy, nb);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_atomic_notifier_register);
> +
> +/**
> + * phy_atomic_notifier_unregister() - Unregisters an atomic notifier
> + * @phy: the phy returned by phy_get()
> + * @nb: the notifier block to unregister
> + *
> + * Used to unregister a notifier block. phy_init() must have
> + * been called on the phy.
> + *
> + * Return: %0 if successful, a negative error code otherwise
> + */
> +int phy_atomic_notifier_unregister(struct phy *phy, struct notifier_block *nb)
> +{
> +	int ret;
> +
> +	if (!phy)
> +		return -EINVAL;
> +
> +	if (!phy->ops->atomic_notifier_unregister)
> +		return -EOPNOTSUPP;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->atomic_notifier_unregister(phy, nb);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_atomic_notifier_unregister);
> +
>  /**
>   * _of_phy_get() - lookup and obtain a reference to a phy by phandle
>   * @np: device_node for which to get the phy
> diff --git a/include/linux/phy/phy-basic.h b/include/linux/phy/phy-basic.h
> new file mode 100644
> index 000000000000..95668c610c78
> --- /dev/null
> +++ b/include/linux/phy/phy-basic.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2023 CS GROUP France
> + *
> + * Author: Herve Codina <herve.codina@bootlin.com>
> + */
> +
> +#ifndef __PHY_BASIC_H_
> +#define __PHY_BASIC_H_
> +
> +#include <linux/types.h>
> +
> +/**
> + * struct phy_status_basic - Basic PHY status
> + *
> + * This structure is used to represent the status of a Basic phy.
> + */
> +struct phy_status_basic {
> +	/**
> +	 * @link_state:
> +	 *
> +	 * Link state. true, the link is on, false, the link is off.
> +	 */
> +	bool link_is_on;
> +};
> +
> +#endif /* __PHY_DP_H_ */
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 3a570bc59fc7..40370d41012b 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -16,6 +16,7 @@
>  #include <linux/pm_runtime.h>
>  #include <linux/regulator/consumer.h>
>  
> +#include <linux/phy/phy-basic.h>
>  #include <linux/phy/phy-dp.h>
>  #include <linux/phy/phy-lvds.h>
>  #include <linux/phy/phy-mipi-dphy.h>
> @@ -42,7 +43,8 @@ enum phy_mode {
>  	PHY_MODE_MIPI_DPHY,
>  	PHY_MODE_SATA,
>  	PHY_MODE_LVDS,
> -	PHY_MODE_DP
> +	PHY_MODE_DP,
> +	PHY_MODE_BASIC,
>  };
>  
>  enum phy_media {
> @@ -67,6 +69,22 @@ union phy_configure_opts {
>  	struct phy_configure_opts_lvds		lvds;
>  };
>  
> +/**
> + * union phy_status - Opaque generic phy status
> + *
> + * @basic:	Status availbale phys supporting the Basic phy mode.
> + */
> +union phy_status {
> +	struct phy_status_basic		basic;
> +};
> +
> +/**
> + * phy_event - event available for notification
> + */
> +enum phy_event {
> +	PHY_EVENT_STATUS,	/* Event notified on phy_status changes */
> +};
> +
>  /**
>   * struct phy_ops - set of function pointers for performing phy operations
>   * @init: operation to be performed for initializing phy
> @@ -120,6 +138,45 @@ struct phy_ops {
>  	 */
>  	int	(*validate)(struct phy *phy, enum phy_mode mode, int submode,
>  			    union phy_configure_opts *opts);
> +
> +	/**
> +	 * @get_status:
> +	 *
> +	 * Optional.
> +	 *
> +	 * Used to get the PHY status. phy_init() must have
> +	 * been called on the phy.
> +	 *
> +	 * Returns: 0 if successful, an negative error code otherwise
> +	 */
> +	int	(*get_status)(struct phy *phy, union phy_status *status);
> +
> +	/**
> +	 * @atomic_notifier_register:
> +	 *
> +	 * Optional.
> +	 *
> +	 * Used to register a notifier block on PHY events. phy_init() must have
> +	 * been called on the phy.
> +	 * The notifier function given in the notifier_block must not sleep.
> +	 * The available PHY events are present in enum phy_events
> +	 *
> +	 * Returns: 0 if successful, an negative error code otherwise
> +	 */
> +	int	(*atomic_notifier_register)(struct phy *phy, struct notifier_block *nb);
> +
> +	/**
> +	 * @atomic_notifier_unregister:
> +	 *
> +	 * Mandatoty if @atomic_notifier_register is set.
> +	 *
> +	 * Used to unregister a notifier block on PHY events. phy_init() must have
> +	 * been called on the phy.
> +	 *
> +	 * Returns: 0 if successful, an negative error code otherwise
> +	 */
> +	int	(*atomic_notifier_unregister)(struct phy *phy, struct notifier_block *nb);
> +
>  	int	(*reset)(struct phy *phy);
>  	int	(*calibrate)(struct phy *phy);
>  	void	(*release)(struct phy *phy);
> @@ -234,6 +291,10 @@ int phy_set_speed(struct phy *phy, int speed);
>  int phy_configure(struct phy *phy, union phy_configure_opts *opts);
>  int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
>  		 union phy_configure_opts *opts);
> +int phy_get_status(struct phy *phy, union phy_status *status);
> +int phy_atomic_notifier_register(struct phy *phy, struct notifier_block *nb);
> +int phy_atomic_notifier_unregister(struct phy *phy, struct notifier_block *nb);
> +
>  
>  static inline enum phy_mode phy_get_mode(struct phy *phy)
>  {
> @@ -412,6 +473,32 @@ static inline int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
>  	return -ENOSYS;
>  }
>  
> +static inline int phy_get_status(struct phy *phy, union phy_status *status)
> +{
> +	if (!phy)
> +		return 0;
> +
> +	return -ENOSYS;
> +}
> +
> +static inline int phy_atomic_notifier_register(struct phy *phy,
> +					       struct notifier_block *nb)
> +{
> +	if (!phy)
> +		return 0;
> +
> +	return -ENOSYS;
> +}
> +
> +static inline int phy_atomic_notifier_unregister(struct phy *phy,
> +						 struct notifier_block *nb)
> +{
> +	if (!phy)
> +		return 0;
> +
> +	return -ENOSYS;
> +}
> +
>  static inline int phy_get_bus_width(struct phy *phy)
>  {
>  	return -ENOSYS;
> -- 
> 2.39.2
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
