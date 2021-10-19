Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 168B5C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 13:39:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CFF5E60FDA
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 13:39:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CFF5E60FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t8WL+D33cmCyD5WrURuIu3qcFIRBgbBvDhHBYi7fneE=; b=qoASIxDJNh311d
	+XWXAS/1O4pAZjQXaswzhAokJ1TgWjp/5q8+eow5iSmX7XM3sEUFxaunDuD5XAgcRKQqv82epUCpH
	AbRugNOK/ZEVr/x1QYHNcuVFkGTXX24kWPzs9BzLw7zxg8F+cfttnE9oD26Mt10QjgyLq40zK4N6n
	16SOPi/5oZfOBwIW3c6NL+UKCkDIFIPFqdh3bWm/3QPgiW3eomIj8+HjFH8fRDB7NUzfZw0RrVtJK
	epBUyf8w1JjlOsZV4XIhWRtVyjp2R6FnxruQL1amwWCVMa3do/BWQhggIcAgJQ4S1iEYwC9OHvEev
	oClKFGnGmD1Fk+UcrceA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcpLL-001RpC-Dr; Tue, 19 Oct 2021 13:39:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcpLI-001RoC-5w
 for linux-phy@lists.infradead.org; Tue, 19 Oct 2021 13:39:49 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 590AD60F25
 for <linux-phy@lists.infradead.org>; Tue, 19 Oct 2021 13:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1634650787;
 bh=nt2mCYefXWMIaMeljO6B+JG+TGSzgNhhr44Juy9MjH0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pqaRGevtHw6TgHnjSKZaAEDVEEAkBYPUPwBnXVICDdIW3VsCP+rwCF4BgEIM+hvur
 dkIJz+uLHYISxYQg+Tnxi/jv48+4IwGun+Y2NYkUiLclDdjtc0EFxEad+2YVkFRQay
 oritohg8AwMYqh9AdGTYGSYGgkWYFDuILzWF9wsud9iwzWbtXfGvcd4uicZcCIEvX5
 bx+/qgEKH7P11EVig3bQfQDWy9njMZ2EgIoLtNjO0fHkxxsma2AhHTf7yF+nOU/IeH
 8oa8XPIAD78K/ditz1U2JydW/7fID5TM5R4TxkFNk7OYYU+aGrqeZ7cSyMkPeLQ6bK
 6Po1Q5hYXtg5g==
Received: by mail-ed1-f41.google.com with SMTP id t16so13206086eds.9
 for <linux-phy@lists.infradead.org>; Tue, 19 Oct 2021 06:39:47 -0700 (PDT)
X-Gm-Message-State: AOAM5324DJUTgaePC8oOBQ01CZGX2/drVLMMNNTEHdosT34xXZHzKbzh
 /AX97qygSjNJXb4b5j+Adcn6oMxdob3r+wMdqw==
X-Google-Smtp-Source: ABdhPJw785YAft9kOCJXRejGGvZ/JDL+mkBm+lWkw83KlfrIebtxU9BzrRRTN4EOU5p2crXDoSahLOKz0M3l0GoGLxg=
X-Received: by 2002:aa7:c357:: with SMTP id j23mr56462688edr.145.1634650742754; 
 Tue, 19 Oct 2021 06:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-3-horatiu.vultur@microchip.com>
 <YW3K2GX+hmkwt3EE@robh.at.kernel.org>
 <20211019091258.3uet6lp3mxaoliqt@soft-dev3-1.localhost>
In-Reply-To: <20211019091258.3uet6lp3mxaoliqt@soft-dev3-1.localhost>
From: Rob Herring <robh@kernel.org>
Date: Tue, 19 Oct 2021 08:38:49 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLemN4jU32-5UvPBGUb7G6jxxKwD5oetJWkoBLANuyTsw@mail.gmail.com>
Message-ID: <CAL_JsqLemN4jU32-5UvPBGUb7G6jxxKwD5oetJWkoBLANuyTsw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add constants for lan966x serdes
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod <vkoul@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_063948_283812_5190E764 
X-CRM114-Status: GOOD (  26.53  )
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

On Tue, Oct 19, 2021 at 4:11 AM Horatiu Vultur
<horatiu.vultur@microchip.com> wrote:
>
> The 10/18/2021 14:28, Rob Herring wrote:
> >
> > On Fri, Oct 15, 2021 at 02:39:19PM +0200, Horatiu Vultur wrote:
> > > Lan966x has: 2 integrated PHYs, 3 SerDes and 2 RGMII interfaces. Which
> > > requires to be muxed based on the HW representation.
> > >
> > > So add constants for each interface to be able to distinguish them.
> > >
> > > Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> > > ---
> > >  include/dt-bindings/phy/phy-lan966x-serdes.h | 14 ++++++++++++++
> > >  1 file changed, 14 insertions(+)
> > >  create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h
> > >
> > > diff --git a/include/dt-bindings/phy/phy-lan966x-serdes.h b/include/dt-bindings/phy/phy-lan966x-serdes.h
> > > new file mode 100644
> > > index 000000000000..8a05f93ecf41
> > > --- /dev/null
> > > +++ b/include/dt-bindings/phy/phy-lan966x-serdes.h
> > > @@ -0,0 +1,14 @@
> > > +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> > > +
> > > +#ifndef __PHY_LAN966X_SERDES_H__
> > > +#define __PHY_LAN966X_SERDES_H__
> > > +
> > > +#define PHY(x)               (x)
> > > +#define PHY_MAX              PHY(2)
> > > +#define SERDES6G(x)  (PHY_MAX + 1 + (x))
> > > +#define SERDES6G_MAX SERDES6G(3)
> > > +#define RGMII(x)     (SERDES6G_MAX + 1 + (x))
> > > +#define RGMII_MAX    RGMII(2)
> > > +#define SERDES_MAX   (RGMII_MAX + 1)
> >
> > I still don't understand. #phy-cells description says we have:
> >
> > <port idx> <serdes idx>
> >
> > But here it's 3 numbers. How are these defines used to fill in the 2
> > cells?
>
> Actually they are still only a number. Or maybe I am missing something.

So all the defines apply to the 2nd cell? That's what's missing. The
cell description needs to spell all this out. 3 different modes or
whatever. Explain what the h/w is comprised of in the top level
'description'.

>
> Maybe an example will help:
>
> ---
> serdes: serdes@e2004010 {
>     compatible = "microchip,lan966x-serdes";
>     reg = <0xe202c000 0x9c>, <0xe2004010 0x4>;
>     #phy-cells = <2>;
> };
>
> &port0 {
>     ...
>     phys = <&serdes 0 SERDES6G(1)>;
>     ...
> };
>
> &port1 {
>     ...
>     phys = <&serdes 1 PHY(0)>;

I think CU was better, just needed some comments. PHY is pretty vague.

>     ...
> }
>
> ...
> ---
>
> Here are some existing examples based on which I have created this patch
> series:
> https://elixir.bootlin.com/linux/v5.15-rc6/source/arch/mips/boot/dts/mscc/ocelot_pcb120.dts#L99

None of which use PHY() or RGMII()...


> https://elixir.bootlin.com/linux/v5.15-rc6/source/arch/mips/boot/dts/mscc/ocelot.dtsi#L274
>
> >
> > Rob
>
> --
> /Horatiu

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
