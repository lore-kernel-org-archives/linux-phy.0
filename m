Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D974ECAAA1
	for <linux-phy@archiver.kernel.org>; Mon, 19 Sep 2022 19:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyF/v2mEnkVUIja8rYoFFqv6Z8pIQSnlMKgWAcvsvfs=; b=Bzz+4U7vJfVlVc
	oWhK9H+XocuWsGIkl5tTX+EF5w79+1cgVmsszf6VidD4U2ZY2Yg5UkbZavk1ggmvZKUaTlzcuxIyo
	KgsWM1b2aKnBqqlNoyKiLOtnZf40pPgFACFovZ0Gx6eXgpJsevTvQtV/HR53Kt3w0lRFEg8mMq5vf
	mwhyqTKwZBQLJ+tDsKUgnUEEXSGOf9Tj3AX62tagHqOZ5G+4bJDrtlQDOASTjwh2PGswKrLRSrNZF
	lBRYzs/VsZZJztBD2ejwzp7Rb0MmyKwBNtwd6xEvEzORHVx8iklbeiV3KYMvx3iRoyuaHg84d5Amc
	5qkn7a08HC4Nfpb4o0PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaMqw-00Excn-El; Mon, 19 Sep 2022 19:54:50 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaMqt-00ExNB-Vt
	for linux-phy@lists.infradead.org; Mon, 19 Sep 2022 19:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663617287; x=1695153287;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=TFylzeOIAdoKTrYXFOCkIxj91jitXePjqSvx77D6gYQ=;
  b=bsaYZNYwjlJYX1vs76O2VO+cI+nGrScvydENS56e4V11/tms1U51i3hz
   eFdv7iGrDPWet7ZqRZ72Q/5eD3IoL9HflagXggSrSuF+CySdKSRWofRob
   T5lH5IS6x0bBm3TVQjeyE62Rz0+kEmTOSV5LE3T/8tPd5jeaMSJ/H6ePf
   mUYfSNjsaacWchM0c25RCUGcVNp+R0xSZrj+UWkQzRnDC4Ak6FqT7ADhm
   dedLfzhwTH+/ncIDyvKl5QfNVG5qCdwmXSFuFkI4IppjgDR9lOIc12EjJ
   Uj731fU8lU8yjQ3k2kRZO3TY4qjjdEb5YUf+Frqic4yGq9VAHrBVPX68m
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="325802780"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; 
   d="scan'208";a="325802780"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 12:54:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; 
   d="scan'208";a="722439432"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com) ([10.237.72.43])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2022 12:54:38 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 0EF4020238;
	Mon, 19 Sep 2022 22:54:36 +0300 (EEST)
Date: Mon, 19 Sep 2022 19:54:36 +0000
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Marco Felsch <m.felsch@pengutronix.de>, mchehab@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	kishon@ti.com, vkoul@kernel.org, hverkuil@xs4all.nl,
	jacopo@jmondi.org, kieran.bingham+renesas@ideasonboard.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH v2 4/4] media: tc358746: add Toshiba TC358746 Parallel to
 CSI-2 bridge driver
Message-ID: <YyjI/JOcryD8yKzT@paasikivi.fi.intel.com>
References: <20220916134535.128131-1-m.felsch@pengutronix.de>
 <20220916134535.128131-5-m.felsch@pengutronix.de>
 <YyhktzmcgXKnrMFU@pendragon.ideasonboard.com>
 <20220919171142.6av6ap5gwweldado@pengutronix.de>
 <Yyio06jhK13BiNiP@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yyio06jhK13BiNiP@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_125448_065056_E333DAFD 
X-CRM114-Status: GOOD (  18.82  )
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

On Mon, Sep 19, 2022 at 08:37:23PM +0300, Laurent Pinchart wrote:
> > > > +	ctrl = v4l2_ctrl_new_int_menu(&tc358746->ctrl_hdl, NULL,
> > > > +				      V4L2_CID_LINK_FREQ, 0, 0,
> > > 
> > > Shouldn't the max argument be set to the number of items minus 1 ?
> > 
> > Right now I would keep it that way since the driver only supports one
> > link-frequencies setting. So the ctrl don't let the userspace assume
> > that there are more than one link-frequency.
> 
> Good point. Can you add a short comment above the call to explain this ?

Wouldn't it be just easier to do what Laurent suggested originally? The end
result is the same, isn't it, and no comment needed?

> 
> > > > +				      link_frequencies);
> > > > +	if (ctrl)
> > > > +		ctrl->flags |= V4L2_CTRL_FLAG_READ_ONLY;

Now that this is a bridge, this value presumably doesn't need to change.
There will just be more blanking if the source sub-device pixel rate is
slower, right?

-- 
Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
