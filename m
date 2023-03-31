Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86476C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 07:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gUfxC8npGDsDtemEypqOnOv2X7iFbC8Vh+dAlZieWA=; b=JOaumVHCIegiKv
	/H3lvbEc4kiFcOvEQPDvRQFz84RQLXmcAqBhpuwJbzURKACPF2wIZnNuOmcXa+JbqQKPpyCvv04//
	MYjlhUeNYs+ikp6Ah9ENzlqrE94KZCWq9uGmrpoWVthLYov0id7N+vdKYU3NgW59EcNFQUl3QIfJ1
	uWxneDJMDzsyxS+5GRvEy7jykdhQkVd1Uyr+KIIJbToR+ZNieKebBgDr46QjoNyCk8TP8tSCfbl8D
	Vwk1X4tW6Y474pErbs9VOp41mXuxUh6EwyAdZnZ3uML7IeTnqLvB/PfN3LCp/1w8ToTduL+djcNt6
	w6OMhK7T3td72KCZVxbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9Rh-006CbN-0U;
	Fri, 31 Mar 2023 07:45:13 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi9Rc-006Ca2-0t;
	Fri, 31 Mar 2023 07:45:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 8B1F6B82C54;
	Fri, 31 Mar 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF7A2C433EF;
	Fri, 31 Mar 2023 07:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680248705;
	bh=OGbRPiaaux5ZDB6f0vTfcVN9xGnQb7wk/z86yCbkj70=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D4Lex/3IWiDJsKJXdxeZn0qRWsfwSHsWcz26FNZAps4vR64qDh8LZULTWKiIm+/rl
	 3AL3XgQ2ftWVfSebTf5ekVIZN8NZltDBJ6lyvOiGnZvNfCc/EKMOiSWieeY6nWKcS/
	 cg2IAZ5xjHhhzeIdxObkbJgeCX3+zAMR6DQPqJQ1feQS2ed5ZtJcjc69MiHMG6TL3i
	 vVQ5jeR7nsFanRMh4ht2VB4uy3A3vqoH8kfMc3xuD5uKTVPovwA0S0YSsU7YZz5yt7
	 x15ivxK+fq8GNfAzfHsKPx0GdObzJ89AmbvTQ5lN+WgaeEF++sBnd5C/pLMelWKhiy
	 knyAP54bQKb7g==
Message-ID: <cfcdb25b-5426-2532-ab8c-224a5e33baf3@kernel.org>
Date: Fri, 31 Mar 2023 10:45:00 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] phy: ti: gmii-sel: Add support for CPSW9G GMII SEL in
 J784S4
Content-Language: en-US
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20230331062521.529005-1-s-vadapalli@ti.com>
 <20230331062521.529005-2-s-vadapalli@ti.com>
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230331062521.529005-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_004508_500714_DD1F9FAF 
X-CRM114-Status: GOOD (  17.65  )
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



On 31/03/2023 09:25, Siddharth Vadapalli wrote:
> Each of the CPSW9G ports in TI's J784S4 SoC support modes such as QSGMII.
> 
> Add a new compatible for it and allow the usage of "ti,qsgmii-main-ports"
> property for J784S4.
> 
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
>  drivers/phy/ti/phy-gmii-sel.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
> index c87118cb2af9..fba5c0c0771c 100644
> --- a/drivers/phy/ti/phy-gmii-sel.c
> +++ b/drivers/phy/ti/phy-gmii-sel.c
> @@ -235,6 +235,15 @@ struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j721e = {
>  	.num_qsgmii_main_ports = 2,
>  };
>  
> +static const
> +struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {

Please make it into one line

> +	.use_of_data = true,
> +	.regfields = phy_gmii_sel_fields_am654,
> +	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
> +	.num_ports = 8,
> +	.num_qsgmii_main_ports = 2,
> +};
> +
>  static const struct of_device_id phy_gmii_sel_id_table[] = {
>  	{
>  		.compatible	= "ti,am3352-phy-gmii-sel",
> @@ -264,6 +273,10 @@ static const struct of_device_id phy_gmii_sel_id_table[] = {
>  		.compatible	= "ti,j721e-cpsw9g-phy-gmii-sel",
>  		.data		= &phy_gmii_sel_cpsw9g_soc_j721e,
>  	},
> +	{
> +		.compatible	= "ti,j784s4-cpsw9g-phy-gmii-sel",
> +		.data		= &phy_gmii_sel_cpsw9g_soc_j784s4,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, phy_gmii_sel_id_table);
--
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
