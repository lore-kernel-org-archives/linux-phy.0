Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC47CC79F99
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 11:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrDq5f6NRJePj/rmbZ5D8bqyAJWX9YEcp3H/9aSyLGs=; b=2TBWm8B7v3b8Lx
	YU7pLpPW2I6U5+QXsgYeXeJS+E4lLSWegBUk/WuTAQgGPs1tDcEHMQLew6bjzK0HgjGqkNeLVbtR1
	cLbvXeveG1dWmaZ0dtUXsubbGgYSF61yldGkuQ342uDCCoyK2XwdEC128sYvWyPcYupgo+fpaSS79
	U1kw5RRwp1v01rtkwWo27bnnaZ4prql88ynG4DPXKnbrkYNlIbeJ1XnxFbH+9Q7N5VWYYHWYINz3w
	3dCFfOMz5CLmO2ZWj6Wqgn2B/pREdS1Bu+fdtBOmIclgWSdvj+jo0aofVPUqfek6H4iVh3k1HJibQ
	9D88FE6siZfCwn09OBRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X88-00000006bN4-11AO;
	Mon, 07 Sep 2026 11:03:16 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3X85-00000006bLx-0b4I
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 11:03:14 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-48583cb7d44so275308f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 04:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788778991; x=1789383791; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yrOFvk8LiTwCYdGDX8xwU9E5M6RcniQn7yTDoguvCrI=;
        b=rEIs10MYkUYJX7Y4NuZMFd64IKeMqyj35uOrvtUdHvDKP2zZ3syewDdkbuoWSeJqRf
         QRHta8RVDMYV4ZkGqzl097/uGvE/YJqLdzkB1RXzS3bCaVrWFZKxpKTJtF2rCmGgLFrC
         t9mwIsy4G5+PpjE4pwjVs69arCmR1iv+I3ORZTVTZ9QBZXWXZHoechcFqKUMhM/Y4eJH
         dSmK16H23UzivQqGhb0FKdVjqn81WpDddLK+j5g8bAr17HjH5RvdSSx2Gz1rGbx4rpWs
         pybHOjPIrsaGNjZ2+qqTxFxiOp/rO6XbBDwsk8tVBU+NnrSOcZSUMdwj70TQaGwxsrPk
         E3WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788778991; x=1789383791;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yrOFvk8LiTwCYdGDX8xwU9E5M6RcniQn7yTDoguvCrI=;
        b=TNRDsp4wYTwZ9i7yxBDv7ZMTjwEQZho7tRxcF0hq6i91muD3s9H8efRNNRWX+iKeEY
         lHETbhGew5OA78QzrNuax2tXs28gKWWpQVlWHTqJPjgE71brCx4a8ENFix95lBFGkDnM
         jE93jeuKtuSnwnXmAKQSgnG9auprYTeQO2wDaRbYBj9lqgGJzNYoJ8duisas1+7xS0xV
         pdtfegBls2bFYwAPtjL4pOSrv68XxE5P5EdlEfq87FwzJIPvixST+2fQq8sdf7Sznn/V
         UuxKvm91gSVJXoQkVCFNxpRU902Pkf3FUJn7Ddv7McPUwgKAzY1T4ICmSgAb39eLK61+
         CHaQ==
X-Forwarded-Encrypted: i=1; AKwUvBw0nBMV4LbGwvzc8iaHJEZLHoN79RXZUxjsSbH77EFGDhPYKXMIWZbnFI3fsI68A80rbPyW0PCfX7Y=@lists.infradead.org
X-Gm-Message-State: AFuF++ne3GDpEYnwk1YZ5/+jKrKwB8ibLQkTWwsa3QCyOdPJU/Ph8B00
	Q/gHzuO0Y+quew0+EDBdX8JVlDk8fwEuuXebqxg9JoTnO2SQ4gMBYDNF
X-Gm-Gg: AYBFou3kw3m+xVp9bv2wqTr7R2JALZzoLh9gsW6pOIFch3sH/CLjmzGIauu5Vqku5N5
	5o97Opd9zxfoWrOYlbANzZ3RsA9PRjtl3a8wpbijf9q7+ft42AiYK34A0DJADyw3TRUf/gWhdqh
	pEm76iU5IkBIT+8XOCODwDoeRQ8YTkqJDx6gRfRC7DE1JCfvQLuBsjmhSwV1SpnhEmeK5T3nTlu
	ivI1+EtL77O9mB4LLLbXCYoetW5F2LDHYc9gGzrdeXTyKtAaZ8jPzEFUVW/nw7sgbYcQm43+hlr
	PaPKaXG/1s6ix0HoQutuPEiUnZSx9WOi3zp2tMCOay8GjNGELZOhOCyFfl5WuGFmMr13cGgN9r2
	TT314nR3ClNuxwdCw/3ogEZQ9LZjCSVG9t6PlgoqNKXkAC2H37sXxm4/hmLi7EX5Sx5YfbC9X59
	wk1YBjDrtB/AxQSK7MrDgxhIc2nMIbH5Lw7gK50wg44BZw2eqKkqo=
