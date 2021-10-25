Return-Path: <SRS0=BRk1=PN=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643F2C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:03:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 350186008E
	for <linux-phy@archiver.kernel.org>; Mon, 25 Oct 2021 07:03:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 350186008E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spAnBgN0fhhKaUGatL7Luc1HADAuxf92J5xBOAvx2q4=; b=4C4HzTJtwvpgIW
	kgNgITpK1Wu0hy/LlhpLhml0Hg9YAcWPNqQD3sJGr4sc1eCzUSIaKMqpps2MzDm4l8y+LOcmIa8a4
	LOEWOWA+t4c1skkTFE3Fk7bT5GcvCYY0WgWQTcV1cmGylDad3CYmbDE5rHm76NVPfwPWLfyrNboPP
	BciVlJGRo90LNIY5VjwUK49jGSdKvRzu/YZNiMEdMN4MGZhwI7JuKMMqsidDY7AYoYR4gDpiAZpVI
	QUk00rzEWOTX1PRSp/6WkX1lwi7k17fPLRyVrPNrfeU8JpdvENP67Zkcd259EBnKqCegM1GsIOtgN
	afSPPU9ldz0qUFFkCHNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meu1M-00FTtd-NJ; Mon, 25 Oct 2021 07:03:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meu0y-00FThF-2E; Mon, 25 Oct 2021 07:03:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D7276023E;
 Mon, 25 Oct 2021 07:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635145402;
 bh=b2ZKJTUdVCkQS98YgaVFDNlMI1qmq4hVxYpwYJLnGtg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MzOchr4576iqwit9K0Ldca9+pYoKpfyGuYszBN92hzVgeAumWYcSkFFNzHUHnR9t8
 IFdhS78dCOmgDw1v+9PDUa2IQyTZ4n11kTg86BDVQPWRosFvPtYjqkjgxC+wFTHpBz
 clQ9QwAOGF9xZIGk81HvKHYiMrjdyIXGyIo7jLluoE551DFabHl4Lin66wy6Q3mWx4
 csSwDEowZiD4D/4CAsApmtVBIE9Mfs3hwapL7Pg6EUrlFmFbg/LBfEfGXGICg6Lqec
 8gDzG0jqMmTGMMpLnAQjBO2u1kDGdE4OaVWBUxRPTYEKEHeK6NG5X1lyFryg2ZwvPk
 ePKY37PeR+c5A==
Date: Mon, 25 Oct 2021 12:33:19 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "A, Rashmi" <rashmi.a@intel.com>
Cc: "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Kishon <kishon@ti.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 Mark Gross <mgross@linux.intel.com>,
 "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>,
 "Zhou, Furong" <furong.zhou@intel.com>,
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>,
 "Hunter, Adrian" <adrian.hunter@intel.com>,
 "Vaidya, Mahesh R" <mahesh.r.vaidya@intel.com>,
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>
Subject: Re: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
Message-ID: <YXZWt6vGIVqOhgt1@matsya>
References: <20210829182443.30802-1-rashmi.a@intel.com>
 <CAPDyKFq2VQ=khYnmfsQGPPcpRnxyATVSpwKSZ4MTbKn64rthVA@mail.gmail.com>
 <DM6PR11MB306560AE06F83FC56B9F89988CAE9@DM6PR11MB3065.namprd11.prod.outlook.com>
 <YVwqVRkwAYnoJR6x@matsya>
 <DM6PR11MB30651D5F6C252EA70BAA43CE8C839@DM6PR11MB3065.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB30651D5F6C252EA70BAA43CE8C839@DM6PR11MB3065.namprd11.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_000324_175287_50481B31 
X-CRM114-Status: GOOD (  15.57  )
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

On 25-10-21, 05:46, A, Rashmi wrote:
> 
> 
> > -----Original Message-----
> > From: Vinod Koul <vkoul@kernel.org>
> > Sent: Tuesday, October 5, 2021 4:05 PM
> > To: A, Rashmi <rashmi.a@intel.com>
> > Cc: Ulf Hansson <ulf.hansson@linaro.org>; Michal Simek
> > <michal.simek@xilinx.com>; linux-mmc <linux-mmc@vger.kernel.org>; Linux
> > ARM <linux-arm-kernel@lists.infradead.org>; Linux Kernel Mailing List <linux-
> > kernel@vger.kernel.org>; Kishon <kishon@ti.com>; Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com>; linux-phy@lists.infradead.org; Mark
> > Gross <mgross@linux.intel.com>; kris.pan@linux.intel.com; Zhou, Furong
> > <furong.zhou@intel.com>; Sangannavar, Mallikarjunappa
> > <mallikarjunappa.sangannavar@intel.com>; Hunter, Adrian
> > <adrian.hunter@intel.com>; Vaidya, Mahesh R
> > <mahesh.r.vaidya@intel.com>; Srikandan, Nandhini
> > <nandhini.srikandan@intel.com>
> > Subject: Re: [PATCH v2 0/4] Add support of eMMC PHY for Intel Thunder Bay
> > 
> > On 04-10-21, 06:04, A, Rashmi wrote:
> > 
> > > Applied patch1 and patch2 for next, thus leaving the phy changes in
> > > patch3 and patch 4 for Kishon/Vinod to pick up.
> > >
> > > Thanks and kind regards
> > > Uffe
> > >
> > >
> > > Thanks Uffe,
> > > Hi Kishon/Vinod,
> > > 	Please let me know if you have any comments
> > 
> > Need ack from Rob on binding patch
> > 
> > --
> > ~Vinod
> 
> Hi Rob Herring,
> 	Please help to review the eMMC dt-binding patches

Just realised, neither Rob nor the DT list is in CC, ofcourse he would
not have seen this.

Please rebase and repost with Rob and DT list in CC!

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
