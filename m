Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44ABEC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ond4ZsyqykJVbrEFatyfxOABpCvY+y1mZXVjiPZKYyk=; b=CPutaR/pPj/Z5T
	RC/THVxwybw/CaiwG+aPQRDhDB5fOnfjQsZXiJpidjRqBRlzQHFZF2tIwHjO6Juv2YkGN2ptbqxGr
	jp/HDty4N3UM/bPs4uDJRugWGh2ZJxpP7xdMK0oty5oe9uJwbVmlPOLGeDLjmPEW1P3hcqlYkpIq6
	RZB346mAGSPIfUsuML/5LFs7ZN2tuaXlBhOgGVuIIVI+vxQi7ukoDqhlGVsQT0FOT0AJFcnKazEIw
	aJxxh2ng6Wu9stYsJBuDV74ObjxBMMggm6qaM0ZcVIHTtdgniohIkSGTW2FrOplDU9XO3J4Fo/nRY
	yfAebd85+O6HuAtK6u8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJuiW-002E4s-B1; Tue, 15 Feb 2022 10:05:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJuhe-002Dfl-R7; Tue, 15 Feb 2022 10:05:04 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 49D92315;
 Tue, 15 Feb 2022 11:04:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644919494;
 bh=KMRUUPC3zf0oe4gWL8qDF9DIC3uliWx9md2lcfBf1H4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XZ2+nH4c/zvYR8pmF4F74hNzJs6/HqrbnBa5xdTfnyW4VV1Hz1u5xXg+d+eNYXx7e
 jiZfMnkT0EDDGX/IhTrpOQbsh3a6H0zfjdbVKo71lUlWPQr+w5uQTGsjwKJyAziXI2
 cGrvYei0hJgWr69W9Ra3bUKEoi18Mwb6IBjX3CyI=
Date: Tue, 15 Feb 2022 12:04:47 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
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
Message-ID: <Ygt6vwydxg9/WuDH@pendragon.ideasonboard.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
 <20220205185429.2278860-38-paul.kocialkowski@bootlin.com>
 <YgqftcDgfrsZfTdF@paasikivi.fi.intel.com>
 <Ygt4xh2Mq0qStyKs@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Ygt4xh2Mq0qStyKs@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_020459_073241_0A8F6F69 
X-CRM114-Status: GOOD (  21.08  )
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

On Tue, Feb 15, 2022 at 10:56:22AM +0100, Paul Kocialkowski wrote:
> On Mon 14 Feb 22, 20:30, Sakari Ailus wrote:
> > On Sat, Feb 05, 2022 at 07:54:00PM +0100, Paul Kocialkowski wrote:
> > > Let's just enable the module when we start using it (at stream on)
> > > and benefit from runtime pm instead of enabling it at first open.
> > > 
> > > Also reorder the call to v4l2_pipeline_pm_get.
> > > 
> > > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > 
> > Nice patch!
> 
> Thanks!
> 
> > Do you still need v4l2_pipeline_pm_put()? Removing it would be a separate
> > patch of course.
> 
> My understanding is that this is still useful if there are drivers in the
> pipeline that rely on s_power instead of rpm (a typical case could be an
> old sensor driver). So that's why this is kept around, but all other components
> of the pipeline (isp/csi/mipi csi-2) are using rpm now.

If that's not the case on your test platforms, I think it would be
better to drop support for this old API, and convert drivers that still
use .s_power() if someone needs to use one on an Allwinner platform.

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
