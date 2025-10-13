Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60846CCD18D
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 14:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDZIChiekePPC//6UQm/IOgmSoQG2ShaIB/uNXY4z0E=; b=pb24drzRxmB7St
	y4wI+Tms5281xAYfM9rm+z4bvF6mAVcXZKO8f+ldeGyyjuYRyOJC/PJBQ07Goz40RZR+jX6UlNM/G
	75SggAG3GYGyJwRFNzkJI5hGxUnf6EhuL9f0W+8f7iLNE/R2Dz7LQuUaysiE/N8+aC49jHuMql1cd
	PUokjwouWIt7O6uBb5kMuTFoSU+8wk9Xs6yTe7nBgOC0+v7efbbWXQGPg7w45VdIgNT3XhwABjlQm
	die7TbmMQAKUA+T4sItFp+AQfAIeKko3F3EFODifzzgERZ8ZYvFKx+qDzyLyw+j0BrkFcIJFvy4xg
	+DnzyQkWsQcS84l3DmdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Jzm-0000000DXBy-0eum;
	Mon, 13 Oct 2025 14:57:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Jzj-0000000DX9s-2QmW
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 14:57:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8JzO-0003Bb-Ux; Mon, 13 Oct 2025 16:57:30 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8JzN-003Ovy-2v;
	Mon, 13 Oct 2025 16:57:29 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8JzN-00000000CO2-3Ql5;
	Mon, 13 Oct 2025 16:57:29 +0200
Message-ID: <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>, vkoul@kernel.org, 
	kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, 	geert+renesas@glider.be, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, 	biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Claudiu
 Beznea	 <claudiu.beznea.uj@bp.renesas.com>, Wolfram Sang	
 <wsa+renesas@sang-engineering.com>
Date: Mon, 13 Oct 2025 16:57:29 +0200
In-Reply-To: <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
	 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
	 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
	 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
	 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
	 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
	 <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_075751_620459_E620A616 
X-CRM114-Status: GOOD (  35.73  )
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

Hi Claudiu,

On Fr, 2025-10-10 at 14:26 +0300, Claudiu Beznea wrote:
> Hi, Philipp,
> 
> On 10/8/25 15:16, Claudiu Beznea wrote:
> > Hi, Philipp,
> > 
> > On 10/8/25 13:23, Philipp Zabel wrote:
> > > Hi Claudiu,
> > > 
> > > On Mi, 2025-10-08 at 12:29 +0300, Claudiu Beznea wrote:
> > > > Hi, Philipp,
> > > > 
> > > > On 10/8/25 11:34, Philipp Zabel wrote:
> > > > > Hi Claudiu,
> > > > > 
> > > > > On Do, 2025-09-25 at 13:02 +0300, Claudiu wrote:
> > > > > > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> > > > > > 
> > > > > > On the Renesas RZ/G3S SoC, the USB PHY block has an input signal called
> > > > > > PWRRDY. This signal is managed by the system controller and must be
> > > > > > de-asserted after powering on the area where USB PHY resides and asserted
> > > > > > before powering it off.
> > > > > > 
> > > > > > On power-on the USB PWRRDY signal need to be de-asserted before enabling
> > > > > > clock and switching the module to normal state (through MSTOP support). The
> > > > > > power-on configuration sequence
> > > > > The wording makes me wonder, have you considered implementing this as a
> > > > > power sequencing driver?
> > > > No, haven't tried as power sequencing. At the moment this was started I
> > > > think the power sequencing support wasn't merged.
> > > > 
> > > > The approaches considered were:
> > > > a/ power domain
> > > Letting a power domain control a corresponding power ready signal would
> > > have been my first instinct as well.
> > > 
> > > > b/ regulator
> > > > c/ as a reference counted bit done through regmap read/writes APIs
> > > > 
> > > > a and b failed as a result of discussions in the previous posted versions.
> > > Could you point me to the discussion related to a?
> > It's this one
> > https://lore.kernel.org/all/
> > CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com/

Thank you! From this discussion it still isn't clear to me whether
Ulf's suggestion of using genpd on/off notifiers was considered and why
it was dismissed.

From the DT patches it looks like there is no actual separate power
domain for USB, just the single always-on CPG power domain (in rzg2l-
cpg.c). Is that correct? In the thread it sounded like there were
multiple domains.

Is the issue that you need the PWRRDY signal to be (de)asserted
independently from the CPG power domain enable/disable? (Why?)

Why can't the power domain provider (cpg) have the renesas,sysc-pwrrdy
property and set the signal together with the power domain?

> > > I see v2 and v3 tried to control the bit from the PHY drivers, and in
> > > v4 we were are already back to the reset driver.
> > v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
> > renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
> > bit was referenced counted in the SYSC driver though regmap APIs.
> > 
> > v3 used the approach from v2 but passed the renesas,sysc-signals to all the
> > USB related drivers.
> > 
> > Then, in v4, the PWRRDY refcounting was dropped and passed
> > renesas,sysc-signals only to the USB PHY CTRL DT node in the idea that this
> > is the node that will always be probed first as all the other USB blocks
> > need it and request resets from it.
> > 
> > v5 and v6 kept the approach from v4 and only addressed misc comments or
> > things that I noticed.
> 
> Could you please let me know if you are OK with the approach proposed in
> v7, so that I can start preparing a new version addressing your comments?

If the PWRRDY signal is an input to the USB2PHY control block, and not
only to the PHY blocks, I have no issue with this being handled in the
usb2phy reset driver - iff it is not sensible to just control the
signal from the power domain driver.

If we have to handle it in the reset driver, I'd prefer to see this
controlled with a dev_pm_genpd_add_notifier(). If that is not possible,
I'd like to understand why.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
