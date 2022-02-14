Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16BF9C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 14 Feb 2022 18:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsIQBjdCeAvm1Qk0AuMP2yKNsTmmlmdVmdv8XKfaiYc=; b=BYcM0jE08oGqo+
	y+t9msC+NQWFyZcJEKSeQWw5QbbfK33bwy0N8t0w2jO/4lVEPpiIDy1oUQJsnHHOx158o1H/A0Dxf
	wYhOTV8cZ3Qc07lmrBPHz0LEloD/dnITRJGTj9qeCgwtzytYF18g1MxC/CMAQviupQYjw/NZQGG6a
	yycA+HGuGExZimasQPun3hsqFOmh2pFdBmsGYuUjWjT4yUYshn9D/9ZvNupSTf2bqggXUgIqEcckg
	QTrIoub/jj4iH7zFLYfYzQsLKIg7GW3W8tWDJ3ilW1ENsSmKKhvmo6i4QhTysMt7PpCSAc269Tu51
	zcxU1Ci/S7a5gn+nNcOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJg7O-00GX1n-Hm; Mon, 14 Feb 2022 18:30:34 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJg7B-00GWxU-Df; Mon, 14 Feb 2022 18:30:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644863421; x=1676399421;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2SuiWkTsCmL0kmekpSa89GaVmY8ni1VlZC8DxtgnZ6g=;
 b=ZPKVpU8Nwj+yMbEsnsCSCTplGrgi+VIJiml+ICx850FD0WA41OtBWndF
 md4J4GGDajQ1K0tcByd8CJB88E/I8PvycbVfesXEiPBTehlE3JM2ByRc4
 7LEq6kc7o5o78ZY4mrHXPJDny4wpq7rs+Yb/ruB0nQXILQueMtRNwVHfk
 KAgNHl2WSSRjgUc+SbYibTeMKpx9nXs/xPB5RtB13HXu27zQLFXk9d8hU
 CwT2X5YFBrjsZOTP681BpNsjO1nXYa3sE9yZXx+FXYgEsBvWyL6S8pOtb
 Xu0+rUMiv88gyonyZXMWUAViq8M0T9E2D2bflUNuKGSlgKEzjzvsHbURo g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230120152"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="230120152"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 10:30:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="624372837"
Received: from punajuuri.fi.intel.com (HELO paasikivi.fi.intel.com)
 ([10.237.72.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 10:30:15 -0800
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
 by paasikivi.fi.intel.com (Postfix) with SMTP id 0993C202D5;
 Mon, 14 Feb 2022 20:30:13 +0200 (EET)
Date: Mon, 14 Feb 2022 20:30:13 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v2 37/66] media: sun6i-csi: Move power management to
 runtime pm in capture
Message-ID: <YgqftcDgfrsZfTdF@paasikivi.fi.intel.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-38-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220205185429.2278860-38-paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_103021_500859_4CA2D26F 
X-CRM114-Status: GOOD (  11.26  )
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

On Sat, Feb 05, 2022 at 07:54:00PM +0100, Paul Kocialkowski wrote:
> Let's just enable the module when we start using it (at stream on)
> and benefit from runtime pm instead of enabling it at first open.
> 
> Also reorder the call to v4l2_pipeline_pm_get.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Nice patch!

Do you still need v4l2_pipeline_pm_put()? Removing it would be a separate
patch of course.

-- 
Kind regards,

Sakari Ailus

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
