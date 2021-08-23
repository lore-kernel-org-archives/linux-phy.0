Return-Path: <SRS0=LI2T=NO=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A69BAC4320E
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 08:57:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B2E961262
	for <linux-phy@archiver.kernel.org>; Mon, 23 Aug 2021 08:57:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6B2E961262
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMgcqEeMT6M/XsHsNqRDdEv9vnQqSVxCAuFJKD41bIY=; b=p4siPLbY0HqpCz
	4VrM7qsJaCVpo4aKECjviTxsk7zqqyH7GDkyVKtHgJ1cHJXiKNqIW1++ixQ4cw9DljawcqfqIrpga
	UDCLvrXI+G0MMzpKjrpczJOygvLCcOLCRCHlfx5G5NwidlYr84Naz8jgwIp153E+D1P9fQXj4t5/C
	t9woNQno696LaOYgSjsUjSlcGRMzrYeRRnHz7knG19ppd/8/SZNXupf2FWMPoQI4p+LRBQr0u17oU
	3RSD/BgtdnhPpk4TeP6C2n8rxmKK+Nv1EqcW4l85HtokQ/POj874Q7fXytCDMMKmhPnkGC6A77E1H
	2JAiQomtP45YHyMQWVmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI5lp-00G1Jt-Op; Mon, 23 Aug 2021 08:57:29 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI5lk-00G1IZ-Bf
 for linux-phy@lists.infradead.org; Mon, 23 Aug 2021 08:57:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 17N8vDGO002694;
 Mon, 23 Aug 2021 03:57:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1629709033;
 bh=WloqbnoEgD5ql7FAIG/QNvP+kEgv6SzH3rX8/cmaMwM=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=oJ3vKalrlrkfmdFJtoMkV/PpPiKQfUFgvp2hauydg3fQ5dg+YFYTReTUAC5pSKpwF
 QmQzcYmzV82yn6jJl90ZE7+YH240pooT/EV+70dpaGso/v3V4+i9CXX5Po9naQw2k3
 5kcW6hVIGp1oEjCqzPsQSoXRJJewOTnNqZjOeLTs=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 17N8vDHH021842
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Aug 2021 03:57:13 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Mon, 23
 Aug 2021 03:57:13 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Mon, 23 Aug 2021 03:57:13 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 17N8vCp7095969;
 Mon, 23 Aug 2021 03:57:13 -0500
Date: Mon, 23 Aug 2021 14:27:12 +0530
From: Pratyush Yadav <p.yadav@ti.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Vinod Koul <vkoul@kernel.org>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: Re: [PATCH v4 4/6] phy: dt-bindings: cdns,dphy: make clocks optional
Message-ID: <20210823085710.mr4iz3fop62efcyj@ti.com>
References: <20210820190346.18550-1-p.yadav@ti.com>
 <20210820190346.18550-5-p.yadav@ti.com>
 <YSL8mH8hd/PzyRRo@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YSL8mH8hd/PzyRRo@pendragon.ideasonboard.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_015724_685434_6B2DBEDE 
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

On 23/08/21 04:40AM, Laurent Pinchart wrote:
> Hi Pratyush,
> 
> Thank you for the patch.
> 
> On Sat, Aug 21, 2021 at 12:33:44AM +0530, Pratyush Yadav wrote:
> > The clocks are not used by the DPHY when used in Rx mode so make them
> > optional.
> > 
> > Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> > 
> > ---
> > 
> > (no changes since v3)
> > 
> > Changes in v3:
> > - Add Rob's Ack.
> > 
> > Changes in v2:
> > - Re-order subject prefixes.
> > 
> >  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > index b90a58773bf2..3bb5be05e825 100644
> > --- a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> > @@ -33,8 +33,6 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > -  - clocks
> > -  - clock-names
> 
> Could you turn this into a conditional requirement based on the compat
> string, as the clocks are needed in the TX case ?

Ok, will do.

> 
> >    - "#phy-cells"
> >  
> >  additionalProperties: false
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
Regards,
Pratyush Yadav
Texas Instruments Inc.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
