Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED21FC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 09:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8+CTIByu2Oyk5DYK7xPiuKl1I6JI8iJlK7m1RYe4Ro=; b=wArpTC9gA8Zk3D
	fVSEan8lmG8aOa8Qyc32sR7h4LsQnIoUPVGNdKFzzjg8Ka+BtAYDe2WGIgwxOtX6EeTf/ETd/iEgs
	5t1dYdgpeRpzMImHUiZqGlQn6zLzwiTau0Sph2D0lFsMJIa2HdxiysCQEmK8zxPk24edn3zHLBI4L
	3oERaM3hWZ1V4zxZpXm1ebPzcPnlI2uMD0q3RMJ8IW8p5ssTTnWsAuBZLYM4qdzXVGXem0cckirP8
	9/RhSQdKLl1RgohUY50S01ZK/uy9Yx2rXHM88kVVp31N/lW65ODHwA0Ydxts7Zscj17P7K58woElQ
	ugRiqYweItmdXdf0KVKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx414-00DGec-Eb; Tue, 14 Dec 2021 09:22:34 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx410-00DGdF-Dq
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 09:22:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2C360B81824;
 Tue, 14 Dec 2021 09:22:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12E5EC34601;
 Tue, 14 Dec 2021 09:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639473748;
 bh=wwQR8mwE39ljJ7AGeFIyttvd6OPcslCZZCbHxDE3Chw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nCjmb27Cf7J+JFLssI/mlsY3n5/dRIKixPFJbDubHbg4b9RwybK3Lrwk6/98Uzs09
 2SQSdsIw2YmYivGnNx+EUrFH4AFoOVKqeOuAXcDsAK6208Fvikuej71qax/qT58gjb
 ROgdf4+e8d6+8cecWIboWN9fi8WUZmhdgfMiOKfWLw485g8KjZAqBrPocCqWpsrEUK
 Vdz1EXU3y6xZHZa4FDcjE0SKnLI4KoSV/d5VIvybHM8C59QpUiDzQQcGHQqMBDwoMT
 Ahkk351jw6WRvegh5ytEb7yD8vYjEJROVkPp6OX1eTGPrlGXmUUdpR+FQkVEBoN4DD
 BzmhtRs3eauUg==
Date: Tue, 14 Dec 2021 14:52:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
Cc: "kishon@ti.com" <kishon@ti.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Milind Parab <mparab@cadence.com>,
 "a-govindraju@ti.com" <a-govindraju@ti.com>
Subject: Re: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe + QSGMII PHY
 multilink configuration
Message-ID: <YbhiT7PTtqaofN5w@matsya>
References: <20211022170236.18839-1-sjakhade@cadence.com>
 <20211022170236.18839-14-sjakhade@cadence.com>
 <YZxyja2xEkpWvStR@matsya>
 <DM6PR07MB6154FB5EB84B7BE063965619C5619@DM6PR07MB6154.namprd07.prod.outlook.com>
 <YZ8aygJQoxie+Ddn@matsya>
 <DM6PR07MB61549C25EBF70ED2639FBCF6C5699@DM6PR07MB6154.namprd07.prod.outlook.com>
 <YbHuV/LpcZqOTuLV@matsya>
 <DM6PR07MB6154AF51437C535362EC4059C5719@DM6PR07MB6154.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR07MB6154AF51437C535362EC4059C5719@DM6PR07MB6154.namprd07.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_012230_777640_85E92528 
X-CRM114-Status: GOOD (  31.83  )
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

