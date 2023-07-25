Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92AE3C0015E
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 06:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfXzYFcU9TMCHj0lYUivBQYyQWZy8Rf8KD3KxlCYCPA=; b=t7EYqauO96J8i6
	vH9Y9JtIFKrR069hSCUq+d7jxsma8AdXS5zSdNcwsJDLj+BZS40RZhLT/d2VQXF78g/K4ANNNgOu1
	4L88lIVRDkSqrw/5zVICq9lokcl3RNSc4ukpvl2ujTCKzIzCBqLYmxmf01hegajn3F4pCY1CQkyK/
	VKMeo/ooRX5BQRQSqWaUz6a/0T6XfYVVQ461sAyDyUCwl8LPsw7tJlM5xEO8rb1Rg/14PWNKUZjK0
	ow5yIwIZhOnd2PU12WgYR9EDmgKNaBM/rwUY1X5Et2h8GLH8ZCoX2b5kkMsWWRxR40aShfpQJPtrE
	QRVcb0dcjWSdalilOYug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBWy-006Pgr-0v;
	Tue, 25 Jul 2023 06:28:24 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBWt-006PdR-0J
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 06:28:23 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 64DD624E1FB;
	Tue, 25 Jul 2023 14:27:14 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 25 Jul
 2023 14:27:14 +0800
Received: from [192.168.125.127] (183.27.99.135) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 25 Jul
 2023 14:27:13 +0800
Message-ID: <f09f3229-96ba-67a8-ccf1-e2184006c979@starfivetech.com>
Date: Tue, 25 Jul 2023 14:27:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] phy: starfive: make phys depend on HAS_IOMEM
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, Roger Quadros <rogerq@kernel.org>,
	Changhuang Liang <changhuang.liang@starfivetech.com>, kernel test robot
	<lkp@intel.com>
References: <20230725062216.481909-1-vkoul@kernel.org>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <20230725062216.481909-1-vkoul@kernel.org>
X-Originating-IP: [183.27.99.135]
X-ClientProxiedBy: EXCAS065.cuchost.com (172.16.6.25) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_232819_329279_D10C2AC8 
X-CRM114-Status: GOOD (  12.56  )
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



On 2023/7/25 14:22, Vinod Koul wrote:
> the startfive phy drivers use devm_platform_ioremap_resource() which on
> some archs (s390) is not present. So make the drivers depend on HAS_IOMEM
> 
> Fixes: f8aa660841bc ("phy: starfive: Add mipi dphy rx support")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202307250509.oeudxG28-lkp@intel.com/
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/phy/starfive/Kconfig | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
> index a560533a674e..ea82261ca818 100644
> --- a/drivers/phy/starfive/Kconfig
> +++ b/drivers/phy/starfive/Kconfig
> @@ -5,6 +5,7 @@
>  
>  config PHY_STARFIVE_JH7110_DPHY_RX
>  	tristate "StarFive JH7110 D-PHY RX support"
> +	depends on HAS_IOMEM
>  	select GENERIC_PHY
>  	select GENERIC_PHY_MIPI_DPHY
>  	help
> @@ -24,7 +25,7 @@ config PHY_STARFIVE_JH7110_PCIE
>  
>  config PHY_STARFIVE_JH7110_USB
>  	tristate "Starfive JH7110 USB 2.0 PHY support"
> -	depends on USB_SUPPORT
> +	depends on USB_SUPPORT && HAS_IOMEM
>  	select GENERIC_PHY
>  	help
>  	  Enable this to support the StarFive USB 2.0 PHY,
Hi Vinod

The USB_SUPPORT already depends on HAS_IOMEM.

menuconfig USB_SUPPORT
        bool "USB support"
        depends on HAS_IOMEM
        default y

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
