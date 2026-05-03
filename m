Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7962FF886F
	for <linux-phy@archiver.kernel.org>; Sun,  3 May 2026 17:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fwy3xtVq51l9XpIaoR9n/ZsFjCN4FBVSJgkPA8Sms8=; b=G1Ss4BaAwKoAaK
	EmkagmmjQI1Qx4hNJ5z48k0KH+0bunYjz1W6Iz8DhWeixkInP1lK8fAhBG6YGgBRih8W4nXNgdge5
	3Xntar7uGt68l92YHkiCiYSojQ9yF6JUmgVGq1cuZHe8H7ZwuZCt3THA486M5XPKjp8/ZPzNgAhWc
	TCb7ZL1xFfUFEI2d+yJfLBZkse1EGdJtgURZ+zyqU4Kmx8UQ2k4D9iNzO3eZ4yKjkbSST8iKpDIel
	GDww112QZIfWxN0ju5yj0hSEipUKyK4WXg1peMFpb2TP0ouWbzQXjD6H+2/HR+ik+Rf63RAeEKLG8
	/SSdFZJ46bmk4JKHysdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaBg-0000000BMG5-2w6a;
	Sun, 03 May 2026 17:01:00 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJaBe-0000000BMFa-2AX8
	for linux-phy@lists.infradead.org;
	Sun, 03 May 2026 17:00:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CB58A43793;
	Sun,  3 May 2026 17:00:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23789C2BCB4;
	Sun,  3 May 2026 17:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777827657;
	bh=dPTS7oWEl7liSt0nD0Gew0CooOhSXFn2gDh15RnBpKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CIMXEHyiaEFFWa02vilwPSZZac1Yxffrn1GuHb+9NX2Z9tlxcLARu+gSFTdRJOYfz
	 VgXcAVwLBUvw5eqaugcuvhRmYZ+wy43GVGRz/Bkx3DtarSKTQ7xh4sFz8DfIo6cKrQ
	 xkWPNw74AT/O7YdVbWEL+vzKmY1tW0kpxDiWcS56zL95Mde8pOApun6c1BHs5I/8rd
	 q7nIRg0s6SxbAIBqLtPGrGhqqmjAMCjgMThVehQBQyTIQ8MTHfcrjM2br3iZ2dhiK3
	 tYJCpvf35v6b2EKi2B7RSlooiViRM9J5AF7Seoml5gEsXVAG0z4gbNrE7Fr0XemyZh
	 Hr4yPhB/Mogxg==
Date: Sun, 3 May 2026 22:30:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 2/4] phy: phy-can-transceiver: Move OF ID table closer
 to their user
Message-ID: <afd_RXYvsU5OogPX@vaman>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <20260317203001.2108568-3-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260317203001.2108568-3-andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_100058_598336_330E7177 
X-CRM114-Status: GOOD (  19.38  )
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

On 17-03-26, 21:27, Andy Shevchenko wrote:
> There is no code that uses ID table directly, except the
> struct device_driver at the end of the file. Hence, move
> table closer to its user. It's always possible to access
> them via a pointer.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/phy/phy-can-transceiver.c | 59 +++++++++++++++----------------
>  1 file changed, 29 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
> index 80eece74f77d..aaed8d08fcf0 100644
> --- a/drivers/phy/phy-can-transceiver.c
> +++ b/drivers/phy/phy-can-transceiver.c
> @@ -97,35 +97,6 @@ static const struct can_transceiver_data tja1057_drvdata = {
>  	.flags = CAN_TRANSCEIVER_SILENT_PRESENT,
>  };
>  
> -static const struct of_device_id can_transceiver_phy_ids[] = {
> -	{
> -		.compatible = "ti,tcan1042",
> -		.data = &tcan1042_drvdata
> -	},
> -	{
> -		.compatible = "ti,tcan1043",
> -		.data = &tcan1043_drvdata
> -	},
> -	{
> -		.compatible = "nxp,tja1048",
> -		.data = &tja1048_drvdata
> -	},
> -	{
> -		.compatible = "nxp,tja1051",
> -		.data = &tja1051_drvdata
> -	},
> -	{
> -		.compatible = "nxp,tja1057",
> -		.data = &tja1057_drvdata
> -	},
> -	{
> -		.compatible = "nxp,tjr1443",
> -		.data = &tcan1043_drvdata
> -	},
> -	{ }
> -};
> -MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
> -
>  static struct phy *can_transceiver_phy_xlate(struct device *dev,
>  					     const struct of_phandle_args *args)
>  {
> @@ -229,6 +200,35 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
>  	return PTR_ERR_OR_ZERO(phy_provider);
>  }
>  
> +static const struct of_device_id can_transceiver_phy_ids[] = {
> +	{
> +		.compatible = "ti,tcan1042",
> +		.data = &tcan1042_drvdata
> +	},
> +	{
> +		.compatible = "ti,tcan1043",
> +		.data = &tcan1043_drvdata
> +	},
> +	{
> +		.compatible = "nxp,tja1048",
> +		.data = &tja1048_drvdata
> +	},
> +	{
> +		.compatible = "nxp,tja1051",
> +		.data = &tja1051_drvdata
> +	},
> +	{
> +		.compatible = "nxp,tja1057",
> +		.data = &tja1057_drvdata
> +	},
> +	{
> +		.compatible = "nxp,tjr1443",
> +		.data = &tcan1043_drvdata
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
> +
>  static struct platform_driver can_transceiver_phy_driver = {
>  	.probe = can_transceiver_phy_probe,
>  	.driver = {
> @@ -236,7 +236,6 @@ static struct platform_driver can_transceiver_phy_driver = {
>  		.of_match_table = can_transceiver_phy_ids,
>  	},
>  };
> -

This looks like a stray delete?

>  module_platform_driver(can_transceiver_phy_driver);
>  
>  MODULE_AUTHOR("Faiz Abbas <faiz_abbas@ti.com>");
> -- 
> 2.50.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
