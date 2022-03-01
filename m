Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C13BC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 11:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exEpxAQieWWyr/4KwQF3vDq/loWI+5b5iJkcnKonWh0=; b=djGqbW0K9zU+l7
	pJfyy2EN0d6stA0Q7CdU/fUrnfDw3JC4/MYMZWnZwOCN0TmNNz50t2jr30lhLiGAoBIFpAP8HnRg5
	OlOpo/Hkl65JLXEItrCfTPmfTd9WJjcnlKUy9wC2SYzWYdf0oK2E136xMxfS7BqkU9JtKeWZdUGsY
	JX/pEbacRteJawUAYNmn6C5G2Jlpz2LmIj6Lh2l++xw+DHUuDm7a+/K8rAbxh5OQNQOJasJ7Pn/6y
	mg34T0aknc8/BEESixh0wjslDZ7bZj6WGe631uVuSonXJNrSqvNx97AILTTRfsg/mhtre3DpXVQB7
	88VUeVijrDSz0j0iLl9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP0Ml-00GL6r-HB; Tue, 01 Mar 2022 11:08:27 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP0BL-00GFB7-Tm
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 10:56:43 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 221AuRaH097518;
 Tue, 1 Mar 2022 04:56:27 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1646132187;
 bh=zbZw6U1U+q/OqMykHu4syaDjok492zGJ/pzPQ7GdmIc=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=UcIsJUv66SEzzErPBUmmhjSACZDy8Fxas9JTRe4ttpLwgcQu/7ifjQxmaH78Tu1QP
 lsX/pIBmpzD1/CIeyRwjq1GXVRbi23Fhpcp0ZfaxDVAhqPtFesBUVidVj+gUIBve//
 r/d075qIm14+AXlfk5pBNNkunZS3l8sGotW4Sudk=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 221AuQsY121867
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 1 Mar 2022 04:56:26 -0600
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 1
 Mar 2022 04:56:26 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 1 Mar 2022 04:56:26 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 221AuPja033887;
 Tue, 1 Mar 2022 04:56:26 -0600
Date: Tue, 1 Mar 2022 16:26:25 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v9 1/4] phy: cadence: Add Cadence D-PHY Rx driver
Message-ID: <20220301105625.o7wlw6giqsw5nrvx@ti.com>
References: <20220131173314.2073641-1-p.yadav@ti.com>
 <20220131173314.2073641-2-p.yadav@ti.com> <YhTu2ixdWBKU1Y8y@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YhTu2ixdWBKU1Y8y@matsya>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_025640_172606_7C216FA2 
X-CRM114-Status: GOOD (  30.82  )
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

