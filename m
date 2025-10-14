Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09CFCCCD184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 16:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vccrFPSnR5N277UxdxYtKi2/UXASMpUKrcVjjFnfelg=; b=1nyTd1wjkkWNXB
	P0TDQPllcex1yxaLEM3+HZ9qqML/LpHqh/Dui76O/W0FGqN3MsTXk3JBodQt7HLD+bApiUUCzBkdj
	TLMvSHMYMDuq4DMsp/mfdpeU0VCmSJbSVCnNR2Bt8LispdqHMelpbIaUFP4F7FyAyEIPrNU+XpR5D
	gUkWMNFVJN/uz5W8AhIqdi9b4rIuxO6qfqKJlsjbW0HpAY+tKSVPrZjKlw8yKbBq7G1IOg6In+rqP
	nodsTZbGXxj62IPj7q/Sq1LQjBJDLtaQ40/N/r68H1WWDPnMTimq9OXnzCyadlp1HXIFI8PYm16Jn
	K5ViCAVes/qluYmbfdyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8i6o-0000000H1FL-2wzh;
	Tue, 14 Oct 2025 16:42:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8i6m-0000000H1Ei-41b6
	for linux-phy@bombadil.infradead.org;
	Tue, 14 Oct 2025 16:42:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=U0Rm8o5SIrRodpiWYPjiXcpztSQ9MnWHRrk2YHYlEBI=; b=qLdDoBhp9p4gomNT2h7ryRSLYh
	mRueB7spOk9zibdLJXMwvGRXh53rqUJCQGGOCpShSUEfFiVFxNGSga6/oghPYVxHW+XIjDd20W5yP
	BvRy4xDdCyZ9jWDWOp3/5kjQ08yVqycwjKECjo4XHCYzNGXLeuFvmF+aQPDh2kW1x8MjbvaE6e36G
	BVXb7IgOhrYQte8qdKL0FX5sjfkVCS1BENP/JR+wAbdrC0YCNfVzvoj2HDo2CGWwKyDwQV3u9h1vs
	JYkBrlpW1P8Ol1A8nhr/SN5RTxJhsMfFNZBk63HtZoIezbdNgRpNWOamXmGRCIdR4rOk0DJoHDbZB
	UfE+ylFg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8i6b-00000005JgI-1ct4
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 16:42:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8i6M-0004Ft-Eh; Tue, 14 Oct 2025 18:42:18 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8i6L-003aUP-2E;
	Tue, 14 Oct 2025 18:42:17 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1v8i6L-00000000Btg-2VfZ;
	Tue, 14 Oct 2025 18:42:17 +0200
Message-ID: <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
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
Date: Tue, 14 Oct 2025 18:42:17 +0200
In-Reply-To: <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
	 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
	 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
	 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
	 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
	 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
	 <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
	 <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
	 <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev>
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_174233_853300_51514EEE 
X-CRM114-Status: GOOD (  52.05  )
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

