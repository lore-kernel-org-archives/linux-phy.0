Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C9BCCF9E3
	for <linux-phy@archiver.kernel.org>; Tue, 11 Nov 2025 09:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6rjcicaOsBVL5EviCx8ARnaW7/SNOdoP2L5QqpoxriY=; b=qWuaf1G17mZg7o
	Wc+2vKOYHpSLnKflBCTCs3Ml1vujPbjSmWDVA2cWC9itAodceLrQOTQSoCcwJZhjdUbKL3IgqoHZ1
	S/1/fBZNlHynTb2QVtgkv0jDhp+asjj0FU2a/1sRzuzo/eKBdzCi7IOQ8ApgSmvc0Xu6y6iBvasfC
	tcte5lHY1B4byFabyAtp4lKTNQHsh+Z/VW6vtj27X0u9XIZiznmEiCs+a5ob4iLvc3BTJOOYOFW0s
	QJiE8XUqNrspu53hlBl6G2NivKIZE6E1ryQ/Ay3JO0lHtIOWqJ+EIjI8d6/Ec2DK9WMqdQZwi1su5
	oUMSYxpmGpusNnUxWC8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIl3Z-00000006sep-0PoW;
	Tue, 11 Nov 2025 09:52:57 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIl3W-00000006seN-1QKx
	for linux-phy@lists.infradead.org;
	Tue, 11 Nov 2025 09:52:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1762854774; x=1794390774;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Irzh1PTNsLt8R/60k1PuvPBimXLH1RDXRsIyuXJHTCg=;
  b=mldRqCjI9QOxQXYjjQLmc46vBbCdFkgLhvKaacbYPKYXeGrMANmpDVqN
   HFz01KMcbH5bLP1a2dXFqBXvRrdghsjuP4eQbVwKEeEyWR5o5Uz7w+e8G
   3ZYmeofqd3+JYyAGTo3oD4yFLzScPOStKZ9m+XdkevJCdHn7qfXCxSSqk
   ZJnjnuwVKpdLcA8g2NQNwB7Cyav8UGGc9NieWQtLN59IWpteYID1xVPwd
   umQVRu3BzbUUj8kOV9iCKj4ct7YwB8OxHwjqPTlCsTSvlL6kqCExXpfE/
   Poaspx0bQNPIUCSGuVTY2UOHL3sGZZzINHORPNheiKYvk5rZficySfzYu
   A==;
X-CSE-ConnectionGUID: 7IfXqfEJTEGKMKthwNbgEg==
X-CSE-MsgGUID: mUYY+TfiREmm6rhAZ3a50Q==
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; 
   d="scan'208";a="48307863"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Nov 2025 02:52:51 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 11 Nov 2025 02:51:47 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 11 Nov 2025 02:51:47 -0700
Date: Tue, 11 Nov 2025 10:50:16 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
CC: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Daniel Golle
	<daniel@makrotopia.org>
Subject: Re: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P
 signals
Message-ID: <20251111095016.42byrgj33lp4bouo@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110114216.r6zdgg4iky7kasut@skbuf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251110114216.r6zdgg4iky7kasut@skbuf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_015254_651409_7460054C 
X-CRM114-Status: GOOD (  28.99  )
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

The 11/10/2025 13:42, Vladimir Oltean wrote:
> 
> Hi Horatiu,

Hi Vladimir,

> 
> On Mon, Nov 10, 2025 at 12:05:34PM +0100, Horatiu Vultur wrote:
> > Allow to invert the N and P signals of the Serdes for both RX and TX. This
> > is used to allow the board designer to trace more easily the signals.
> >
> > Horatiu Vultur (2):
> >   phy: microchip: lan966x: Add support for inverting the rx/tx lanes
> >   dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted
> >
> >  .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
> >  drivers/phy/microchip/lan966x_serdes.c        | 23 ++++++++++++++++++
> >  2 files changed, 47 insertions(+)
> >
> > --
> > 2.34.1
> 
> For context, I am trying to describe the lane polarity property
> generically, and I've already blocked Daniel Golle's attempt to
> introduce the similar in intent "maxlinear,rx-inverted" and
> "maxlinear,tx-inverted".
> https://lore.kernel.org/netdev/20251028000959.3kiac5kwo5pcl4ft@skbuf/
> 
> I am trying to find out all there is to know in order about this
> feature, and I just noticed your patch, so I have to ask some questions
> in order to understand, had a generic property existed, whether you
> would have used it.

Yes, if there was something generic that would fit, I would like to use it.

> 
> So I see that you don't have OF nodes for individual SerDes lanes, so
> this makes your device tree structure incompatible with simple
> "tx-polarity"/"rx-polarity" properties. Are those something you're not
> willing to introduce? 

Do you propose to change the device tree to describe each SerDes lane
individualy?
Apparently in the lan966x_serdes we have also the port muxing which I am
not sure it should be there as it should be in the switch. I have done
it this way because I have use the phy-ocelot-serdes.c as an example.
If I change the device tree to describe each lane, then first I need to
take the port muxing which is fine for me. But there might be a problem,
if someone will use a newer kernel with an older device tree, it would
break the things?

> What about other stuff that's in
> Documentation/devicetree/bindings/phy/transmit-amplitude.yaml?
> You also won't be able to make use of the existing device tree
> properties if you don't have OF node containers for each lane.

To be honest, I haven't look at transmit-amplitude.yaml yet.

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
