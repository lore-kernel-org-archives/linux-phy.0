Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04C2CC433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 06:23:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AA65E61A58
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 06:23:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AA65E61A58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qh8jGZLwFop1cjQY69L6bGSxlgRLKuNL5peB+9dBsg=; b=VUAbmTOmAa/7Kt
	o9zCFv1OOc8U6vQUAGoIKJLPIqUgw66bKoM6+j8wxVg7zKxL258tRogrRQgR/KGjPs3YlUp46s7AT
	aI/t7F66mc0ocw9vZqmqAPvKfoLC1MZ8XSTkXq02qE7geKBcY80lyPpl8E6MdIoLzCE1VtuuBKPFz
	GbBU8JqQVPFAfs3FRG37bTr5qmb6eLrU0aIQrECOS7UpD3QxgHFxWQ36+S0ouU5oZPmU4Y/iJ38Ng
	7Wna5n+9Kux7ADtkEy5W+hJ8w+sLf0S9A/lLSnwbI8PwW8ryuh7+CHAiHJPoJ88vrQvp6thuMAOhO
	YjcxYsdinwOg5cxhDg8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWBx5-00Gn6h-7v; Fri, 01 Oct 2021 06:23:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWBx2-00Gn5q-HV
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 06:23:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C61061A57;
 Fri,  1 Oct 2021 06:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633069400;
 bh=vWqqxr539aef2V+4cScV97lUuywByujLgziy43fXUnw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qMcp2Tf4CCPiR0iR8tQvpVTgTKJ0K6YMxk/WLiah32A5njx5E2jeiNE7a+Km4sxY7
 BgNvTBSavBv1ys/RKaTC4hHv+zmf42aPhaQOmjgBa1m0k9KHQF7OVojqBsVj7iKTXT
 /pWwzTKyWF/IyS6X2lM95AUeWkvL6ZVQsYrTLs5SHVYqnWC1Sq3EzfdrspRD8Fe9Um
 dBq8KRyQElBVD4h1Vt+CQ+5JbV/8JQ94tFF5PVzFxRBG+d1FeIK2C8DdPOFiHnz6Qy
 CVrLrzKlO/Jce7yVdvTVryFM6NRX/02oLe2RuNEA+6RdXv7FKYXBbT73bkD7MXLRka
 aNDMXUrHift5Q==
Date: Fri, 1 Oct 2021 11:53:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/6] phy: cdns-dphy: Add Rx support
Message-ID: <YVapVLnGfSBZCDTY@matsya>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-3-p.yadav@ti.com>
 <YUMa/ocoQ9l3JDe6@aptenodytes>
 <20210917172809.rjtf7ww7vjcfvey5@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210917172809.rjtf7ww7vjcfvey5@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_232320_620410_51DD3B40 
X-CRM114-Status: GOOD (  21.84  )
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

On 17-09-21, 22:58, Pratyush Yadav wrote:
> +Rob
> 
> On 16/09/21 12:22PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Fri 03 Sep 21, 00:25, Pratyush Yadav wrote:
> > > The Cadence DPHY can be used to receive image data over the CSI-2
> > > protocol. Add support for Rx mode. The programming sequence differs from
> > > the Tx mode so it is added as a separate set of hooks to isolate the two
> > > paths. The mode in which the DPHY has to be used is selected based on
> > > the compatible.
> > 
> > I just realized that I didn't follow-up on a previous revision on the debate
> > about using the phy sub-mode to distinguish between rx/tx.
> > 
> > I see that you've been using a dedicated compatible, but I'm not sure this is a
> > good fit either. My understanding is that the compatible should describe a group
> > of register-compatible revisions of a hardware component, not how the hardware
> > is used specifically. I guess the distinction between rx/tx falls under
> > the latter rather than the former.
> 
> I am not sure if that is the case. For example, we use "ti,am654-ospi" 
> for Cadence Quadspi controller. The default compatible, "cdns,qspi-nor", 
> only supports Quad SPI (4 lines). The "ti,am654-ospi" compatible also 
> supports Octal SPI (8 lines).

Those are hardware defaults right?

> In addition, I feel like the Rx DPHY is almost a different type of 
> device from a Tx DPHY. The programming sequence is completely different, 

Is that due to direction or something else..?

> the clocks required are different, etc. So I think using a different 
> compatible for Rx mode makes sense.

Is the underlaying IP not capable of both TX and RX and in the specific
situations you are using it as TX and RX.

I am okay that default being TX but you can use Paul's approach of
direction with this to make it better proposal

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
