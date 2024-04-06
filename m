Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 149C6CD1292
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 06:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htU/uDIDJUKWyvX4avN3x+xlQUrN3qIeNoSyUcvteWg=; b=SZE20DQILIOOcS
	R42CS9glfToYfnxhgkpb8T8sW2WqQXiAcZV6FP62KItwDWPNNfpHENyIM0GzYVB88zLD9S1zAsFFX
	uPfCa9Ikh0y5WnXCMPAAJpA/Dy+sfbNRdWHwxpOGoG14nVWsjZQ274F3hVFNBTcrgZHmVQI4bWwl1
	iR/+livNP9ziaQu9PMmoPFYPE2hzmkxQ1uzOoR0HRGbolkJii/s9330LXXxaIrM3NNbIzkn41WVfL
	DWp58tlaRtSOxe1AtruyBoNnj8Ur2F+6Rkt5q1pa4EIIdwW6RrjkjB7CMC1VgSISSi/VIpk3lkQNG
	O+jntEPzN0+Nfvg7yZdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszTZ-00000009nLW-1OZ0;
	Sat, 06 Apr 2024 06:24:29 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszTW-00000009nL1-38YG
	for linux-phy@lists.infradead.org;
	Sat, 06 Apr 2024 06:24:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13DE860670;
	Sat,  6 Apr 2024 06:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2788CC433F1;
	Sat,  6 Apr 2024 06:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712384661;
	bh=4gG9/E8OTh0D5eA0xxln+0lOjn2aKaQQgTIkfPw0ntE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SWtEG12cziCLwoo/U/KQ3sSMtBH47f/wMAdMIHsgdykOcBX90psCnxacjQjJnUiS3
	 tntFWNjcaWPnd505CHVJMBicxl5HY5PFBgccemY6Xn+XBV6B8EpckcLLIgxQ8XnN5z
	 DyCoOakUY0hxP2mYph3SGfflG8K/L6O1fIgEDyKJ31QOJU2LvE9kKIO9+pE28QEhcZ
	 V5rIQ6HC/fiT0GdUxzRfwIkyEw57+GBXbFTLG3DC++ZkD374CNYl99QFbYQ98hnDMT
	 3rNGraCRG55d858mQyJivNVd4z78rVA6wAQ2rR+XZbqQe1kWci2i3/GBa2FNz+QRXg
	 wYfRmp74yJpbw==
Date: Sat, 6 Apr 2024 11:54:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Ricardo B. Marliere" <ricardo@marliere.net>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] net: phy: core: make phy_class constant
Message-ID: <ZhDqkZ-Hf9KwayC5@matsya>
References: <20240305-class_cleanup-phy-v1-1-106013a644dc@marliere.net>
 <ZhAtQngu2uChbCCt@matsya>
 <4yxiyk555fts7ibsjubatreugv7pdmvcbnnamcuqoxpwx4g3wr@f6t33jkfwcve>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4yxiyk555fts7ibsjubatreugv7pdmvcbnnamcuqoxpwx4g3wr@f6t33jkfwcve>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_232426_849490_61F445E5 
X-CRM114-Status: GOOD (  11.83  )
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

On 05-04-24, 14:08, Ricardo B. Marliere wrote:
> On  5 Apr 22:26, Vinod Koul wrote:
> > On 05-03-24, 15:18, Ricardo B. Marliere wrote:
> > > Since commit 43a7206b0963 ("driver core: class: make class_register() take
> > > a const *"), the driver core allows for struct class to be in read-only
> > > memory, so move the phy_class structure to be declared at build time
> > > placing it into read-only memory, instead of having to be dynamically
> > > allocated at boot time.
> > 
> > why is this tagged net: ...??
> > This has nothing to do with networking!
> 
> Hi Vinod.
> 
> My mistake, it was due to poor local tree management. Please let me know
> if you can review and take it as is, changing the subject line, or if
> you want me to resend.

No I have applied this after dropping the net tag

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
