Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CBA4CD4F47
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 15:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Myzh+wmflh/GUmyvhPVu81YYiBrR6mGkcXJAr/+n9Do=; b=YVpvE+OQMx2dOr
	db4JBwzeX3WSGT5GSY4luKgcYnLE2siwqQ8H9E2JiSCRPTkzhgzvaypeMQHqb6YOhpr+urP9zBjzU
	G3HWpiNlwZKD2KZJ3WvpuuGEivh6fXeWEXesEVpde4kNxtr5mmQ6euaL+itX8ssWahyscRz/HsWVx
	5j1MPIaaxp0K4Ir2jf36bGO+UJQGyg13DQ75ehQiXu0n19ZPwdxt3JMWOIxuI32wbyEqO0pCELfuG
	lK3xoAkTibCVnlYguJQD0SmMhVZMTYCDxXQAhUexpnCF3UIEUgbx7D/Qwzxcnap5QGVS3iXV8av1F
	2b39kTe87uzkTFVudXkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuvy-00000008oG9-3dZk;
	Fri, 15 May 2026 15:58:42 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuvw-00000008oFF-06aJ
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 15:58:42 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-48fe6629235so950055e9.1
        for <linux-phy@lists.infradead.org>; Fri, 15 May 2026 08:58:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778860718; x=1779465518; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5yUJwUTMS3U7MJ73PoEnFeA17wdo5nkZTGmhy0L69/Y=;
        b=SSPJ3bH8KUx8RKiMKBxlfpuE0EtLTtjGGQ+He3zPUsNxnZb7BqDbiSyxvJG3CSdWXo
         +YURdCST4EaP2a5t24ir3NMh+BznONpZluTkJ4Haf91okpA5WH1gdMKPjCkwVZ5Tpmjv
         HXSsIs+FwW2qIIfvATZaiC9Yy+0V66wX6odMk1+Bj+6tvpxiv1DOpKO6WvjoyrYBpqMf
         +76AbKBCpcYWVjPVyOGRm/nUep9dqgYcO7Yzm942p/fwNOMwx2YN1woMJpigEMU37owq
         40ttfHWSPvBqjKSo2glVB2je4YvW/zSGCcoFz01tkaRkLqGF7ojfWOVUd9oj+UzFLpUR
         iF8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778860718; x=1779465518;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5yUJwUTMS3U7MJ73PoEnFeA17wdo5nkZTGmhy0L69/Y=;
        b=PzNyHOKiCTmUQ3Xl7q8nHJCIZYbzLAdrfO+ibuyo/VMutSb9lnvnURwk4NGZugziaR
         KHpc0UXjEEReI9wl3OZ6Jdf+H59OZYHvUo+MAZ0VZKfucdGUtJwZ0FBv6G0+zX8dacYc
         yE5JDomIwqI/pgvuiGqjLk+1new/ZoYqlUKbgmEDGCFo4K1u4MqEF3bfOX+0sHwaBvtl
         6HNTGHutBMaBy8fpnR6Kri1BRW8qbFmqtVpYIK/eJrGn4cv72aJ1Gx7FLppps8AoZlYH
         zL5KEVBlTQaLVpYy/GEDuy5pQMNlffxFmHyMTd0SaAHMIFd3RXxL1qdZ40CA8dZnvGwh
         QQig==
X-Forwarded-Encrypted: i=1; AFNElJ/08U0m4PGviEe0nKYyjrAN3P2FaAur7dE39RLZyI5Slq5TC5a4LvBrX8HdVpjHjJLjlbDLv5Irl6U=@lists.infradead.org
X-Gm-Message-State: AOJu0YxyBbtbS8DqSV2YEq/+ORJ5aQEVTEnR7kwazDZO+6eYXWWN5tB/
	FALiBFPhQXoI7qJGqOaQwrHEkH3Ejpt5GyuCcVKQ+jnn2QeM46imI7wt
X-Gm-Gg: Acq92OFOeyAcr+2d03z3iF9Xf9k5jmYJL4yAJ5pm58ml1+JcQFgDfdyb+a2FUnZpXa9
	/R/i0kiAXQS8gn0N6ivu69LDI3J9S1chVDgJM1I37vUmhqwgfKI4sPRBX16MvBhykdUlijEiU+b
	u/HW575gcrysskkFQgjTUqHkdCFlBrwIyonir7JP14m2QkUHpVr0M0H/k9cF2bWSeE72jmqnznu
	16YAZQl5umz02V05koDlJn7an2TaK+gKg4FIK1NNAkh36tKdvws7fY7LZirktWqaLSfuaSC4ukC
	4z08QeF1MpTk+4fTzx00ouvlyam6bsPS8KbjSwKE2fmFwkkvHTLqxKrRZq91slBFBsXuPkw0eHT
	Hq26fVHYBBlNXSfFNdGRiV70srq9NiZQmtR9xGoV1M8jm05MO265PmmLUz+Jgci9DR9C5tEin5l
	YCb6jsDECBVShQA27milDzSBkGacrsNvirlhQ=
