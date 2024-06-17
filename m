Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 043FFC2BA18
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 16:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJe5kTRlBCjjuVmPi+O+aHtp6sPyPv+PugMDGWDVC6I=; b=VYdPPjB2YWQA2p
	OUMrv3G5STpKEO6fZEu1rqCnDDctXjL6UGmeZ5bFyYLTvLAN6jS5ePl0kbuWw5xkV398mmmcEUCY3
	xUrdv7mkDVwc0lAJjyr8DaBGp1oyzNH4Vxc5LE59fZ0hhYNMwPf6Kg7PuP5zzGo7JGmXzlyk97pEd
	I4E0fDmCnwk+8f5sb5Zdlog3qzN2QcCq2Gtgw+kLzYti3qEMapaFKuZdk3aaN+aaeE8HSHN9Vjhtf
	hafsxncrE+2f+0QMhVJWssYmxgCSI+iOcgKGrEGsp2qRqJY7lloIAFPmBRTMeXrjcOvpMbBJ5zAo1
	FeqpL6EGJbemjA8V+xEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFIJ-0000000BkY0-2voM;
	Mon, 17 Jun 2024 16:33:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFIG-0000000BkWW-1TZA
	for linux-phy@lists.infradead.org;
	Mon, 17 Jun 2024 16:33:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1sJFHk-00033H-3A; Mon, 17 Jun 2024 18:32:48 +0200
Message-ID: <22a3f5266260dd3915269ae3eec7724f7537eb55.camel@pengutronix.de>
Subject: Re: drm/bridge/imx8mp-hdmi-tx: Allow inexact pixel clock
 frequencies (Was: [PATCH V8 10/12] drm/bridge: imx: add bridge wrapper
 driver for i.MX8MP DWC HDMI)
From: Lucas Stach <l.stach@pengutronix.de>
To: Dominique MARTINET <dominique.martinet@atmark-techno.com>, Adam Ford
	 <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>,  Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,  Jernej
 Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team
 <linux-imx@nxp.com>,  Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Makoto Sato <makoto.sato@atmark-techno.com>
Date: Mon, 17 Jun 2024 18:32:45 +0200
In-Reply-To: <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
References: <20240203165307.7806-1-aford173@gmail.com>
	 <20240203165307.7806-11-aford173@gmail.com>
	 <Zm_UzO4Jmm7Aykcm@atmark-techno.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_093320_447401_9048B981 
X-CRM114-Status: GOOD (  35.67  )
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

Hi Dominique,

Am Montag, dem 17.06.2024 um 15:16 +0900 schrieb Dominique MARTINET:
> Adam Ford wrote on Sat, Feb 03, 2024 at 10:52:50AM -0600:
> > From: Lucas Stach <l.stach@pengutronix.de>
> > 
> > Add a simple wrapper driver for the DWC HDMI bridge driver that
> > implements the few bits that are necessary to abstract the i.MX8MP
> > SoC integration.
> 
> Hi Lucas, Adam,
> (trimmed ccs a bit)
> 
> First, thank you for the effort of upstreaming all of this!! It's really
> appreciated, and with display working I'll really be wanting to upstream
> our DTS as well as soon as I have time (which is going to be a while,
> but better late than never ?)
> 
> Until then, it's been a few months but I've got a question on this bit:
> 
> > diff --git a/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> > new file mode 100644
> > index 000000000000..89fc432ac611
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx.c
> > +static enum drm_mode_status
> > +imx8mp_hdmi_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
> > +		       const struct drm_display_info *info,
> > +		       const struct drm_display_mode *mode)
> > +{
> > +	struct imx8mp_hdmi *hdmi = (struct imx8mp_hdmi *)data;
> > +
> > +	if (mode->clock < 13500)
> > +		return MODE_CLOCK_LOW;
> > +
> > +	if (mode->clock > 297000)
> > +		return MODE_CLOCK_HIGH;
> > +
> > +	if (clk_round_rate(hdmi->pixclk, mode->clock * 1000) !=
> > +	    mode->clock * 1000)
> > +		return MODE_CLOCK_RANGE;
> 
> Do you know why such a check is here?

Sending a HDMI signal with a different rate than what the display
expects rarely ends well, so this check avoids that.

However, this check is a bit overcautious in that it only allows exact
rate matches. IIRC HDMI allows a rate mismatch of +- 0.5%, so this
check could be relaxed quite a bit to allow for that.
> 
> When plugging in a screen with no frequency identically supported in its
> EDID this check causes the screen to stay black, and we've been telling
> customers to override the EDID but it's a huge pain.
> 
> Commit 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY") already
> "fixed" the samsung hdmi phy driver to return the next frequency if an
> exact match hasn't been found (NXP tree's match frequencies exactly, but
> this gets the first clock with pixclk <= rate), so if this check is also
> relaxed our displays would work out of the box.
> 
> I also don't see any other bridge doing this kind of check.
> drivers/gpu/drm/bridge/imx/imx93-mipi-dsi.c has a similar check with a
> 0.5% leeway, and all the other drivers don't check anything.
> If you want to add some level of safety, I think we could make this work
> with a 5% margin easily... Printing a warning in dmesg could work if
> you're worried about artifacts, but litteraly anything is better than a
> black screen with no error message in my opinion.
> 
> 
> In practice the screen I'm looking at has an EDID which only supports
> 51.2MHz and the closest frequency supported by the Samsung HDMI phy is
> 50.4MHz, so that's a ~1.5% difference and it'd be great if it could work
> out of the box.

