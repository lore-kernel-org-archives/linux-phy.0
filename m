Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12255CA0EF8
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 20:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kF5m9MfVy53J/ReGt/VaH9zDh0YGzHcnkWpJ/l2rPHo=; b=KwIjIlYS9EoSBA
	IKrC6QBCIR/I0IQq1VDm2WuA8OE0cBD1q6TJ6RZ4MsY9fkofsD9Ztse3+1bPJr/n7O7NcmaJZcd1v
	kv9CmKrJ0XPID8brsSw5JbYaKe7+dTLktbwL6ru0NvHvPLKHin8b6kCs0qOGQlsc+VcLyuLAkEa2g
	hG+hdgtAZEva0KMrDoZyUMR+rFhZTVvfzqLXF1OIWsxdYdCO+DBew5huzYNunHun8B23+FTrqRSuA
	izkcHzFLBPHkRK/4GiJR+2BiaP9q4Vlu+VbcyUAzx5mnkecdpWQdqlYX0/ttXI18TbXLYAeu2bjMt
	sofyczt2JsmFoDmB5w4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uopmF-0000000EuQf-3GPG;
	Wed, 20 Aug 2025 20:51:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uollY-0000000EPjJ-3Wlq;
	Wed, 20 Aug 2025 16:34:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4CE275C673D;
	Wed, 20 Aug 2025 16:34:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12721C4CEE7;
	Wed, 20 Aug 2025 16:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755707664;
	bh=1SmINIXApk/rDoKKx82uVKPJSOdJg4DUAj+yAYn/Qlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P25E8I0+N9soufsYxe6o1473U2YqA0vAMqaUeSoWcBvu3nz5DZxu7YpXwArUa4dp0
	 C7Q6nq6HFLweUc1x7FKbAmYPsTJ5jDweX7ErKBDU4+icafh84YyWVK15Sw2vHUYiC6
	 8ZqdFgzXHrNG7BHasTre09//Aj7CKO/ttOudvO3EuFyZ4ec0jiJGif3jRkX5ILY2LT
	 fL08dCXQdRS+OX8ZFs0TBKqYE4KuiU2LxRWv0gQZoBOXWArDZq3PF6PH1gnf0SpbtB
	 6DS4v3H30/RNHz9TM4IsQaXcLzZT4Yzat4gRjTj8fA1MDDSzZCUCgZzI8PaClHTGSG
	 fmaMdfOtn9TtQ==
Date: Wed, 20 Aug 2025 22:04:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, kernel-team@android.com,
	William Mcvicker <willmcvicker@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] phy: add new phy_notify_state() api
Message-ID: <aKX5C9Xlx2CSJraY@vaman>
References: <20250813-phy-notify-pmstate-v3-0-3bda59055dd3@linaro.org>
 <20250813-phy-notify-pmstate-v3-1-3bda59055dd3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250813-phy-notify-pmstate-v3-1-3bda59055dd3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_093424_964540_5D11789C 
X-CRM114-Status: GOOD (  23.49  )
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

On 13-08-25, 16:00, Peter Griffin wrote:
> Add a new phy_notify_state() api that notifies and configures a phy for a
> given state transition.
> 
> This is intended to be by phy drivers which need to do some runtime
                    ^^^^^^^^^^
Missing 'used' possibly? 

> configuration of parameters that can't be handled by phy_calibrate() or
> phy_power_{on|off}().
> 
> The first usage of this API is in the Samsung UFS phy that needs to issue
> some register writes when entering and exiting the hibernate link state.
> 
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/phy/phy-core.c  | 25 +++++++++++++++++++++++++
>  include/linux/phy/phy.h | 19 +++++++++++++++++++
>  2 files changed, 44 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 04a5a34e7a950ae94fae915673c25d476fc071c1..60be8af984bf06649ef00e695d0ed4ced597cdb9 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -520,6 +520,31 @@ int phy_notify_disconnect(struct phy *phy, int port)
>  }
>  EXPORT_SYMBOL_GPL(phy_notify_disconnect);
>  
> +/**
> + * phy_notify_state() - phy state notification
> + * @phy: the PHY returned by phy_get()
> + * @state: the PHY state
> + *
> + * Notify the PHY of a state transition. Used to notify and
> + * configure the PHY accordingly.
> + *
> + * Returns: %0 if successful, a negative error code otherwise
> + */
> +int phy_notify_state(struct phy *phy, union phy_notify state)
> +{
> +	int ret;
> +
> +	if (!phy || !phy->ops->notify_phystate)
> +		return 0;
> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->notify_phystate(phy, state);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_notify_state);
> +
>  /**
>   * phy_configure() - Changes the phy parameters
>   * @phy: the phy returned by phy_get()
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index 13add0c2c40721fe9ca3f0350d13c035cd25af45..664d0864c3a5042949cb121e982368fe0a97827f 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -53,6 +53,15 @@ enum phy_media {
>  	PHY_MEDIA_DAC,
>  };
>  
> +enum phy_ufs_state {
> +	PHY_UFS_HIBERN8_ENTER,
> +	PHY_UFS_HIBERN8_EXIT,
> +};
> +
> +union phy_notify {
> +	enum phy_ufs_state ufs_state;
> +};
> +
>  /**
>   * union phy_configure_opts - Opaque generic phy configuration
>   *
> @@ -83,6 +92,7 @@ union phy_configure_opts {
>   * @set_speed: set the speed of the phy (optional)
>   * @reset: resetting the phy
>   * @calibrate: calibrate the phy
> + * @notify_phystate: notify and configure the phy for a particular state
>   * @release: ops to be performed while the consumer relinquishes the PHY
>   * @owner: the module owner containing the ops
>   */
> @@ -132,6 +142,7 @@ struct phy_ops {
>  	int	(*connect)(struct phy *phy, int port);
>  	int	(*disconnect)(struct phy *phy, int port);
>  
> +	int	(*notify_phystate)(struct phy *phy, union phy_notify state);
>  	void	(*release)(struct phy *phy);
>  	struct module *owner;
>  };
> @@ -255,6 +266,7 @@ int phy_reset(struct phy *phy);
>  int phy_calibrate(struct phy *phy);
>  int phy_notify_connect(struct phy *phy, int port);
>  int phy_notify_disconnect(struct phy *phy, int port);
> +int phy_notify_state(struct phy *phy, union phy_notify state);
>  static inline int phy_get_bus_width(struct phy *phy)
>  {
>  	return phy->attrs.bus_width;
> @@ -412,6 +424,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
>  	return -ENOSYS;
>  }
>  
> +static inline int phy_notify_phystate(struct phy *phy, union phy_notify state)
> +{
> +	if (!phy)
> +		return 0;
> +	return -ENOSYS;

Should be -ENOSYS either way, right?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
