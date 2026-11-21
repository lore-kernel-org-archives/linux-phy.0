Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9A3606A320
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 07:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gPS20rmD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Jay8ApW2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1oNY82p8iv7t2tHUJPoI3fmELZhFNPb0FT901fxwXxo=; b=gPS20rmDc793P6Xq6N1Ay5kUNe
	FU0e/zkEzBIYb6ESPvU/mImn9T4TPTjU7z6WMGjuRduzTKg/0qkS+lJ/fiC9EoPR7CDtSxOT413Qi
	nnQRxY5B3/O9fERX9MlP8I7a3SSw0r/l9DPH7j95hFJQFUuDaM0OZGVGyOzmtdMQfHVP78r2aB7OD
	IoLSp2nZdLHiavEgf/Z7tJBwg53r8YQ07+2+1GGquuKRhuXl+D4ZfAwisyQPUzQtRPGKglF2+VQsP
	4RVf/uMCMz8/0W2jzWfSKXMPfmKqi+3L18dBspUj2/Ldz6skDPR7zO4SzRLFOrCvzqK7SQ640lE0w
	Hr2/nlFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfug-0000000Gtpx-0LUV;
	Sat, 21 Nov 2026 07:53:34 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUfud-0000000GtpT-0LVe
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 07:53:32 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-3b439e37813so612455a91.3
        for <linux-phy@lists.infradead.org>; Fri, 20 Nov 2026 23:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795247610; x=1795852410; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OFCgfXZyqNz90HWdYpeyXbVhNfixwYHLdj2jezmIKJE=;
        b=Jay8ApW2FP2hw/W7//9jjcyT2St+fdW5ClFUktjKF+qBBu6xQ3uY+Et5xKX1R58/ga
         HPi/USeVO5AaBsarb4U9+rri07lJovqLYhqiTrveo59Kt0yQCkVueXcdQ9NhyIjjrhvJ
         PlLshNeZuNW61POFyPRyeJLnDfhiV6bnxSXKFXrc7hpRbkZUmajBpnNTCiAJrdb9xNHm
         RkduqWYdzwclMOb01DY62sRZeVkiFf/MBUSbZphfBHRdFjHt90RM6NO9qzlJ+hwaD8FO
         1c4UzZnCT8PyZaao1wlT9qgJvmuncLctyLmDjqoOzClc8r1uysdnV9kz7k5MFCfUsW38
         AHfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795247610; x=1795852410;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OFCgfXZyqNz90HWdYpeyXbVhNfixwYHLdj2jezmIKJE=;
        b=2u2XDH3hCIDeZqal4OPZLk10oR4bVBKo0ixDayqVCbHzP1lakR3RjHDIaBL2yT/RMh
         VWqZCDkNXGE31FDxWdlgW/7N8ipvaSuUBeMn9HTPL5fXNx1GsqoP/930LPQhR1C4p0eY
         LAp3X+klTXt7xTXdvcfzfZIyOA38wkIH65wwi00vVWz2musCuR+NYFgA/SnSK3qwUBal
         32IWPbQFWCtbSWD/S3bV3utawr3nZuxeZC+x2qtva+makmqAPGJGCQs1SioW4BUtcSVD
         +TNLKoBvufsHnxVP7JYfRptRztuStcyx1hZ90kNpnfTBACpe8KyMwVdJeUb/6q1V217b
         l+JQ==
X-Forwarded-Encrypted: i=1; AL+hErGO2HhK46TZLBuVR3RWMJZjufb+wPlQOJX5owM5T6SV/Vjmysz/VdPKVQ/Xf2RX8SEHN380HQVmanY=@lists.infradead.org
X-Gm-Message-State: APuU4Z8a9oTGsLPA0zhSiIfI8LV2CTDqLDY7v+9LD1aanUtwveiNA85E
	5l6aRP4bYJPWLfJAY8PjLvW60tqE0KW3z9BZK6NFN1poYHu4BESc/YEU
X-Gm-Gg: AZFdTZeEN9WDGGn1r/BXNkXnB+O/BQaIKjyg4+p5lOJ1ZHapd6XJb9MG4R2JXz15fXU
	S5pRg8wJgQFh8IaA+sRJ0ElE2cKueENLGi+UdEVKKBKAb8ifWN3NVrWH+KwSfCV7M32kOXbBrcR
	w3BabN33Tj6W0dV3PAnlEiRBB5+9aDRIkdrVMKmpNklxuF/z7+D+H6FO+lHqge2ManJELjnao1w
	F8ee2bbRDKD8ryaLHUC/TOJ14VXhsWAaKgienHAovsoXEAYWVZIashkKUjTckAtcsQ2stdZNlK4
	7XWSlwdniFRHG15A9X+kI1coH5fb5lqTKjxuis7Cpxj43k5d7bPX6MAzReWuWembykj7d2HMVJw
	uKx625UvOsgBpqHL9AXHxEQp1d2uxNL4W9Oq+Id22QwN1pElqzVPWXDM3j8brbYyHp4rRaeaJSD
	GifaIvL5m+7GveOFB90TI/GKWTZUMDX8IM8vz2459hlb8tOpEMNTWuhpOls5ED0wJIEaUGIDp5F
	3z3f/Dj0EJg0d7fsj3ybrlGOsTW1N/nRVU149+jLTOEMuqH/o7rKpQtX3L/DisDlhGvnyU1Ofhu
	T/0e5xpZSulSBddjiZpdgwrTEHo=
X-Received: by 2002:a17:90b:3ec8:b0:3ac:8dfe:8ec9 with SMTP id 98e67ed59e1d1-3b41cafdb7dmr4480174a91.47.1795247609783;
        Fri, 20 Nov 2026 23:53:29 -0800 (PST)
Received: from localhost ([2001:19f0:8000:4ce8:5400:7ff:fe0e:e6b2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b409330ae8sm10382959a91.7.2026.11.20.23.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 23:53:28 -0800 (PST)
Date: Sat, 21 Nov 2026 15:52:55 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Vladimir Oltean <olteanv@gmail.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rhys Tumelty <rhys@tumelty.co.uk>, Inochi Amaoto <inochiama@gmail.com>, linux-doc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v4 3/5] phy: core: Add phy bulk data helper functions
Message-ID: <awFL17YyVU7yRKZz@inochi.infowork>
References: <20260929085235.469515-1-inochiama@gmail.com>
 <20260929085235.469515-4-inochiama@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260929085235.469515-4-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_235331_127921_B5B75F4F 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Sep 29, 2026 at 04:52:33PM +0800, Inochi Amaoto wrote:
> Add several helper functions that allow drivers to get several phy
> consumers in one operation. If any of the phy cannot be acquired then
> any phys that were got will be put before returning to the caller.
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

[...]

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


Hi Vinod, Vladimir and Manivannan,

Before sending the next patch (I guess I can update it in the next
week), I have a question for the error handle.

As the phy_exit()/phy_power_off()/phy_power_on() can return an
error code, should the corresponding bulk api need to call the
corresponding  phy_init()/phy_power_on()/phy_power_off() when
there is an error occurs. Or just leave the state as it is.
I saw the reset subsystem does this rollback.

Regards,
Inochi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
