Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 735CEC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 21:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+YmA2v+vlU8XdaC7tAe5Xa6YBo5U/dSDvRKo58DyME=; b=nW8RKyzH5Y34OA
	kygs8k105JGo73uYl/y5fw4puQe8GzGHIkJyNCZh90chnaFFhcfjg9LgG5ZXeOZu9dwvVZF8BRzBo
	MzholxN5AZvs67HgIzLw/Phdd+dtexr7lwqyFxRgW7Hq+HKiOVs7iyZixm7YXinPmQViY38fDWshD
	SHosFzV632xLr9Y0AM8NGuorG3q8Fhe5w27EoXj3qmP2eJpPC0Cp4KxpDDvt2wOFXiGXSp6TGzhU7
	6dYF1phZSg+kwS72g/MVnLewss04TZvhXSnTePSLLpS/UgrCDpHGY9P7h58WPDo4rNL6a/4Hu01wd
	uDRj0tNQW0P3lPyD6sBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK5GQ-004h0r-Uy; Tue, 15 Feb 2022 21:21:34 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK5GC-004gxW-4E; Tue, 15 Feb 2022 21:21:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644960080; x=1676496080;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=D3mH1ZQYnUmDyHebTFiaM1aX+zULtvkheCq0LawoiFk=;
 b=IMqf5jtb6eVuuLvbte3ieXXI57GtQFGn0BehSaVnq/rTOgHbBpdiB8PW
 hzttvAJk7O0zycomCgNZ6tbUX2obThNA7F8M4TH7AQE+YZVKzYURKQDXb
 CvdcFaXCX/+UnsqrM2/tcUWo3yf4Co++82+yNV3GkALphG6XKQhVDYDX3
 gKAaN1qxKkgIYGRYMTzLhWM9XADp/cg11Cqe9LsStk2n8v55/LChFR+tI
 Aj0t6F7skP3aDnbcpdktXFFzC43qu9UTdP1fTxciaYH3ISVxOo7npj1/+
 hO5yQbac0DPFvDJvW+zh01M572vpS2nPXrQ1abqWcmXGFfq7u11as0Dml w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="311197876"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="311197876"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:21:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="625027203"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com)
 ([10.237.72.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 13:21:05 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id 723FA200F1;
 Tue, 15 Feb 2022 23:21:03 +0200 (EET)
Date: Tue, 15 Feb 2022 23:21:03 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 37/66] media: sun6i-csi: Move power management to
 runtime pm in capture
Message-ID: <YgwZP4CS26FCOOqc@paasikivi.fi.intel.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-38-paul.kocialkowski@bootlin.com>
 <YgqftcDgfrsZfTdF@paasikivi.fi.intel.com>
 <Ygt4xh2Mq0qStyKs@aptenodytes>
 <Ygt6vwydxg9/WuDH@pendragon.ideasonboard.com>
 <Ygt+nZJrZMNXV4Cl@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ygt+nZJrZMNXV4Cl@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_132120_298691_3E5D7169 
X-CRM114-Status: GOOD (  35.23  )
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

Hi Paul,

On Tue, Feb 15, 2022 at 11:21:17AM +0100, Paul Kocialkowski wrote:
> Hi Laurent,
> 
> On Tue 15 Feb 22, 12:04, Laurent Pinchart wrote:
> > Hi Paul,
> > 
> > On Tue, Feb 15, 2022 at 10:56:22AM +0100, Paul Kocialkowski wrote:
> > > On Mon 14 Feb 22, 20:30, Sakari Ailus wrote:
> > > > On Sat, Feb 05, 2022 at 07:54:00PM +0100, Paul Kocialkowski wrote:
> > > > > Let's just enable the module when we start using it (at stream on)
> > > > > and benefit from runtime pm instead of enabling it at first open.
> > > > > 
> > > > > Also reorder the call to v4l2_pipeline_pm_get.
> > > > > 
> > > > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > > > 
> > > > Nice patch!
> > > 
> > > Thanks!
> > > 
> > > > Do you still need v4l2_pipeline_pm_put()? Removing it would be a separate
> > > > patch of course.
> > > 
> > > My understanding is that this is still useful if there are drivers in the
> > > pipeline that rely on s_power instead of rpm (a typical case could be an
> > > old sensor driver). So that's why this is kept around, but all other components
> > > of the pipeline (isp/csi/mipi csi-2) are using rpm now.
> > 
> > If that's not the case on your test platforms, I think it would be
> > better to drop support for this old API, and convert drivers that still
> > use .s_power() if someone needs to use one on an Allwinner platform.
> 
> I agree this is the path to follow but it feels like we're not quite there
> yet and a bunch of driver were not converted at this point, including some
> popular ones like ov5640, which I know for sure is used with Allwinner devices.
> 
> Honestly I'd be happy to get rid of these legacy functions as soon as the
> transition is done, but doing it now would mean breaking a significant number
> of use cases (which I'm trying to avoid here despite all the changes).
> 
> I definitely wouldn't be confident making that transition here and it
> probably wouldn't be a good idea to make that a requirement to merge this
> (already quite big) series.
> 
> What do you think?

Feel free to keep it if you prefer that.

All sensor drivers that implement s_power are old but there are quite a few
of them. Converting them isn't trivial so best done by someone who has
access to the hardware.

-- 
Regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
