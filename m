Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05240C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 11 Apr 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gAqv8UOqelFmKXEkl73P/nFfgs1PvAa+K2rD1cjLug=; b=2revj7EWOnQmed
	jTrrDsSUAwgjT5ZnQPpeh43kffxVrkJsBbP7/vfhCb82amOV60n0blMQZ6MOeiZ0LkS4JEADCTv3o
	aVxQX0PANAYWdki4g+q/R7U6ZNXZ9t3rrNV3jW6MyNWenowul+YLMtAp59I7C7ZCvmT3OZYO/YZ0l
	zu1dWl69kEcyS6XSF0xyYa6By4fR99BQZhCgE3cxAsAH/fyGM62BqIKZm6OAxUkKoQGBj2J27vAdA
	wxGjz+pYkhnddJmexWOe/yBFl025wmr8AQjmZ6VG2GhLk0CB/O81DHnUh/xNPCGeHmlO6V0CgIc0Y
	mJwvoCzMk78OqDtyivZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndt2L-008x17-E7; Mon, 11 Apr 2022 12:20:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndt2A-008wyC-Hb
 for linux-phy@lists.infradead.org; Mon, 11 Apr 2022 12:20:44 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ndt1s-0004DP-Bg; Mon, 11 Apr 2022 14:20:24 +0200
Message-ID: <f2fc68f6c2034546009c96658da0e63f191978d1.camel@pengutronix.de>
Subject: Re: [PATCH v0 07/10] phy: freescale: add Samsung HDMI PHY
From: Lucas Stach <l.stach@pengutronix.de>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring
 <robh+dt@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam
 <festevam@gmail.com>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>, Neil Armstrong
 <narmstrong@baylibre.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Vinod
 Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 patchwork-lst@pengutronix.de
Date: Mon, 11 Apr 2022 14:20:22 +0200
In-Reply-To: <20220411115922.luv2gyutdecvsxa3@houat>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
 <20220406160123.1272911-8-l.stach@pengutronix.de>
 <20220411115922.luv2gyutdecvsxa3@houat>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_052042_591111_DBBE019D 
X-CRM114-Status: GOOD (  17.47  )
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

Hi Maxime,

Am Montag, dem 11.04.2022 um 13:59 +0200 schrieb Maxime Ripard:
> Hi Lucas,
> 
> On Wed, Apr 06, 2022 at 06:01:20PM +0200, Lucas Stach wrote:
> > +static unsigned long phy_clk_recalc_rate(struct clk_hw *hw,
> > +					 unsigned long parent_rate)
> > +{
> > +	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
> > +
> > +	if (!phy->cur_cfg)
> > +		return 0;
> > +
> > +	return phy->cur_cfg->clk_rate;
> > +}
> 
> This means that the clock will return 0 at initialization, which will
> throw the rate accounting in the CCF off.
> 
> Returning 0 here isn't valid. Surely that phy has a default
> configuration at boot that you could use to initialize a rate?
> 
> See https://lore.kernel.org/linux-clk/20220408091037.2041955-1-maxime@cerno.tech/

Thanks for the hint. I don't know the full history of this and surely I
can use the register reset defaults to initialize the clock rate, but
it still seems odd. A powered down clock generator, like the PLL in
this PHY, is not actually putting out a clock at any rate, so 0 for the
rate seems natural, so it's kind of a bad pitfall if the CCF can't deal
with that.

Regards,
Lucas


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
