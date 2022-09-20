Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30593C6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dlT/GVYjRM2+2gYnNeJBaemc/5B6O3rzHB7YQFUDeOY=; b=08IvQmAmMsGHYk
	47HtsxjA0vDc4KuU89S0Hcw7ME27261sd542+JOjyQFHMn/jaJ66llcqfszPDX9YGPeAtZK0wE0/3
	Whkq1OFugNNHvMHC7VTXiYHYDKazK5cklnCzEVdxhqnCJ3MFg6MkRYwpYEfnIyh7lFj42v6P4YpWd
	2so6itQIDtzXNZo2m27/YrTl8oX80U+Vb8K95KogTCnU9sGdRNd26vznyLqqbJ0YxhMvsJnWCD64K
	5eYo0ZvrMvkRC/VVP94pB2kIGBTOyNjbS1Uxu1lJeXFiw8uj6KLIM+vT1l15EzZWn8R1V2fVrvSpL
	4FC3/dbIDyMFQI3vTLhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWax-000wLW-Jd; Tue, 20 Sep 2022 06:18:59 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWao-000wIT-Nq
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 06:18:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 298EEB824ED;
	Tue, 20 Sep 2022 06:18:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A9D0C433D6;
	Tue, 20 Sep 2022 06:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654727;
	bh=epqbAQDzi7Y6+cm6VeGS22oyH/dSpFcCuaaWXgHqNJo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YVXo7WCR3E7LtLBJE/xVIcQLPe0oweis9AVS1Pq01bkzPt8XR9qfzp2yc4dHok0QJ
	 BHu0sR8eY1dmRxE3A0a0I9YqxSAJ/G0IX6vOYGTXYJhPyR3iAS/2Pocslpuf8FuTzX
	 HV6B4I6ABFOVSJrba34IWBx5uz0y5otia7MoZ/as4ToItVYA7SZdE3p61NdexLm0Cm
	 G5yUUGy9XZ6UZUHp99hklIdL6G3tQ5EmGZ2s+Kx/REpdZLngtdC6OKUi8W9w3r8KqT
	 KKvJE2GMSEmDb+z/bIVr69Ry2FnAbMUjIDzIfLI6EcVYN6IbO+LkSJcJ+/A0k2jP06
	 E7OtwVh5luI3A==
Date: Tue, 20 Sep 2022 11:48:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: davem@davemloft.net, linux-phy@lists.infradead.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Russell King <linux@armlinux.org.uk>, UNGLinuxDriver@microchip.com,
	thomas.petazzoni@bootlin.com
Subject: Re: [PATCH net-next] phy: lan966x: add support for QUSGMII
Message-ID: <YylbRBPC+0JAvtQU@matsya>
References: <20220826141722.563352-1-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220826141722.563352-1-maxime.chevallier@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_231852_904492_2061BECE 
X-CRM114-Status: GOOD (  22.44  )
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

On 26-08-22, 16:17, Maxime Chevallier wrote:
> Makes so that the serdes driver also takes QUSGMII in consideration.
> It's configured exactly as QSGMII as far as the serdes driver is
> concerned.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> 
> Dear netdev and Generic PHY maintainers,
> 
> This patch should go through the net-next tree instead of the generic
> PHY tree, as it has a dependency on :
> 
> 5e61fe157a27 "net: phy: Introduce QUSGMII PHY mode"
> 
> This commits only lives in the net-next tree as of today.
> 
> Given the simplicity of this patch, would that be OK for you ?


Sure:

Acked-By: Vinod Koul <vkoul@kernel.org>

> 
> Thanks,
> 
> Maxime
> 
>  drivers/phy/microchip/lan966x_serdes.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
> index e86a879b92b5..d1a50fa81130 100644
> --- a/drivers/phy/microchip/lan966x_serdes.c
> +++ b/drivers/phy/microchip/lan966x_serdes.c
> @@ -401,6 +401,9 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>  	    submode == PHY_INTERFACE_MODE_2500BASEX)
>  		submode = PHY_INTERFACE_MODE_SGMII;
>  
> +	if (submode == PHY_INTERFACE_MODE_QUSGMII)
> +		submode = PHY_INTERFACE_MODE_QSGMII;
> +
>  	for (i = 0; i < ARRAY_SIZE(lan966x_serdes_muxes); i++) {
>  		if (macro->idx != lan966x_serdes_muxes[i].idx ||
>  		    mode != lan966x_serdes_muxes[i].mode ||
> -- 
> 2.37.2
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
