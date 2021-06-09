Return-Path: <SRS0=E8hB=LD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 753D6C47095
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jun 2021 03:40:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C80B610E5
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jun 2021 03:40:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C80B610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuIDztNg4aGJggalG3cxBtOy6lTsdfBFzw2HNdIhR2I=; b=CxwMI0xwrr8KdS
	gHhRVNTYxY3jjac3Uci0HyLPOx4a1LC7ZvN/uBp1kuyRJi0jVHA866ZERz7gMCOPRX0dPantbSPwd
	LUM1bdZB+a+q+0+FSEdLIGpxORnmflsdc9r0b8ou3pRfsrhWlXIDKYZCIrn8JSVxFTHv7ob5a7Eet
	hmwdg82shdNnqjD/6NkCs8+So1f1V+w/e0jtZIByy9Jbdi0c8UlwQXwWKDFZGrfXxnIPQjyd7MKO9
	FTo2gho+2dWJjY0Rbtwn6KnvZ6/y4rxTNfPj5F8UM3zcKLNQoOKbA9NLadR4ATSb6qSyYK3LuHZnf
	0dRV+rfQYB7aNzABhaUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqp53-00BZUA-IK; Wed, 09 Jun 2021 03:40:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqp4q-00BZTB-HH; Wed, 09 Jun 2021 03:40:25 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2BC9B60FEA;
 Wed,  9 Jun 2021 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623210024;
 bh=fdOo0G9HqTmmCdUZnDYUhHxotnAlzLnVWKn6YGTdoHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PmhqOBXNRY4Ol3uvSvnzaCjl1+WkQwU6F2151aMloOuak61/VdpQekkVYSlu0mn1r
 5xqJIoWgTuEBGvENZRG9uVLrlxgEIj5jE8IyY8v0nOOcZImo0YJAX7FVnScWZIQahT
 NmxNbnRklm9ZZWHdmu8b4EShYmFBTsZfNQe9Wijm7dtz/V7sx6nsQ4tCX9a8PAEoOM
 +t5tKIswtBa79qctZVVe4QhRK+JnnjDCocEjkfH736ssSSxzU331ht5lBEjka1ExoG
 9JXNy0bISu1Ia/lkZCksMSj7/NXdWTapNNTvP8O7wVxa/CHstIFV+VYtu9QakJLZDh
 Raec8zEwyrldA==
Date: Wed, 9 Jun 2021 09:10:20 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: rashmi.a@intel.com, Kishon <kishon@ti.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-phy@lists.infradead.org, Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: =?utf-8?B?W+KAnFBBVENI4oCdIDIvMl0gcGh5?= =?utf-8?Q?=3A_intel?=
 =?utf-8?Q?=3A?= Fix for warnings due to EMMC clock 175Mhz change in FIP
Message-ID: <YMA4JBN8m1Unj6ph@vkoul-mobl>
References: <20210603182242.25733-1-rashmi.a@intel.com>
 <20210603182242.25733-3-rashmi.a@intel.com>
 <CAPDyKFr-vuP_bdG-iFjJyS3ZeVDiVq+3aVERHjBo-8BHf38m9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFr-vuP_bdG-iFjJyS3ZeVDiVq+3aVERHjBo-8BHf38m9g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_204024_615238_02F3793A 
X-CRM114-Status: GOOD (  11.41  )
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

On 08-06-21, 14:52, Ulf Hansson wrote:
> On Thu, 3 Jun 2021 at 20:22, <rashmi.a@intel.com> wrote:
> >
> > From: Rashmi A <rashmi.a@intel.com>
> >
> > Since the EMMC clock was changed from 200Mhz to 175Mhz in FIP,
> > there were some warnings introduced, as the frequency values
> > being checked was still wrt 200Mhz in code. Hence, the frequency
> > checks are now updated based on the current 175Mhz EMMC clock changed
> > in FIP.
> >
> > Spamming kernel log msg:
> > "phy phy-20290000.mmc_phy.2: Unsupported rate: 43750000"
> >
> > Signed-off-by: Rashmi A <rashmi.a@intel.com>
> > Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
> 
> I guess $subject patch should be queued together with patch1/2 (via
> the mmc tree?), no?
> 
> Vinod, Kishion, if that's okay I need an ack from you to pick it up.

Sure:

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
