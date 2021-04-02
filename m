Return-Path: <SRS0=ixR+=I7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82CD5C433ED
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:58:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2ACC16112F
	for <linux-phy@archiver.kernel.org>; Fri,  2 Apr 2021 10:58:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2ACC16112F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ksTQaKWQBOQnieLAfPpcxuat5VsppXHE12Kx1HlkWvQ=; b=LtgW5BgTEeEayl4UtZ78PPHGB
	SykWpq7r8gM9pa+VTqleUVAHYW0gDyZSebHlZlNRQfnppVpZI77vPQ0L9ef6Nm7C3dIuniZfbmk8b
	sCBJ7VeWkfjPSEOdc+PHz7CBVp5N/SDc4Wq4HI3FQr7dQX4I7LVVsksx9hk8IaLrklm6XbeNK60l3
	ql0MT907g75wZ6zysK3oWVyZ3m4irBLt0F5OEvJHvCApfGO6Wrq0BWdJaZsMXMFQ2nmN/HFtFpPcF
	bPoB2U0V9eqghXID0KYIXMAwHWaBJVRxvnV/AHNC1PUTFOqjkHTyqRWWsoN2NG0E+1jAgT45UXHkv
	K5z6+EEvA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSHVj-00CpGI-Fh; Fri, 02 Apr 2021 10:58:45 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSHVf-00CpFo-VK
 for linux-phy@lists.infradead.org; Fri, 02 Apr 2021 10:58:41 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 197672C1;
 Fri,  2 Apr 2021 12:58:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617361119;
 bh=o16YH/amK93o9sUsyfCF2kW9i62zSal5yr6Wff73gGw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kx4XXqd3VRUrP3Velb+mNLGyx25fqfqRT0i3xkTijHxD4jxV+YpE4yGtyfMmY2iXp
 drld9qdcUOkJ4O3aBP43rV2dslhKBZiQzvhbBfZ4juJyF9VLMTzW30TumcZpXoCuxS
 W13lxx4pdwY0THf0JbG+xp/LM/qknhEt6GSuNKSk=
Date: Fri, 2 Apr 2021 13:57:55 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Pratyush Yadav <p.yadav@ti.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 00/16] CSI2RX support on J721E
Message-ID: <YGb4s1rSuZLr3Iv0@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <YGRB/42Q6aVBLoAq@vkoul-mobl.Dlink>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YGRB/42Q6aVBLoAq@vkoul-mobl.Dlink>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_115840_082080_C61F918A 
X-CRM114-Status: GOOD (  21.35  )
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

On Wed, Mar 31, 2021 at 03:03:51PM +0530, Vinod Koul wrote:
> On 30-03-21, 23:03, Pratyush Yadav wrote:
> > Hi,
> > 
> > This series adds support for CSI2 capture on J721E. It includes some
> > fixes to the Cadence CSI2RX driver, adds Rx support to Cadence DPHY
> > driver, and finally adds the TI CSI2RX wrapper driver.
> > 
> > Tested on TI's J721E with OV5640 sensor.
> > 
> > Paul Kocialkowski (1):
> >   phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes
> > 
> > Pratyush Yadav (15):
> >   phy: cdns-dphy: Prepare for Rx support
> >   phy: cdns-dphy: Allow setting mode
> >   phy: cdns-dphy: Add Rx support
> >   media: cadence: csi2rx: Add external DPHY support
> >   media: cadence: csi2rx: Soft reset the streams before starting capture
> >   media: cadence: csi2rx: Set the STOP bit when stopping a stream
> >   media: cadence: csi2rx: Fix stream data configuration
> >   media: cadence: csi2rx: Turn subdev power on before starting stream
> >   media: cadence: csi2rx: Add wrappers for subdev calls
> >   dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
> >   dt-bindings: media: Add DT bindings for TI CSI2RX driver
> >   media: ti-vpe: csi2rx: Add CSI2RX support
> >   dt-bindings: phy: Convert Cadence DPHY binding to YAML
> >   dt-bindings: phy: cdns,dphy: make clocks optional
> >   dt-bindings: phy: cdns,dphy: add power-domains property
> 
> Is there any dependency between patches to various subsystems, if not
> please do consider sending a series per subsystem...

Splitting the series per subsystem will facilitate merging, but for the
first versions, keeping all patches together facilitate review. I'd
prefer if we could have a v2 that still includes everything, until we
agree on the interface between the two subsystems. At that point, we can
split the series if needed.

> > 
> >  .../devicetree/bindings/media/ti,csi2rx.yaml  |  70 ++
> >  .../devicetree/bindings/phy/cdns,dphy.txt     |  20 -
> >  .../devicetree/bindings/phy/cdns,dphy.yaml    |  52 +
> >  MAINTAINERS                                   |   7 +
> >  drivers/dma/ti/k3-psil-j721e.c                |  10 +
> >  drivers/media/platform/Kconfig                |  11 +
> >  drivers/media/platform/cadence/cdns-csi2rx.c  | 269 ++++-
> >  drivers/media/platform/ti-vpe/Makefile        |   1 +
> >  drivers/media/platform/ti-vpe/ti-csi2rx.c     | 964 ++++++++++++++++++
> >  drivers/phy/cadence/cdns-dphy.c               | 407 +++++++-
> >  include/linux/phy/phy-mipi-dphy.h             |  13 +
> >  11 files changed, 1754 insertions(+), 70 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
> >  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> >  create mode 100644 drivers/media/platform/ti-vpe/ti-csi2rx.c

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
