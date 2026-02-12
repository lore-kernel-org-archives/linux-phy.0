Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17999EB4912
	for <linux-phy@archiver.kernel.org>; Thu, 12 Feb 2026 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2xtRO5g+6q1/Md/CRBHIKK9NHiKFOPswTsd5OE3wRU=; b=NMzf/TRtcftueY
	Yyp0kLcRGGvLqdLkW5yE8l195jH4wzgigtE5NmDaI8INR4zmm4PaIQ7/6UfPCRD5i3NdSmV73DnV0
	FP1SBYAV5EJFJLkOp7kjaE1lRjRPJtrJlLiVUScdIRc5PqYuMeUP7z+tqzYMAFlPfTMuNevQL5NCL
	HbQ7RyziY1AUdpkeRqYcQ+Kk0UdWaY8ud8Ilw+rOEUVOiS26MmZrFWRWEZm75Tg0nXkbFWD9zngwz
	i6bOBii5tbnbYbIMBAe8VNs2vsrDYWPR8nz/ZcjwERqoI3kdl95uz7RAnTnPHIBejSbSlSiSzQSas
	qFdcbThQ0Gf7xhZcqCCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqVIV-000000022WV-2ivL;
	Thu, 12 Feb 2026 11:55:52 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqVIT-000000022W7-0hoh
	for linux-phy@lists.infradead.org;
	Thu, 12 Feb 2026 11:55:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YgCvFhAjgZlIa7Ydg2e5QKVEHkgjXd+Lbu3Jbbdeon4=; b=US0Gw57wqXgKXR0fPPJO/o/GNI
	aMLLlq2bvhFkq6aCBH9DYOrQ87ff27ppPGEZsLIApw9W74JsOQxerfABY4JGyqfonPdoRTMAezPlh
	ET3mT6KZVusPrnS4+DPJ8pxhfG/fqqXNBN9/DzejH0YVOAIrs8SVD9ENMikirM06HgKhqMbwQDmSv
	woRPprd4W2CIPCuUD5/30p9dPhl/AuOY2dsQqCte5f0QKAo+CbKXQuc3BalqF9PcUtyU76MGdIe7I
	mE7pDszhwUSDgsQIxpHSeaJmUy7/yc3XcK4+ejq96heoxjB8o+u8x3bh12cpZmUpIF8e/mOzVK2qz
	B3rWSuQQ==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45954)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vqVIL-000000004VV-0krt;
	Thu, 12 Feb 2026 11:55:41 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vqVIJ-000000004lJ-26cu;
	Thu, 12 Feb 2026 11:55:39 +0000
Date: Thu, 12 Feb 2026 11:55:39 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <aY2_u88tkEb5geAg@shell.armlinux.org.uk>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <aYzHL1qwew5p-xoq@shell.armlinux.org.uk>
 <20260211193006.ad2piivyoqhvg22r@skbuf>
 <aYznE1FIbs_0OcPR@shell.armlinux.org.uk>
 <aY1hs4XKZSpvKd3B@vaman>
 <20260212091332.qcpi3qyynmdp4acv@skbuf>
 <aY2lFTIALH7qEJmM@shell.armlinux.org.uk>
 <20260212103803.xut4sjbypgb26mo4@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260212103803.xut4sjbypgb26mo4@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_035549_228289_C6AECB97 
X-CRM114-Status: GOOD (  31.36  )
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

On Thu, Feb 12, 2026 at 12:38:03PM +0200, Vladimir Oltean wrote:
> On Thu, Feb 12, 2026 at 10:01:57AM +0000, Russell King (Oracle) wrote:
> > I'm also going to point out that phy-core allows ->set_mode() to be
> > unimplemented, yet the phy_mode is stored. It looks to me like this is
> > intentional part of the API, which means that phy_set_mode*() is not
> > expected to always result in the hardware being programmed. That
> > brings up the obvious question: if phy_set_mode() is not expected to
> > always reprogram the hardware, then what phy API call should follow
> > this to ensure the hardware is reprogrammed.
> > 
> > On the other hand, if the API intention was that ->set_mode() must be
> > implemented if phy_set_mode*() is to be accepted, then surely
> > phy_set_mode_ext() should be checking that phy->ops->set_mode exists,
> > and returning -EOPNOTSUPP if it doesn't.
> 
> This is a relatively new development.
> 
> commit d58c04e305afbaa9dda7969151f06c4efe2c98b0
> Author: Dmitry Baryshkov <lumag@kernel.org>
> Date:   Sun Feb 9 14:31:45 2025 +0200
> 
>     phy: core: don't require set_mode() callback for phy_get_mode() to work
> 
>     As reported by Damon Ding, the phy_get_mode() call doesn't work as
>     expected unless the PHY driver has a .set_mode() call. This prompts PHY
>     drivers to have empty stubs for .set_mode() for the sake of being able
>     to get the mode.
> 
>     Make .set_mode() callback truly optional and update PHY's mode even if
>     it there is none.
> 
>     Cc: Damon Ding <damon.ding@rock-chips.com>
>     Link: https://lore.kernel.org/r/96f8310f-93f1-4bcb-8637-137e1159ff83@rock-chips.com
>     Tested-by: Damon Ding <damon.ding@rock-chips.com>
>     Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>     Link: https://lore.kernel.org/r/20250209-phy-fix-set-moe-v2-1-76e248503856@linaro.org
>     Signed-off-by: Vinod Koul <vkoul@kernel.org>
> 
> If only lore.kernel.org wasn't down, so I could see the back story in
> the link...

Looking at the first link:

> On 2024/12/30 20:45, Dmitry Baryshkov wrote:
> > On Thu, Dec 26, 2024 at 02:33:03PM +0800, Damon Ding wrote:
> > No need for the stub, please drop it. The host controller driver can
> > still call phy_set_mode() / _ext(), the call will return 0.
> 
> Without the &phy_ops.set_mode(), the phy driver can not get phy_mode to 
> distinguish between HDMI and DP mode via the phy_get_mode(), even if the 
> host driver calls phy_set_mode() / _ext(). Additionally, the previous 
> discussion [0] also mentioned future considerations for dynamic 
> switching. Indeed, I should add a related comment before the 'return 0;' 
> to enhance understandability.

The first sentence makes me question the reasoning here - why would
a phy _driver_ call phy _consumer_ functions such as phy_get_mode().
We have drivers that directly access phy->attrs.mode.

It also adds to the question about the intended correct ordering of
PHY consumer calls, because it seems that the intention behind this
is to _not_ implement the ->set_mode() method, but to reconfigure the
PHY in some other generic PHY API call.

By "fixing" phy_set_mode*() in the above commit to allow this, that
action goes against the idea that generic PHY API calls can be made in
any order.

So my conclusion is that there is disagreement between generic PHY
reviewers about how the generic PHY API should be used and implemented,
leading to the mess I've highlighted where consumers need to know the
implementation details of the generic PHY driver to make the calls in
the correct order for that specific driver.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
