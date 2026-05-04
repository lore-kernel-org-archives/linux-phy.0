Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA07DCD3423
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 06:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9jpiGaDxwHzQs9b9bjWnh/dGe1FgMnKlTMP9a7FB66E=; b=hMi1A0aAFwg+iK
	rahGSvOZqv8b1fylMAozT/avLt47flW/U32Yff/ZXp0ZCq25Oebsa/A2ksI9QG5d982FBHd/YIl0f
	r0uwi63/XsH8oG7//GoePzTfzOBGoLRAcu0wPkMbbcHhzhQmWrJSL3lPAlVWcQEIJ5AdqJr3sm+XZ
	D3IMtudLBxXe8hL1J5DUch3oo0kvfIhy3YxL1iAMKCgE36/BcgCdNDhCtoUkZYRpuztxkgstAazmY
	YVTvU+ithPQP6yS8tMMsj5rWPiNOVOa+TxogKuLl9ziirlWNOtOxKUC1HSJdKT2o0QIH1SFkpKgn9
	6lZEloEbA0fvTG1hefGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnGQ-0000000CYGm-0X20;
	Mon, 04 May 2026 06:58:46 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnGM-0000000CYFQ-3iOI
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 06:58:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777877924; x=1809413924;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HvE9Ruc8oUHtLsgmJ7bKJpqjHWRjMVBob2gyiyfqOk8=;
  b=FfxgMrdncvkcFLxRew8M5Ne0+Fwnrc4ArDkVWlZxwoAe1o9nUZL6J11E
   kl1DN1kVXyU9WXgdYNWOl9B3A8ooCl3JeROCAMOeAZFDyBOTfgZ/8A8N4
   dRaRylpx3+DwPHla9qpRP/6GUpPBnt70fMPLYh7Hk7qzSCZ8D7htc95O/
   Mu2TBIJ+MYvOyrgrp44aWdmkazNpFjcutJA+54w5yvw4YxO/R+A3qtWoX
   Xj/weluXxVmy0bahUwLm08mlmIn2aQvwVlOIJuXZSWEVG/ftbc22PGlo9
   Xyf+Hq5rfZg5w69uIT+/E6Yvbhllzq2D/Vdoo6i5iF1gU+5xTCsGWtVGA
   A==;
X-CSE-ConnectionGUID: yeUL3ywpRSeHwU7RL5+zPA==
X-CSE-MsgGUID: Pqe/j71vR+K7yva6jsMcrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78436932"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="78436932"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 May 2026 23:58:41 -0700
X-CSE-ConnectionGUID: JCXgGk+rR6i2nSfOpMFl2g==
X-CSE-MsgGUID: DuO2+JgmTzuW74sPUnpvqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="234578650"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost) ([10.245.245.78])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 May 2026 23:58:38 -0700
Date: Mon, 4 May 2026 09:58:35 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Josua Mayer <josua@solid-run.com>
Cc: "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <afhDm5_ydU83xFKU@ashevche-desk.local>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <ad6KwGIhpJn_2eVz@ashevche-desk.local>
 <7bcb68c4-e4bd-4ad9-bb75-99e0845b204c@solid-run.com>
 <ae9l4n8wocbVegcJ@ashevche-desk.local>
 <5d4c3c95-cbe1-4439-8036-b014264ce8c2@solid-run.com>
 <ae-AJdSrnXiuc1mW@ashevche-desk.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ae-AJdSrnXiuc1mW@ashevche-desk.local>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_235842_993498_29BE21D0 
X-CRM114-Status: GOOD (  22.45  )
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

On Mon, Apr 27, 2026 at 06:26:34PM +0300, Andy Shevchenko wrote:
> On Mon, Apr 27, 2026 at 01:41:43PM +0000, Josua Mayer wrote:
> > Am 27.04.26 um 15:34 schrieb Andy Shevchenko:
> > > On Mon, Apr 27, 2026 at 11:09:48AM +0000, Josua Mayer wrote:
> > >> Am 14.04.26 um 20:43 schrieb Andy Shevchenko:
> > >>> On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:

...

> > >> For unknown reason your patch-set did not arrive in my inbox.
> > >> Perhaps it went missing for others, too?
> > > Are you in the MAINTAINERS for this part of the kernel?
> > > The CAN NETWORK DRIVERS and GENERIC PHY FRAMEWORK do not list your name.
> > Correct. I touched can phy once related to mux only.
> > > If you think of mail delivery in general, it's delivered at least to the ML
> > > https://lore.kernel.org/all/20260317203001.2108568-1-andriy.shevchenko@linux.intel.com/
> > >
> > > TBH I don't know what to answer to your question as I don't know your expectations and
> > > how it should be fulfilled taking into account my above question...
> > 
> > Changelog v2:
> > - Cc'ed to Ulf and Josua due to above
> > 
> > This is why I expected it in my inbox.
> > Usually in this situation I blame my provider.
> 
> Ah, blame me then. I most likely missed to add your name to the Cc list.

Hmm... I have checked and your address is in the Cc for the whole series,
so I withdraw that I admit earlier that problem is on my side. Please, check
if everything fine on yours. Note, I'm about to send a v3.

> > > But thanks for the reviewing! I will address the commit message in v3.
> > Great!
> 
> And will try hard to make sure your address will be in the Cc list.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
