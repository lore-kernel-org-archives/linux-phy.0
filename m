Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D006C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 17:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A7Xl5AwtPiVedyVFw71m8zqMMwtPc1l5ZnkrI55llgM=; b=rsaHhaZ3/v1oN9
	Ac2VPGpn1kr9F946WpliqPan6TxygMqdjJOh2d6cRCNdeE4yWfIIO4BGow5cFbHRPzpD6Ujz9aXGC
	MSgg9qjr2sRImPTjW0HlOVS0qvJvZwXFO9WugXOD1VPIjZr6fZsIeuFNmQeviBorZAsstSTyQ2XZA
	wFEtwGk7zosigh6Ui1hWbppcKUC6vCrplAKFPf4VwDlD8txU4zV1JU3HApApuDC/XqkmXKj5XdhYM
	2/JpJPnNMiZUEUynBzRFjpwW0DFY6FlCSWOBZLmBjq0r5EAYpJFQY9PEFj4g1PhhILHFDbASPiNK6
	WmooRbdqN64lUVwWHhwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peIrr-009uMe-03;
	Mon, 20 Mar 2023 17:00:19 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peIro-009uKB-25
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 17:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=8uUun6889VGz1VyHWim1MwLUmL0N9hTsI+n3fZ+GgII=; b=ise61BJHw0xZre3ghzJpj7t8yw
	DYDTB4+Nw21quwjKC1xV4zKEGZZKXFA5zVoisiH1AB+rK7/dpzABKMyCGP5fLIx/aLnient8AMrpU
	dWCAfTXDuya+4KCPYuIR6HUGVaH2rB563bIiN+h6RGcZtxM+6L/Kr9saAxRAamMjg1cYwgBRQ6PCy
	RAucL9HmD4T4oGuSVFimF3GrbukZSIIOGZjNUkAYXhROiJ37vwKLOFKrPBNdplPHVT0mUAa8MVhnq
	uk/yTzzXELf8aHvJ83Vr/93eSkk8OF7xC0qVWEK8pS9ZDqY65+l0/pG29z3WUtXw+/xY08DNavD7O
	YtJqWVeA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:33664)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1peIrf-0007vU-1l; Mon, 20 Mar 2023 17:00:07 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1peIrc-0006hW-7e; Mon, 20 Mar 2023 17:00:04 +0000
Date: Mon, 20 Mar 2023 17:00:04 +0000
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
Message-ID: <ZBiRFNAqd94tbEJ9@shell.armlinux.org.uk>
References: <20230317185415.2000564-1-colin.foster@in-advantage.com>
 <20230317185415.2000564-2-colin.foster@in-advantage.com>
 <ZBgeKM50e1vt+ho1@matsya>
 <ZBgmXplfA/Q3/1dC@shell.armlinux.org.uk>
 <20230320133431.GB2673958@google.com>
 <ZBhtOw4Ftj3Sa3JU@shell.armlinux.org.uk>
 <20230320164136.GC2673958@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230320164136.GC2673958@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_100016_695637_620C978A 
X-CRM114-Status: GOOD (  18.64  )
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

On Mon, Mar 20, 2023 at 04:41:36PM +0000, Lee Jones wrote:
> On Mon, 20 Mar 2023, Russell King (Oracle) wrote:
> 
> > On Mon, Mar 20, 2023 at 01:34:31PM +0000, Lee Jones wrote:
> > > Once again netdev seems to have applied patches from other subsystems
> > > without review/ack.  What makes netdev different to any other kernel
> > > subsystem?  What would happen if other random maintainers started
> > > applying netdev patches without appropriate review?  I suspect someone
> > > would become understandably grumpy.
> >
> > Why again are you addressing your whinge to me? I'm not one of the
> > netdev maintainers, but I've pointed out what happens in netdev
> > land. However, you seem to *not* want to discuss it directly with
> > DaveM/Jakub/Paolo - as illustrated again with yet another response
> > to *me* rather than addressing your concerns *to* the people who
> > you have an issue with.
> >
> > This is not communication. Effectively, this is sniping, because
> > rather than discussing it with the individuals concerned, you are
> > instead preferring to discuss it with others.
> >
> > Please stop this.
> 
> Read the above paragraph again.

You sent your email _TO_ me, that means you addressed your comments
primarily _to_ me. RFC2822:

   The "To:" field contains the address(es) of the primary recipient(s)
   of the message.

   The "Cc:" field (where the "Cc" means "Carbon Copy" in the sense of
   making a copy on a typewriter using carbon paper) contains the
   addresses of others who are to receive the message, though the
   content of the message may not be directed at them.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
