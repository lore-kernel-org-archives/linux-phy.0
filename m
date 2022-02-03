Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E57DC433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Feb 2022 21:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGsZvMSjhxhHrXAoTyMaWQZ6TKdqmcKpNeiwzPoANV0=; b=fCxzeO44ZlgEa1
	IYXHo7OsoffoPtD9GtpwJ9DeNyHoWBagCngq3V3Gm89wJCZviVatY4iazGCfIx1yxfM+HvSMgL/ic
	arx/YhWfB+r2lRC8/Emc2xi00kIhETGmx2zBNGZ92yC4LPNyKaFUdYb4lEJNn/tQKRL/dYiihnNhs
	Rjrics3XiLJYMLbtq3oSQF53LXWs70PD058HqOmGWe+o0348ki109j4IytivoUHeUxFdcuBtmbYi9
	DTFD71eCRfCb7fwo8VOOrd2k84P4NdgNiIKjzLVHVsqqVHqaxfr7DoPTJ01CXdHkD3ZKvB2Onr+iQ
	gZk/kxnDxCtAFSF/qonQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFjp6-002yXV-Mn; Thu, 03 Feb 2022 21:39:24 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFjp4-002yWQ-5A
 for linux-phy@lists.infradead.org; Thu, 03 Feb 2022 21:39:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id AB792B835AB;
 Thu,  3 Feb 2022 21:39:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31E13C340E8;
 Thu,  3 Feb 2022 21:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1643924358;
 bh=t+b5bvyDhOKQDSbawww/dT6l+vR9V4kn6oL7Hj+AEA8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=eXXn/jj11oJ8RVQ5iEwY1doQz/Ys4pYlOPHBe+4bC9v9pE1wFrKXu13jAHOOY8GFe
 0tFzX0SJvgJRAIrWSd7VsdoJL3K8cpJSB3gQDX+mmI1pAP009COr4NvUs8Lm9eMZVA
 MPOCfZqcbVynwFpHhimmaoejuKLKoImCk6d2TyMnAg/iQKWFEpA0WwBc1ZwlJ1JLa+
 qG4+XZyD/TvavFjA7mRCFK12wqRAXaoLvqOMZk/ztnKXIb+5keR6U5hz4wwFtPRmD+
 gq3d2aACNigP0kWUucPhOtg+5/0eGbPsiJobsswFHtgFKcyenxeAQFPJl44HfGO6jX
 pyOYv2NiJRuCA==
Date: Thu, 3 Feb 2022 22:39:13 +0100
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, Gregory CLEMENT
 <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v3 2/5] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <20220203223913.41e9f375@thinkpad>
In-Reply-To: <YfqotCQ8TRWHp8Vz@matsya>
References: <20220103143220.13070-1-kabel@kernel.org>
 <20220103143220.13070-3-kabel@kernel.org> <YfqotCQ8TRWHp8Vz@matsya>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_133922_393721_F070183E 
X-CRM114-Status: GOOD (  21.95  )
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

On Wed, 2 Feb 2022 21:22:20 +0530
Vinod Koul <vkoul@kernel.org> wrote:

> > +	if (ret) {
> > +		dev_err(lane->dev, "Failed to lock SATA PLL\n");
> > +		return ret;
> > +	}
> > +
> > +	return 0;  
> 
> This can be:
>         ret = comphy_lane_reg_poll(lane, COMPHY_DIG_LOOPBACK_EN, ...);
>         if (ret)
>                 dev_err(...);
> 
>         return ret;

Ok, will change all such occurances in v4.


> > +	/*
> > +	 * 12. As long as DFE function needs to be enabled in any mode,
> > +	 * COMPHY register DFE_UPDATE_EN[5:0] shall be programmed to 0x3F
> > +	 * for real chip during COMPHY power on.  
> 
> Okay where is this step..?

As is written in rest of the comment, the value of DFE_UPDATE_EN is
0x3F already (after PHY reset, because it is default value of the
register), so this is not needed. I have changed the comment a little in
v4, but I would like to leave it here.

> > +	 * The step 14 exists (and empty) in the original initialization flow
> > +	 * obtained from the verification team. According to the functional
> > +	 * specification DFE_UPDATE_EN already has the default value 0x3F
> > +	 */

snip

> > +
> > +	/*
> > +	 * 14. [Simulation Only] should not be used for real chip.
> > +	 * By pass power up calibration by programming EXT_FORCE_CAL_DONE
> > +	 * (R02h[9]) to 1 to shorten COMPHY simulation time.
> > +	 */
> > +
> > +	/*
> > +	 * 15. [Simulation Only: should not be used for real chip]
> > +	 * Program COMPHY register FAST_DFE_TIMER_EN=1 to shorten RX training
> > +	 * simulation time.
> > +	 */  
> 
> can we skip Simulation Only comments?

ok, removed in v4 and subsequent steps renumbered

> > +static void
> > +mvebu_a3700_comphy_usb3_power_off(struct mvebu_a3700_comphy_lane *lane)
> > +{
> > +	/*
> > +	 * Currently the USB3 MAC sets the USB3 PHY to low state, so we do not
> > +	 * need to power off USB3 PHY again.
> > +	 */
> > +}  
> 
> lets drop the dummy and move this comment to caller..?

ok

will send v4 in a couple of minutes.

Thanks, Vinod.

Marek

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
