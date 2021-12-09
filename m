Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A2CC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  9 Dec 2021 11:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVWZCqYyBUnzzvam1URSz5Mkti+UKT0xosVo44y6WIY=; b=mfyipmyyTe1Y3H
	YqI3FDyracVfg28ojhFb2Jg1iAV6p3w/FqWY/I9W+C8Km0htZxeYAaPDkwDcPimqaSkw9c1h7y0Vd
	lkEUKviIZtqxKlDhxAh/ahqvNCaB5TzqTGNvCCBlTauPM7CD+bHl2QIsy2/w2iU9r5RhdCJNT2bH1
	h4MnmuyPn+x8cvs+/JZdeMyVxIB10jpverP3HU2dF/ag2kiJNgVbkftyrgTTvu9NiETS47ViSrfXf
	Zm3esdREYI18D7AXL9RYtaKDoIxrdiQHkNRA/1esz0Kesb/2wWpZaA74XesFqd1Z2w6helEvvJXVO
	qH6RY+cy/7mb1gIe9vYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvI00-00FrCD-NV; Thu, 09 Dec 2021 11:54:08 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvHzx-00FrBL-P0
 for linux-phy@lists.infradead.org; Thu, 09 Dec 2021 11:54:07 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 70AC8B8243C;
 Thu,  9 Dec 2021 11:54:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34854C004DD;
 Thu,  9 Dec 2021 11:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639050843;
 bh=LuduuUVtRzUzUrU1F4AC42Ur8LrJtnTcV5XvLjCCZgM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=P5e2dNB8nKRDEbTaMlPbcP115LXIR9iFP6KpUPvXQnbXR5igdH0hk9V2Yzc1a772L
 P2SfAjKd/6HYdrQe6THTcim1QXVkqF/yuKry13bUXVhK+jmuo5qRZwoXBfy8i32xbB
 WV+blwXbxcNFhCOPagIg1KfvBUjXS/LWSOMlAgPVxz+oBCQDyYZvDL2kWvGLTdquuf
 LtEi96p5aBXEKKVOC7IGXjol6hn53KqjriUMYpMFdtKVT2dSjH93an7FIjKqLokKyE
 7TcefqtLtgZWJ6V5Dtna+nAoV1aRctmaMBOZDi8JX2Id8+vHJpzog1CLV+a08hn9M5
 /UDTXIjflPatQ==
Date: Thu, 9 Dec 2021 17:23:59 +0530
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
Message-ID: <YbHuV/LpcZqOTuLV@matsya>
References: <20211022170236.18839-1-sjakhade@cadence.com>
 <20211022170236.18839-14-sjakhade@cadence.com>
 <YZxyja2xEkpWvStR@matsya>
 <DM6PR07MB6154FB5EB84B7BE063965619C5619@DM6PR07MB6154.namprd07.prod.outlook.com>
 <YZ8aygJQoxie+Ddn@matsya>
 <DM6PR07MB61549C25EBF70ED2639FBCF6C5699@DM6PR07MB6154.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR07MB61549C25EBF70ED2639FBCF6C5699@DM6PR07MB6154.namprd07.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_035406_119703_798504AA 
X-CRM114-Status: GOOD (  22.32  )
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

On 02-12-21, 14:12, Swapnil Kashinath Jakhade wrote:
> Hi Vinod,
> 
> > -----Original Message-----
> > From: Vinod Koul <vkoul@kernel.org>
> > Sent: Thursday, November 25, 2021 10:41 AM
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
> > On 24-11-21, 07:33, Swapnil Kashinath Jakhade wrote:
> > 
> > > > so this is pcie->qsgmii ->ssc/external/internal ... ok
> > > >
> > > > > +				[NO_SSC] =
> > > > &pcie_100_no_ssc_plllc_cmn_vals,
> > > > > +				[EXTERNAL_SSC] =
> > > > &pcie_100_ext_ssc_plllc_cmn_vals,
> > > > > +				[INTERNAL_SSC] =
> > > > &pcie_100_int_ssc_plllc_cmn_vals,
> > > > > +			},
> > > > >  		},
> > > > >  		[TYPE_USB] = {
> > > > >  			[TYPE_NONE] = {
> > > > >  				[EXTERNAL_SSC] =
> > > > &usb_100_ext_ssc_cmn_vals,
> > > > >  			},
> > > > >  		},
> > > > > +		[TYPE_QSGMII] = {
> > > > > +			[TYPE_PCIE] = {
> > > >
> > > > now it is reverse! qsgmii -> pcie -> ... why?
> > > >
> > > > what is meant by pcie->qsgmii and qsgmii-> pcie?
> > > >
> > >
> > > Multi-protocol configuration is done in 2 phases, each for one protocol.
> > > e.g. for PCIe + QSGMII case,
> > > [TYPE_PCIE][TYPE_QSGMII] will configure common and lane registers for
> > > PCIe and [TYPE_QSGMII][TYPE_PCIE] will configure common and lane
> > registers for QSGMII.
> > 
> > Then it should be always common + protocol or protocol + common, not
> > both please! Pls make an order and stick to it everywhere... If that is not
> > possible, I would like to understand why
> 
> Could you please elaborate what do you mean by
> " common + protocol or protocol + common, not both please!"?
> The order is same everywhere which is common + lane configuration for protocol 1
> and then for protocol 2. For multiprotocol case, PHY configuration is based on which
> protocols are operating simultaneously. So e.g.
> [TYPE_QSGMII][TYPE_PCIE] -> QSGMII configuration when other protocol is PCIe
> Which might be different than
> [TYPE_QSGMII][TYPE_*] -> QSGMII configuration with other protocol.

As I said I would like to understand what is the difference b/w
[TYPE_QSGMII][TYPE_PCIE] & [TYPE_PCIE][TYPE_QSGMII] and why?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
