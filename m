Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0959CDB47E
	for <linux-phy@archiver.kernel.org>; Wed, 18 Oct 2023 15:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1RYyKJPzxkLXkb5ZIoKsH3UwTSn78uQmQ1CX8VAJ/c=; b=EjHByyp6aPw0S2
	v+dP4x8v//ZN3nrrR3IEtAeuQjRmBuH7nHXyPDJZPRkYDp3bNo7O7TYH5f/SdC5Lvb2akbogDYwVW
	CJOSCefKRolGANIolNLhr+LQoWy+iXVfDszmzLsSFcL8p5JTLI6uxVw1zJthdiPLIOpK9mhQtXVHz
	n4gAruMgYoRzIkFZ6Ifoowd+FjDJpgQWgia/sSL5GSBY6uYyqgmw0DhyrejTSni7WZkFlrYfOQJpl
	VU+05q1oj5PipA24YL16EGT017jpedk8l1TCeApNhJaPmrUrOuFG1E8G5Rx9Anv04AwQ8+uRucNxE
	N+XYxXjMxfKCBHEpZbuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8M5-00F1kL-11;
	Wed, 18 Oct 2023 15:21:05 +0000
Received: from [50.53.46.231] (helo=[192.168.254.15])
	by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8M3-00F1k6-23;
	Wed, 18 Oct 2023 15:21:03 +0000
Message-ID: <fd672feb-dce5-4140-9609-5fc0392a6f23@infradead.org>
Date: Wed, 18 Oct 2023 08:21:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] phy: Kconfig: Select GENERIC_PHY for
 GENERIC_PHY_MIPI_DPHY
Content-Language: en-US
To: Sakari Ailus <sakari.ailus@linux.intel.com>, linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
References: <20231017080354.538047-1-sakari.ailus@linux.intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20231017080354.538047-1-sakari.ailus@linux.intel.com>
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



On 10/17/23 01:03, Sakari Ailus wrote:
> GENERIC_PHY can be selected by GENERIC_PHY_MIPI_DPHY directly as
> GENERIC_PHY has no dependencies. This way drivers that depend on
> GENERIC_PHY_MIPI_DPHY can avoid having to select both --- which they
> apparently often omit, too, which further leads to build failures.
> 
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  drivers/phy/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
> index d1670bbe6d6b..787354b849c7 100644
> --- a/drivers/phy/Kconfig
> +++ b/drivers/phy/Kconfig
> @@ -18,7 +18,7 @@ config GENERIC_PHY
>  
>  config GENERIC_PHY_MIPI_DPHY
>  	bool
> -	depends on GENERIC_PHY
> +	select GENERIC_PHY
>  	help
>  	  Generic MIPI D-PHY support.
>  

-- 
~Randy

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
