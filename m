Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4EAFCCD195
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 09:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIK/10c6l9l2XCyZKu7fQ/6gDn+YK0QIIeMNIVj0gWg=; b=GOy3l0gTGKp0bQ
	nsW9B0K4edHqRcr+6pvv506sg1FzbllukFBNL8c3TRzX9sXjt9rkZFqP1llvwoiXBxGBwuOzd/OaJ
	/yl+6429H/AunxVbAiek0XTAXuVVM6Ee/yTCgQ1gS0LSy4siC+vg57zFLFsNQUti9R6Zi4DUOZPiO
	annI1t1emxxhTogwJ49LI4WTqVvXgVKmGmyS8SI46Ir1hnsXWtfoySqRtEc+cHpy9jNHnNqjA8S0H
	DYg1WiUnqY8n3FAyAOD1mY0S1wM1ezpSfMvKTX7L12xQ4VhLsosohLxwjT2Lv1fJO1jP2Wns97aK+
	z8FRZV0SIbFMvpaiOv3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVIm-00000002I3d-1PMb;
	Wed, 22 Oct 2025 09:38:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVIk-00000002I26-00dB
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 09:38:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vBVIQ-00004t-1Z; Wed, 22 Oct 2025 11:38:18 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vBVIO-004rvs-3B;
	Wed, 22 Oct 2025 11:38:17 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vBVIO-000000004t5-3n5a;
	Wed, 22 Oct 2025 11:38:16 +0200
Message-ID: <08fbb2fc1a2e581010b6b28cd1a544053a4f1fb0.camel@pengutronix.de>
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
Date: Wed, 22 Oct 2025 11:38:16 +0200
In-Reply-To: <dc27ae49-d60b-447e-971c-6b5b51ab9f29@tuxon.dev>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
	 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
	 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
	 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
	 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
	 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
	 <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
	 <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
	 <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev>
	 <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
	 <19746f65-bf10-4687-9e2b-b259220a9ea8@tuxon.dev>
	 <dc27ae49-d60b-447e-971c-6b5b51ab9f29@tuxon.dev>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_023838_089926_35474A16 
X-CRM114-Status: GOOD (  33.74  )
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

On Di, 2025-10-21 at 11:48 +0300, Claudiu Beznea wrote:
> Hi, Philipp,
> 
> On 10/15/25 11:19, Claudiu Beznea wrote:
> > > > > > > > I see v2 and v3 tried to control the bit from the PHY drivers, and in
> > > > > > > > v4 we were are already back to the reset driver.
> > > > > > > v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
> > > > > > > renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
> > > > > > > bit was referenced counted in the SYSC driver though regmap APIs.
> > > > > > > 
> > > > > > > v3 used the approach from v2 but passed the renesas,sysc-signals to all the
> > > > > > > USB related drivers.
> > > > > > > 
> > > > > > > Then, in v4, the PWRRDY refcounting was dropped and passed
> > > > > > > renesas,sysc-signals only to the USB PHY CTRL DT node in the idea that this
> > > > > > > is the node that will always be probed first as all the other USB blocks
> > > > > > > need it and request resets from it.
> > > > > > > 
> > > > > > > v5 and v6 kept the approach from v4 and only addressed misc comments or
> > > > > > > things that I noticed.
> > > > > > Could you please let me know if you are OK with the approach proposed in
> > > > > > v7, so that I can start preparing a new version addressing your comments?
> > > > > If the PWRRDY signal is an input to the USB2PHY control block, and not
> > > > > only to the PHY blocks, I have no issue with this being handled in the
> > > > > usb2phy reset driver -
> > > > Yes, this is how the Renesas HW team confirmed they are related.
> > > Ok, understood. I concur that usb2phy-ctrl is the right place for the
> > > sysc property then.
> > > 
> > > > > iff it is not sensible to just control the
> > > > > signal from the power domain driver.
> > > > As mentioned above, that can be done as well but, passing a SYSC phandle to
> > > > the CPG DT node will not be valid from the HW description point of view.
> > > > 
> > > > > If we have to handle it in the reset driver, I'd prefer to see this
> > > > > controlled with a dev_pm_genpd_add_notifier(). If that is not possible,
> > > > > I'd like to understand why.
> > > > From the code inspection I did, that can be done. From what I can tell at
> > > > the moment, I'll have to register a gepnd notifier from
> > > > reset-rzg2l-usbphy-ctrl, before runtime resuming the device and control the
> > > > SYSC PWRRDY from it.
> > > I'd like that.
> > Now, that we found the genpd notifier is not a solution, could you please
> > let me know how would you like me to proceed?
> 
> After discussing all the possible (known) solutions, could you please let
> me know if you are OK with the approach in this series?

Yes, I don't have a better idea. Let's revisit the issue of ordering
guarantees when suspend/resume is implemented.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
