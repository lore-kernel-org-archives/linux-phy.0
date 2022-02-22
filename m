Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A5AC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 14:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJawpzMACb18P/pUGe13u3lKtX2voxQTIE7DvsJN8DY=; b=qzfyqcUxUeRbcP
	s/0uyhLIa8VPTM/8ix82WClRL8gXwewTDJG7ncMJgdCCENMzUE9G2EaS+5kMycqmIEiEO58kP49ht
	qV32o6y/HKuHvCJu9zb+L8gmqbEc8l/1q1hG77kB/ftgf10QBu93yaC12+0DadE5k2QEElDHJXlqU
	l0REIEtrrTxG0TqOkTdH7hJXxZ2xs52bzGoyfGyuT/7h6VeNQV0ZfVNuamm7T0B2mUP4YLYWrNKom
	UgOPwfVNoQ85XYzIIs31MARoG1aYzqsd6Om2pt5ITutcbGrk6lRp7n9v4BMHMwJHPkpchXQvmz4eV
	DnTeEQ/rCZ3OayW5ci6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMVsK-009p2N-2X; Tue, 22 Feb 2022 14:10:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMVsG-009p12-Eh
 for linux-phy@lists.infradead.org; Tue, 22 Feb 2022 14:10:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DD18661486;
 Tue, 22 Feb 2022 14:10:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA1E6C340F0;
 Tue, 22 Feb 2022 14:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645539039;
 bh=mIAp2LLc6xWWL3o5yI6XQYBeO/1InohcDH9qSKGds5g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aFi8tmZzVKR2gc3QK92t/eb+wmnLiB8Qndgqvdauqi4eJC/OHPNC1Xq2vrU9BeEkZ
 3hJRL3L31SG2jTX2iMvPmXamNTgKfWA2pThCQLMa8YQZVxivopvD/1aG1xA80lkJeo
 uP4LSbGhrzSDSDAtV56A8t4SKpdYZYrnC8+7tPZ35KL9YldUcaL+j1Lez1r08II4Xg
 37Ebr+zyzI/uR3WtG8DoW/8DzIDek0afFEQx1mu6EqU1Vbdi1MJxU2/LjfIhLByggX
 I0xe57F1Anf5BDNS1iEnLXW2tvHCNHszmyQvdz59Gv2dlPpzlzqzpnvaEAFEfTbzEd
 EBnTZSB6Nh6fA==
Date: Tue, 22 Feb 2022 19:40:34 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v9 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Message-ID: <YhTu2ixdWBKU1Y8y@matsya>
References: <20220131173314.2073641-1-p.yadav@ti.com>
 <20220131173314.2073641-2-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220131173314.2073641-2-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_061040_614007_90EE8B59 
X-CRM114-Status: GOOD (  29.57  )
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

On 31-01-22, 23:03, Pratyush Yadav wrote:
> The Cadence D-PHY can be configured in Tx (DSI) mode or Rx (CSI) mode.
> Both modes have a different programming sequence and share little among
> them. In addition, a PHY configured in Tx mode cannot be used in Rx mode
> and vice versa. For this reason, create a separate driver for the Rx
> mode to make it easier to read and maintain.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> 
> Changes in v9:
> - Use %ld instead of %d for printing PTR_ERR().
> 
> Changes in v8:
> - Move lanes check to start of configure sequence.
> - Change MODULE_LICENSE() to "GPL".
> - Add Laurent's R-by.
> 
> Changes in v7:
> - Add spaces after { and before } in the bands table.
> - Drop the wrapping around the for loop on cdns_dphy_rx_get_band_ctrl().
> - Make cdns_dphy_rx_wait_for_bit() inline.
> - Print an error message if registering PHY provider fails.
> 
> Changes in v6:
> - Move to a separate driver.
> 
> Changes in v5:
> - Use the new cdns_dphy_info to specify PHY ops.
> - Re-order include in alphabetical order.
> - Make bands const.
> - Drop num_bands.
> - Make i, lanes unsigned.
> - Drop the maximum check in cdns_dphy_rx_get_band_ctrl(). Let the loop
>   complete and return -EOPNOTSUPP when we reach the end.
> - Drop the "rate < bands[i].min_rate" check since the bands are in
>   ascending order.
> - Move data_lane_ctrl to start of function and make it static const.
> 
> Changes in v4:
> - Drop the submode parts. Use a different compatible for the Rx ops.
> - Make bands and num_bands static.
> 
> Changes in v3:
> - Use a table to select the band.
> - Use a table to poll the data lane ready bits.
> - Multiply the DPHY HS clock rate by 2 to get the bit rate since the
>   clock is DDR.
> 
>  drivers/phy/cadence/Kconfig        |   8 +
>  drivers/phy/cadence/Makefile       |   1 +
>  drivers/phy/cadence/cdns-dphy-rx.c | 255 +++++++++++++++++++++++++++++
>  3 files changed, 264 insertions(+)
>  create mode 100644 drivers/phy/cadence/cdns-dphy-rx.c
> 
> diff --git a/drivers/phy/cadence/Kconfig b/drivers/phy/cadence/Kconfig
> index a62910ff5591..1adde2d99ae7 100644
> --- a/drivers/phy/cadence/Kconfig
> +++ b/drivers/phy/cadence/Kconfig
> @@ -22,6 +22,14 @@ config PHY_CADENCE_DPHY
>  	  system. If M is selected, the module will be called
>  	  cdns-dphy.
>  
> +config PHY_CADENCE_DPHY_RX
> +	tristate "Cadence D-PHY Rx Support"
> +	depends on HAS_IOMEM && OF
> +	select GENERIC_PHY
> +	select GENERIC_PHY_MIPI_DPHY
> +	help
> +	  Support for Cadence D-PHY in Rx configuration.
> +
>  config PHY_CADENCE_SIERRA
>  	tristate "Cadence Sierra PHY Driver"
>  	depends on OF && HAS_IOMEM && RESET_CONTROLLER
> diff --git a/drivers/phy/cadence/Makefile b/drivers/phy/cadence/Makefile
> index 26e16bd34efe..e17f035ddece 100644
> --- a/drivers/phy/cadence/Makefile
> +++ b/drivers/phy/cadence/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  obj-$(CONFIG_PHY_CADENCE_TORRENT)	+= phy-cadence-torrent.o
>  obj-$(CONFIG_PHY_CADENCE_DPHY)	+= cdns-dphy.o
> +obj-$(CONFIG_PHY_CADENCE_DPHY_RX)	+= cdns-dphy-rx.o
>  obj-$(CONFIG_PHY_CADENCE_SIERRA)	+= phy-cadence-sierra.o
>  obj-$(CONFIG_PHY_CADENCE_SALVO)	+= phy-cadence-salvo.o
> diff --git a/drivers/phy/cadence/cdns-dphy-rx.c b/drivers/phy/cadence/cdns-dphy-rx.c
> new file mode 100644
> index 000000000000..c9bb8c7f16f6
> --- /dev/null
> +++ b/drivers/phy/cadence/cdns-dphy-rx.c
> @@ -0,0 +1,255 @@
> +// SPDX-License-Identifier: GPL-2.0+

GPL v2 and more...

> +/*
> + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/

this should say 2022 as well

> +MODULE_AUTHOR("Pratyush Yadav <p.yadav@ti.com>");
> +MODULE_DESCRIPTION("Cadence D-PHY Rx Driver");
> +MODULE_LICENSE("GPL");

This means GPL v2 only and does not match SPDX tag, pls update

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
