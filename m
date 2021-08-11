Return-Path: <SRS0=OGPc=NC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C92EC4338F
	for <linux-phy@archiver.kernel.org>; Wed, 11 Aug 2021 17:36:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CEFC6101D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Aug 2021 17:36:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3CEFC6101D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQfVRizU0rdsKDNlml7wec6GSXmXqggbrVGfZIptDLs=; b=hnR66J0dSJMsUH
	KL/uXyuzFUl2l0UPhsxzurlAmuWUBGFSMv39bmZocVUf/6n7PpQiYF/N3ZmMqUIlRxCilnE9KQSmB
	laZZEYB8JmCJwwm/mhG0AzGOSI4hOidPG78vDdN7QA7TlDhOfqNthJmj4IjcSkJyjMPX8q3GJTOCl
	AirGEejhTnje8eeqAcuzpeKZOWPCMLye6QXmYS560X8H894HQAOxStOqedIPyGdEmv62o+tQYbIYF
	6DmUCUuH16+GPludHX8EEysPe7L+u8jxvluguQTmHEavEzad36gOeQ5SoDfUzsJ7AQd4whsLFAYRM
	EYFd7fNAqTmedEj5m/KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDs9k-007nlA-LG; Wed, 11 Aug 2021 17:36:44 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDs9f-007njN-28
 for linux-phy@lists.infradead.org; Wed, 11 Aug 2021 17:36:42 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17BHaXqS066293;
 Wed, 11 Aug 2021 12:36:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1628703393;
 bh=koHOYMd3d54ErCB2QIMgjsSyIsfpTXR12oRVDmM0CQI=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=TVRvh+ba2DClIx7rkBokgHjhGu87O7rf2h2WdB11e0gQ8kz586rIYf/kQ2UDx6Usf
 uevzzZTCNBWN6LmdueWQeQE0N1gulKkIU8n3bMWgagdoAc5bz5Bo9JBn4EXwFYRQ1s
 w5MPkhuK/AeRkWY7Zl95Ed3OLs3W6lo+UipHQI+s=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17BHaXWN014969
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 11 Aug 2021 12:36:33 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 11
 Aug 2021 12:36:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 11 Aug 2021 12:36:33 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17BHaWlY013939;
 Wed, 11 Aug 2021 12:36:32 -0500
Date: Wed, 11 Aug 2021 23:06:31 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
CC: Vinod Koul <vkoul@kernel.org>, Nikhil Devshatwar <nikhil.nd@ti.com>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v3 1/7] phy: Distinguish between Rx and Tx for MIPI D-PHY
 with submodes
Message-ID: <20210811173629.gse5qmzezlh2ua7g@ti.com>
References: <20210624184108.21312-1-p.yadav@ti.com>
 <20210624184108.21312-2-p.yadav@ti.com>
 <YQ0Y4ueALPNEAoMI@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YQ0Y4ueALPNEAoMI@aptenodytes>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_103639_231485_CEAB993D 
X-CRM114-Status: GOOD (  29.20  )
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

On 06/08/21 01:11PM, Paul Kocialkowski wrote:
> Hi,
> 
> On Fri 25 Jun 21, 00:11, Pratyush Yadav wrote:
> > From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > 
> > As some D-PHY controllers support both Rx and Tx mode, we need a way for
> > users to explicitly request one or the other. For instance, Rx mode can
> > be used along with MIPI CSI-2 while Tx mode can be used with MIPI DSI.
> > 
> > Introduce new MIPI D-PHY PHY submodes to use with PHY_MODE_MIPI_DPHY.
> > The default (zero value) is kept to Tx so only the rkisp1 driver, which
> > uses D-PHY in Rx mode, needs to be adapted.
> 
> After some thinking and discussions, it appears that using the submode is
> probably not the best way to distinguish between rx and tx. This is because
> rx/tx is more of a specification of the hardware component than a run-time
> descision. Indeed the D-PHY blocks are usually dedicated to an associated
> controller (DSI or CSI-2) and thus each instance is either meant for tx or
> rx use.

Ok. IIRC Laurent also brought this point up earlier as well. At that 
time I took the allwinner DPHY as an example of a DPHY that can run in 
both modes.

The Cadence DPHY also supports both Rx and Tx modes but I don't know if 
both can be implemented at the same time, if that would even make any 
sense.

> 
> As a result I will be using the allwinner,direction string property in
> device-tree instead of the submode, with values of either "rx" or "tx".
> I suppose you can do something similar if you agree it makes more sense.

Wouldn't a different compatible a better idea?

> 
> Cheers,
> 
> Paul
>  
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > ---
> > 
> > (no changes since v1)
> > 
> >  include/linux/phy/phy-mipi-dphy.h | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/include/linux/phy/phy-mipi-dphy.h b/include/linux/phy/phy-mipi-dphy.h
> > index a877ffee845d..0f57ef46a8b5 100644
> > --- a/include/linux/phy/phy-mipi-dphy.h
> > +++ b/include/linux/phy/phy-mipi-dphy.h
> > @@ -6,6 +6,19 @@
> >  #ifndef __PHY_MIPI_DPHY_H_
> >  #define __PHY_MIPI_DPHY_H_
> >  
> > +/**
> > + * enum phy_mipi_dphy_submode - MIPI D-PHY sub-mode
> > + *
> > + * A MIPI D-PHY can be used to transmit or receive data.
> > + * Since some controllers can support both, the direction to enable is specified
> > + * with the PHY sub-mode. Transmit is assumed by default with phy_set_mode.
> > + */
> > +
> > +enum phy_mipi_dphy_submode {
> > +	PHY_MIPI_DPHY_SUBMODE_TX = 0,
> > +	PHY_MIPI_DPHY_SUBMODE_RX,
> > +};
> > +
> >  /**
> >   * struct phy_configure_opts_mipi_dphy - MIPI D-PHY configuration set
> >   *
> > -- 
> > 2.30.0
> > 
> 
> -- 
> Paul Kocialkowski, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com



-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
