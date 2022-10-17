Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE80EC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAASETZ2K6iAT0vDZqzLoSkLQj4m5wJe5gToOI/pFC8=; b=L2KHGYKZkHLNIV
	zzQXA7Mh86ehaW2MtpkS8avHimD+1HS6QLEO7C0HhhZ4BvTZWQhAZM2Rp5pIUjqDWBvMDS/+CfrC9
	ASS514MV1jDSTGh4YbCzf710LdC/kaAfMod+M7BxpxYBWOUScOK+LJpxWSs0gkVDP29Usk6koSigb
	wpm6h0ig7Lvd1/ArF+7WT+mu62abqm7mVs8UhIxOheY4/DUXCzKH31ak/G9DZeTawPE4J0zbu22kh
	wNv4o5ZeD/mMbKKT+lIR7ZnOBDp19G94WYlp5jUfJ7uKM0Olr9t+xixevgQYb7d6TGCTnphzNTG6Q
	ipA0kEr7i7up4eqM1odg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJZR-007uR6-32; Mon, 17 Oct 2022 06:25:53 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okJZO-007uPp-1C
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 06:25:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6B192B80F2B;
	Mon, 17 Oct 2022 06:25:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12A56C433D6;
	Mon, 17 Oct 2022 06:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665987944;
	bh=r/qtiRQSzBRuWHx4CJJv3HpvlT6NVIUzeaBeeHmIZG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hcp97rWBRX/WgBigojhm+05r8ogVbW0GdnMcQ3ZnP0doK2xfx9QJPC1cDmJS/gbmX
	 OzmOAOkjEF3YdDhSXW/R2bBOxuvRk7nWbdV7nzuWMxI/gUrgN2jocJyASmfy76WxHa
	 v5EXM7zMludWfyys8cA2gySRBnhqaWh3DBQPb5PobshAktEQKcR2lx06tHyjammGvg
	 4Ko602g1gAftiBgBNuoJXz26Y51Im0RSq65g9jVGVNxiN0qseP1MgS+vNqAFCw0Vfp
	 P88foPby74DRmGxkYBUrzXLKS9A3CjrEsT/QTOrGOrBSq3wMYdpKb82crJfugswn0e
	 tFlJ3mQdfYn0g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1okJZ7-0004qj-0B; Mon, 17 Oct 2022 08:25:33 +0200
Date: Mon, 17 Oct 2022 08:25:32 +0200
From: Johan Hovold <johan@kernel.org>
To: Sasha Levin <sashal@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: stable-commits@vger.kernel.org, johan+linaro@kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: Patch "phy: qcom-qmp-combo: disable runtime PM on unbind" has
 been added to the 5.15-stable tree
Message-ID: <Y0z1XFHN2Ax9AD27@hovoldconsulting.com>
References: <20221017031601.2437904-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221017031601.2437904-1-sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221016_232550_395653_D7BCCCC0 
X-CRM114-Status: GOOD (  26.54  )
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

[ Resending with Vinod and the lists on CC. You forgot to CC the
maintainer. ]

On Sun, Oct 16, 2022 at 11:16:01PM -0400, Sasha Levin wrote:
> This is a note to let you know that I've just added the patch titled
> 
>     phy: qcom-qmp-combo: disable runtime PM on unbind
> 
> to the 5.15-stable tree which can be found at:
>     http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary
> 
> The filename of the patch is:
>      phy-qcom-qmp-combo-disable-runtime-pm-on-unbind.patch
> and it can be found in the queue-5.15 subdirectory.
> 
> If you, or anyone else, feels it should not be added to the stable tree,
> please let <stable@vger.kernel.org> know about it.
> 
> 
> 
> commit f3aca84b69977d7c024d9fbf52163de4b852df22
> Author: Johan Hovold <johan+linaro@kernel.org>
> Date:   Wed Sep 7 13:07:13 2022 +0200
> 
>     phy: qcom-qmp-combo: disable runtime PM on unbind
>     
>     [ Upstream commit 4382d518d1887e62234560ea08a0203d11d28cc1 ]
>     
>     Make sure to disable runtime PM also on driver unbind.
>     
>     Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM").
>     Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>     Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>     Link: https://lore.kernel.org/r/20220907110728.19092-2-johan+linaro@kernel.org
>     Signed-off-by: Vinod Koul <vkoul@kernel.org>
>     Signed-off-by: Sasha Levin <sashal@kernel.org>
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index c7309e981bfb..dcf8a8764e17 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c

This driver did not exist in 5.15. Please don't tell me you're
backporting the QMP driver split and all the follow up cleanups?

Note that hardly any of these QMP fixes had a stable tag for a reason.

> @@ -6273,7 +6273,9 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	pm_runtime_set_active(dev);
> -	pm_runtime_enable(dev);
> +	ret = devm_pm_runtime_enable(dev);
> +	if (ret)
> +		return ret;
>  	/*
>  	 * Prevent runtime pm from being ON by default. Users can enable
>  	 * it using power/control in sysfs.
> @@ -6323,13 +6325,10 @@ static int qcom_qmp_phy_probe(struct platform_device *pdev)
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  	if (!IS_ERR(phy_provider))
>  		dev_info(dev, "Registered Qcom-QMP phy\n");
> -	else
> -		pm_runtime_disable(dev);
>  
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  
>  err_node_put:
> -	pm_runtime_disable(dev);
>  	of_node_put(child);
>  	return ret;
>  }

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
