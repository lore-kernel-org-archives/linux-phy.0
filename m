Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8CA0C10DCE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 10:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXnfddyd7QeZgbv/MFJGUt1nzYvbZpPUFgN50tW8NVw=; b=X0BeK10PeHSQER
	0PiaMbDfBMSuNBeCkMeqiJV8+mwjWJSgXCutv5NWyTH/dPbUJJWAoFZSIo/MdESG6h6556Aa6pN4I
	PJmq8Sz1UoeNXA8lNTHFJ1+18sQ8M1pejkEphBCyRf/+7BCzkJ7ClEOrI/TI3O1L3bHxOkn58zIiP
	5QK+2C9TYknpCOBg240yalKLcyewVIn+4fSim9LCVomWevlKHvKcj6VmrwT84hBCx+4Vz13+iHeXR
	0VZYGfkKw46U/5JaQHUm6qvTNinLrsbnF2WMyDuQlb1dmIz2vButqyXQzHc15HsuF0Ax7iwhNZmjv
	7G7flXJLTQ34j0VJChaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBBDY-00CQcx-0K;
	Thu, 07 Dec 2023 10:02:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBBDV-00CQc6-2Z
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 10:02:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8584361F2A;
	Thu,  7 Dec 2023 10:02:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A7E0C433C8;
	Thu,  7 Dec 2023 10:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1701943368;
	bh=SPYAWlnL7TYvvD5fILwvuEjH1F0EdpQ2gn+SMCdXalU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JGbWkqWpE69/KJTLtC9uM/RqiNerYeh5JRHhvMQxGLKrVcgHs+Y1zw+vFVQ9PkZce
	 11S9dN4QYOZ6GJPXmQz8QV21+ujNRkIa0TTugszsraf4/zenmpWN536nrfxuUpfUl2
	 bSPBfKG/ulSlq2nXvBrk65Pw8961XtNzLOTLXlb0=
Date: Thu, 7 Dec 2023 11:02:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stanley Chang <stanley_chang@realtek.com>
Cc: Vinod Koul <vkoul@kernel.org>, Johan Hovold <johan@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Jinjie Ruan <ruanjinjie@huawei.com>, Rob Herring <robh@kernel.org>,
	Alan Stern <stern@rowland.harvard.edu>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Flavio Suligoi <f.suligoi@asem.it>,
	Ricardo =?iso-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 RESEND 1/4] phy: core: add notify_connect and
 notify_disconnect callback
Message-ID: <2023120750-giggle-annotate-dc4f@gregkh>
References: <20231207074022.14116-1-stanley_chang@realtek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231207074022.14116-1-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_020249_947920_C4D7AA5C 
X-CRM114-Status: GOOD (  24.17  )
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

On Thu, Dec 07, 2023 at 03:38:04PM +0800, Stanley Chang wrote:
> In Realtek SoC, the parameter of usb phy is designed to can dynamic
> tuning base on port status. Therefore, add a notify callback of phy
> driver when usb connection/disconnection change.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---
> RESEND:
>     Because there is no extcon device provided in the USB framework to
>     notify connect and disconnect.
>     Therefore, I added the notification connection/disconnection based
>     on the generic phy. So I no use the EXTCON framework for notifying
>     connect/disconnect.
> v2 to v3:
>     No change
> v1 to v2:
>     No change
> ---
>  drivers/phy/phy-core.c  | 47 +++++++++++++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h | 18 ++++++++++++++++
>  2 files changed, 65 insertions(+)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index 96a0b1e111f3..a84ad4896b7f 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -489,6 +489,53 @@ int phy_calibrate(struct phy *phy)
>  }
>  EXPORT_SYMBOL_GPL(phy_calibrate);
>  
> +/**
> + * phy_notify_connect() - phy connect notify
> + * @phy: the phy returned by phy_get()
> + * @port: the port index for connect
> + *
> + * If phy need the get connection status, the callback can be used.
> + * Returns: %0 if successful, a negative error code otherwise
> + */
> +int phy_notify_connect(struct phy *phy, int port)
> +{
> +	int ret;
> +
> +	if (!phy || !phy->ops->connect)
> +		return 0;

How can phy be null?

And it is not successful if connect is not valid, so why not return an
error there?

> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->connect(phy, port);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_notify_connect);
> +
> +/**
> + * phy_notify_disconnect() - phy disconnect notify
> + * @phy: the phy returned by phy_get()
> + * @port: the port index for disconnect
> + *
> + * If phy need the get disconnection status, the callback can be used.
> + *
> + * Returns: %0 if successful, a negative error code otherwise
> + */
> +int phy_notify_disconnect(struct phy *phy, int port)
> +{
> +	int ret;
> +
> +	if (!phy || !phy->ops->disconnect)
> +		return 0;

Same as above.

> +
> +	mutex_lock(&phy->mutex);
> +	ret = phy->ops->disconnect(phy, port);
> +	mutex_unlock(&phy->mutex);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(phy_notify_disconnect);
> +
>  /**
>   * phy_configure() - Changes the phy parameters
>   * @phy: the phy returned by phy_get()
> diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
> index f6d607ef0e80..cf98cb29ddaa 100644
> --- a/include/linux/phy/phy.h
> +++ b/include/linux/phy/phy.h
> @@ -122,6 +122,8 @@ struct phy_ops {
>  			    union phy_configure_opts *opts);
>  	int	(*reset)(struct phy *phy);
>  	int	(*calibrate)(struct phy *phy);
> +	int	(*connect)(struct phy *phy, int port);
> +	int	(*disconnect)(struct phy *phy, int port);

You forgot to document these and would have a warning from the
documentation build if this was applied :(


>  	void	(*release)(struct phy *phy);
>  	struct module *owner;
>  };
> @@ -243,6 +245,8 @@ static inline enum phy_mode phy_get_mode(struct phy *phy)
>  }
>  int phy_reset(struct phy *phy);
>  int phy_calibrate(struct phy *phy);
> +int phy_notify_connect(struct phy *phy, int port);
> +int phy_notify_disconnect(struct phy *phy, int port);
>  static inline int phy_get_bus_width(struct phy *phy)
>  {
>  	return phy->attrs.bus_width;
> @@ -396,6 +400,20 @@ static inline int phy_calibrate(struct phy *phy)
>  	return -ENOSYS;
>  }
>  
> +static inline int phy_notify_connect(struct phy *phy, int index)
> +{
> +	if (!phy)
> +		return 0;

Why check this?

> +	return -ENOSYS;
> +}
> +
> +static inline int phy_notify_disconnect(struct phy *phy, int index)
> +{
> +	if (!phy)
> +		return 0;

Again, why check this?

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
