Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9120CE7AAB
	for <linux-phy@archiver.kernel.org>; Fri, 14 Nov 2025 10:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7quAg4ckSxHefUJ3SpxYvReilh4j0bEnvqQtmSt1938=; b=mwpLhvsrX9YXJq
	bTeWJSRpYDvMKjxU+jB8rb8szSpVtNgOhHYn4tnE5IvPLZoHALHTxDv+xvM0YrBzBbVad3PbSKA6o
	iDlLfNnh/f5gPEBDf9HWNDtYk8CY03d0VBne/ma1gzdmjH4KF8MarjNc6sIcSb7rEnWxuoMNqxM3j
	PThnuEOlRVGShJV4EDKpUlT1D3AJ5+jn/ZBKvoXjDnYRJNOWOYHmMNGLD29eYXYuXq1A8HcJOcgqh
	ZbpsBZ97CTlaa5oAwauLISlHJ6JBjAuGy3hX9IPilLUKRnO6doh+fxUw1Z0wza0bNAQlQga7ml8Lu
	+CR9QQdyJky4/Cyr8+fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJrA9-0000000C2Ub-2JZm;
	Fri, 14 Nov 2025 10:36:17 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJrA5-0000000C2SY-1Qg4
	for linux-phy@lists.infradead.org;
	Fri, 14 Nov 2025 10:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763116573; x=1794652573;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=AHvFiiSjYvkYqHt92ejpO7JsVeSi3JWv6E/E/+derrI=;
  b=H/FUmHa0Q3HTygqdAyZM5nYU7GZg9l1D8iHJq/wIc3PswwEM8hJ9u1EH
   TIU1MYgmup139rpGx8LNDCq4dsHUcUD8CxK85RdGBHmqLE8MS1NBt0mSF
   rYe5wdr5gwldTjJ9ZrxM5S23LUy42+SdvC+g8Xib8ZQUCZo4ZfuqCSda6
   /qF7yvxmZfM+UwATwVIvS2THG6Sl42sLaGnWJfDmVIEDJyLKc0PW1/CAC
   qyt3kyMv4EptUBnaeD5lXJQuBiam+faEIaGMHClQh7DVwJkU9d+Mz165w
   1g7utRAa1GEfFuIhDDboLOj/VIjMYA9VbZWagmoQMZ6GCo11PeC+LViEe
   A==;
X-CSE-ConnectionGUID: yd5Zh4Y2Qi+gO4Rle4ZwuA==
X-CSE-MsgGUID: 0VW+4uvUQtyT/jU4/IWjBw==
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; 
   d="scan'208";a="49141580"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Nov 2025 03:36:12 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Fri, 14 Nov 2025 03:35:46 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Fri, 14 Nov 2025 03:35:46 -0700
Date: Fri, 14 Nov 2025 11:34:11 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vladimir Oltean <olteanv@gmail.com>
CC: Vladimir Oltean <vladimir.oltean@nxp.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Daniel Golle
	<daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20251114103411.rzigaoictyinmx66@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
 <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
 <20251113163023.syl6nxq2mqkxpz4z@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251113163023.syl6nxq2mqkxpz4z@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_023613_386051_205098B3 
X-CRM114-Status: GOOD (  49.16  )
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

The 11/13/2025 18:30, Vladimir Oltean wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> Hi Horatiu,
> 
> On Tue, Nov 11, 2025 at 10:50:16AM +0100, Horatiu Vultur wrote:
> > The 11/10/2025 13:42, Vladimir Oltean wrote:
> > >
> > > Hi Horatiu,
> >
> > Hi Vladimir,
> >
> > >
> > > On Mon, Nov 10, 2025 at 12:05:34PM +0100, Horatiu Vultur wrote:
> > > > Allow to invert the N and P signals of the Serdes for both RX and TX. This
> > > > is used to allow the board designer to trace more easily the signals.
> > > >
> > > > Horatiu Vultur (2):
> > > >   phy: microchip: lan966x: Add support for inverting the rx/tx lanes
> > > >   dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted
> > > >
> > > >  .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
> > > >  drivers/phy/microchip/lan966x_serdes.c        | 23 ++++++++++++++++++
> > > >  2 files changed, 47 insertions(+)
> > > >
> > > > --
> > > > 2.34.1
> > >
> > > For context, I am trying to describe the lane polarity property
> > > generically, and I've already blocked Daniel Golle's attempt to
> > > introduce the similar in intent "maxlinear,rx-inverted" and
> > > "maxlinear,tx-inverted".
> > > https://lore.kernel.org/netdev/20251028000959.3kiac5kwo5pcl4ft@skbuf/
> > >
> > > I am trying to find out all there is to know in order about this
> > > feature, and I just noticed your patch, so I have to ask some questions
> > > in order to understand, had a generic property existed, whether you
> > > would have used it.
> >
> > Yes, if there was something generic that would fit, I would like to use it.
> >
> > >
> > > So I see that you don't have OF nodes for individual SerDes lanes, so
> > > this makes your device tree structure incompatible with simple
> > > "tx-polarity"/"rx-polarity" properties. Are those something you're not
> > > willing to introduce?
> >
> > Do you propose to change the device tree to describe each SerDes lane
> > individualy?
> > Apparently in the lan966x_serdes we have also the port muxing which I am
> > not sure it should be there as it should be in the switch. I have done
> > it this way because I have use the phy-ocelot-serdes.c as an example.
> > If I change the device tree to describe each lane, then first I need to
> > take the port muxing which is fine for me. But there might be a problem,
> > if someone will use a newer kernel with an older device tree, it would
> > break the things?
> >
> > > What about other stuff that's in
> > > Documentation/devicetree/bindings/phy/transmit-amplitude.yaml?
> > > You also won't be able to make use of the existing device tree
> > > properties if you don't have OF node containers for each lane.
> >
> > To be honest, I haven't look at transmit-amplitude.yaml yet.
> >
> > --
> > /Horatiu
> >
> 
> ffs :-/
> 
> The radioactive piece of #### that is my work inbox moved your reply to
> the Junk folder, _even though_ you were already in the list of safe
> senders and domains. I just checked this thread to see what was going on
> and why you didn't respond...

No worries.

> 
> Yeah, the device tree binding I want to propose is per lane, so there
> needs to be an OF node for each lane.
> 
> I can't easily parse the lan966x_serdes_muxes[] macros, assuming this is
> what you are talking about.

Yes, I was talking about lan966x_serdes_muxes and I totally understand
that is not that easy to parse it.

> 
> Would it be possible to leave the SerDes muxing alone (with its
> #phy-cells = <2>) and just add the lane OF nodes as an extra? You can
> add new support for phys = <&phandle_directly_to_lane>, but that
> wouldn't remove the existing support.

So you were thinking something like this
---
	serdes: serdes@e202c000 {
		compatible = "microchip,lan966x-serdes";
		reg = <0xe202c000 0x9c>,
		      <0xe2004010 0x4>;
		#phy-cells = <2>;

		serdes_lane_0 {
		    reg = <0>;
		};
	};

	port0 {
		phys = <&serdes_lane_0>;
	};
---

Maybe it is just a silly idea but what about doing like this:
---
	serdes: serdes@e202c000 {
		compatible = "microchip,lan966x-serdes";
		reg = <0xe202c000 0x9c>,
		      <0xe2004010 0x4>;
		#phy-cells = <2>;
		status = "disabled";

		serdes_lane_0 {
		    serdes-properties
		};
	};
---
Then there is no change to the ports and then in the lan966x-serdes I
will iterate over all the child nodes and read the properties for each
lane.

Anyway I can wait with this patch series until you get your changes in.

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
