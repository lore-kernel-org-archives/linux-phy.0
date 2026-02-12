Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D133AEDF038
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 05:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+CeKxySh4XzaN9RgVawm5hm2f/Fx3pmG2uESonP36Q=; b=y+NvinZWbPaQLm
	rVYK1Vk3b8j2bL0btlxTQDBn3UuasrH/9dFw3T/XsX3uhjagKBXDjL9700BVw7sA2m1dJB8a0b7bM
	3U6tTcBbaL2jzK9Yuh12vlpC1V9HCxs7L39kqXG3Ucbe30f445NMffiLy2R457afrQCZv9mQOrhEO
	j+ddidrygHPq5fd8SN8KuwTlBtmWNvxDsWPsXOxT+DZwPlllnUfWmIBJH7j5J4ADMST+PzO0nf4rU
	iNxhuT1Dk56wuWtuxY0m0u2U0wjtA2SLbdqSpmdAbxmt2gLKH4KeQuXw+UdGfd1y2Dwt26G0HpJpt
	13A4dcSGojNy/4886acg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqOuf-00000001dsS-1lv2;
	Thu, 12 Feb 2026 05:06:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqOue-00000001dsJ-2Arc
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 05:06:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 7D50360010;
	Thu, 12 Feb 2026 05:06:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B74A1C4CEF7;
	Thu, 12 Feb 2026 05:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770872807;
	bh=+kOtATe/aqM4mDZSdzfuvGH+xa+UlI40H+G8rauVTI4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SlLluTZCs/CQ09lb7/b5SDgGTYY/h+I6Y5oYD4QygvmQATT/8rQ+En1xlUsTDuGa8
	 7xEmmEo2qx1gR1fmUBtSl5oaaEbE5JPqnfumoA6pgD2qXgGqedvF53TVCbbRhPwHPX
	 AC48f5uQyFd/kqTQtxUd6PTrMuV0s0TBy6WzajYNbl5o7itcy2A824jwOMKhZrm2Mo
	 fKI2ExSv9OtDVjy8jQIUo8HwfGkx6e5wHFtJXcDdWchqSNP35JzAcor8EXTQ30a7cB
	 om5op0hpozvu0UARWuCfYnfmxA33Cyhibp4abcE++flLuEp7hoSf9+GhwLJ/dKStD2
	 DBNdGZ3Fw3myw==
Date: Thu, 12 Feb 2026 10:36:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <aY1f48Db7KeYRR87@vaman>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211154839.lbh4uovxr5b5s4nv@skbuf>
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

On 11-02-26, 17:48, Vladimir Oltean wrote:
> On Thu, Feb 05, 2026 at 02:56:15PM +0000, Russell King (Oracle) wrote:
> > Update the generic PHY documentation as a result of the discussion for
> > the s32g submission.
> > 
> > Link: https://lore.kernel.org/r/aXtvDn_-pCuKPrnf@vaman
> > Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> > ---
> > I didn't get any replies to my follow-up question to Vinod:

Sorry to have missed that...

> >   Please also indicate in the documentation whether changing the submode
> >   of the serdes (particularly for ethernet) is permitted without doing a
> >   phy_power_down()..phy_power_up() dance around the phy_set_mode_ext()
> >   call.
> 
> There's certainly nothing *not* permitting that call sequence.

I agree on that. The documentation can be update to reflect that. Common
logic would say that we should set things up before powering up, that
should be the guidance here as well.
> 
> > I also didn't get any response to:
> > 
> >   For drivers such as stmmac, it will be important that details such as
> >   whether phy_est_mode*() can be called with the PHY powered on are
> >   riveted down and not left up to the generic PHY driver author - without
> >   that, generic PHYs basically aren't usable from SoC/platform
> >   independent code, and stmmac has bazillions of platform specific glue
> >   already because of (a) bad code structuring and (b) lack of
> >   generalisation through standardised interfaces that abstract platform
> >   differences.
> > 
> >   I want to be able for core stmmac code, or even phylink code (which
> >   is even more platform generic) to be able to make use of generic PHY
> >   stuff, but if the calls that can be made into generic PHY are platform
> >   dependent, that is a blocking issue against that, and makes me question
> >   why we have the generic PHY subsystem... it's not very generic if it
> >   exposes the differences of each implementation to users of its
> >   interfaces.
> 
> It may well be that the "one consumer, multiple PHY providers, requiring
> unified behaviour" situation you bring up is sufficiently unique here,
> with stmmac/phylink, that local conventions are not sufficient.
> 
> I'm not sure that precise answers exist for your questions. Rather,
> it's best if you could lay out common sense requirements, and generic
> PHY reviewers will make sure they are followed.
> 
> As far as the framework is concerned, power and mode are fundamentally
> decoupled, so I think the documentation is actually muddying the waters,
> more than anything, by talking about a preferred calling order.
> If there's any connection between power and mode, it should be handled
> internally by the PHY provider driver.

Agree, setting mode and powering up are not coupled anywhere in the API.
framework does not care about it. There might be provider limitations
which should be handled internally.

> 
> >  Documentation/driver-api/phy/phy.rst | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
> > index 719a2b3fd2ab..cf73e4fb0951 100644
> > --- a/Documentation/driver-api/phy/phy.rst
> > +++ b/Documentation/driver-api/phy/phy.rst
> > @@ -142,6 +142,7 @@ Order of API calls
> >  
> >      [devm_][of_]phy_get()
> >      phy_init()
> > +    [phy_set_mode[_ext]()]
> >      phy_power_on()
> >      [phy_set_mode[_ext]()]
> >      ...
> > @@ -154,7 +155,7 @@ but controllers should always call these functions to be compatible with other
> >  PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
> >  others may use a default mode (typically configured via devicetree or other
> >  firmware). For compatibility, you should always call this function if you know
> > -what mode you will be using. Generally, this function should be called after
> > +what mode you will be using. Generally, this function should be called before
> >  :c:func:`phy_power_on`, although some PHY drivers may allow it at any time.
> 
> My 2 cents: I would actually remove any reference to any sort of preferred
> call order. There's nothing in the framework to back up such a concept.
> Just say that it is recommended for PHY provider drivers to not rely on
> a particular calling order, such that PHY consumers have the freedom to
> choose depending on what suits them best.

Yes but I would say rather than order, a guidance would help users and
providers. Set things up and power up would be a good logic to follow.

If the provider supports setting/switching mode up when running, we
should not limit that. I dont see a reason for limiting that from an
framework.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
