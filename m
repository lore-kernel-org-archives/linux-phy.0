Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED27CC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 08:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa2UOLrx2vDAEXMsctLH6CnSy1eNfLoHEqp28ZgCGe8=; b=tSZf/lpuWkJEa4
	EDyIyFCQwioqDxnByeYTxEzve/m2HoQxVYsK9L/I/trOuWFm/Izce1TEfRqhfUic8y5jFV+smpUwx
	ZPPpRym1TwtILlZsJ1eS0/K/LVUrow7RyhQO1qYmvcyoAguIUjqdrkujnLmfIujQ6UXQUWER37yth
	FEt9TgXNggVE//yVFmum2ixyw4o+y8RKUj0bGGFwMC/YziP72R5h0jKJPHpF3nzWhw8GJ+l748lul
	IQmVzqRJ356Ns/pfXSh9xqaJMhYdwMP1MXTJRBEXOeL9KO9oZQVPHzPVBZ1HjIJ3L84mz+UoXGNI9
	uyvJAyt3eQJxdMfvm73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaYpF-001xw6-UK; Tue, 20 Sep 2022 08:41:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaYn8-001w9H-Up
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 08:39:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaYmb-0005c5-NA; Tue, 20 Sep 2022 10:39:09 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oaYma-0001Ji-JI; Tue, 20 Sep 2022 10:39:08 +0200
Date: Tue, 20 Sep 2022 10:39:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, kishon@ti.com, vkoul@kernel.org,
	hverkuil@xs4all.nl, jacopo@jmondi.org,
	kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <20220920083908.st4h3pb6usn4zavu@pengutronix.de>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhktzmcgXKnrMFU@pendragon.ideasonboard.com>
 <20220919171142.6av6ap5gwweldado@pengutronix.de>
 <Yyio06jhK13BiNiP@pendragon.ideasonboard.com>
 <YyjI/JOcryD8yKzT@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YyjI/JOcryD8yKzT@paasikivi.fi.intel.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_013943_020783_748BCCF9 
X-CRM114-Status: GOOD (  22.78  )
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

Hi Sakari,

On 22-09-19, Sakari Ailus wrote:
> On Mon, Sep 19, 2022 at 08:37:23PM +0300, Laurent Pinchart wrote:
> > > > > +	ctrl = v4l2_ctrl_new_int_menu(&tc358746->ctrl_hdl, NULL,
> > > > > +				      V4L2_CID_LINK_FREQ, 0, 0,
> > > > 
> > > > Shouldn't the max argument be set to the number of items minus 1 ?
> > > 
> > > Right now I would keep it that way since the driver only supports one
> > > link-frequencies setting. So the ctrl don't let the userspace assume
> > > that there are more than one link-frequency.
> > 
> > Good point. Can you add a short comment above the call to explain this ?
> 
> Wouldn't it be just easier to do what Laurent suggested originally? The end
> result is the same, isn't it, and no comment needed?

The end result depends on the device-tree given "link-frequencies"
property. The driver currently takes only one frequency but the
system-integrator of course can specify many more. In such case the 1st
is used. If I go with Laurent's comment, all frequencies would be shown
to the user-space but IMHO this shouldn't be the case since the driver
supports only 1 frequency.

> > 
> > > > > +				      link_frequencies);
> > > > > +	if (ctrl)
> > > > > +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> 
> Now that this is a bridge, this value presumably doesn't need to change.

The value can change, e.g. if you have a few freq. to allow a wide range
of frame sizes. This can be the case to conform the emv tests. So there
can be a freq. for smaller frame sizes and one for larger frame sizes.

> There will just be more blanking if the source sub-device pixel rate is
> slower, right?

Please see above.

Regards,
  Marco

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
