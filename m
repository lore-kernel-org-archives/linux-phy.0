Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76772C6FD1D
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 14:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4JmKn9AMY0sgrJP2I2RsWphDKwnqSW1Rff7jt6yD8M=; b=11YvKeJwfWTxUW
	sEXpbb6H4XDj/3aKRyveHVnVPdWt59aZv6iryBQsPpMyEMFF/7VgWrqi1SpX5NcGMTZfy9JenrNS7
	mp6tbwwGN7SbKCXVqLSDxQXcOmw6twvzfKY5e1xAZGRUVM9iAAsdTBHzmCQtqqPze3jXwm/Zcz7bD
	lTdELvWBmbzpfG3IYdWBkmxA6HXIDwkQBE147VJBeRQTQSfWHcWfxgeVeZ5W+66qqT5ae6u57e23b
	G+O718bk8kg1j5XWLvVRLJwrGKmPyq8ww2IV6Y5rTfNRLcYqXJE0ETZHYYIsRcNq+a/vnOtdIf4k6
	v6jDfHN9+OrpwZ+qPHpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peGTs-009KA1-0C;
	Mon, 20 Mar 2023 14:27:24 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peGTo-009K8y-1z
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 14:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8fPPhONKXpfhnsctRBM2wF3dukjuZcFloNfgvYDQNno=; b=gsz1m64uduKoHHN5tk3c6hFyyr
	M8+Wo2WSTcFgcCatp8JUetMGQzOCmAXpTe3bf/bSl9+ydw2uk7Xfaillu4oiYbPQSB9/sNNX9gqz9
	8srwL7s/FZanQpNw1bna6EggeB5hSjNXj6DvNJuqCoDpbHckNlZ7lJ622mcb0JIOEDFLA9tea+l+3
	fVavjtgIcJxghju+roZfsKPqJ2yfg1Y3G1HKrzS+UZil3KMS1EyjC0SHLMcDHeruujAj5zVgnpq98
	iXtUL0zf3OdFIxm5Wh0s6cD2VSGDfEQy/7tNIEemsF/qRGdoLTbdbYEfGPgZTF2AJIltyYyKXg7Vd
	ybgTrH7Q==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39434)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1peGTf-0007bQ-6U; Mon, 20 Mar 2023 14:27:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1peGTb-0006aT-ET; Mon, 20 Mar 2023 14:27:07 +0000
Date: Mon, 20 Mar 2023 14:27:07 +0000
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
Message-ID: <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
 <20230320133431.GB2673958@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230320133431.GB2673958@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_072720_964591_315DC4A7 
X-CRM114-Status: GOOD (  23.69  )
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

On Mon, Mar 20, 2023 at 01:34:31PM +0000, Lee Jones wrote:
> On Mon, 20 Mar 2023, Russell King (Oracle) wrote:
> 
> > On Mon, Mar 20, 2023 at 02:19:44PM +0530, Vinod Koul wrote:
> > > On 17-03-23, 11:54, Colin Foster wrote:
> > > > The phy-ocelot-serdes module has exclusively been used in a syscon setup,
> > > > from an internal CPU. The addition of external control of ocelot switches
> > > > via an existing MFD implementation means that syscon is no longer the only
> > > > interface that phy-ocelot-serdes will see.
> > > >
> > > > In the MFD configuration, an IORESOURCE_REG resource will exist for the
> > > > device. Utilize this resource to be able to function in both syscon and
> > > > non-syscon configurations.
> > >
> > > Applied to phy/next, thanks
> >
> > Please read the netdev FAQ. Patches sent to netdev contain the tree that
> > the submitter wishes the patches to be applied to.
> >
> > As a result, I see davem has just picked up the *entire* series which
> > means that all patches are in net-next now. net-next is immutable.
> >
> > In any case, IMHO if this kind of fly-by cherry-picking from patch
> > series is intended, it should be mentioned during review to give a
> > chance for other maintainers to respond and give feedback. Not all
> > submitters will know how individual maintainers work. Not all
> > maintainers know how other maintainers work.
> 
> Once again netdev seems to have applied patches from other subsystems
> without review/ack.  What makes netdev different to any other kernel
> subsystem?  What would happen if other random maintainers started
> applying netdev patches without appropriate review?  I suspect someone
> would become understandably grumpy.

Why again are you addressing your whinge to me? I'm not one of the
netdev maintainers, but I've pointed out what happens in netdev
land. However, you seem to *not* want to discuss it directly with
DaveM/Jakub/Paolo - as illustrated again with yet another response
to *me* rather than addressing your concerns *to* the people who
you have an issue with.

This is not communication. Effectively, this is sniping, because
rather than discussing it with the individuals concerned, you are
instead preferring to discuss it with others.

Please stop this.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
