Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C5ADC433F5
	for <linux-phy@archiver.kernel.org>; Mon,  7 Feb 2022 05:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83UBQVqI9FSZu26HOtT5fXzm+78lQRjDbDmD9Qwjva4=; b=w4AIR1nZyJPVb3
	GDB/CL+xX7T7HJhGP7pxds6kB2aTSNnjdi/V9IQEi2e644MUTBFR2mtgQZ7xPhOOuJQ1f+yh3N0h9
	b3GO1nsgyIB+rOrnbVW+cKWOeawxj560IDZun2KIhtjiOoZ6uvHP07eaCKOSHX2Hl1JfzLvEyaMqI
	8zLmpAJa0/PRZerYHdCaUlADuahc74sxil018eadBbYcAiOudPSYQFLRC44D2jjl/rQYe+6GziHxC
	GTPqpP6/g74PD74Few1vdWoM0mYyRsW1zj5v6PUAnnYporjlTFOzGUHNVF0/vXQkU+Ik03maG2Wd5
	BpI2bmPT6+OgFRjQNrFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGway-0093ni-DY; Mon, 07 Feb 2022 05:29:48 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGwav-0093nO-88
 for linux-phy@lists.infradead.org; Mon, 07 Feb 2022 05:29:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id B62BBB80ED0;
 Mon,  7 Feb 2022 05:29:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1FEEC004E1;
 Mon,  7 Feb 2022 05:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644211782;
 bh=IScjOYArVNYVbJH6MdKnmqqYzf1ygoeSC6Cat/SyezM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZKr+40RwCyLTmBLqDyLA6NfttVuysn3LAXf6bwqRngyYCtAe7oBoc9d08siEND25g
 5sEvUB6SRqwpHSyYh+Nxu/w40pGCL/ae3bklPZXBjKSsbq2Fy9xzvspbOAiqwWsp/2
 wpi2IyOQ7oYNpXqEnC1MI8Z6kibSUmPwjpwBYM4nS+MKboN7nJo/3fSWDuChgkfdly
 BkB/g8sXdfrB2A8/xLoir1UkQ+rMpxbs6T/9+EddJprBls4JXsBMKxd2iX7eFou+W7
 3CCEDPnYyoxFooqYA0tLKFfAdA7Fy6+9McuGwYMZOwpfBm8XuCIrZDHnYT9Ip0EpnV
 a2PoM7SXEh6Hg==
Date: Mon, 7 Feb 2022 10:59:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 devicetree@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH devicetree v3] dt-bindings: phy: Add `tx-p2p-microvolt`
 property binding
Message-ID: <YgCuQjN5tBvljrQN@matsya>
References: <20220119131117.30245-1-kabel@kernel.org>
 <74566284-ff3f-8e69-5b7d-d8ede75b78ad@gmail.com>
 <Yf3egEVYyyXUkklM@robh.at.kernel.org>
 <20220206185413.4c1ac00d@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220206185413.4c1ac00d@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220206_212945_477796_29453258 
X-CRM114-Status: GOOD (  21.98  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 06-02-22, 18:54, Marek Beh=FAn wrote:
> On Fri, 4 Feb 2022 20:18:40 -0600
> Rob Herring <robh@kernel.org> wrote:
> =

> > On Fri, Jan 21, 2022 at 11:18:09AM -0800, Florian Fainelli wrote:
> > > On 1/19/22 5:11 AM, Marek Beh=FAn wrote:  =

> > > > Common PHYs and network PCSes often have the possibility to specify
> > > > peak-to-peak voltage on the differential pair - the default voltage
> > > > sometimes needs to be changed for a particular board.
> > > > =

> > > > Add properties `tx-p2p-microvolt` and `tx-p2p-microvolt-names` for =
this
> > > > purpose. The second property is needed to specify the mode for the
> > > > corresponding voltage in the `tx-p2p-microvolt` property, if the vo=
ltage
> > > > is to be used only for speficic mode. More voltage-mode pairs can be
> > > > specified.
> > > > =

> > > > Example usage with only one voltage (it will be used for all suppor=
ted
> > > > PHY modes, the `tx-p2p-microvolt-names` property is not needed in t=
his
> > > > case):
> > > > =

> > > >   tx-p2p-microvolt =3D <915000>;
> > > > =

> > > > Example usage with voltages for multiple modes:
> > > > =

> > > >   tx-p2p-microvolt =3D <915000>, <1100000>, <1200000>;
> > > >   tx-p2p-microvolt-names =3D "2500base-x", "usb", "pcie";
> > > > =

> > > > Add these properties into a separate file phy/transmit-amplitude.ya=
ml,
> > > > which should be referenced by any binding that uses it.  =

> > > =

> > > p2p commonly means peer to peer which incidentally could be confusing,
> > > can you spell out the property entire:
> > > =

> > > tx-peaktopeak-microvolt or:
> > > =

> > > tx-pk2pk-microvolt for a more compact name maybe?  =

> > =

> > Peer to peer makes little sense in terms of a voltage. I think this is =

> > fine as-is.
> =

> Cool. Should this get merged via devicetree, or via phy maintainers?
> Or should I resend this together with patches that make use of this
> property? (In that case can you add your Ack?)

Sending with patches using this would be better.. It can go thru phy
tree

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