On 10-12-21, 09:46, Swapnil Kashinath Jakhade wrote:
> Hi Vinod,
> 
> > -----Original Message-----
> > From: Vinod Koul <vkoul@kernel.org>
> > Sent: Thursday, December 9, 2021 5:24 PM
> > To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
> > Cc: kishon@ti.com; robh+dt@kernel.org; p.zabel@pengutronix.de; linux-
> > phy@lists.infradead.org; linux-kernel@vger.kernel.org;
> > devicetree@vger.kernel.org; Milind Parab <mparab@cadence.com>; a-
> > govindraju@ti.com
> > Subject: Re: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe + QSGMII PHY
> > multilink configuration
> > 
> > EXTERNAL MAIL
> > 
> > 
> > On 02-12-21, 14:12, Swapnil Kashinath Jakhade wrote:
> > > Hi Vinod,
> > >
> > > > -----Original Message-----
> > > > From: Vinod Koul <vkoul@kernel.org>
> > > > Sent: Thursday, November 25, 2021 10:41 AM
> > > > To: Swapnil Kashinath Jakhade <sjakhade@cadence.com>
> > > > Cc: kishon@ti.com; robh+dt@kernel.org; p.zabel@pengutronix.de;
> > > > linux- phy@lists.infradead.org; linux-kernel@vger.kernel.org;
> > > > devicetree@vger.kernel.org; Milind Parab <mparab@cadence.com>; a-
> > > > govindraju@ti.com
> > > > Subject: Re: [PATCH v3 13/15] phy: cadence: Sierra: Add PCIe +
> > > > QSGMII PHY multilink configuration
> > > >
> > > > EXTERNAL MAIL
> > > >
> > > >
> > > > On 24-11-21, 07:33, Swapnil Kashinath Jakhade wrote:
> > > >
> > > > > > so this is pcie->qsgmii ->ssc/external/internal ... ok
> > > > > >
> > > > > > > +				[NO_SSC] =
> > > > > > &pcie_100_no_ssc_plllc_cmn_vals,
> > > > > > > +				[EXTERNAL_SSC] =
> > > > > > &pcie_100_ext_ssc_plllc_cmn_vals,
> > > > > > > +				[INTERNAL_SSC] =
> > > > > > &pcie_100_int_ssc_plllc_cmn_vals,
> > > > > > > +			},
> > > > > > >  		},
> > > > > > >  		[TYPE_USB] = {
> > > > > > >  			[TYPE_NONE] = {
> > > > > > >  				[EXTERNAL_SSC] =
> > > > > > &usb_100_ext_ssc_cmn_vals,
> > > > > > >  			},
> > > > > > >  		},
> > > > > > > +		[TYPE_QSGMII] = {
> > > > > > > +			[TYPE_PCIE] = {
> > > > > >
> > > > > > now it is reverse! qsgmii -> pcie -> ... why?
> > > > > >
> > > > > > what is meant by pcie->qsgmii and qsgmii-> pcie?
> > > > > >
> > > > >
> > > > > Multi-protocol configuration is done in 2 phases, each for one protocol.
> > > > > e.g. for PCIe + QSGMII case,
> > > > > [TYPE_PCIE][TYPE_QSGMII] will configure common and lane registers
> > > > > for PCIe and [TYPE_QSGMII][TYPE_PCIE] will configure common and
> > > > > lane
> > > > registers for QSGMII.
> > > >
> > > > Then it should be always common + protocol or protocol + common, not
> > > > both please! Pls make an order and stick to it everywhere... If that
> > > > is not possible, I would like to understand why
> > >
> > > Could you please elaborate what do you mean by " common + protocol or
> > > protocol + common, not both please!"?
> > > The order is same everywhere which is common + lane configuration for
> > > protocol 1 and then for protocol 2. For multiprotocol case, PHY
> > > configuration is based on which protocols are operating simultaneously. So
> > e.g.
> > > [TYPE_QSGMII][TYPE_PCIE] -> QSGMII configuration when other protocol
> > > is PCIe Which might be different than [TYPE_QSGMII][TYPE_*] -> QSGMII
> > > configuration with other protocol.
> > 
> > As I said I would like to understand what is the difference b/w
> > [TYPE_QSGMII][TYPE_PCIE] & [TYPE_PCIE][TYPE_QSGMII] and why?
> > 
> 
> This logic is for implementing multi-link PHY configuration.
> Consider a case for a 4 lane PHY with PCIe using 2 lanes and QSGMII other 2 lanes.
> Sierra PHY has 2 PLLs, viz. PLLLC and PLLLC1.
> So in this case, PLLLC is used for PCIe and PLLLC1 is used for QSGMII and
> PHY will be configured in two steps as described below.
> 1. For first step, phy_t1 = TYPE_PCIE and phy_t2 = TYPE_QSGMII
>      So we select registers as
>      [TYPE_PCIE][TYPE_QSGMII][ssc]: 
>               This will configure PHY registers associated for *PCIe* (i.e. first protocol)
>               involving PLLLC registers and registers for first 2 lanes of PHY.
> 2. In second step, the variables phy_t1 and phy_t2 are swapped. So now,
>     phy_t1 = TYPE_QSGMII and phy_t2 = TYPE_PCIE. And we select registers as:
>     [TYPE_QSGMII][TYPE_PCIE][ssc]:
>              This will configure PHY registers associated for *QSGMII* (i.e. second protocol)
>              involving PLLLC1 registers and registers for other 2 lanes of PHY.
> 
> This completes the PHY configuration for multilink operation.
> Above approach enables dividing the large number of PHY register configurations
> into protocol specific smaller groups.
> 
> Please let me know if it answers your question.

Thanks this helps. Can you please add this useful info in the comments
for this, that will help folks understanding why it was done like this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
