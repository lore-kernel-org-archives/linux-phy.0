Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E328CD4F35
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 13:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xl7NzcAHDPc4bZdExt4ooffsinqO1FbnVRFpPzrdhGw=; b=3HSGYK4lxTYfX3
	5/km4l5EXmt5Q+mL6JtJemTGzmcvlpuZHUavHQtC99VKxCt0KRLa0TToy4VUrmMtlEH8iYlJPWyYc
	SVTSXgSgnHOZ005UMrLYFAE/xLE0YZEZPs/TTbKyBKZKDYumoG+SiMIc45Y2gV4XhObW2XsCNPv1o
	ndgyPKiJhCCpAtT6lI+0wvrjqAvpisMPhhbYLyDNg2AbwrDwg9/iwwAwgvTDJTXIqa5dgdxZHLlNK
	59krKhOyAYZ0JwYIIviQX0Za+7qGJ8YUSPMKIOEDSPdp4QncOzdQYviaiRVRyUR/lrEuu5HJwIRag
	fFa7AYVyBY4X3VLMw4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmov-0000000Gkq0-2U7s;
	Tue, 12 May 2026 13:06:46 +0000
Received: from mgamail.intel.com ([192.198.163.16])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmos-0000000Gkm4-0Vlt
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 13:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778591202; x=1810127202;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=znNkGxCWUoP43q4FZmHtbfCbpkEWJzJh8FmA72szqWY=;
  b=Yi6jTV6Q8um2FJFcKwoXpw9mfErBUJroeKjyTRATKDDWQ/uAbFQVr+19
   QrjaUSgjrX7NcRuw4eCOtDJaxSbFOzMVg64b4dsTCzKTuWnc35x0mAUUR
   aUBA2ZaAARF6yK9PeM/FbBlxPPKPwbkcYDhkRZSxjRcbaD+dz/gJmGVSk
   rJFQ/AP2Ui0iGtvBpTWVJxEfeUjvsA5eHda4QWvcaYGkUsV8aPIQYA9rb
   3yzT/hcBr/YOJ+nAnBSl/1hWT1SvZi4fKsOLVeW/z/ndYtMeWR9eX88y2
   EuvxzN0+Fgpd7VmPRoemlN05IP8Zdes2rY0K5AD9d+qmq01NvEyr6XFaQ
   w==;
X-CSE-ConnectionGUID: +vFPRbNuTJSIHm+yXxIpsw==
X-CSE-MsgGUID: QPdXBRr7S9ewt1Erfgj5cQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="67026601"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="67026601"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:38 -0700
X-CSE-ConnectionGUID: xg/iWjAPSE+p7scyEFDOnA==
X-CSE-MsgGUID: bP+pSJv1QK6ixYpICKEBqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="235099026"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.245.112])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:34 -0700
Date: Tue, 12 May 2026 16:06:31 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Peng Fan <peng.fan@nxp.com>, linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulfh@kernel.org>
Subject: Re: [PATCH v3 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and
 refactoring
Message-ID: <agMl17o5Ti4eSM4P@ashevche-desk.local>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
 <agBjOmnpKuZoDfWG@vaman>
 <agB_aj_2hzF3ON2h@ashevche-desk.local>
 <agIBJsOl4Trk4_KN@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <agIBJsOl4Trk4_KN@vaman>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs, Bertel Jungin Aukio 5, 02600 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_060642_173932_D636A315 
X-CRM114-Status: GOOD (  25.98  )
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

On Mon, May 11, 2026 at 09:47:42PM +0530, Vinod Koul wrote:
> On 10-05-26, 15:51, Andy Shevchenko wrote:
> > On Sun, May 10, 2026 at 04:21:38PM +0530, Vinod Koul wrote:
> > > On 04-05-26, 08:58, Andy Shevchenko wrote:
> > > > The driver does two things that need to be addressed:
> > > > - includes subject to remove gpio.h
> > > > - checks for error code from device property APIs when it can be done in
> > > >   a robust way
> > > > 
> > > > This series addresses the above and adds a couple of additional refactoring.
> > > 
> > > Sashiko flagged some issues, some of them not introduced by this, can
> > > you please check this:
> > > 
> > > https://sashiko.dev/#/patchset/20260504070054.29508-1-andriy.shevchenko%40linux.intel.com
> > 
> > "Could this result in a null pointer dereference if device_get_match_data()
> > returns null?"
> > Yes, it sounds legit but not introduced here.
> > 
> > "In the original code, the warning was suppressed when the property was missing
> > because err evaluated to -EINVAL. Now, if the property is absent, max_bitrate
> > is explicitly set to 0 in the else block, which then unconditionally triggers
> > this warning."
> > True, but I don't know which is better here, I consider that it's
> > good to inform user about default being used as a fallback. I can change
> > this back to the original logic. What do you prefer?
> > 
> > The third one is the repetition of the first one (see above).
> > 
> > TL;DR: The only one legitimated question is about a (new old) warning.
> 
> Yeah would be great if we could fix these as well please

I just sent a v4:
20260512130552.272476-1-andriy.shevchenko@linux.intel.com

-- 
With Best Regards,
Andy Shevchenko



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
