Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE89FF8868
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 15:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8sEj+9yAsj4Mv4N9Ni72Wb4e1AVALVZ7lpYkOkX+Vf8=; b=AQia2ccOH0QiNx
	95vxWGu2fEFecUkuJJIGWGoow54VXkahRUIfQ+/EiSDk/Kvpvbi1PYHp8YnhCloVbsFhOPn+U+P7I
	34rdpIvgl6MwAgj6Ds/hoa89fT9AaUouuscTpjEL16onqxQYqRLIxrWUf13BnZQc66STvWT06JfLj
	92+EVPVj5fjibT7SfL3rb1jGkZq99Km4zKDzyCn4AJHlB0kDOB6vZmbaesgPosjj39hTOaoXSYetn
	MQtclLjuO6a6W+rb7F0bsn8h0FkY2zR7PYnqtyE911+6eh/h7FK3nrhyMOZYTltoFkNbtV3gUZVDp
	Vc/r2s6Zi2D9yoSzU/3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHNr4-0000000HBey-0Mw0;
	Mon, 27 Apr 2026 15:26:38 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHNr1-0000000HBeS-28rs
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 15:26:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777303595; x=1808839595;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ULIjuYjHbAwmU6XaI+lBFkFaz6ssx3ysv2IbDMcn4no=;
  b=TfzKIpBWTlGzcaXKuQ/OtAFNPxlWGaPRG8IGsHko19JG6umkB+Mqb09O
   BLYPq+gjREOKYLKPBG82EzvaNS/WLF2YzsNtPTmjTKZfAGJK4IW4od6Au
   oqTxZPwkYPQdRnYlPsocz/wOiDdWqTdAl07RT02RXvoOkAY8Hd3sZ9sRt
   VfBypuT/IRBuj9VQtz7KV0ZRPtskFyzeGZML6POXI7bZYr935h7aL0tdu
   pqJlZ1rtFSiC/ki3aum+Hxgfbj/y8Aa2zvVsiGpf2OX0RV0ADmsv9HS0c
   tnikAUU6UJSAA/xADDLFFOpj8PgVwvxHadQr7Sn12rkTLuh0dBTjoqtNU
   w==;
X-CSE-ConnectionGUID: FqFbxq05R/uLWGUeGhRdHQ==
X-CSE-MsgGUID: hibrEf8SSpqJV+hRsHIgMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88794680"
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="88794680"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 08:26:34 -0700
X-CSE-ConnectionGUID: dFKvDgC0S7+53DMdOkTEeA==
X-CSE-MsgGUID: +WNZa+T9RS+KAKKavp/61w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,202,1770624000"; 
   d="scan'208";a="256980399"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.2])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Apr 2026 08:26:32 -0700
Date: Mon, 27 Apr 2026 18:26:29 +0300
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
Message-ID: <ae-AJdSrnXiuc1mW@ashevche-desk.local>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
 <ad6KwGIhpJn_2eVz@ashevche-desk.local>
 <7bcb68c4-e4bd-4ad9-bb75-99e0845b204c@solid-run.com>
 <ae9l4n8wocbVegcJ@ashevche-desk.local>
 <5d4c3c95-cbe1-4439-8036-b014264ce8c2@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d4c3c95-cbe1-4439-8036-b014264ce8c2@solid-run.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_082635_665930_04717917 
X-CRM114-Status: GOOD (  17.60  )
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

On Mon, Apr 27, 2026 at 01:41:43PM +0000, Josua Mayer wrote:
> Am 27.04.26 um 15:34 schrieb Andy Shevchenko:
> > On Mon, Apr 27, 2026 at 11:09:48AM +0000, Josua Mayer wrote:
> >> Am 14.04.26 um 20:43 schrieb Andy Shevchenko:
> >>> On Tue, Mar 17, 2026 at 09:27:26PM +0100, Andy Shevchenko wrote:

...

> >> For unknown reason your patch-set did not arrive in my inbox.
> >> Perhaps it went missing for others, too?
> > Are you in the MAINTAINERS for this part of the kernel?
> > The CAN NETWORK DRIVERS and GENERIC PHY FRAMEWORK do not list your name.
> Correct. I touched can phy once related to mux only.
> > If you think of mail delivery in general, it's delivered at least to the ML
> > https://lore.kernel.org/all/20260317203001.2108568-1-andriy.shevchenko@linux.intel.com/
> >
> > TBH I don't know what to answer to your question as I don't know your expectations and
> > how it should be fulfilled taking into account my above question...
> 
> Changelog v2:
> - Cc'ed to Ulf and Josua due to above
> 
> This is why I expected it in my inbox.
> Usually in this situation I blame my provider.

Ah, blame me then. I most likely missed to add your name to the Cc list.

> > But thanks for the reviewing! I will address the commit message in v3.
> Great!

And will try hard to make sure your address will be in the Cc list.

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
