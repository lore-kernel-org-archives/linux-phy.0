Return-Path: <SRS0=/rwg=KU=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88362C2B9F8
	for <linux-phy@archiver.kernel.org>; Tue, 25 May 2021 11:29:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 43A26610A0
	for <linux-phy@archiver.kernel.org>; Tue, 25 May 2021 11:29:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 43A26610A0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XqQ3PVWkaFOCAgbiaKpyZ6qNjlP/M4m2K4qmM9nI80=; b=ZRmw71P2K4zKCP
	x9mjUfverxRV+Tov1KobiB9wan2Hg4bHumYZolTqkHuDTWgjriA4NTcxNay6zYNII1fKYBisZb6Gr
	ZHMQnKVPJuEscS7fDXjko8k75WaBd8s039vXzes7Q0X0szc6qrfVXoxjr2uC2DLx73EH42CBh4/+C
	g71+rJzOPt0LxiB0XHoaiWBjw/COucT+vnKoK7qFi36h15mcFpS4Stm9mA3RFVHmxsk4s7K954C+q
	bjQZDN9rnIHYRka57k5VgJWfjkEp8aI553pvXgJ+Xj4TdSRQaiNMM3wg1HqFTSNw5DshS//pxhkIh
	lbw8fyrkmUx1vmNftRng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llVFo-004mVv-JI; Tue, 25 May 2021 11:29:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llVFR-004mP3-E2; Tue, 25 May 2021 11:29:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7187BD6E;
 Tue, 25 May 2021 04:29:19 -0700 (PDT)
Received: from slackpad.fritz.box (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 740C33F719;
 Tue, 25 May 2021 04:29:17 -0700 (PDT)
Date: Tue, 25 May 2021 12:29:01 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Maxime Ripard <maxime@cerno.tech>
Cc: Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Icenowy Zheng <icenowy@aosc.io>, Samuel
 Holland <samuel@sholland.org>, Ondrej Jirman <megous@megous.com>,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 12/17] phy: sun4i-usb: Introduce port2 SIDDQ quirk
Message-ID: <20210525122901.778bfccd@slackpad.fritz.box>
In-Reply-To: <20210524115946.jwsasjbr3biyixhz@gilmour>
References: <20210519104152.21119-1-andre.przywara@arm.com>
 <20210519104152.21119-13-andre.przywara@arm.com>
 <20210524115946.jwsasjbr3biyixhz@gilmour>
Organization: Arm Ltd.
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.31; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_042921_571916_D5250369 
X-CRM114-Status: GOOD (  24.01  )
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

On Mon, 24 May 2021 13:59:46 +0200
Maxime Ripard <maxime@cerno.tech> wrote:

Hi Maxime,

> On Wed, May 19, 2021 at 11:41:47AM +0100, Andre Przywara wrote:
> > At least the Allwinner H616 SoC requires a weird quirk to make most
> > USB PHYs work: Only port2 works out of the box, but all other ports
> > need some help from this port2 to work correctly: The CLK_BUS_PHY2 and
> > RST_USB_PHY2 clock and reset need to be enabled, and the SIDDQ bit in
> > the PMU PHY control register needs to be cleared. For this register to
> > be accessible, CLK_BUS_ECHI2 needs to be ungated. Don't ask ....
> > 
> > Instead of disguising this as some generic feature, do exactly that
> > in our PHY init:
> > If the quirk bit is set, and we initialise a PHY other than PHY2, ungate
> > this one special clock, and clear the SIDDQ bit. We can pull in the
> > other required clocks via the DT.
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>  
> 
> What is this SIDDQ bit doing exactly?

I probably know as much as you do, but as Jernej pointed out, in some
Rockchip code it's indeed documented as some analogue PHY supply switch:
($ git grep -i siddq drivers/phy/rockchip)

In fact we had this pin/bit for ages, it was just hidden as BIT(1) in
our infamous PMU_UNK1 register. Patch 10/17 drags that into the light.

> I guess we could also expose this using a power-domain if it's relevant?

Mmmh, interesting idea. So are you thinking about registering a genpd
provider in sun4i_usb_phy_probe(), then having a power-domains property
in the ehci/ohci nodes, pointing to the PHY node? And if yes, should
the provider be a subnode of the USB PHY node, with a separate
compatible? That sounds a bit more involved, but would have the
advantage of allowing us to specify the resets and clocks from PHY2
there, and would look a bit cleaner than hacking them into the
other EHCI/OHCI nodes.

I would not touch the existing SoCs (even though it seems to apply to
them as well, just not in the exact same way), but I can give it a
try for the H616. It seems like the other SIDDQ bits (in the other
PHYs) are still needed for operation, but the PD provide could actually
take care of this as well.

Does that make sense or is this a bit over the top for just clearing an
extra bit?

Cheers,
Andre

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