X-Received: by 2002:a05:600c:4fd4:b0:48d:1021:e5d1 with SMTP id 5b1f17b1804b1-48fe61f717emr29433955e9.3.1778860718176;
        Fri, 15 May 2026 08:58:38 -0700 (PDT)
Received: from skbuf ([2a02:2f04:d507:6e00:9f61:24db:b04:35c4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe57943b2sm71330095e9.8.2026.05.15.08.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 08:58:37 -0700 (PDT)
Date: Fri, 15 May 2026 18:58:34 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org,
	kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, zhongling0719@126.com
Subject: Re: [PATCH 2/2] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock
 resources
Message-ID: <20260515155834.zgdp3xq7cbhq66jm@skbuf>
References: <20260515040737.28075-1-zenghongling@kylinos.cn>
 <20260515040737.28075-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260515040737.28075-1-zenghongling@kylinos.cn>
 <20260515040737.28075-1-zenghongling@kylinos.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_085840_081390_4ABDB12C 
X-CRM114-Status: GOOD (  26.36  )
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

On Fri, May 15, 2026 at 12:07:37PM +0800, Hongling Zeng wrote:
> ti_pipe3_get_clk() has two issues with -EPROBE_DEFER error handling:
> 
> 1. When devm_clk_get() for sysclk fails, the function returns -EINVAL
>    instead of propagating the actual error code. This masks -EPROBE_DEFER
>    to -EINVAL, breaking the probe deferral mechanism and causing permanent
>    driver initialization failure on systems with non-deterministic probe
>    ordering.
> 
> 2. For SATA PHY refclk, the function ignores all errors to support older
>    DTBs missing the refclk property. However, this incorrectly ignores
>    -EPROBE_DEFER as well, causing the driver to proceed without waiting
>    for the clock provider to become available.
> 
> Fix both issues:
> - Return PTR_ERR(phy->sys_clk) instead of -EINVAL to propagate all
>   error codes including -EPROBE_DEFER
> - For SATA refclk, only ignore -ENOENT (clock not found in old DTBs)
>   but propagate other errors like -EPROBE_DEFER
> 
> Fixes: a70143bbef6b ("drivers: phy: usb3/pipe3: Adapt pipe3 driver to Generic PHY Framework")
> Fixes: 7f33912d2978 ("phy: ti-pipe3: Fix SATA across suspend/resume")
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
>  drivers/phy/ti/phy-ti-pipe3.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
> index 58fbc3b27813..2bfcd0c70abd 100644
> --- a/drivers/phy/ti/phy-ti-pipe3.c
> +++ b/drivers/phy/ti/phy-ti-pipe3.c
> @@ -604,15 +604,22 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
>  {
>  	struct clk *clk;
>  	struct device *dev = phy->dev;
> +	int ret;
>  
>  	phy->refclk = devm_clk_get(dev, "refclk");

When phy->mode == PIPE3_MODE_SATA, I think it would be a good idea to
call devm_clk_get_optional() which converts ENOENT to 0 for you.
Otherwise call devm_clk_get(). In both cases, you can propagate the
returned error code without special-casing anything.

>  	if (IS_ERR(phy->refclk)) {
> -		dev_err(dev, "unable to get refclk\n");
> +		ret = PTR_ERR(phy->refclk);
>  		/* older DTBs have missing refclk in SATA PHY
> -		 * so don't bail out in case of SATA PHY.
> +		 * so don't bail out for -ENOENT, but still defer
> +		 * probe for other errors like -EPROBE_DEFER.
>  		 */
> -		if (phy->mode != PIPE3_MODE_SATA)
> -			return PTR_ERR(phy->refclk);
> +		if (ret == -ENOENT) {
> +			if (phy->mode != PIPE3_MODE_SATA)
> +				return ret;
> +		} else {
> +			dev_err(dev, "unable to get refclk\n");
> +			return ret;
> +		}
>  	}
>  
>  	if (phy->mode != PIPE3_MODE_SATA) {
> @@ -629,7 +636,7 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
>  		phy->sys_clk = devm_clk_get(dev, "sysclk");
>  		if (IS_ERR(phy->sys_clk)) {
>  			dev_err(dev, "unable to get sysclk\n");
> -			return -EINVAL;
> +			return PTR_ERR(phy->sys_clk);
>  		}
>  	}
>  
> -- 
> 2.25.1
> 
> 

Because of the broken threading this patch can't be applied anyway, so

pw-bot: cr

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
