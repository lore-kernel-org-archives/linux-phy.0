Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DB3BC6FA82
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 08:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGPK4ezLfg0sgxqkmmjZI8p1QC7jKhvT7eYRDk4pT/w=; b=SXJ3rWPm0UbzNq
	Mw4WNSz0dM6FfmHfNNQ6cS7guUvDahojBhGQPj+cxNYneOXjUtZv0pDxYS+HnFMlduOg10/4b2k0q
	uUX82/poIf6/vkNKHmNMl83XWmcVf3PwrptwCh8QwzDqPpz78aBPfld2DG0KlW5o0UDftlqAPAJXU
	XHupbtaKChqBJDU72lu34yTL7+CGGnHh1QcTaOGOOQujEipyzWcIZ/nLRxM/0okSAKzdI4HX/f91i
	TSHa8nFmNY/kjIjhMxnZQmLNQw1AOi5uOtpvP6ogFKt9aqO6ne9nFjJZuxSKMhabIOisighxXe4Yv
	WDq51ue2BGd9dK2JhLcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZ1G-00260i-Hn; Tue, 20 Sep 2022 08:54:18 +0000
Received: from mga02.intel.com ([134.134.136.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZ10-0025ts-Mw
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 08:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663664042; x=1695200042;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=bE7Qmiy6NhKs0sdl809v9zg8SKzJzql0subSBeUamVk=;
  b=mKTaf2gRi9YLH2rsKO86s52TOg74Q0BmX/ZizC+moMikAkPw/SjZeNxe
   TW4B6AtCaaqrwOI6gmNXrpA+Dhe/tF7ow0ytTQfjUgob48o2lLmfxAD8m
   1sW5FfQnYcMrncWGIpwM8w5bxSwjDAsUx4SWJZ4rlTm9Nk9ZtqKBjQZ/c
   PVnXiuqijAaDA1OlcReafesa6Ml5WbR5+MHLLZOptZPhqDDdY9eZCN80z
   bk3sr/pf/fJNBykgpknoz5isOPJwo/ciX3A6X0vzmhTtRdEJpN2zGxzaW
   9g3TTUGSo6aR1T/8jT20MPtc/ic9yrzl2I0eSloNuTiUdfKMoqjmoU6K6
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="286688274"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; 
   d="scan'208";a="286688274"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2022 01:54:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; 
   d="scan'208";a="614317268"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Sep 2022 01:53:56 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id A54D1200DA;
	Tue, 20 Sep 2022 11:53:54 +0300 (EEST)
Date: Tue, 20 Sep 2022 08:53:54 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Marco Felsch <m.felsch@pengutronix.de>
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
Message-ID: <Yyl/oqZwUUb1Z0qM@paasikivi.fi.intel.com>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhktzmcgXKnrMFU@pendragon.ideasonboard.com>
 <20220919171142.6av6ap5gwweldado@pengutronix.de>
 <Yyio06jhK13BiNiP@pendragon.ideasonboard.com>
 <YyjI/JOcryD8yKzT@paasikivi.fi.intel.com>
 <20220920083908.st4h3pb6usn4zavu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220920083908.st4h3pb6usn4zavu@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_015403_188216_C37C8897 
X-CRM114-Status: GOOD (  26.88  )
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

Hi Marco,

On Tue, Sep 20, 2022 at 10:39:08AM +0200, Marco Felsch wrote:
> Hi Sakari,
> 
> On 22-09-19, Sakari Ailus wrote:
> > On Mon, Sep 19, 2022 at 08:37:23PM +0300, Laurent Pinchart wrote:
> > > > > > +	ctrl = v4l2_ctrl_new_int_menu(&tc358746->ctrl_hdl, NULL,
> > > > > > +				      V4L2_CID_LINK_FREQ, 0, 0,
> > > > > 
> > > > > Shouldn't the max argument be set to the number of items minus 1 ?
> > > > 
> > > > Right now I would keep it that way since the driver only supports one
> > > > link-frequencies setting. So the ctrl don't let the userspace assume
> > > > that there are more than one link-frequency.
> > > 
> > > Good point. Can you add a short comment above the call to explain this ?
> > 
> > Wouldn't it be just easier to do what Laurent suggested originally? The end
> > result is the same, isn't it, and no comment needed?
> 
> The end result depends on the device-tree given "link-frequencies"
> property. The driver currently takes only one frequency but the
> system-integrator of course can specify many more. In such case the 1st
> is used. If I go with Laurent's comment, all frequencies would be shown
> to the user-space but IMHO this shouldn't be the case since the driver
> supports only 1 frequency.

Yes, indeed. The driver can later be amended to support this.

> 
> > > 
> > > > > > +				      link_frequencies);
> > > > > > +	if (ctrl)
> > > > > > +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> > 
> > Now that this is a bridge, this value presumably doesn't need to change.
> 
> The value can change, e.g. if you have a few freq. to allow a wide range
> of frame sizes. This can be the case to conform the emv tests. So there
> can be a freq. for smaller frame sizes and one for larger frame sizes.

Ack.

-- 
Regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