On Di, 2025-10-14 at 11:36 +0300, Claudiu Beznea wrote:
> On 10/13/25 17:57, Philipp Zabel wrote:
[...]
> > > > On 10/8/25 13:23, Philipp Zabel wrote:
> > > > > On Mi, 2025-10-08 at 12:29 +0300, Claudiu Beznea wrote:
[...]
> > > > > > The approaches considered were:
> > > > > > a/ power domain
[...]
> > > > > Could you point me to the discussion related to a?
[...]
> > Thank you! From this discussion it still isn't clear to me whether
> > Ulf's suggestion of using genpd on/off notifiers was considered and why
> 
> The genpd on/off notifier suggestion wasn't tried, but only the
> implementation of PWRRDY handling through the power domain (what Ulf
> suggested though "Move the entire reset handling into the PM domain
> provider, as it obviously knows when the domain is getting turned on/off"
> in
> https://lore.kernel.org/all/fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev/).
> Sorry if I mislead you.

No worries, misunderstandings happen. Here I assumed the "power domain
approach" meant letting the PWRRDY signal be controlled by power domain
state, not specifically all code in the power domain driver. And I only
learned about the genpd notifier suggestion after reading the thread.

> Ulf suggested then here
> https://lore.kernel.org/all/CAPDyKFpLnREr4C=wZ7o8Lb-CZbQa4Nr2VTuYdZHZ26Rcb1Masg@mail.gmail.com/
> that he is not agreeing anymore with having it as power domain due to the
> discussion in thread
> https://lore.kernel.org/all/TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com/
> (I can't remember what made him taking back is ack on this solution and I
> can't find something in the thread either).
> 
> If I'm not wrong, with the information that we have at the moment, the best
> for the notifier would have to register it (before runtime resume) and
> implement it in this driver (reset-rzg2l-usbphy-ctrl) so that, when the
> pm_runtime_resume_and_get()/pm_runtime_put() in
> rzg2l_usbphy_ctrl_probe()/rzg2l_usbphy_ctrl_remove() will be called (or
> suspend/resume) the notifier will be called and set the PWRRDY bit. Please
> let me know if you see it otherwise.

That sounds like a clean abstraction to me.

> > it was dismissed.
> 
> The power domain approach was dismissed as a result of discussion from this
> thread:
> https://lore.kernel.org/all/TY3PR01MB1134652F9587CFA0ADE851CA486902@TY3PR01MB11346.jpnprd01.prod.outlook.com/
> 
> I don't remember exactly what triggered it and can't find it as well, sorry.

Ok.

> > From the DT patches it looks like there is no actual separate power
> > domain for USB, just the single always-on CPG power domain (in rzg2l-
> > cpg.c). Is that correct?
> 
> That is correct, the CPG is a clock power domain. All the clocks that CPG
> can be provided (including USB clocks) are part of CPG clock power domain.
> 
> > In the thread it sounded like there were
> > multiple domains.
> 
> You probably refer to this:
> https://lore.kernel.org/all/fa9b3449-ea3e-4482-b7eb-96999445cea5@tuxon.dev/

Yes, I was confused by this sentence near the end: "And the USB SYSC PM
domain is parent for all USB PM domains provided by CPG (3 in this
case)."

> In there, I was trying to present to Ulf how I did implement (locally,
> nothing posted) the handling of PWRRDY though power domains. In that case
> the SYSC (System Controller), where the PWRRDY resides, was modeled as a
> power domain, I passed to the reset-rzg2l-usbphy-ctrl DT node the phandle
> to sysc USB power domain as:
> 
> power-domains = <&cpg R9A08G045_PD_USB_PHY>, <&sysc R9A08G045_SYSC_PD_USB>;
> 
> along with the cpg, and handled it in the reset-rzg2l-usbphy-ctrl probe().

Ok, thank you for the clarification.

> > Is the issue that you need the PWRRDY signal to be (de)asserted
> > independently from the CPG power domain enable/disable?
> 
> Yes. I need to de-assert it before clocks, MSTOP on probe/resume and assert
> it back after clocks, MSTOP, on remove/suspend.
> 
> > (Why?)
> 
> Due to hardware constraints. This is how Renesas HW team recommended.

I still haven't understood this part. Isn't CPG the power domain
enabled "before clocks, MSTOP on probe resume" and disabled "after
clocks, MSTOP, on remove/suspend"? So PWRRDY could be toggled from
genpd notifications. If it needs to be (de)asserted independently,
wouldn't that mean the genpd notifier approach can not be used?
The notifiers are called from genpd_power_on/off(), after all.

> > Why can't the power domain provider (cpg) have the renesas,sysc-pwrrdy
> > property and set the signal together with the power domain?
> 
> That can be done but, passing a SYSC phandle to the CPG DT node will not be
> valid from the HW description point of view.
>
> > > > > I see v2 and v3 tried to control the bit from the PHY drivers, and in
> > > > > v4 we were are already back to the reset driver.
> > > > v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
> > > > renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
> > > > bit was referenced counted in the SYSC driver though regmap APIs.
> > > > 
> > > > v3 used the approach from v2 but passed the renesas,sysc-signals to all the
> > > > USB related drivers.
> > > > 
> > > > Then, in v4, the PWRRDY refcounting was dropped and passed
> > > > renesas,sysc-signals only to the USB PHY CTRL DT node in the idea that this
> > > > is the node that will always be probed first as all the other USB blocks
> > > > need it and request resets from it.
> > > > 
> > > > v5 and v6 kept the approach from v4 and only addressed misc comments or
> > > > things that I noticed.
> > > 
> > > Could you please let me know if you are OK with the approach proposed in
> > > v7, so that I can start preparing a new version addressing your comments?
> > 
> > If the PWRRDY signal is an input to the USB2PHY control block, and not
> > only to the PHY blocks, I have no issue with this being handled in the
> > usb2phy reset driver -
> 
> Yes, this is how the Renesas HW team confirmed they are related.

Ok, understood. I concur that usb2phy-ctrl is the right place for the
sysc property then.

> > iff it is not sensible to just control the
> > signal from the power domain driver.
> 
> As mentioned above, that can be done as well but, passing a SYSC phandle to
> the CPG DT node will not be valid from the HW description point of view.
>
> > If we have to handle it in the reset driver, I'd prefer to see this
> > controlled with a dev_pm_genpd_add_notifier(). If that is not possible,
> > I'd like to understand why.
> 
> From the code inspection I did, that can be done. From what I can tell at
> the moment, I'll have to register a gepnd notifier from
> reset-rzg2l-usbphy-ctrl, before runtime resuming the device and control the
> SYSC PWRRDY from it.

I'd like that.

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
