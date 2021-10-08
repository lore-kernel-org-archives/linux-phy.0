Return-Path: <SRS0=HpPM=O4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3B3D3C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  8 Oct 2021 10:28:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ADF1060FE3
	for <linux-phy@archiver.kernel.org>; Fri,  8 Oct 2021 10:28:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ADF1060FE3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrdWXerKusG38hTwpGyrHNbXleN+myW7A7BaUOqDp4w=; b=Z/0jFFzdcGGX18
	CxHe0hTAJKqTNMTGMcgvLYCOLTfcLducBLiDTCbe/KKi0F91SgjmL7xZj2SBOEuo26AuBC86hXVCC
	B35ZkqwzgQFg2REELMaKP11GWiYJz1r2zdJyHh/ZKoc9IVjUopteWIl3gwlpLKt3vpHnLGFAz6kpR
	kvX1lv3hRanvCbF3opVt4ykbSUfExBoD7SGeH61j7ih30xwl8Y7NP/hRUK6sjH5L350V+/QRAsOa1
	NVZlAfcos514S3sl6BDNyHKhCkAUTPhEIgpYsID0suP404BOSBoaps+Sio3bqzD8h1ZWqMZw5Z+1w
	qEH7qBxJhkBmanclEfDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYn6q-002N7k-8n; Fri, 08 Oct 2021 10:28:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYn6o-002N6J-64
 for linux-phy@lists.infradead.org; Fri, 08 Oct 2021 10:28:11 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3D187581;
 Fri,  8 Oct 2021 12:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1633688883;
 bh=O/OYayj1ukIAB3FdcOduo8Ue4fDcLxGu5RhxJwuFdC4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wFFVrO633mz76kUAGqZCu/F3OOKQS1ZNBkMG4QklxdKxXoI2j65I6mFVOgx5/NiyR
 yWtoKRuj7zhS/PfJUby+szUoAgr2WgdEQEQFAIR7/15njlT9H7Fw+M2vQXzhGPBO4o
 PG8VnU6KuG+nqmsri3fyHRxPJCp9Uh0FFLV98gU0=
Date: Fri, 8 Oct 2021 13:27:53 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <YWAdKTvYzF58oyU/@pendragon.ideasonboard.com>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com> <YVapVLnGfSBZCDTY@matsya>
 <YV463gUvYauhDP/l@pendragon.ideasonboard.com>
 <20211007121436.jkck2cue5zd3rys4@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211007121436.jkck2cue5zd3rys4@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211008_032810_429711_C480E90F 
X-CRM114-Status: GOOD (  34.97  )
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

Hi Pratyush,

On Thu, Oct 07, 2021 at 05:44:38PM +0530, Pratyush Yadav wrote:
> On 07/10/21 03:10AM, Laurent Pinchart wrote:
> > On Fri, Oct 01, 2021 at 11:53:16AM +0530, Vinod Koul wrote:
> > > On 17-09-21, 22:58, Pratyush Yadav wrote:
> > > > On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > > > > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > > > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > > > > protocol. Add support for Rx mode. The programming sequence differs from
> > > > > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > > > > paths. The mode in which the DPHY has to be used is selected based on
> > > > > > the compatible.
> > > > > 
> > > > > I just realized that I didn't follow-up on a previous revision on the debate
> > > > > about using the phy sub-mode to distinguish between rx/tx.
> > > > > 
> > > > > I see that you've been using a dedicated compatible, but I'm not sure this is a
> > > > > good fit either. My understanding is that the compatible should describe a group
> > > > > of register-compatible revisions of a hardware component, not how the hardware
> > > > > is used specifically. I guess the distinction between rx/tx falls under
> > > > > the latter rather than the former.
> > > > 
> > > > I am not sure if that is the case. For example, we use "ti,am654-ospi" 
> > > > for Cadence Quadspi controller. The default compatible, "cdns,qspi-nor", 
> > > > only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible also 
> > > > supports Octal SPI (8 lines).
> > > 
> > > Those are hardware defaults right?
> > > 
> > > > In addition, I feel like the Rx DPHY is almost a different type of 
> > > > device from a Tx DPHY. The programming sequence is completely different, 
> > > 
> > > Is that due to direction or something else..?
> > > 
> > > > the clocks required are different, etc. So I think using a different 
> > > > compatible for Rx mode makes sense.
> > > 
> > > Is the underlaying IP not capable of both TX and RX and in the specific
> > > situations you are using it as TX and RX.
> > > 
> > > I am okay that default being TX but you can use Paul's approach of
> > > direction with this to make it better proposal
> > 
> > 
> > Given that the RX and TX implementations are very different (it's not a
> > matter of selecting a mode at runtime), I'm actually tempted to
> > recommend having two drivers, one for the RX PHY and one for the TX PHY.
> > This can only be done with two different compatible strings, which I
> > think would be a better approach.
> 
> FWIW, I think having different drivers would certainly make things 
> easier to maintain.

I'm sorry for not having recommended this in the first place.

Any objection from anyone against going in this direction ?

> > It's unfortunate that the original compatible string didn't contain
> > "tx". We could rename it and keep the old one in the driver for backward
> > compatibility, making things cleaner going forward.

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
