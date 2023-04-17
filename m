Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8818C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 17 Apr 2023 17:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Z3oBceHfoKf5bLO8SU44ef5c9OWJYWwfJ6fS2RlA+4=; b=Lt57Cv6/ySS2v7
	Ck+hvekiuaQgwc9lK2iE6F6Xbklx1xSLTlt4HvRZg5JTPtHxTq9+vnL4tZ0Nk1SNh6m2Dh8grB3n8
	osEznyv5QYkKEHiASBa6Il3pfzgIGtONdViItlVp2CPSud3uW7Ibln5BrMiMIG8nDCqMtQJUgsFcW
	ztRkCdJajkSZ6DZeSbSal/FCR0ZNK5T40oTXsxeBsuSuNl3Ik/JlSr1x6jCo3iuhhvm06+zDoHlZw
	9sTsKsd89detbQYCN+zKLA8Xs6EdlgpTVoo/hBeNTyOUUwmfT/b60dz/1oueNlzb+qWeTEaix/PpH
	TJFC2Rv14Sr97xX8H47g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poSYw-00HAe6-1a;
	Mon, 17 Apr 2023 17:22:46 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poSYt-00HATS-0u
	for linux-phy@lists.infradead.org;
	Mon, 17 Apr 2023 17:22:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=e4u/r1Ao73tMp+87CjTm7CAwGZ4eC7s0hnGVdo/J5F4=; b=CCPuC+u1Cjfrv/G1W1KQmUNBW2
	LztD4+HDJQuyEtDusWM65DkXMopB95lw1eaY3Ym4c05/NfWhaI4/t2LO563wRXd+1+wr8amunE6GP
	K1PlQvzMHY1w4hun/2QyG9ibgf8dwpk+GGq+KDt4ckXHvitlo4iM2zz+G8jTi9OBLaKI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1poSYc-00AWh4-FU; Mon, 17 Apr 2023 19:22:26 +0200
Date: Mon, 17 Apr 2023 19:22:26 +0200
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
Message-ID: <9e7fe32a-8125-41d5-9f8e-d3e5c6c64584@lunn.ch>
References: <20230323103154.264546-1-herve.codina@bootlin.com>
 <885e4f20-614a-4b8e-827e-eb978480af87@lunn.ch>
 <20230414165504.7da4116f@bootlin.com>
 <c99a99c5-139d-41c5-89a4-0722e0627aea@lunn.ch>
 <20230417121629.63e97b80@bootlin.com>
 <a2615755-f009-4a21-b464-88ec5e58f32a@lunn.ch>
 <20230417173941.0206f696@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230417173941.0206f696@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_102243_320548_508573DA 
X-CRM114-Status: GOOD (  20.45  )
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

> My application (probably a subset of what we can do with E1 lines) does
> not use signaling.
> 
> I don't expose any channel to the user space but just:
> - One hdlc interface using one timeslot.
> - One or more dai links (audio channels) that can be used using ALSA library.

Well, that obviously does what you need for you application, but it
does not sound very generic. I don't think you could build a PBX on
top of that. I'd think you can build an E1 trunk to VoIP gateway.  So
i also have to wounder how generic vs one specific use case your
building blocks are.

Looking at the binding, i assume you could in fact instantiate 32 hdlc
instances? And that 'transparent' actually means DAI? So you can
instantiate as many DAI as you want. If you wanted to implement
signalling, a third type could be added?

> I thought I was providing a "standardised" API between the HDLC device
> and the framer. Maybe it was not as complete as you could expect but I had
> the feeling that it was standardised.

You are abusing the Generic PHY interface, for something which is not
a PHY. Your PHY driver does nothing a PHY driver normally does,
because you keep arguing the MFD does it all. So to me this is the
wrong abstraction.

You need an abstraction of a framer. You do however want a similar API
to generic PHY. devm_of_framer_optional_get() for the consumer of a
framer, which looks in DT for a phandle to a device.
devm_framer_create() which registers a framer provider, your MFD, with
the framer core. The hdlc driver can then get an instance of the
framer, and either put a notifier call block on its chain, or register
a function to be called when there is change in status.

What i also don't like is you have a very static configuration. You
are putting configuration into DT, which i'm surprised Rob Herring and
Krzysztof Kozlowski accepted. How you use E1 slots is not a hardware
property, it is purely software configuration, so should not be in DT.
So there should be a mechanism to configure how slots are used. You
can then dynamically instantiate HDLC interfaces and DAI links. This
is something which should be in the framer core. But since you have
managed to get this binding accepted, you can skip this. But
implementing the basic framer abstraction will give a place holder for
somebody to implement a much more generic solution in the future.

	 Andrew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
