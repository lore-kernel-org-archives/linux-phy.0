Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEE1AC433FE
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrQKY0iYdqOZcSU6D8i+XV4vdLlrHe/PUmRvIcFKHHY=; b=C8qlUWSw7LrpTX
	+xjWTWv/u1u24BWK8TuiianQgTX0FUCcddnJFF6DOY2VGWUuonkVLwifvntw4OMp/+zy4MK8E2v4K
	v1Reox37HUUEvq4gC8LDqjjh0fnbFauopoPwtX6dnfzFkiXq2LMHjeyzUnKPR6/zd0BaYNpAKt7/Y
	7EeFipgRWNwG9LEayqmhJldVbbB8s07MEUNWVd0nkJeQhd8jd9dqJfXTqqhV1D9T6OU/6Vu/0FVwC
	wSSspaSooIDWBLUFTI5KkcUIl0bC5H8FClkt8vzg94NYbMF29K4IqelmcL84wGaDQE/7GWEoWalW4
	AopwBZbssZ794e+hJh1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGPo-00AfMg-Ca; Thu, 24 Nov 2022 17:53:36 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyGPj-00AfDi-8E
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 17:53:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 40A10621DE;
	Thu, 24 Nov 2022 17:53:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 229FAC433D6;
	Thu, 24 Nov 2022 17:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669312406;
	bh=0CkHSWHK0YdycIG/SfO26rBNHInfTiEV4KS+PF+SzUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W4jWlBBlJByIYSN68t3DNK9LN4bNW0O1ifsqo9VkFJLLrC8uN//iE2yD6G/S1yKpl
	 Fuu+Y9PIYBwOQ73akQvI/cr6IuvrGOXMwmwS1tx86yUsz8v058DYX1rZYx35J1q7kP
	 KgQ7C8K4rHPsddgGm6S1KyOsoBg1YEc6oTK7RnWC81RMSM8pdkfg5y90Egs5yNCiiX
	 qIBwuTHHbkyU/eQJmUulWj+Im7BPDdhB6+htPyPyBgnNQhPYkWi9gIrSth1bFBLd1u
	 9X74AQvCXrOEX4aXgDU5ICH0nGqX6Zv9+gCOJI+b87wOScjooUQMMutWCbPbzg0JOb
	 o5E9LuV+BqOyQ==
Date: Thu, 24 Nov 2022 23:23:22 +0530
From: Vinod Koul <vkoul@kernel.org>
To: ye.xingchen@zte.com.cn
Cc: kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: use devm_platform_get_and_ioremap_resource()
Message-ID: <Y3+vklHsXk+FftOe@matsya>
References: <202211171411439883050@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202211171411439883050@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_095331_390107_57A3C066 
X-CRM114-Status: GOOD (  17.13  )
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

On 17-11-22, 14:11, ye.xingchen@zte.com.cn wrote:
> From: Minghao Chi <chi.minghao@zte.com.cn>
> 
> Convert platform_get_resource(), devm_ioremap_resource() to a single
> call to devm_platform_get_and_ioremap_resource(), as this is exactly
> what this function does.

Applied, thanks

> 
> Signed-off-by: Minghao Chi <chi.minghao@zte.com.cn>
> Signed-off-by: ye xingchen <ye.xingchen@zte.com.cn>
> ---
>  drivers/phy/marvell/phy-mmp3-hsic.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/phy/marvell/phy-mmp3-hsic.c b/drivers/phy/marvell/phy-mmp3-hsic.c
> index 7cccf01848d8..f2537fdcc3ab 100644
> --- a/drivers/phy/marvell/phy-mmp3-hsic.c
> +++ b/drivers/phy/marvell/phy-mmp3-hsic.c
> @@ -41,12 +41,10 @@ static int mmp3_hsic_phy_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct phy_provider *provider;
> -	struct resource *resource;
>  	void __iomem *base;
>  	struct phy *phy;
> 
> -	resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	base = devm_ioremap_resource(dev, resource);
> +	base = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
> 
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