For rate mismatches larger than the 0.5% allowed by the HDMI spec it
would be better to actually add PHY PLL parameters matching those
rates.

We could potentially add some more leeway for displays like yours that
aren't actually HDMI (as it doesn't seem to have a standard HDMI
resolution). But that's more of a last resort option, as it may
introduce other problems for displays that aren't as tolerant with
their input rates. Remember the mode_valid call is used to filter modes
that aren't compatible with the source, so for a display with multiple
modes allowing too much leeway may lead to incompatible modes not
getting tossed, in turn allowing userspace to set a mode that the
display may not like due to too much rate deviation, instead of only
presenting a list of valid modes. This again would present the user
with a black-screen without warning situation.

Regards,
Lucas

> 
> For reference, the output of edid-decode is as follow:
> ---
> edid-decode /sys/devices/platform/display-subsystem/drm/car
> d1/card1-HDMI-A-1/edid
> edid-decode (hex):
> 
> 00 ff ff ff ff ff ff 00 3a 49 03 00 01 00 00 00
> 20 1e 01 03 80 10 09 00 0a 00 00 00 00 00 00 00
> 00 00 00 00 00 00 01 01 01 01 01 01 01 01 01 01
> 01 01 01 01 01 01 00 14 00 40 41 58 23 20 a0 20
> c8 00 9a 56 00 00 00 18 00 00 00 10 00 00 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 10 00 00
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10
> 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 9a
> 
> ----------------
> 
> Block 0, Base EDID:
>   EDID Structure Version & Revision: 1.3
>   Vendor & Product Identification:
>     Manufacturer: NRI
>     Model: 3
>     Serial Number: 1
>     Made in: week 32 of 2020
>   Basic Display Parameters & Features:
>     Digital display
>     Maximum image size: 16 cm x 9 cm
>     Gamma: 1.00
>     RGB color display
>     First detailed timing is the preferred timing
>   Color Characteristics:
>     Red  : 0.0000, 0.0000
>     Green: 0.0000, 0.0000
>     Blue : 0.0000, 0.0000
>     White: 0.0000, 0.0000
>   Established Timings I & II: none
>   Standard Timings: none
>   Detailed Timing Descriptors:
>     DTD 1:  1024x600    59.993 Hz 128:75   38.095 kHz  51.200 MHz (154 mm x 86 m
> m)
>                  Hfront  160 Hsync  32 Hback 128 Hpol N
>                  Vfront   12 Vsync   8 Vback  15 Vpol N
>     Dummy Descriptor:
>     Dummy Descriptor:
>     Dummy Descriptor:
> Checksum: 0x9a
> ---
> 
> 
> Thanks,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