On 22/02/22 07:40PM, Vinod Koul wrote:
> On 31-01-22, 23:03, Pratyush Yadav wrote:
> > The Cadence D-PHY can be configured in Tx (DSI) mode or Rx (CSI) mode.
> > Both modes have a different programming sequence and share little among
> > them. In addition, a PHY configured in Tx mode cannot be used in Rx mode
> > and vice versa. For this reason, create a separate driver for the Rx
> > mode to make it easier to read and maintain.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > 
> > ---
> > 
> > Changes in v9:
> > - Use %ld instead of %d for printing PTR_ERR().
> > 
> > Changes in v8:
> > - Move lanes check to start of configure sequence.
> > - Change MODULE_LICENSE() to "GPL".
> > - Add Laurent's R-by.
> > 
> > Changes in v7:
> > - Add spaces after { and before } in the bands table.
> > - Drop the wrapping around the for loop on cdns_dphy_rx_get_band_ctrl().
> > - Make cdns_dphy_rx_wait_for_bit() inline.
> > - Print an error message if registering PHY provider fails.
> > 
> > Changes in v6:
> > - Move to a separate driver.
> > 
> > Changes in v5:
> > - Use the new cdns_dphy_info to specify PHY ops.
> > - Re-order include in alphabetical order.
> > - Make bands const.
> > - Drop num_bands.
> > - Make i, lanes unsigned.
> > - Drop the maximum check in cdns_dphy_rx_get_band_ctrl(). Let the loop
> >   complete and return -EOPNOTSUPP when we reach the end.
> > - Drop the "rate < bands[i].min_rate" check since the bands are in
> >   ascending order.
> > - Move data_lane_ctrl to start of function and make it static const.
> > 
> > Changes in v4:
> > - Drop the submode parts. Use a different compatible for the Rx ops.
> > - Make bands and num_bands static.
> > 
> > Changes in v3:
> > - Use a table to select the band.
> > - Use a table to poll the data lane ready bits.
> > - Multiply the DPHY HS clock rate by 2 to get the bit rate since the
> >   clock is DDR.
> > 
> >  drivers/phy/cadence/Kconfig        |   8 +
> >  drivers/phy/cadence/Makefile       |   1 +
> >  drivers/phy/cadence/cdns-dphy-rx.c | 255 +++++++++++++++++++++++++++++
> >  3 files changed, 264 insertions(+)
> >  create mode 100644 drivers/phy/cadence/cdns-dphy-rx.c
> > 
> > diff --git a/drivers/phy/cadence/Kconfig b/drivers/phy/cadence/Kconfig
> > index a62910ff5591..1adde2d99ae7 100644
> > --- a/drivers/phy/cadence/Kconfig
> > +++ b/drivers/phy/cadence/Kconfig
> > @@ -22,6 +22,14 @@ config PHY_CADENCE_DPHY
> >  	  system. If M is selected, the module will be called
> >  	  cdns-dphy.
> >  
> > +config PHY_CADENCE_DPHY_RX
> > +	tristate "Cadence D-PHY Rx Support"
> > +	depends on HAS_IOMEM && OF
> > +	select GENERIC_PHY
> > +	select GENERIC_PHY_MIPI_DPHY
> > +	help
> > +	  Support for Cadence D-PHY in Rx configuration.
> > +
> >  config PHY_CADENCE_SIERRA
> >  	tristate "Cadence Sierra PHY Driver"
> >  	depends on OF && HAS_IOMEM && RESET_CONTROLLER
> > diff --git a/drivers/phy/cadence/Makefile b/drivers/phy/cadence/Makefile
> > index 26e16bd34efe..e17f035ddece 100644
> > --- a/drivers/phy/cadence/Makefile
> > +++ b/drivers/phy/cadence/Makefile
> > @@ -1,5 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_PHY_CADENCE_TORRENT)	+= phy-cadence-torrent.o
> >  obj-$(CONFIG_PHY_CADENCE_DPHY)	+= cdns-dphy.o
> > +obj-$(CONFIG_PHY_CADENCE_DPHY_RX)	+= cdns-dphy-rx.o
> >  obj-$(CONFIG_PHY_CADENCE_SIERRA)	+= phy-cadence-sierra.o
> >  obj-$(CONFIG_PHY_CADENCE_SALVO)	+= phy-cadence-salvo.o
> > diff --git a/drivers/phy/cadence/cdns-dphy-rx.c b/drivers/phy/cadence/cdns-dphy-rx.c
> > new file mode 100644
> > index 000000000000..c9bb8c7f16f6
> > --- /dev/null
> > +++ b/drivers/phy/cadence/cdns-dphy-rx.c
> > @@ -0,0 +1,255 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> 
> GPL v2 and more...
> 
> > +/*
> > + * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com/
> 
> this should say 2022 as well
> 
> > +MODULE_AUTHOR("Pratyush Yadav <p.yadav@ti.com>");
> > +MODULE_DESCRIPTION("Cadence D-PHY Rx Driver");
> > +MODULE_LICENSE("GPL");
> 
> This means GPL v2 only and does not match SPDX tag, pls update

Will change SPDX to GPL-2.0-only.

> 
> -- 
> ~Vinod

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
