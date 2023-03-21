Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DC93C7618D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 11:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLTZjm8f1yNFd6gsD4B1K4/KT+C3GD1Omx8auhJjh+g=; b=Sd+M8KZECkaIk7
	kAnlONSh9Ti1V0d1vMz/1zEUU0TgostrheglNty/pcBsLosqmhm/+GxUpFhynk21McHCpa62Ynero
	QnDgv8sFXOjjCTh+KrZ47vkZNc9kSwAo8Bzwn0jjECyqpoah4E7p6+8V+xTtYt/gfai5RDDvMSnQG
	6z0GSLP6oCXSWCSAv3M3rBVgL2YeKH50o80oVInIHrVdYtBEWA+czdD9uaki2i3/rG4wIqGedVUO8
	Db3ax8BUJq6To5ZY058oZLoiC6ybIAYHO8QDin/9q2Gre7i4o7ZzXAqURBOQd327tIdsd4r7Zmm/Q
	AsbITlwQ7y97YLARSGOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peZwy-00C9vV-2U;
	Tue, 21 Mar 2023 11:14:44 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peZwv-00C9ta-1C
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 11:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=h7qXc+1aUFElkMSM91nEtKXu81XN+Wf79m4It5ZDBKw=; b=CyDe9t+sVOvK634r9Puu4qv7Tr
	Ovj0TAOGTUpoKFToWqG4+NPCKSvoEhRDyP69OUfOz0VzdqjnrOiyHZCrz3aQrySDxCqb/1a228oEq
	nZXa1tj0tcBupnyAq5zoAPqrUcqdVRxC75ISxNKA8Ggm05IjXYSuFnn1pRhMu971AiRNMPlTTAR7J
	xFGXcziwSsMUnBKXRQ7bVHBnEchFcfmUoqaD4KFX4It3vH1JWHEiByTrpn4YKJ/0W3HqGGGc6x0Id
	vT+U8Qa7tA83tkCiQBDFvvOdRN/69noCxit8ddctZnzokmhZQ3dZwvFfMSS0uOSwIMvVuLh6J3wyf
	kI1GDoIA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:41428)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1peZwm-0000xL-KC; Tue, 21 Mar 2023 11:14:32 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1peZwk-0007gb-5R; Tue, 21 Mar 2023 11:14:30 +0000
Date: Tue, 21 Mar 2023 11:14:30 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Lee Jones <lee@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Colin Foster <colin.foster@in-advantage.com>,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	"David S. Miller" <davem@davemloft.net>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>, UNGLinuxDriver@microchip.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Manoil <claudiu.manoil@nxp.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH v2 net-next 1/9] phy: phy-ocelot-serdes: add ability to
 be used in a non-syscon configuration
Message-ID: <ZBmRlnCKt7oJ/w9J@shell.armlinux.org.uk>
References: <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
 <20230320133431.GB2673958@google.com>
 <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
 <20230320164136.GC2673958@google.com>
 <ZBiRFNAqd94tbEJ9@shell.armlinux.org.uk>
 <20230321082658.GD2673958@google.com>
 <ZBmD+7pinpTzayep@shell.armlinux.org.uk>
 <20230321110851.GE2673958@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230321110851.GE2673958@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_041441_452871_F9DA7493 
X-CRM114-Status: GOOD (  32.53  )
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

On Tue, Mar 21, 2023 at 11:08:51AM +0000, Lee Jones wrote:
> On Tue, 21 Mar 2023, Russell King (Oracle) wrote:
> 
> > On Tue, Mar 21, 2023 at 08:26:58AM +0000, Lee Jones wrote:
> > > On Mon, 20 Mar 2023, Russell King (Oracle) wrote:
> > >
> > > > On Mon, Mar 20, 2023 at 04:41:36PM +0000, Lee Jones wrote:
> > > > > On Mon, 20 Mar 2023, Russell King (Oracle) wrote:
> > > > >
> > > > > > On Mon, Mar 20, 2023 at 01:34:31PM +0000, Lee Jones wrote:
> > > > > > > Once again netdev seems to have applied patches from other subsystems
> > > > > > > without review/ack.  What makes netdev different to any other kernel
> > > > > > > subsystem?  What would happen if other random maintainers started
> > > > > > > applying netdev patches without appropriate review?  I suspect someone
> > > > > > > would become understandably grumpy.
> > > > > >
> > > > > > Why again are you addressing your whinge to me? I'm not one of the
> > > > > > netdev maintainers, but I've pointed out what happens in netdev
> > > > > > land. However, you seem to *not* want to discuss it directly with
> > > > > > DaveM/Jakub/Paolo - as illustrated again with yet another response
> > > > > > to *me* rather than addressing your concerns *to* the people who
> > > > > > you have an issue with.
> > > > > >
> > > > > > This is not communication. Effectively, this is sniping, because
> > > > > > rather than discussing it with the individuals concerned, you are
> > > > > > instead preferring to discuss it with others.
> > > > > >
> > > > > > Please stop this.
> > > > >
> > > > > Read the above paragraph again.
> > > >
> > > > You sent your email _TO_ me, that means you addressed your comments
> > > > primarily _to_ me. RFC2822:
> > > >
> > > >    The "To:" field contains the address(es) of the primary recipient(s)
> > > >    of the message.
> > > >
> > > >    The "Cc:" field (where the "Cc" means "Carbon Copy" in the sense of
> > > >    making a copy on a typewriter using carbon paper) contains the
> > > >    addresses of others who are to receive the message, though the
> > > >    content of the message may not be directed at them.
> > >
> > > You're over-thinking it.  I replied to all.
> >
> > I've been thinking about this entire situation and there's something
> > that summarises it. Kettle. Pot. Black.
> >
> > You complain about how netdev is run, but you also complain about how
> > people interpret your emails.
> >
> > Sorry, but no. I think you need to be more accomodating towards how
> > others perceive your emails, especially when there are widespread
> > accepted conventions. The fact that you are seemingly not even willing
> > to entertain that someone _might_ interpret your emails according to
> > standard normals is frankly a problem for you.
> 
> This conversion has gone completely off-track.
> 
> If you wish to continue talking about email headers offline (instead of
> filling people's inboxes with unrelated ramblings), you know where to
> find me.

I would prefer not to. I would much prefer it that if _you_ have a
problem with how netdev operates, that _you_ talk directly _to_ the
netdev maintainers, rather than latching on to one of my emails and
replying to it. That is a reasonable request that _you_ appear to be
completely immune to comprehending, instead wishing to effectively
tell me that I'm wrong to request that - and start this idiotic
thread to debate it.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
