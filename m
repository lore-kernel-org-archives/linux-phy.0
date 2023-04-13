Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9D5C77B6E
	for <linux-phy@archiver.kernel.org>; Thu, 13 Apr 2023 12:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeBxLIxPrcMnEWf1Yn9AZqrcJKv7UhRN5Bvu/R0qfbs=; b=IXyXi+2Rnpyv3K
	uy0YJEYYQzA57O/JlrSy6BHsFjqrmtt3kymG//y1+Ij4yyEsV1dBEVgzffv86q4UaoTE61+gqD+BR
	JwXuM75YNXnDKHUKcCXAMWRdmzt3gkBINom/0Ai3ye6RFZIxnmbDnqBWv62YqoMt/Ctz5VO2y9qWm
	0jdU8kSrW1sucUKzaHSY02ZjgB0FeSPXRnJPvBnNJ4nxxwrFeM7wvnENJ/Ao7l8mawPkRyELZUbpf
	FHAVu4l9Ye1ixj2Bm3VCYn1jEhujO0q4Tux6mRlGa9o8Wd5IFDSQOFsrry3R2LvrPVvpGobud08N4
	mXA5QYYyzL4dSUrJCd3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmwNg-006AM6-11;
	Thu, 13 Apr 2023 12:48:52 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmwNd-006AKf-1D
	for linux-phy@lists.infradead.org;
	Thu, 13 Apr 2023 12:48:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=FtBdndZ3097mSvwg5FOFaiH+eLsMC9IFLTN0uxY11Hk=; b=b0F4Mwt0Njh9nMh7X/DOfo3jPT
	uG1loN7ecupHSyBznqMc3ZsMIGSgYdywFIue78i4BY7R0ThXcrkOXtZKy+jN2eQ4obVkbNR0wT3ty
	BVAIU+RTRicvetF9arvDQotBgmDSaqqIeUGu3lufoBbQEXHKfqHeeJTxQHirNSyO+y0E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1pmwNK-00ABVl-W0; Thu, 13 Apr 2023 14:48:30 +0200
Date: Thu, 13 Apr 2023 14:48:30 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Herve Codina <herve.codina@bootlin.com>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 0/4] Add support for QMC HDLC and PHY
Message-ID: <885e4f20-614a-4b8e-827e-eb978480af87@lunn.ch>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230323103154.264546-1-herve.codina@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_054849_417249_FA576CDD 
X-CRM114-Status: GOOD (  20.51  )
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

On Thu, Mar 23, 2023 at 11:31:50AM +0100, Herve Codina wrote:
> Hi,
> 
> I have a system where I need to handle an HDLC interface.
> 
> The HDLC data are transferred using a TDM bus on which a PEF2256 is
> present. The PEF2256 transfers data from/to the TDM bus to/from E1 line.
> This PEF2256 is also connected to a PowerQUICC SoC for the control path
> and the TDM is connected to the SoC (QMC component) for the data path.
> 
> From the HDLC driver, I need to handle data using the QMC and carrier
> detection using the PEF2256 (E1 line carrier).
> 
> The HDLC driver consider the PEF2256 as a generic PHY.
> So, the design is the following:
> 
> +----------+          +-------------+              +---------+
> | HDLC drv | <-data-> | QMC channel | <-- TDM -->  | PEF2256 |
> +----------+          +-------------+              |         | <--> E1
>    ^   +---------+     +---------+                 |         |
>    +-> | Gen PHY | <-> | PEF2256 | <- local bus -> |         |
>        +---------+     | PHY drv |                 +---------+
>                        +---------+

Hi Herver

Sorry, i'm late to the conversation. I'm looking at this from two
different perspectives. I help maintain Ethernet PHYs. And i have
hacked on the IDT 82P2288 E1/T1/J1 framer.

I think there is a block missing from this diagram. There appears to
be an MFD driver for the PEF2256? At least, i see an include for
linux/mfd/pef2256.h.

When i look at the 'phy' driver, i don't see anything a typical PHY
driver used for networking would have. A networking PHY driver often
has the ability to change between modes, like SGMII, QSGMII, 10GBASER.
The equivalent here would be changing between E1, T1 and J1. It has
the ability to change the speed, 1G, 2.5G, 10G etc. This could be
implied via the mode, E1 is 2.048Mbps, T1 1.544Mbps, and i forget what
J1 is. The PEF2256 also seems to support E1/T1/J1. How is its modes
configured?

In fact, this PHY driver does not seem to do any configuration of any
sort on the framer. All it seems to be doing is take notification from
one chain and send them out another chain!

I also wounder if this get_status() call is sufficient. Don't you also
want Red, Yellow and Blue alarms? It is not just the carrier is down,
but why it is down.

Overall, i don't see why you want a PHY. What value does it add?

	 Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
