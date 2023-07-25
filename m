Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B35C00528
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 06:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7mggS0SoaCebSlMjzGzfW0HUL+nSdiq6Zm0VqjLJNhA=; b=GtzDs+3bD514RH
	WMHeD/AbINiNPTrlQ8zwIS2tNqeaFiiOIuFB0IDauiZT4DyWjTFNK/448a07GihrvR2W7GVpLEe8V
	lHbYhyH65BXKZVeZaeUtPDgIHZJwcgZKvaqCufUcgphXk3EH/U87DJP3Ap3JhJkpEK3l8CrOTU6QO
	vOQja5KUW75gPfxWsMlOdmjnEIjGR9v+unKZDxeSU93wUxjh2MiLUJ3ZC+17mPOZwvd66GQEL9pu+
	9pRFYCh/e2+mvkY5RGvHRwIhF/XTHlHmhD6nQuvAhwN2uGNPk/qkCj4dwnOqVoQoa9dgoaIpzC0qK
	v4EIcAYM7qSmTGH8x4nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBnP-006S4X-2S;
	Tue, 25 Jul 2023 06:45:23 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBnK-006S1R-1q
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 06:45:21 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id AA88324DBC0;
	Tue, 25 Jul 2023 14:44:51 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 25 Jul
 2023 14:44:51 +0800
Received: from [192.168.125.107] (183.27.99.135) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 25 Jul
 2023 14:44:50 +0800
Message-ID: <b466b004-e5f2-7494-2fa5-3d27e9339118@starfivetech.com>
Date: Tue, 25 Jul 2023 14:44:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] phy: starfive: make phys depend on HAS_IOMEM
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, Minda Chen <minda.chen@starfivetech.com>,
	Roger Quadros <rogerq@kernel.org>, kernel test robot <lkp@intel.com>
References: <20230725063856.482696-1-vkoul@kernel.org>
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <20230725063856.482696-1-vkoul@kernel.org>
X-Originating-IP: [183.27.99.135]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_234518_785691_91BCC9A0 
X-CRM114-Status: GOOD (  10.61  )
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



On 2023/7/25 14:38, Vinod Koul wrote:
> the startfive phy drivers use devm_platform_ioremap_resource() which on
> some archs (s390) is not present. So make the drivers depend on HAS_IOMEM
> 
> Fixes: f8aa660841bc ("phy: starfive: Add mipi dphy rx support")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202307250509.oeudxG28-lkp@intel.com/
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Changhuang Liang <changhuang.liang@starfivetech.com>

> ---
>  drivers/phy/starfive/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
> index a560533a674e..0508f9b123e0 100644
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


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
