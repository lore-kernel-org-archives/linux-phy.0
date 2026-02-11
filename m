Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3227ECD6E9
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 20:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9j8mAHJGmpM0oN1bZr9Vb0Liv917LoIDN/Ivm+l4szc=; b=eIHwIJmgXVoo1T
	cvRNcDJnBUR/hUWnV7NqZitmPAcDC/RPppnUD38y07QXVZd8Qjwiub1io3tqD2gkibn/YbRIvpVTf
	lZ0mrm1/6iIKlBjW+LFhwWaiA+m5scvFEmO3oZofBeP7xNDDnuN5k3zAJDWOzfTZzuQP/zdCDmi9Z
	46Os/RgxTQ4lvZe1Zr1ESggDIpLg7N2HANRIbIVcoJDIKWpaXkHVPljbfwOi6zHOVBheVV4JoHztl
	1b0GvdImvyME9G0psUU1Aw8vH9DropeZzMpB5O3PiDYL+uuPY0zcesdsF1m1oqibmJFlcG1VVGrDJ
	/0WbQna9C/h4mRKfhc2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqGrx-000000011Wt-1J1C;
	Wed, 11 Feb 2026 20:31:29 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqGrs-000000011WV-3bT8
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 20:31:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eGETX2uhmgPP8zE0VFPmHJQ/VnWmhFsnZPqtek+9nEA=; b=KDLtX018NzxxGqYllXUikn6zpJ
	fQ7z2rh3vp/xcBaI1XLp1ifj7AsD0/q6cRsKSYQE9EFEQ3qzoWNUW/XDb+OqyRLglL0xfvB1xmsKU
	MvbmFS1nJQfvxoo0MvS+3BIYgqQYqv7Lid7TCcrFdUgm5+aZSqeqwFHRs+aoPVNYNiEsgmMxL3mS2
	5i3MCPLL5kzuAmFuxE2TDKlG/C8RxKbKWpHP/xVZt3q5ASkG5aP/KaYBnDiS1biIZ2EY+y5tU5gvk
	xeMdxhmSi2S39mejO7cZ6n54AmhYvc0dVkaIhZBwcpOWWfHUtTbgmsTTL8XtptvItEaSQ7WYr+MdI
	XPcRDJSQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:53722)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vqGrm-000000003gP-28Fw;
	Wed, 11 Feb 2026 20:31:18 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vqGrj-0000000043T-2t7j;
	Wed, 11 Feb 2026 20:31:15 +0000
Date: Wed, 11 Feb 2026 20:31:15 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <aYznE1FIbs_0OcPR@shell.armlinux.org.uk>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <20260211193006.ad2piivyoqhvg22r@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260211193006.ad2piivyoqhvg22r@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_123126_338574_1FCB16BF 
X-CRM114-Status: GOOD (  37.51  )
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

On Wed, Feb 11, 2026 at 09:30:06PM +0200, Vladimir Oltean wrote:
> On Wed, Feb 11, 2026 at 06:15:11PM +0000, Russell King (Oracle) wrote:
> > On Wed, Feb 11, 2026 at 05:48:39PM +0200, Vladimir Oltean wrote:
> > > My 2 cents: I would actually remove any reference to any sort of preferred
> > > call order. There's nothing in the framework to back up such a concept.
> > > Just say that it is recommended for PHY provider drivers to not rely on
> > > a particular calling order, such that PHY consumers have the freedom to
> > > choose depending on what suits them best.
> > 
> > Sending out this patch was a last ditch attempt to get a response to
> > improve the "generic" PHY subsystem, However, as the issue is now
> > almost two weeks old, and the current patch series causes a regression
> > according to Mohd's testing, I've rewritten the series to be a finer
> > set of smaller incremental changes.
> > 
> > This has meant dropping the idea of using the "generic" PHY subsystem
> > in generic code, because as "generic" PHY drivers are currently
> > written, that's just impossible given the current state of "generic"
> > PHY.
> > 
> > There are "generic" PHY drivers that require to be powered up for
> > any of the phy_set_*() functions to not error out. There are also
> > "generic" PHY drivers that require the PHY to be powered down
> > before calling phy_set_*() before the new setting taking effect
> > at PHY power up time. In this group there are drivers that error
> > out if phy_set_*() is called while the PHY is powered, and there
> > are drivers that silently accept the call, returning success, but
> > do not change the PHY mode.
> 
> Are we talking about PHY_MODE_ETHERNET generic PHYs here, or in general?

