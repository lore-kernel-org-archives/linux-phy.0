Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF886C433B4
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 15:51:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40BAC61025
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 15:51:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40BAC61025
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e9aTFEMcoRRr9fXVcSM3bzvLrpfaLEIm7Ozge8HlFqs=; b=T7WTGyVK9pG3ezD+biGwuca7M
	OBsFm5dYh8SXfrVIlaelrm527M9pqeuE1w0cxv1A5TvUtViNnYl4PaVxy2GiE8jVaAbq6eBJLT4+d
	qpJKbgD29WIXVe4ZrD/ggeSxHWhBpjAbpkXtLYaQMq2ET5iaE8ZDkaFGGw7bACXZYIrv3ozVcic6C
	CnbXAnaZ+jYhH66ubbmTtG3+MwbFmxCQaFMLoa6tyDSMs4cpkS1pmOdXbFzVENdHFQjLRVYjPvHpQ
	8n2pBkUzmSFvAhQWw/BaFWQjwKyjYIjQRj6DNLl+m51DWAVgPAEPfsGIaY02dRhhq9xUku/zkG4+9
	mJKPY67dw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRd8G-006yhU-Pd; Wed, 31 Mar 2021 15:51:48 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRd8C-006ygs-W4
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 15:51:46 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id A575A8C4;
 Wed, 31 Mar 2021 17:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1617205900;
 bh=TT1B0ipLE8lonuj4I4eUgB10aO66A/Vogn1icdF97Wk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZpfNmxQP0fia8sl6phoFqlXeTSFarWFA4RsBHMnXDQ+M7tAHaEeEx+so6eDUhn5Ty
 SSxz92NgIe6j6al77AJlkWRndZmhKKJLw2dqN3wa7EWkboiG5LrHfeeo8pGe7jcgp6
 rG0+/0mF87iHtXY/dOBl/ibLW3cm7eIrZLJ/OMsU=
Date: Wed, 31 Mar 2021 18:50:56 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Benoit Parrot <bparrot@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Pratyush Yadav <p.yadav@ti.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>,
 Maxime Ripard <mripard@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Peter Chen <peter.chen@nxp.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH 13/16] media: ti-vpe: csi2rx: Add CSI2RX support
Message-ID: <YGSaYBF/mQdcqjBx@pendragon.ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-14-p.yadav@ti.com>
 <91bbf2a9-9d27-7f9b-1c17-ad6544a828f1@ideasonboard.com>
 <20210331154456.t6edvpw6mfwlf2zg@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210331154456.t6edvpw6mfwlf2zg@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_165145_108510_FA235564 
X-CRM114-Status: GOOD (  36.95  )
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

On Wed, Mar 31, 2021 at 10:44:57AM -0500, Benoit Parrot wrote:
> Pratyush,
> 
> Tomi Valkeinen <tomi.valkeinen@ideasonboard.com> wrote on Wed [2021-Mar-31 09:06:35 +0300]:
> > Hi,
> > 
> > On 30/03/2021 20:33, Pratyush Yadav wrote:
> > > TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> > > capture over a CSI-2 bus.
> > > 
> > > The Cadence CSI2RX IP acts as a bridge between the TI specific parts and
> > > the CSI-2 protocol parts. TI then has a wrapper on top of this bridge
> > > called the SHIM layer. It takes in data from stream 0, repacks it, and
> > > sends it to memory over PSI-L DMA.
> > > 
> > > This driver acts as the "front end" to V4L2 client applications. It
> > > implements the required ioctls and buffer operations, passes the
> > > necessary calls on to the bridge, programs the SHIM layer, and performs
> > > DMA via the dmaengine API to finally return the data to a buffer
> > > supplied by the application.
> > > 
> > > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > > ---
> > >   MAINTAINERS                               |   7 +
> > >   drivers/media/platform/Kconfig            |  11 +
> > >   drivers/media/platform/ti-vpe/Makefile    |   1 +
> > >   drivers/media/platform/ti-vpe/ti-csi2rx.c | 964 ++++++++++++++++++++++
> > >   4 files changed, 983 insertions(+)
> > >   create mode 100644 drivers/media/platform/ti-vpe/ti-csi2rx.c
> > 
> > Some quick comments:
> > 
> > "ti-vpe" directory is not correct, this has nothing to do with VPE. That
> > said, the directory has already been abused by having CAL driver there,
> > perhaps we should rename the directory just to "ti". But if we do that,
> > I think we should have subdirs for cal, vpe and this new one.
> 
> I agree with Tomi here. This should create a ti directory under
> media/platform and then add a directory under that specifically for this
> driver/IP as a first step. Not sure what the correct name for that
> directory should be but it should meaningful. As a follow on step then the
> other drivers can be relocated to a proper directory structure.

+1, including for the relocation if possible.

> > "ti-csi2rx" is rather generic name. TI has had CSI-2 RX IPs before (CAL)
> > and probably will also have new ones in the future. If there's no clear
> > model name for the IP, as I think is the case here, it's probably best
> > to just use the SoC model in the name. E.g. the DSS on J7 is
> > "ti,j721e-dss".
> > 
> > This driver implements the legacy video API. I think it would be better
> > (and easier to maintain) to only implement the media-controller API,
> > unless you specifically need to support the legacy API for existing
> > userspace.
> 
> We just went through a major rework with CAL to make it media controller
> compatible in order to be able to handle CSI2 virtual channels.
> I think as this is a new driver/IP which perform the same type of service
> it makes sense to make use the more current API instead of the legacy one.

+2 :-)

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
