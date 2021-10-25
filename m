Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E05FC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 08:09:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C73360EBD
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 08:09:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3C73360EBD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fzAQryJtKfCxJr+rubzKDPnmOduUWAo9uwmS/0+8Vk=; b=KT42oe2t6IzPtm
	bblkgXQ+YA58n7nU1yKxKjnOJUXdhOIxdFAtl7dRPMF73OZO05smol/7zApSgxFR12rT7Lt1oskEi
	QHWFYDzYVBDjWpWq6vpcRAuDHTvlGgMHdboRjRN2SuQshPHcgRR3//+tbV3TdtOFn4aa6ZcjFC1ry
	GM22/rw7O4NOqK4VM6RqYfP7LUniSOnuCz4KVWj1cHO/fSy0y3/5ngGnFeSstg8Bs4cOezqQhOpls
	LK16rDrcY0YRgNoGnMPoOULkr4lrQHR96lS/ap03SMyDy09f0zCLXMvpwxulrCvkvXKEnLvwtLPX+
	2oC3qx/Jawk7r1HIowcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mev2l-00Fjh1-Kt; Mon, 25 Oct 2021 08:09:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mev2h-00FjeY-V2
 for linux-phy@lists.infradead.org; Mon, 25 Oct 2021 08:09:17 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1AFA360EE9;
 Mon, 25 Oct 2021 08:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635149355;
 bh=T1brRpvpLw2+XlgRvOtkbicK2toDWlCS9WW224wzFM4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=orxQ6mBy40d8vY1DbNZPCmd0g4wo4qhvO3pcnrFN99U3sOUY80AqARt7d4+rv7d/A
 16vMTuOhK52r39NtflnmomzWxZD3AazGD31Zss87vmUhNPvSwuxeJHoz8hUUHjbXdH
 3cdt42L+gPeK6BakfmUUoYJYGhT7R3TrjD/aOcts5Na1HZDRzQEcq3gmaXP44mqqd/
 M/I+vIfMqWB2IxjIoU+NmVc+IVfSJkqmQTaQ/fTL/a0+CSXJr30eGemSc+UyaebbTU
 0EuAvI1O+vtHzAo7/Yxp+fpA2nc7KAaoSLhDh+um1pXMNyAbK/LwiGKpY/QJH9xYTR
 9MgW97jLuQnjQ==
Date: Mon, 25 Oct 2021 13:39:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pratyush Yadav <p.yadav@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <YXZmJvebL4RuFxiQ@matsya>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com> <YVapVLnGfSBZCDTY@matsya>
 <YV463gUvYauhDP/l@pendragon.ideasonboard.com>
 <20211007121436.jkck2cue5zd3rys4@ti.com>
 <YWAdKTvYzF58oyU/@pendragon.ideasonboard.com>
 <YWA/2o/Df34VDcpp@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YWA/2o/Df34VDcpp@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_010916_079309_77CC048E 
X-CRM114-Status: GOOD (  37.57  )
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

On 08-10-21, 14:55, Paul Kocialkowski wrote:
> Hi,
> 
> On Fri 08 Oct 21, 13:27, Laurent Pinchart wrote:
> > Hi Pratyush,
> > 
> > On Thu, Oct 07, 2021 at 05:44:38PM +0530, Pratyush Yadav wrote:
> > > On 07/10/21 03:10AM, Laurent Pinchart wrote:
> > > > On Fri, Oct 01, 2021 at 11:53:16AM +0530, Vinod Koul wrote:
> > > > > On 17-09-21, 22:58, Pratyush Yadav wrote:
> > > > > > On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > > > > > > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > > > > > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > > > > > > protocol. Add support for Rx mode. The programming sequence differs from
> > > > > > > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > > > > > > paths. The mode in which the DPHY has to be used is selected based on
> > > > > > > > the compatible.
> > > > > > > 
> > > > > > > I just realized that I didn't follow-up on a previous revision on the debate
> > > > > > > about using the phy sub-mode to distinguish between rx/tx.
> > > > > > > 
> > > > > > > I see that you've been using a dedicated compatible, but I'm not sure this is a
> > > > > > > good fit either. My understanding is that the compatible should describe a group
> > > > > > > of register-compatible revisions of a hardware component, not how the hardware
> > > > > > > is used specifically. I guess the distinction between rx/tx falls under
> > > > > > > the latter rather than the former.
> > > > > > 
> > > > > > I am not sure if that is the case. For example, we use "ti,am654-ospi" 
> > > > > > for Cadence Quadspi controller. The default compatible, "cdns,qspi-nor", 
> > > > > > only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible also 
> > > > > > supports Octal SPI (8 lines).
> > > > > 
> > > > > Those are hardware defaults right?
> > > > > 
> > > > > > In addition, I feel like the Rx DPHY is almost a different type of 
> > > > > > device from a Tx DPHY. The programming sequence is completely different, 
> > > > > 
> > > > > Is that due to direction or something else..?
> > > > > 
> > > > > > the clocks required are different, etc. So I think using a different 
> > > > > > compatible for Rx mode makes sense.
> > > > > 
> > > > > Is the underlaying IP not capable of both TX and RX and in the specific
> > > > > situations you are using it as TX and RX.
> > > > > 
> > > > > I am okay that default being TX but you can use Paul's approach of
> > > > > direction with this to make it better proposal
> > > > 
> > > > 
> > > > Given that the RX and TX implementations are very different (it's not a
> > > > matter of selecting a mode at runtime), I'm actually tempted to
> > > > recommend having two drivers, one for the RX PHY and one for the TX PHY.
> > > > This can only be done with two different compatible strings, which I
> > > > think would be a better approach.
> > > 
> > > FWIW, I think having different drivers would certainly make things 
> > > easier to maintain.
> > 
> > I'm sorry for not having recommended this in the first place.
> > 
> > Any objection from anyone against going in this direction ?
> 
> So apparently there is not a single register that is shared between rx and tx
> and clocks are not the same either so it feels to me like a separate driver
> would be legit. This looks like two distinct IPs sharing the same base address.

Sorry for delay in getting back..

Okay lets have a different compatible and driver for this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