PHY_MODE_ETHERNET PHYs.

> > This makes it pretty much impossible for platform independent code to
> > know the correct order to call the functions, and what to do if an
> > error or success is returned from any particular API call.
> > 
> > In other words, it's a trainwreck as currently implemented, and this
> > was my attempt to try and get some consistency.
> 
> Do you have a list of such PHYs relevant to phylink? We can still
> document the expectation, and modify them.

These are the generic PHYs used for ethernet, so they are potential
cases for phylink to drive. They were found via:

grep ETHERNET drivers/phy -rl | xargs grep -l power_on



r8a779f0-ether-serdes: r8a779f0_eth_serdes_set_mode() records the
state, returning success, with no hardware programming. All hardware
programming for the desired mode is done via phy_power_on() call.

This driver requires the PHY to be powered down before phy_set_mode*()
otherwise it will accept the new mode but not reconfigure the hardware.


phy-mvebu-cp110-comphy: mvebu_comphy_set_mode() records the state in
struct members and does nothing more, returning success. This
requires the PHY to be powered down before phy_set_mode().

This driver requires the PHY to be powered down before phy_set_mode*()
otherwise it will accept the new mode but not reconfigure the hardware.


phy-mvebu-a3700-comphy: mvebu_a3700_comphy_set_mode() errors out if
mode is changed with PHY powered up:

        /* Mode cannot be changed while the PHY is powered on */
        if (phy->power_count &&
            (lane->mode != mode || lane->submode != submode))
                return -EBUSY;

This driver requires the PHY to be powered down before phy_set_mode*()
otherwise it will error out.


phy-fsl-lynx-28g: lynx_28g_set_mode() powers down the PHY if necessary,
sets the mode, before powering it back up.

This is the only driver that will tolerate phy_power_*() vs
phy_set_mode*() in any order.


phy-qcom-sgmii-eth: doesn't implement phy_set_mode*() but instead
implements phy_set_speed() and phy_calibrate(). phy_set_speed()
sets the mode and immediately calibrates, which presumably requires
the clocks enabled by qcom_dwmac_sgmii_phy_power_on(). No check
for PHY being powered, so my guess is that calling phy_set_speed()
with the PHY powered down will cause the status polling in
qcom_dwmac_sgmii_phy_calibrate() to time out.

This driver requires phy_power_on() before phy_set_speed().


sparx5_serdes: phy_power_*() controls power down mode, no check
in sparx5_serdes_set_mode() whether powered up, but config function
checks for e.g. PLL lock, which probably won't be locked if powered
down. Failures aren't propagated to the API caller.

This driver requires phy_power_on() before phy_set_mode*().


phy-mtk-xfi-tphy: while phy_power_*() controls clocks, it isn't
obvious whether these are required before mtk_xfi_tphy_setup() is
invoked. There are calls to usleep() implying a need to wait for
things to happen before the next register write, which presumably
require the clock to be running.

My guess is, this driver requires phy_power_on() before phy_set_mode*().


Categorisation of drivers:
drivers requiring powered down PHY before phy_set_mode*(), but are
silent if not: 2

drivers requiring powered down PHY before phy_set_mode*(), but error
out if not: 1

drivers that allow any power state before phy_set_mode*(): 1

drivers that do not implement .power_*() methods, allowing any
power state, but presumably require the phy_set_mode*() call to
setup the hardware: 5

drivers requiring powered up PHY before phy_set_mode*(): 3

So, the summary is... only _one_ driver allows the calls in any order.
The other 11 drivers are... stick a pin in the donkey and depending
on where the pin ends up determines the appropriate order that the
generic PHY APIs must be called for the driver to work correctly.

I think you'll agree that this is a very sorry state of affairs.

This is exactly why I think there needs to be better documentation.
I'm not sure that some kind of test code to validate the API would
work, because you'd need some way to test whether the PHY were in a
functional state, and that's difficult without the help of the
ethernet MAC.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
