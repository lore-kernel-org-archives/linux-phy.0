Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85029E9A02C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Feb 2026 13:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Tfe07uSLd7z86fjVBm7MjpBkMgycTq1JZ+X1zALIVM=; b=bAiZMDiA2wE0mh
	V3imk0nGrcxb9vLHobmKvmw8aldCJg931p8mwio4fwVlljXvmm78aHlb3xJfg41HmgkNW6HTp1ix9
	nwvf4QUL2wECEhhrkwTWQnqSHYXaNY8CAwY/W+wR58h5QslnDQx2KHNA3imGHkLKDrwDtK/FGCqV3
	N//Z6OKox2x/9VMFOoih52ijW0l4bpzuxqUXjzijbqvrGEDoeAkcD2HtHpCxWE7mdnu3xxMJtD/ib
	OQRK6cE5rvbubZH39JHPRoI0GPCUW+3JALWYj8B4p1bddQyzpePbNpjFs6U7rmv5GHYghER6091Eh
	4T7Kb0DS/VGKzDQALgIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vshPH-00000009q1l-0EKk;
	Wed, 18 Feb 2026 13:15:55 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vshPE-00000009q1L-25XJ
	for linux-phy@lists.infradead.org;
	Wed, 18 Feb 2026 13:15:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=cnm5gy5oWjvAO6IhGzhslh5673gaCJdxuAvhTcQYFf4=; b=tw8dXyxkxi7zpkQGd4mT6ao0EH
	EMkTh4y/f4F8/aGdR9LWYirEhlozZMOwtzubg/1bYLp/qfocXT+aAXj/clpDws0X4wYDU/pwl0Mhl
	9wPPSfTJ2bYDGavPWn3u5H+jtYkSQ8oLsQteaJIrc2YUaGO25KX8pV2A5mbK1MZnF6J9bC3xf81KA
	E/GT61Ax6jNXfnmBPlOxW5kDFH0THdMPZOPIHFq/32FOKDNX6GRhn/nEgXW1sokDnrgOjrO7KPSCF
	m0uUwzhsfL4DN9Fx6sjr5tegeSGnPCgKRYjddhy/hRNbtMFUDqqUhJx6JKGUBG8YRgBvVqtRuP7Gk
	diPnvnRA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:55270)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vshP7-00000000055-0Yr4;
	Wed, 18 Feb 2026 13:15:45 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vshP5-000000002H4-1CW9;
	Wed, 18 Feb 2026 13:15:43 +0000
Date: Wed, 18 Feb 2026 13:15:43 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vinod Koul <vkoul@kernel.org>
Cc: Vladimir Oltean <olteanv@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH net-next] doc: generic phy: update generic PHY
 documentation
Message-ID: <aZW7fz6F-u5vJv64@shell.armlinux.org.uk>
References: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
 <20260211154839.lbh4uovxr5b5s4nv@skbuf>
 <aY1f48Db7KeYRR87@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aY1f48Db7KeYRR87@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260218_051552_543010_44A15756 
X-CRM114-Status: GOOD (  17.38  )
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

On Thu, Feb 12, 2026 at 10:36:43AM +0530, Vinod Koul wrote:
> On 11-02-26, 17:48, Vladimir Oltean wrote:
> > On Thu, Feb 05, 2026 at 02:56:15PM +0000, Russell King (Oracle) wrote:
> > > Update the generic PHY documentation as a result of the discussion for
> > > the s32g submission.
> > > 
> > > Link: https://lore.kernel.org/r/aXtvDn_-pCuKPrnf@vaman
> > > Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> > > ---
> > > I didn't get any replies to my follow-up question to Vinod:
> 
> Sorry to have missed that...
> 
> > >   Please also indicate in the documentation whether changing the submode
> > >   of the serdes (particularly for ethernet) is permitted without doing a
> > >   phy_power_down()..phy_power_up() dance around the phy_set_mode_ext()
> > >   call.
> > 
> > There's certainly nothing *not* permitting that call sequence.
> 
> I agree on that. The documentation can be update to reflect that. Common
> logic would say that we should set things up before powering up, that
> should be the guidance here as well.

This is what my documentation patch does. It adds the possibility of
calling phy_set_mode*() before phy_power_on(), and recommends calling
phy_set_mode*() at that point, rather than the current situation where
the recommendation is after phy_power_on(). It leaves the possibility
of calling phy_set_mode*() afterwards in place.

It isn't clear to me what is required here - it seems that there is
disagreement between Vladimir and yourself, so I'm not planning to
submit an updated patch. Someone who knows what they're doing with
the generic phy stuff needs to propose a patch, and that ain't me.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
