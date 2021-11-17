Return-Path: <SRS0=mYmN=QE=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B01C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 12:51:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D7B061BF8
	for <linux-phy@archiver.kernel.org>; Wed, 17 Nov 2021 12:51:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9D7B061BF8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jn2aeBl5ecD8PS7pQOlfeySo/VHdtny4x3INHAwchIQ=; b=PcG43wHve8CfHL
	jJwzT92dZ0jsI5ltJms1TBaXUtqmABz/KmqPUNMl6cn56V38y8hZhstMVSaMkCeZldnDjamHtSCyB
	D7Ro2RvGk39lOPpIqru1/gcicU+w7XEZ1NRTAKCVzA6QDRJgB4Em1B39N6DKpXxeCl5ZhsfOGNkR5
	O4wquj3GesIWkNWaFxrI0g16VjepabsHzgGOygOhAKhZHfgAP9TCt9+UNQFHX/1cwp5yfdCBJPhVL
	UMXnlgHHHlp91SWM5Yo5TZrHsnTkhLHSF3m+M95+W6AknPlzX+veCpQSjRlF7fMzcmmiyYBzwcsAn
	g7ZTwn4mPRce1PomLZDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnKP1-004kdW-63; Wed, 17 Nov 2021 12:51:03 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnKOo-004kaB-PD; Wed, 17 Nov 2021 12:50:51 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="257706784"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="257706784"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 04:50:49 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="593341576"
Received: from smile.fi.intel.com ([10.237.72.184])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 04:50:45 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1mnKOb-007nEs-Sq; Wed, 17 Nov 2021 14:50:37 +0200
Date: Wed, 17 Nov 2021 14:50:37 +0200
From: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
To: "A, Rashmi" <rashmi.a@intel.com>
Cc: "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "mgross@linux.intel.com" <mgross@linux.intel.com>,
 "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>,
 "Zhou, Furong" <furong.zhou@intel.com>,
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>,
 "Hunter, Adrian" <adrian.hunter@intel.com>,
 "Vaidya, Mahesh R" <mahesh.r.vaidya@intel.com>,
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>
Subject: Re: [RESEND PATCH v2 4/4] phy: intel: Add Thunder Bay eMMC PHY support
Message-ID: <YZT6nTI0aJXsJ1o2@smile.fi.intel.com>
References: <20211027115516.4475-1-rashmi.a@intel.com>
 <20211027115516.4475-5-rashmi.a@intel.com>
 <DM6PR11MB3065C3329182A196C46DE5F68C9A9@DM6PR11MB3065.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB3065C3329182A196C46DE5F68C9A9@DM6PR11MB3065.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_045050_859784_66BD7787 
X-CRM114-Status: GOOD (  12.76  )
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

On Wed, Nov 17, 2021 at 06:38:59AM +0000, A, Rashmi wrote:
> > -----Original Message-----
> > From: A, Rashmi <rashmi.a@intel.com>
> > Sent: Wednesday, October 27, 2021 5:25 PM

> Thank you Rob for the review of emmc dt-bindings.
> 
> Hi Vinod/Kishon,
> 
> Please let me know if there are any comments.
> Looking forward for your acknowledgement for the patch, phy: intel: Add Thunder Bay eMMC PHY support

Please, learn how not to put 450 unrelated lines in your responce(s) via email.
(Yes, I know that one may try to configure folding, but by default not many
 MUAs support this)

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
