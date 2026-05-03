Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 592ECFF886F
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 16:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOob5KF2teINRdU8wEpl6VG+MU2csrnznrRSieFNN2I=; b=h93vSOC5TR4pr9
	YWDXXRanPB+EbF5UUIcq1yyF2swHpUDgDHCp2M2p0e3ja2UH44OcAMA8Iwl+0XD71WqJ0wfsVKViB
	BA/stXcKTb0/eW7quwTi16RgcXEqOkhH/JQRoK0o3FSkwZZeUikNNJreNoTZ/WBn0fGMSbm2GES1e
	sT7SNZLlWcLY7LZEXJqTrRE4wD0EKw54ARLCRzZbZluVG96WdvD4OQWZcKfmemLdemJ0pS3AIFvyP
	shXY6OBrhFcd3DjNmte8SdtuPsKD1fIftfmrRv2AwNZaWG5++wZsUO+nRe5G+nX3Kijmg0JZclY1Q
	ChPXj6YhohtlLQSCJ9ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJa8Z-0000000BLua-0UZ8;
	Sun, 03 May 2026 16:57:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJa8V-0000000BLtj-43Ho
	for linux-phy@lists.infradead.org;
	Sun, 03 May 2026 16:57:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 29047432BD;
	Sun,  3 May 2026 16:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7473AC2BCB4;
	Sun,  3 May 2026 16:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777827463;
	bh=T9k76UIlfgn5aHBqK2gi3rGusZZXx87NFJ5kF/vgN2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F1iDIZ0sU+H2ARQR0a6JW8S8kGNBEO6wzX+Ag5koZKKhF2xyzKZkfMsuOkDZKc1O+
	 Nmn0tGnIv1FGZJQdcG9+RIoYA3EsYiUvRiLkSY2/XQQdjiW7RXBQrLjrfKVKNRlpLX
	 inNOwrBJ/B1m4pTYIjuedlvyfc2O0N1M2qpVivgH8FKDYje9coLyw1NJ8SZIdbHCR5
	 ZQqKYj0oVm4Md7vtPs1kYStorsrLo5fwuOKBj1q1Vq8adKB57aVzjdxzmj2Gfe1CmS
	 wNpq5unWOzIM5iVJgPoCmo3L7fw7qV9czud0/3XupqxhNE78l14Zpo63c0RB60NX3q
	 BoMLZf7bFfYwA==
Date: Sun, 3 May 2026 22:27:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: neil.armstrong@linaro.org, biju.das.jz@bp.renesas.com,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] phy: renesas: phy-rzg3e-usb3: Fix runtime PM underflow
 during suspend
Message-ID: <afd-gj-F3OYDfCwJ@vaman>
References: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260427194741.161533-1-ovidiu.panait.rb@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_095744_047361_08F984F9 
X-CRM114-Status: GOOD (  24.38  )
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

On 27-04-26, 19:47, Ovidiu Panait wrote:
> On the Renesas RZ/V2H platform, if the xhcd driver is unbound and the
> system is suspended afterwards, a PM underflow error will occur:
> 
>  # echo 15850000.usb > /sys/bus/platform/drivers/xhci-renesas-hcd/unbind
>  # systemctl suspend
>  15870000.usb-phy: PM: dpm_run_callback(): genpd_resume_noirq returns -13
>  15870000.usb-phy: PM: failed to resume noirq: error -13
>  15870000.usb-phy: Runtime PM usage count underflow!
> 
> Since the PHY framework is managing the runtime PM of the PHY via
> phy_power_on()/phy_power_off(), there is no need for the PHY driver to
> manipulate the runtime PM state during suspend.
> 
> To fix this, remove the runtime PM calls from the suspend/resume paths
> and add a get/put pair inside rzg3e_phy_usb3_init_helper() to make sure
> the clock is enabled during init, even when there is no consumer for
> the PHY.

Ok

> 
> Also, change the suspend ops from NOIRQ_SYSTEM_SLEEP_PM_OPS to
> SYSTEM_SLEEP_PM_OPS because runtime PM is disabled during the noirq phase
> and pm_runtime_resume_and_get() would not actually enable the device clock.

This is a fix, so split this up please

> 
> Fixes: ee5f1a3f90a4 ("phy: renesas: Add Renesas RZ/G3E USB3.0 PHY driver")
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
> ---
>  drivers/phy/renesas/phy-rzg3e-usb3.c | 31 ++++++++++++++++------------
>  1 file changed, 18 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/phy/renesas/phy-rzg3e-usb3.c b/drivers/phy/renesas/phy-rzg3e-usb3.c
> index 6b3453ea0004..055775e1a0f7 100644
> --- a/drivers/phy/renesas/phy-rzg3e-usb3.c
> +++ b/drivers/phy/renesas/phy-rzg3e-usb3.c
> @@ -64,6 +64,7 @@
>  #define USB3_TEST_LANECONFIG0_DEFAULT		(0xd)
>  
>  struct rz_usb3 {
> +	struct device *dev;

This does not belong in a fix, please split

>  	void __iomem *base;
>  	struct reset_control *rstc;
>  	bool skip_reinit;
> @@ -130,11 +131,21 @@ static int rzg3e_phy_usb3test_phy_init(void __iomem *base)
>  	return 0;
>  }
>  
> -static int rzg3e_phy_usb3_init_helper(void __iomem *base)
> +static int rzg3e_phy_usb3_init_helper(struct rz_usb3 *r)
>  {
> -	rzg3e_phy_usb2test_phy_init(base);
> +	int ret;
> +
> +	ret = pm_runtime_resume_and_get(r->dev);
> +	if (ret)
> +		return ret;
> +
> +	rzg3e_phy_usb2test_phy_init(r->base);
>  
> -	return rzg3e_phy_usb3test_phy_init(base);
> +	ret = rzg3e_phy_usb3test_phy_init(r->base);
> +
> +	pm_runtime_put_sync(r->dev);
> +
> +	return ret;
>  }
>  
>  static int rzg3e_phy_usb3_init(struct phy *p)
> @@ -143,7 +154,7 @@ static int rzg3e_phy_usb3_init(struct phy *p)
>  	int ret = 0;
>  
>  	if (!r->skip_reinit)
> -		ret = rzg3e_phy_usb3_init_helper(r->base);
> +		ret = rzg3e_phy_usb3_init_helper(r);
>  
>  	return ret;
>  }
> @@ -187,6 +198,7 @@ static int rzg3e_phy_usb3_probe(struct platform_device *pdev)
>  
>  	platform_set_drvdata(pdev, r);
>  	phy_set_drvdata(phy, r);
> +	r->dev = dev;
>  
>  	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  	if (IS_ERR(provider))
> @@ -199,7 +211,6 @@ static int rzg3e_phy_usb3_suspend(struct device *dev)
>  {
>  	struct rz_usb3 *r = dev_get_drvdata(dev);
>  
> -	pm_runtime_put(dev);
>  	reset_control_assert(r->rstc);
>  	r->skip_reinit = false;
>  
> @@ -215,27 +226,21 @@ static int rzg3e_phy_usb3_resume(struct device *dev)
>  	if (ret)
>  		return ret;
>  
> -	ret = pm_runtime_resume_and_get(dev);
> +	ret = rzg3e_phy_usb3_init_helper(r);
>  	if (ret)
>  		goto reset_assert;
>  
> -	ret = rzg3e_phy_usb3_init_helper(r->base);
> -	if (ret)
> -		goto pm_put;
> -
>  	r->skip_reinit = true;

https://sashiko.dev/#/patchset/20260427194741.161533-1-ovidiu.panait.rb%40renesas.com


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
