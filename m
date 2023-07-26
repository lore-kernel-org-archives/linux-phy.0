Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCFAC0015E
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jul 2023 01:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWt2EREdwm3kLUDwMGhuq4GCFT0QX8ThyufsNJVHxro=; b=aYRs+/NbOqpgF2
	sYeftLCSIUaOS/8Q5ZMNHvjU5de7ODTSgO7ZmZ7KSy0cbpqQZ2Qb4BGKl8gchC6zFOoMlModLPgQp
	4DGmhvshUGS4zqVcTPZa25SUs+1ysr2dT9Sr+flf8a0tcC9jMn/TPn7rSF+R0QiFeyuoDpKTGMnYg
	grxrvqJ8SNEtxMfn0pQN/7JDdJhB+R4JUAOk6pcBk5MSUL6TpWqCjOsK91ZIX6vrTmSlsh1YfbnBh
	DaJHUjElWJvEfR5YmqBL6DSyjayONYo8BFWRR7rwd2NWVPXx/6g3g44VXnA9eUGSA1mZoP9HB1lsn
	bTRLOcSWoSngVE9Cs+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOTNL-008r6c-1U;
	Wed, 26 Jul 2023 01:31:39 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOTNH-008r5s-2D
	for linux-phy@lists.infradead.org;
	Wed, 26 Jul 2023 01:31:38 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 8D27124E207;
	Wed, 26 Jul 2023 09:31:01 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 26 Jul
 2023 09:31:01 +0800
Received: from [192.168.125.107] (183.27.99.135) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 26 Jul
 2023 09:31:00 +0800
Message-ID: <cbc5b6e6-c706-b251-9a8e-0eecbc9871a8@starfivetech.com>
Date: Wed, 26 Jul 2023 09:30:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] phy: starfive: StarFive PHYs should depend on
 ARCH_STARFIVE
To: Geert Uytterhoeven <geert+renesas@glider.be>, Vinod Koul
	<vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Minda Chen
	<minda.chen@starfivetech.com>, Roger Quadros <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <12097f6107a18e2f7cfb80f47ac7b27808e062c4.1690300076.git.geert+renesas@glider.be>
Content-Language: en-US
From: Changhuang Liang <changhuang.liang@starfivetech.com>
In-Reply-To: <12097f6107a18e2f7cfb80f47ac7b27808e062c4.1690300076.git.geert+renesas@glider.be>
X-Originating-IP: [183.27.99.135]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_183135_907168_119F7919 
X-CRM114-Status: GOOD (  11.71  )
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



On 2023/7/25 23:49, Geert Uytterhoeven wrote:
> The various StarFive PHYs are only present on StarFive SoCs.  Hence add
> a dependency on ARCH_STARFIVE, to prevent asking the user about these
> drivers when configuring a kernel without StarFive SoC support.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/phy/starfive/Kconfig | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
> index a560533a674ee0a5..4457b3872aa146a4 100644
> --- a/drivers/phy/starfive/Kconfig
> +++ b/drivers/phy/starfive/Kconfig
> @@ -3,6 +3,8 @@
>  # Phy drivers for StarFive platforms
>  #
>  
> +if ARCH_STARFIVE || COMPILE_TEST
> +
>  config PHY_STARFIVE_JH7110_DPHY_RX
>  	tristate "StarFive JH7110 D-PHY RX support"
>  	select GENERIC_PHY
> @@ -31,3 +33,5 @@ config PHY_STARFIVE_JH7110_USB
>  	  used with the Cadence USB controller.
>  	  If M is selected, the module will be called
>  	  phy-jh7110-usb.ko.
> +
> +endif # ARCH_STARFIVE || COMPILE_TEST

For dphy rx parts:

Acked-by: Changhuang Liang <changhuang.liang@starfivetech.com>

Thanks,
Changhuang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
