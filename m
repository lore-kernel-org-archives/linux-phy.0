Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B3B4C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 13:06:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 363AF6198F
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 13:06:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 363AF6198F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dELT+HUKPwxzuve9JYr9hZyOyReEq94cNb0DKfgXcLY=; b=Ga3bJ0aepFTmZg8aBWHt0reER
	9LKwxLNIVRue321ZJC3f/wS2mkwBBXYMbReg6siPYG26kPoqy/PIu8w9kMU+CCrGM/e0BsIhdDEEB
	/Io/SjzUOhiwh2oT4v3HZPb7uGYVJ4o6BKSiWqn7g0mGqIjNu8RkvJ6ZCISyjCl9htHPbMG/nJb4w
	0vLnHgu55jGP0D9Y1aFB9ElR/NkK+ZCofOY2xT3udf86ppjiBtvtWQ8G9tWGdrjdDu4UvtIYtxSm5
	/X9O9YScCfGWjkh5FmxFqMBhULM5tipK68hsGQvfQpWWL7hYR6oZViBrs0ZOc0sw0kWi3gj5jxl54
	uDPpv/lmQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRaY6-006btk-M2; Wed, 31 Mar 2021 13:06:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRaY2-006bsv-Tr
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 13:06:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9699760C41;
 Wed, 31 Mar 2021 13:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617195973;
 bh=Gv6lEJ0fn89KoyjqIPpCwCbRxnqQTj/4wgxCn1DsqVc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nwREw8fz3HaVl+ZPBbD6j9lstJa1hFwemniqrsKPXPq8DprocOSn7iqT7szpe7/Qr
 Qrpjxout4rmmXwEwVlD5weNdDenC7K9Jvu7+fyv/2s4CJAmXx4eUF61qHa0a7OHqw0
 gcN2oRIqtGwrFeuJEbWCMURAdFV+7lQoAhJTEbeXAP9GkQWGs2lMwJAl8NCrKncl5Y
 lv9CAZYU/EqDRaJdVIZLahGx164mPStZgFb4fV8necyXXOtGuf/WmNpQ7WUGkaq2lz
 MBLfI4J0m32wur93oG9qRerdjegoLb+z7N1BP1f8tUOVYglJ74JvzWUKHOOBaEGfvl
 I42O0udR2lKrQ==
Date: Wed, 31 Mar 2021 18:36:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 00/16] CSI2RX support on J721E
Message-ID: <YGRzwboQ0sL/bAWU@vkoul-mobl.Dlink>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <YGRB/42Q6aVBLoAq@vkoul-mobl.Dlink>
 <20210331114019.g4dnuhs2hno5fjdn@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210331114019.g4dnuhs2hno5fjdn@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_140615_169893_5657E1A7 
X-CRM114-Status: GOOD (  18.73  )
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

On 31-03-21, 17:10, Pratyush Yadav wrote:
> On 31/03/21 03:03PM, Vinod Koul wrote:
> > On 30-03-21, 23:03, Pratyush Yadav wrote:
> > > Hi,
> > > 
> > > This series adds support for CSI2 capture on J721E. It includes some
> > > fixes to the Cadence CSI2RX driver, adds Rx support to Cadence DPHY
> > > driver, and finally adds the TI CSI2RX wrapper driver.
> > > 
> > > Tested on TI's J721E with OV5640 sensor.
> > > 
> > > Paul Kocialkowski (1):
> > >   phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes
> > > 
> > > Pratyush Yadav (15):
> > >   phy: cdns-dphy: Prepare for Rx support
> > >   phy: cdns-dphy: Allow setting mode
> > >   phy: cdns-dphy: Add Rx support
> > >   media: cadence: csi2rx: Add external DPHY support
> > >   media: cadence: csi2rx: Soft reset the streams before starting capture
> > >   media: cadence: csi2rx: Set the STOP bit when stopping a stream
> > >   media: cadence: csi2rx: Fix stream data configuration
> > >   media: cadence: csi2rx: Turn subdev power on before starting stream
> > >   media: cadence: csi2rx: Add wrappers for subdev calls
> > >   dmaengine: ti: k3-psil-j721e: Add entry for CSI2RX
> > >   dt-bindings: media: Add DT bindings for TI CSI2RX driver
> > >   media: ti-vpe: csi2rx: Add CSI2RX support
> > >   dt-bindings: phy: Convert Cadence DPHY binding to YAML
> > >   dt-bindings: phy: cdns,dphy: make clocks optional
> > >   dt-bindings: phy: cdns,dphy: add power-domains property
> > 
> > Is there any dependency between patches to various subsystems, if not
> > please do consider sending a series per subsystem...
> 
> Without patch 1, patch 5 and later won't build. Without patch 11, patch 
> 13 will not work.

Cover letter is a good place to mention this! And what do you mean by
not working, do we have compile time dependencies? I agree that for
everything to work all the pieces need to land

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
