Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0894AC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 05:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18CPd+qx3ciTMkQQGiVEBabWJNoQoPOjz9Vii3uT/4I=; b=G4dl29FvwgL31w
	/VLcEEvxZzwXw2B2i7dY2pxX02GuOQqyIwtSca4RuQyqAXHi920cwmjvqRFEav/BCALA19/60o31R
	L6/2IHVQprFI7mSUNCj1+1zcWM1ngI6e27K2krFyV2tpAOHHbxFE6sHKNXcCUK6BXqA5/nMuGdDtg
	izBFmJVpQ0nAJa3M6c45eeu2ACIH0nxqpYzzatyD9uVAR5olF3PzVTOFcmEmB98eYfBBFc8vCWpgw
	e0R8MBytG44wkmapvWQ+R8jk/rXzq+dECcLSuKkompWMxovp6X3F58nEbChx6swRv6qzG+1N3U52y
	zkeE8NSIef4BthBsHrIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nesB8-003wmk-Ce; Thu, 14 Apr 2022 05:38:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nesAx-003wjK-8t; Thu, 14 Apr 2022 05:37:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id C4D6B61E35;
 Thu, 14 Apr 2022 05:37:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F4D6C385A1;
 Thu, 14 Apr 2022 05:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649914669;
 bh=OvCUBTX1ZAgB8ToDSbNbmHnIQ8kXnV7+uWxjqjVKne4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JvF5esoQdpTyrqK52quS/FxxjB6PsrHksGx2OwyQ32LgEPhrRjWvKRZApfVZzXLzw
 mA/YzjocNeAB361OfVk1iLricCnMsGhmKaQQqqMfLFpVUocSK4EhKtAscdPfSwqhrq
 61hU3bfa98o3jlZ/v1AgXq1C3TVpQ0yveoZNwhXTnKyverfK8/aZ5gQ+2fv5F/6Yha
 f763hQHqXQoT1EGd9LR0VdPPty+PIp2BUpsTOsGjGR8Te7nd4gHYNJPOaRk/g7SOWW
 4zLCRUHSSRU7olwtqyyhe8J0FK1EaMKmywiIk1SaQ+5kZ5/lRPH3EdDz8v3kaL4BRH
 l0m1h0e63GeeQ==
Date: Thu, 14 Apr 2022 11:07:44 +0530
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
Message-ID: <YlezKAw+W8HOa322@matsya>
References: <20220402052451.2517469-1-victor.liu@nxp.com>
 <20220402052451.2517469-3-victor.liu@nxp.com>
 <YlZpnrKt9NbHZv26@matsya>
 <d77b41d911e126331138ddaca146a581d316bd09.camel@nxp.com>
 <YlaqwoFCfusFgIIe@matsya>
 <a2731b2d77f9bf2adf36f0c05cb5e3b14a5a91a9.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2731b2d77f9bf2adf36f0c05cb5e3b14a5a91a9.camel@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_223751_434985_289CA27C 
X-CRM114-Status: GOOD (  25.67  )
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

On 13-04-22, 20:39, Liu Ying wrote:
> On Wed, 2022-04-13 at 16:19 +0530, Vinod Koul wrote:
> > On 13-04-22, 18:04, Liu Ying wrote:
> > > Hi Vinod,
> > > 
> > > On Wed, 2022-04-13 at 11:41 +0530, Vinod Koul wrote:
> > > > On 02-04-22, 13:24, Liu Ying wrote:
> > > > > This patch allows LVDS PHYs to be configured through
> > > > > the generic functions and through a custom structure
> > > > > added to the generic union.
> > > > > 
> > > > > The parameters added here are based on common LVDS PHY
> > > > > implementation practices.  The set of parameters
> > > > > should cover all potential users.
> > > > > 
> > > > > Cc: Kishon Vijay Abraham I <kishon@ti.com>
> > > > > Cc: Vinod Koul <vkoul@kernel.org>
> > > > > Cc: NXP Linux Team <linux-imx@nxp.com>
> > > > > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > > > > ---
> 
> [...]
> 
> > > > > + */
> > > > > +
> > > > > +#ifndef __PHY_LVDS_H_
> > > > > +#define __PHY_LVDS_H_
> > > > > +
> > > > > +/**
> > > > > + * struct phy_configure_opts_lvds - LVDS configuration set
> > > > > + * @bits_per_lane_and_dclk_cycle:	Number of bits per data
> > > > > lane
> > > > > and
> > > > > + *					differential clock
> > > > > cycle.
> > > > 
> > > > What does it mean by bits per data lane and differential clock
> > > > cycle?
> > > 
> > > Please check
> > > Documentation/devicetree/bindings/display/panel/lvds.yaml.
> > > lvds.yaml metions slot.  'bits_per_lane_and_dclk_cycle' means the
> > > number of slots.  But, I don't find the word 'slot' in my lvds
> > > relevant
> > > specs which mentioned in lvds.yaml, so 'slots' is probably not a
> > > generic name(lvds.yaml is for display panel).  So, I use
> > > 'bits_per_lane_and_dclk_cycle' as the name tells what it means.
> > 
> > variable name is fine, explanation for bit per lane and differential
> > clock cycle didnt help, maybe add better explanation of what this
> > variable means
> 
> I may add an example diagram as below...

Not really a diagram, you can add if you like.. But something which
explains in a sentence or few about the variable.

bits per lane per differential clock cycle ?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
