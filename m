Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 055EDC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 06:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0u9ReVnftmJJGkE7GjHLqgjOUTdHcr8tIT3Q46spIzU=; b=dpllzwJCfO9YaH
	g2yGJ2O/pejm96Y5KgoewmTkLeWMTjd6gBWVsnOR+vdtTDF1dbGwEGU0FxpoRQRSeQdN49m7yf8W4
	/fvrJ/965jmR3HXyhZg7bjE5Z8nest1T2NBiLs3k2kJQPYIcpIEVB8mKyqTDdoT4aIAVPBtyjGXm+
	d7jOU65lpJUS7tmT/Rgh1Jiwgda9ZKN/STpqAoiHglI6/tqJyRkKYCmaicWtvjUBTYgfe80gb6KER
	jyaww+0qOA6T2TTA0JnKCQxcbtkdk+sH4bA72ldLRzDR+t86VZ4YT1PVVbg+z4Xtrvn3O6ggjjV+l
	uC1wc+Zk1XeKDwihky9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neWS6-00H8BM-Rs; Wed, 13 Apr 2022 06:26:06 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neWEH-00H2An-C5; Wed, 13 Apr 2022 06:11:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B0351B8210C;
 Wed, 13 Apr 2022 06:11:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C95EEC385A6;
 Wed, 13 Apr 2022 06:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649830306;
 bh=LgHIzY7EW2JlZQiFNPaNQv1hWKib1EqgqFQRnlXmey4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RezEm1vbs11Llplocc8D3OaWU+c1yhnGJOfEbnETpVea3VNvjoPljMe2/N0dDkM4o
 yf1AV+O11eVhbWzrMnAx7OTuTtbIgd1AJvTCSsPPCaV1t0PDpOYRQLQpWWufQG3Jcp
 9bBGNGPi0453X/iWefV2qMhdPIAPTELOAK3BSN7jHmVwHhprxQJeYVW1dWcr9Q5XER
 7+Ts+h8kGcOjwvyDUpxua5NpusWUbThWEDlT1dm2UVUwF/GVj0EzXY4d8cTb9TqOV2
 vO0MnGSXnq6nkIs+mO93KtakTf1TX8uQUkIaYdaHfYDmitTBcktJb/ax2c1l6Demiv
 i9UayJ92OaoAg==
Date: Wed, 13 Apr 2022 11:41:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com,
 robh+dt@kernel.org, andrzej.hajda@intel.com,
 narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com,
 jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@linux.ie,
 daniel@ffwll.ch, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 agx@sigxcpu.org, robert.chiras@nxp.com, martin.kepplinger@puri.sm,
 robert.foss@linaro.org
Subject: Re: [PATCH v6 resend 2/5] phy: Add LVDS configuration options
Message-ID: <YlZpnrKt9NbHZv26@matsya>
References: <20220402052451.2517469-1-victor.liu@nxp.com>
 <20220402052451.2517469-3-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220402052451.2517469-3-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_231149_772963_B64A1245 
X-CRM114-Status: GOOD (  24.77  )
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

On 02-04-22, 13:24, Liu Ying wrote:
> This patch allows LVDS PHYs to be configured through
> the generic functions and through a custom structure
> added to the generic union.
> 
> The parameters added here are based on common LVDS PHY
> implementation practices.  The set of parameters
> should cover all potential users.
> 
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v5->v6:
> * Rebase upon v5.17-rc1.
> 
> v4->v5:
> * Align kernel-doc style to include/linux/phy/phy.h. (Vinod)
> * Trivial tweaks.
> * Drop Robert's R-b tag.
> 
> v3->v4:
> * Add Robert's R-b tag.
> 
> v2->v3:
> * No change.
> 
> v1->v2:
> * No change.
> 
>  include/linux/phy/phy-lvds.h | 32 ++++++++++++++++++++++++++++++++
>  include/linux/phy/phy.h      |  4 ++++
>  2 files changed, 36 insertions(+)
>  create mode 100644 include/linux/phy/phy-lvds.h
> 
> diff --git a/include/linux/phy/phy-lvds.h b/include/linux/phy/phy-lvds.h
> new file mode 100644
> index 000000000000..7a2f4747f624
> --- /dev/null
> +++ b/include/linux/phy/phy-lvds.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright 2020 NXP

2022 now

> + */
> +
> +#ifndef __PHY_LVDS_H_
> +#define __PHY_LVDS_H_
> +
> +/**
> + * struct phy_configure_opts_lvds - LVDS configuration set
> + * @bits_per_lane_and_dclk_cycle:	Number of bits per data lane and
> + *					differential clock cycle.

What does it mean by bits per data lane and differential clock cycle?

> + * @differential_clk_rate:		Clock rate, in Hertz, of the LVDS
> + *					differential clock.
> + * @lanes:				Number of active, consecutive,
> + *					data lanes, starting from lane 0,
> + *					used for the transmissions.
> + * @is_slave:				Boolean, true if the phy is a slave
> + *					which works together with a master
> + *					phy to support dual link transmission,
> + *					otherwise a regular phy or a master phy.
> + *
> + * This structure is used to represent the configuration state of a LVDS phy.
> + */
> +struct phy_configure_opts_lvds {
> +	unsigned int	bits_per_lane_and_dclk_cycle;
> +	unsigned long	differential_clk_rate;
> +	unsigned int	lanes;
> +	bool		is_slave;
> +};

Where is the user of this new configuration? Can you post that patch for
reference as well please

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
