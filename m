Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 810A0CD4F43
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 11:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChWClXeD1yc/XIpcswIaIIIan0HNtgwbqB8S/9ySgxg=; b=apFnd7g4rV8LkA
	dbHJnc/p1qCf9+m0BARNzVMRVqbeijFQ8v3h0z7x3yJ/e8K+V/kNrvclcWxgbLzSAuN9TMsjhLx3O
	avrLtwkg6aVMPO5D8q+cHyoPCjLOoxUI8Qu+BcdvYDCE131KOVKGp2vXIVYvN7f3gqklJsk75Jx/c
	ifj9i0g6XLkQnaVqMAAFgJWPnIJjZIzoY8NtY/0NEjpD2zmvfOPTkwQTV7nPueTNTaDFAtGQCn4lj
	gju+ijYmYMwh1NZuufI0x9Y1ZcblLdxm0WydM7Fl0Fkv0n3nseojL2yQgHEd+rRo10K78MX+YCzhN
	qlMAKmN6IxVy/3igDqGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJVyp-0000000AQGA-042m;
	Thu, 13 Nov 2025 11:59:11 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJVyl-0000000AQFC-4468
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 11:59:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1763035147; x=1794571147;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=2sBh8QH1TKDtxeRP11XpUoeSd5s6nQOikQ8K8oZjRCw=;
  b=UqU8Z+1nWylss6svpX00j7MBCu3vXu7p9aGg2YySAk+tMvSqgBpnFe6q
   DKC8tjtEgNfMg4ktJT6tT4ABYXvRwnFyvxNyfFkpzFHWAf9DyHM4oc/53
   jOYzMaMJkhBsIPOHODQUv8GH3l/OuG5FTIGN67OwqUdNViTdquSsEdS/P
   rfXCz4Dj4ivDWVB61/6o/fYVG/NzAP2LwuY/vA8Tfsmr3YgZm8brmTlZL
   mde2VZyig7lIYXvZdWAt/GMpew5Ljb/+cJ/mFWp1dDG86pfB8SjsWzR1K
   Alv3Mhs8dzQfC7l+bSj2EaAZmhyMI9LZBjFHwHqkXo6dU8+sSmphlkyEU
   Q==;
X-CSE-ConnectionGUID: D5xO8BvaQcOeXAyrv7Ox3Q==
X-CSE-MsgGUID: f+cpa6PiRwyRJF252ydmyQ==
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; 
   d="scan'208";a="55527099"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2025 04:59:04 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Thu, 13 Nov 2025 04:58:24 -0700
Received: from localhost (10.10.85.11) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Thu, 13 Nov 2025 04:58:23 -0700
Date: Thu, 13 Nov 2025 12:56:50 +0100
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Conor Dooley <conor@kernel.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: phy: lan966x: Add optional
 microchip,sx-tx/rx-inverted
Message-ID: <20251113115650.lxsvkbrwnrwj7ysd@DEN-DL-M31836.microchip.com>
References: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
 <20251110110536.2596490-3-horatiu.vultur@microchip.com>
 <20251110-unwound-award-a11d69b9da4f@spud>
 <20251111095831.lp4kvdfcahtwgrqc@DEN-DL-M31836.microchip.com>
 <58b0d712-48a4-4490-a63f-404716844557@kernel.org>
 <20251111-ploy-dispersal-164ae403df4d@spud>
 <20251112080235.c5iinfnketsunefy@DEN-DL-M31836.microchip.com>
 <20251112-junkman-buckle-31fcfcbfa3c5@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251112-junkman-buckle-31fcfcbfa3c5@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_035908_034605_04ECF7F9 
X-CRM114-Status: GOOD (  30.98  )
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

The 11/12/2025 18:32, Conor Dooley wrote:
> On Wed, Nov 12, 2025 at 09:02:35AM +0100, Horatiu Vultur wrote:
> > The 11/11/2025 17:39, Conor Dooley wrote:
> > > On Tue, Nov 11, 2025 at 11:06:02AM +0100, Krzysztof Kozlowski wrote:
> > > > On 11/11/2025 10:58, Horatiu Vultur wrote:
> > > > > The 11/10/2025 18:43, Conor Dooley wrote:
> > > > > 
> > > > > Hi Conor,
> > > > > 
> > > > >> On Mon, Nov 10, 2025 at 12:05:36PM +0100, Horatiu Vultur wrote:
> > > > >>> This allows to invert the N and P signals of the RX and TX Serdes
> > > > >>> signals. This option allows the board designer to trace their signals
> > > > >>> easier on the boards.
> > > > >>
> > > > >> Why can't this just be done in software, debugfs or something like that?
> > > > >> Maybe it's just your description is poor, but sounds like the intention
> > > > >> here is to just switch things around for debug purposes.
> > > > > 
> > > > > I don't think it should be done through debugfs. As this describes the
> > > > > board layout and I don't think someone will want to change it at
> > > > > runtime to see how things behave. So maybe the description is poor.
> > > > 
> > > > You said it is purely for hardware designer to trace signals, so sorry,
> > > > but that's not DTs purpose.
> > > 
> > > If it is not purely some sort of debug helper, then please explain
> > > better in your commit message.
> > 
> > Yes, I will do so because I don't see how this is a debug helper
> > functionality. I see it as changing the polarity of some pins and there
> 
> The word "trace" here might be problematic? Maybe you meant something
> like "lay out", but all of the use of the word tracing in electronics
> that I have ever seen refers to troubleshooting - be that physically
> following signals to see if there's degradation or things like the
> trace framework in linux.

I understand, by trace I meant "lay out" the signals on the board.
What do you think if I say something like this:

---
dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted

The lan966x has 3 integrated SerDess and for each of them it is possible
to change the polarity of the P(possitive) and N(Negative) pins Serdes.
By changing the polarity of both pins then the functionality of the pins
will be inverted.
---

I have tried not to mention any 'lay out' or 'trace' not to make it
confusing.

> 
> > are few examples in the devicetree bindings where pins change the
> > polarity. Why I see it as changing the polarity is because the
> > N(negative) will become P(positive) and the P(positive) will become the
> > N(negative), so we just invert the signals.



-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
