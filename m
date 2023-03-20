Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EEF8C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 09:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvK8g4Z8DIsEF32QIGo9GCTgNT3DGG26mmLkfy4O1uA=; b=w/YDb2QHH/HZBR
	xKHseetKgPm5JKwPED+abJ7pbz9QpvS8e+pI40Jo9+F/Jm2VP6FJcXKt8Y4RCasIb9e+AhBvsE7d1
	Tr+/cpnhBTaEnzvD8l8oOFXA+IQwH/DRw+PjTV+wMXPj27KXza6Co1FDVEZeVp4QW8hesjBsixxe5
	Wz3tEAUm/J7ktzAvJ8BVmp7kqG9KF14SBO4fVXWEIxE5EBas5/fbhxNigoRbyshATQeXSINuZ9nZA
	EcFTaj9qtURakMH6M6IThPaYiHheq1vGL1UrTXsbN9+9e6PhST2vX42eBsCoLou3d+cYfqQdt7Ai6
	up7/4OvSRWKds0SOfyrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peBlJ-008Tlr-3D;
	Mon, 20 Mar 2023 09:25:06 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peBlE-008Tje-0o
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 09:25:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=V4Ic3CoIN3yLEDl4ZrFprKL8VDhfVNu/6xK0WkJsbGg=; b=oFFZpgYrVUmjwZ9Psb6fMcDoII
	PI37y50wljwMMECGXJBNlGVGnBH150XU3raIqtWeWfSHWTRUNDDV/xTBg8B+ieE/448kN7u4cGQP4
	GFWgPa65zXsK4aY32W2XigRxPBZQXm1KHfcSTXQBuLOQmzgUG2EKHrIR4Eatq3wRZw8no1FvuJFC6
	GVajieQ5ejInjjkF92+q/ARLpPWGxp4bUszPu+K3tOINhEXJs0ALVq2jjRHwupUJPoV+cn/60Gc+r
	n6oI+GnJSxAjpTJDt0+ybaGTrIaZrGc7Vv50y4hevmxuK/vqermAZmgo448gxAWl+mAuRtQ+1iNEQ
	nrNG4Qzw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:34076)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1peBl4-00075E-Af; Mon, 20 Mar 2023 09:24:50 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1peBl0-0006P2-5A; Mon, 20 Mar 2023 09:24:46 +0000
Date: Mon, 20 Mar 2023 09:24:46 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vinod Koul <vkoul@kernel.org>
Cc: Colin Foster <colin.foster@in-advantage.com>,
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
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lee Jones <lee@kernel.org>
Subject: Re: [PATCH v2 net-next 1/9] phy: phy-ocelot-serdes: add ability to
 be used in a non-syscon configuration
Message-ID: <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZBgeKM50e1vt+ho1@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_022500_289876_87E997E6 
X-CRM114-Status: GOOD (  13.22  )
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

On Mon, Mar 20, 2023 at 02:19:44PM +0530, Vinod Koul wrote:
> On 17-03-23, 11:54, Colin Foster wrote:
> > The phy-ocelot-serdes module has exclusively been used in a syscon setup,
> > from an internal CPU. The addition of external control of ocelot switches
> > via an existing MFD implementation means that syscon is no longer the only
> > interface that phy-ocelot-serdes will see.
> > 
> > In the MFD configuration, an IORESOURCE_REG resource will exist for the
> > device. Utilize this resource to be able to function in both syscon and
> > non-syscon configurations.
> 
> Applied to phy/next, thanks

Please read the netdev FAQ. Patches sent to netdev contain the tree that
the submitter wishes the patches to be applied to.

As a result, I see davem has just picked up the *entire* series which
means that all patches are in net-next now. net-next is immutable.

In any case, IMHO if this kind of fly-by cherry-picking from patch
series is intended, it should be mentioned during review to give a
chance for other maintainers to respond and give feedback. Not all
submitters will know how individual maintainers work. Not all
maintainers know how other maintainers work.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
