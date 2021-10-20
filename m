Return-Path: <SRS0=T9my=PI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A719C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 09:05:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF3BF61359
	for <linux-phy@archiver.kernel.org>; Wed, 20 Oct 2021 09:05:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CF3BF61359
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=microchip.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CpMGsuoZsuDD+bpMCB5O4pHWDrOMH6u8EwRX66xrwRU=; b=r7461Xo57NvTyC
	KJjTfwoweMbqwxOqKdspGQjdx6N6k2wcDG4P2IrWneNgJeoRnta2Vm28Km69I/YN6qFIcqOwVrRtC
	svB/zDgfOfNvwMnNyuOmbMK87D1q2YMtJrQr+y2LbeAEtBm9vA+JTiKliM67mBvzGgfV67Y34mQF2
	nr+Ngt9fOwH20VJg3tExM2MYytkWRZTWTwy34hFXHqKnrvB9uZKCKvnJQWuepDIgQHp0zfY3w/1MK
	Yin6YmwaU2ML04yF8m7NWGNJf/d/dpPkoywRaA8atYYx6y0HXmjlN5HqrxZQ+rKIUO1KpwxwZHkmN
	v+FC8zaDCbXqQ39Gx9cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md7XT-003vv3-BF; Wed, 20 Oct 2021 09:05:35 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md7XQ-003vuR-H4
 for linux-phy@lists.infradead.org; Wed, 20 Oct 2021 09:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1634720732; x=1666256732;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SPBHRwKBxvfeQCeCmvDTAwkvWtsrV8f0sXTIZMWaKDY=;
 b=ZzHawZLETOSYRE6LYjzz0dnE/gBmMKF/+htte5zRj33Jg2C1LsH5yKhg
 FkFqnkBQRFdABOcxGjEHVEdOk7I4He7VCaXt5NK1VxaBZiPX/X1SMZHMo
 gyDehBQC+YrsNvMmJmdFi3YLL5naMwWUwuLBb+HihhSXoj1ECMz8WH9cU
 N16pTrUJ4UJMKB5/p8WfecI6JWtz9unkNrEcYUtzvH2OL8abkK2Tie6bE
 vNiXUqDzIaMM625XXpJVlJsG2D+4ML8XVqRvkghcEcdE07O0YPQk/WsQ1
 RKa55tBocdtDCNT7A3VexFruob+QzN8b7r8JAFJiENVYKDzcRaeUOntxw g==;
IronPort-SDR: 1pFKrgr3bw/cD8VgF6LVGGpsUgQ4qlBePFX9+Pwksym38UqtHCVtAFSVTjF+FQ6lyZF2+m+NL6
 KwyHb7ZIShBdIxrbey0uQeKcUvgan2Lb7tdjekeE+Cv9tAlg5LjpdE+3XHCVJU7K6YKx+CwsZV
 ccZ0GpndddJh6ThIXmNIF63AeyJT7HZ3qyd3Bho4jWl5+SsLbti+C4seLq0930kGA/XI77z4Tw
 QBGaSQNRmdUKBB2Cd0eIPgAcSfqhi4m3PVvIeV7ItmNRC4EcmW02Nx0j64jECb7TXAY/BaBoDR
 dBzQRkBDsNo+miaFyxr+friS
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="141010436"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Oct 2021 02:05:30 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 20 Oct 2021 02:05:30 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Wed, 20 Oct 2021 02:05:29 -0700
Date: Wed, 20 Oct 2021 11:07:03 +0200
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: Rob Herring <robh@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod <vkoul@kernel.org>, Andrew
 Lunn <andrew@lunn.ch>, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add constants for lan966x serdes