X-Received: by 2002:a5d:5d02:0:b0:484:398f:2c7e with SMTP id ffacd0b85a97d-4859796277fmr7950614f8f.0.1788778991318;
        Mon, 07 Sep 2026 04:03:11 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d006:ef01:8e86:58dc:206e:83a0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4858dd90e1fsm26506671f8f.28.2026.09.07.04.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 04:03:10 -0700 (PDT)
Date: Mon, 7 Sep 2026 14:03:08 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH v2 2/4] phy: core: Add common helper for get phy phandle
 by index
Message-ID: <20260907110308.nc3jwwoyv7j2mlxp@skbuf>
References: <20260904083709.425893-1-inochiama@gmail.com>
 <20260904083709.425893-3-inochiama@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260904083709.425893-3-inochiama@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_040313_198057_78B993D7 
X-CRM114-Status: GOOD (  27.42  )
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

On Fri, Sep 04, 2026 at 04:37:06PM +0800, Inochi Amaoto wrote:
> Several phy helper use index to get phy phandle of a device node,
> add a common function for the future reuse.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  drivers/phy/phy-core.c | 51 +++++++++++++++++++++++++-----------------
>  1 file changed, 30 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
> index ea79913fbb87..a7d7acb5d3c2 100644
> --- a/drivers/phy/phy-core.c
> +++ b/drivers/phy/phy-core.c
> @@ -681,33 +681,49 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
>  	return phy;
>  }
>  
> +/**
> + * of_phy_get_by_index() - lookup and obtain a reference to a phy using a
> + * device_node by index.
> + * @np: device_node for which to get the phy
> + * @index: index of the phy from device's point of view
> + *
> + * Returns: the phy driver, after getting a refcount to it; or

Not driver, but device.

> + * -ENODEV if there is no such phy. The caller is responsible for
> + * calling of_phy_put() to release that count.
> + */
> +static struct phy *of_phy_get_by_index(struct device_node *np, int index)
> +{
> +	struct phy *phy;
> +
> +	phy = _of_phy_get(np, index);
> +	if (IS_ERR(phy))
> +		return phy;
> +
> +	if (!try_module_get(phy->ops->owner))
> +		return ERR_PTR(-EPROBE_DEFER);
> +
> +	get_device(&phy->dev);
> +
> +	return phy;
> +}
> +
>  /**
>   * of_phy_get() - lookup and obtain a reference to a phy using a device_node.
>   * @np: device_node for which to get the phy
>   * @con_id: name of the phy from device's point of view
>   *
> - * Returns the phy driver, after getting a refcount to it; or
> + * Returns: the phy driver, after getting a refcount to it; or

Same comment here. You are changing this line anyway.

>   * -ENODEV if there is no such phy. The caller is responsible for
>   * calling of_phy_put() to release that count.
>   */
>  struct phy *of_phy_get(struct device_node *np, const char *con_id)
>  {
> -	struct phy *phy = NULL;
>  	int index = 0;
>  
>  	if (con_id)
>  		index = of_property_match_string(np, "phy-names", con_id);
>  
> -	phy = _of_phy_get(np, index);
> -	if (IS_ERR(phy))
> -		return phy;
> -
> -	if (!try_module_get(phy->ops->owner))
> -		return ERR_PTR(-EPROBE_DEFER);
> -
> -	get_device(&phy->dev);
> -
> -	return phy;
> +	return of_phy_get_by_index(np, index);
>  }
>  EXPORT_SYMBOL_GPL(of_phy_get);
>  
> @@ -957,7 +973,7 @@ EXPORT_SYMBOL_GPL(devm_of_phy_optional_get);
>   * @np: node containing the phy
>   * @index: index of the phy
>   *
> - * Gets the phy using _of_phy_get(), then gets a refcount to it,
> + * Gets the phy using of_phy_get_by_index(), then gets a refcount to it,
>   * and associates a device with it using devres. On driver detach,
>   * release function is invoked on the devres data,
>   * then, devres data is freed.
> @@ -972,19 +988,12 @@ struct phy *devm_of_phy_get_by_index(struct device *dev, struct device_node *np,
>  	if (!ptr)
>  		return ERR_PTR(-ENOMEM);
>  
> -	phy = _of_phy_get(np, index);
> +	phy = of_phy_get_by_index(np, index);
>  	if (IS_ERR(phy)) {
>  		devres_free(ptr);
>  		return phy;
>  	}
>  
> -	if (!try_module_get(phy->ops->owner)) {
> -		devres_free(ptr);
> -		return ERR_PTR(-EPROBE_DEFER);
> -	}
> -
> -	get_device(&phy->dev);
> -
>  	*ptr = phy;
>  	devres_add(dev, ptr);
>  
> -- 
> 2.55.0
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
