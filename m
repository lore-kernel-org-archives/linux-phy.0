Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 537F9C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 25 Nov 2021 05:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnOGQ6Dr5tDpZAc57bLx2Ngp7U4EujkDu5JrUcqe6p4=; b=PMayurYBjSHabA
	4hEuv+vl9CV3R1oc6/ubbtHYs2pboAFKunUDxfuzwYftLxX22C9zv5g1d0leqYjRl2IbHHEmJs++l
	1omWotDU/C4N8Q1J0c5dvO14YT8nxfcqs0hgrZI5hYT5PcJ+9320EEbtt2lhAu5/EqpGjiSc8RNtg
	4ZgNNCeY58DbCMYR3e9fnMwduW6rZygeE6MynQPOf7gFBERZw5fP1Z1wA0Rjs4RSLsIAVGL65jW4J
	wBJ2ZQn7IJ9A+xzIzpgsGYXoI+rhc9J9H8dwYERciHXOclLFA/zDd1i8Ch4upIaerm2In8/bWT09Z
	FJapSVJVYB5ZQAIWXchg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq71v-006Nru-G1; Thu, 25 Nov 2021 05:10:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq71s-006NrY-OT
 for linux-phy@lists.infradead.org; Thu, 25 Nov 2021 05:10:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 10D4661059;
 Thu, 25 Nov 2021 05:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637817039;
 bh=ufpErtWre1qj5/AerC8ZhaWk9fBM4xwsadc1DshDmBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K7WqKUKuE1aGCbcLl1Xay3yhLln2ksLALHasv2Ycm1JeJ09JdlcbdZn5niXvDy3I1
 5093kfrCVkI7s1NkpduRnnud52+NS30CJf3SjlSbzi6LEnNFJfMXVhU5YdKY6wrYFz
 bQ6dbj5Ah6Bq6RYejhF0KBMnmH9dbczNLd+LxAKqMe+AGF783KKYOHGqOCs/Tqp68y
 f7gcn2Oe+QQzrHVbvtZ1QQZckVpVbJ7Ya8ZGBVAf17tS7PnatxBje1Yec98uXs1Pio
 f9s6y5wgJHKmD8ChVb9jmhEvwj+MX95IVdc09uPxecB826KUTCSfbaRejTyEKduhv5
 lgZkTSHN2aw9g==
Date: Thu, 25 Nov 2021 10:40:34 +0530
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
Message-ID: <YZ8aygJQoxie+Ddn@matsya>
References: <20211022170236.18839-1-sjakhade@cadence.com>
 <20211022170236.18839-14-sjakhade@cadence.com>
 <YZxyja2xEkpWvStR@matsya>
 <DM6PR07MB6154FB5EB84B7BE063965619C5619@DM6PR07MB6154.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR07MB6154FB5EB84B7BE063965619C5619@DM6PR07MB6154.namprd07.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_211040_845842_2A179C49 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

On 24-11-21, 07:33, Swapnil Kashinath Jakhade wrote:

> > so this is pcie->qsgmii ->ssc/external/internal ... ok
> > 
> > > +				[NO_SSC] =
> > &pcie_100_no_ssc_plllc_cmn_vals,
> > > +				[EXTERNAL_SSC] =
> > &pcie_100_ext_ssc_plllc_cmn_vals,
> > > +				[INTERNAL_SSC] =
> > &pcie_100_int_ssc_plllc_cmn_vals,
> > > +			},
> > >  		},
> > >  		[TYPE_USB] = {
> > >  			[TYPE_NONE] = {
> > >  				[EXTERNAL_SSC] =
> > &usb_100_ext_ssc_cmn_vals,
> > >  			},
> > >  		},
> > > +		[TYPE_QSGMII] = {
> > > +			[TYPE_PCIE] = {
> > 
> > now it is reverse! qsgmii -> pcie -> ... why?
> > 
> > what is meant by pcie->qsgmii and qsgmii-> pcie?
> > 
> 
> Multi-protocol configuration is done in 2 phases, each for one protocol.
> e.g. for PCIe + QSGMII case,
> [TYPE_PCIE][TYPE_QSGMII] will configure common and lane registers for PCIe and
> [TYPE_QSGMII][TYPE_PCIE] will configure common and lane registers for QSGMII.

Then it should be always common + protocol or protocol + common, not
both please! Pls make an order and stick to it everywhere... If that is
not possible, I would like to understand why

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