Message-ID: <20211020090703.sspta6qltdymylig@soft-dev3-1.localhost>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-3-horatiu.vultur@microchip.com>
 <YW3K2GX+hmkwt3EE@robh.at.kernel.org>
 <20211019091258.3uet6lp3mxaoliqt@soft-dev3-1.localhost>
 <CAL_JsqLemN4jU32-5UvPBGUb7G6jxxKwD5oetJWkoBLANuyTsw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLemN4jU32-5UvPBGUb7G6jxxKwD5oetJWkoBLANuyTsw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_020532_624993_761DFA5A 
X-CRM114-Status: GOOD (  29.33  )
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

The 10/19/2021 08:38, Rob Herring wrote:
> 
> On Tue, Oct 19, 2021 at 4:11 AM Horatiu Vultur
> <horatiu.vultur@microchip.com> wrote:
> >
> > The 10/18/2021 14:28, Rob Herring wrote:
> > >
> > > On Fri, Oct 15, 2021 at 02:39:19PM +0200, Horatiu Vultur wrote:
> > > > Lan966x has: 2 integrated PHYs, 3 SerDes and 2 RGMII interfaces. Which
> > > > requires to be muxed based on the HW representation.
> > > >
> > > > So add constants for each interface to be able to distinguish them.
> > > >
> > > > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > > > ---
> > > >  include/dt-bindings/phy/phy-lan966x-serdes.h | 14 ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >  create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h
> > > >
> > > > diff --git a/include/dt-bindings/phy/phy-lan966x-serdes.h b/include/dt-bindings/phy/phy-lan966x-serdes.h
> > > > new file mode 100644
> > > > index 000000000000..8a05f93ecf41
> > > > --- /dev/null
> > > > +++ b/include/dt-bindings/phy/phy-lan966x-serdes.h
> > > > @@ -0,0 +1,14 @@
> > > > +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> > > > +
> > > > +#ifndef __PHY_LAN966X_SERDES_H__
> > > > +#define __PHY_LAN966X_SERDES_H__
> > > > +
> > > > +#define PHY(x)               (x)
> > > > +#define PHY_MAX              PHY(2)
> > > > +#define SERDES6G(x)  (PHY_MAX + 1 + (x))
> > > > +#define SERDES6G_MAX SERDES6G(3)
> > > > +#define RGMII(x)     (SERDES6G_MAX + 1 + (x))
> > > > +#define RGMII_MAX    RGMII(2)
> > > > +#define SERDES_MAX   (RGMII_MAX + 1)
> > >
> > > I still don't understand. #phy-cells description says we have:
> > >
> > > <port idx> <serdes idx>
> > >
> > > But here it's 3 numbers. How are these defines used to fill in the 2
> > > cells?
> >
> > Actually they are still only a number. Or maybe I am missing something.
> 
> So all the defines apply to the 2nd cell? That's what's missing.

Exactly.

> The cell description needs to spell all this out. 3 different modes or
> whatever. Explain what the h/w is comprised of in the top level
> 'description'.

I will add this description.

> 
> >
> > Maybe an example will help:
> >
> > ---
> > serdes: serdes@e2004010 {
> >     compatible = "microchip,lan966x-serdes";
> >     reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
> >     #phy-cells = <2>;
> > };
> >
> > &port0 {
> >     ...
> >     phys = <&serdes 0 SERDES6G(1)>;
> >     ...
> > };
> >
> > &port1 {
> >     ...
> >     phys = <&serdes 1 PHY(0)>;
> 
> I think CU was better, just needed some comments. PHY is pretty vague.

Same here, I will update it.

> 
> >     ...
> > }
> >
> > ...
> > ---
> >
> > Here are some existing examples based on which I have created this patch
> > series:
> > https://elixir.bootlin.com/linux/v5.15-rc6/source/arch/mips/boot/dts/mscc/ocelot_pcb120.dts#L99
> 
> None of which use PHY() or RGMII()...
> 
> 
> > https://elixir.bootlin.com/linux/v5.15-rc6/source/arch/mips/boot/dts/mscc/ocelot.dtsi#L274
> >
> > >
> > > Rob
> >
> > --
> > /Horatiu

-- 
/Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
