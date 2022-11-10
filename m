Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB0FC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 07:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4CO+X/0CAKQ3cryxr1Uqo87S3acnlltjxUgskJ6eotY=; b=lrn97S+I3o6NPl
	jrpJqwbmhcmg9urgOvY/6sh6eOEJXRtrJAtA1fyFAHNVFpdGc2V7vqVCqKKgl9FZX/CmlxmakYTlG
	2wq6dGjsvs2YZbDO4JYeqe5rJC5Gmls7uKFs9skTMCmsPbpQCqQvZTVKWOSIzqZ/RMwUdkiUr06g5
	zmZGy99j5IJoFa5UigYS195poRStfNBB4kHPlHeuk8aR6jeNQVXXgKL6SRMWPCBhS4DKm6NTx7wsF
	BOfqunSwMzZRUqpn6duagjzpPjGNllX5sY5THXKBMTwvqggh6Vzr6pUBpOz/bs2ImibGVB6CFBoLO
	7Fi/S4XJjzoTsa1h6/Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1hL-003k6E-Qe; Thu, 10 Nov 2022 07:10:03 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ot1hI-003k5I-NJ
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 07:10:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 66BB3B82050;
	Thu, 10 Nov 2022 07:09:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B7C2C433C1;
	Thu, 10 Nov 2022 07:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668064198;
	bh=V7yDfiL6FXOyL8hHuXJBRR5wnNHmetLnLRlaixlcqdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uB2P9hwAMM01f/49Y+bDwuY972Gp1s7u4u1BdV8jGMGI8zTH+JzwMbYYEa3fm2BZp
	 1cEUzyxw5r1Y5vzynJE1GWyUBAkSpqrEBrTBABbMAVLercW1vxWupOlZ/73uzpTAIM
	 a+bEtk0SeFxqMv21Wdog3daUzIxjAHskpllCDbVhXHarKGn448kzjsmSs3YqNStuFs
	 o4vRTuNvCrsy6ufqdNlJCNra5XEBANI0ehfoDSh190ZhKqeVEI7/8RVOCUcUBYfTwd
	 k4K130bY3gh5HIr39CUy7d/4c/N1dBYnckna/61YMbsaGZlL3U6vfqcNGjUpSD8iY2
	 TrzTnBg/foQjQ==
Date: Thu, 10 Nov 2022 12:39:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jon Hunter <jonathanh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	Jim Lin <jilin@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Fix crash during pad power on/down
Message-ID: <Y2yjwRUFYQcrOHNT@matsya>
References: <20221010135132.30809-1-jonathanh@nvidia.com>
 <Y0zqKh7B9BaOoREo@matsya>
 <eaf26959-401c-1c82-e95b-9f8a07f189a0@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eaf26959-401c-1c82-e95b-9f8a07f189a0@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221109_231000_919317_70ADD6F5 
X-CRM114-Status: GOOD (  16.76  )
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

On 07-11-22, 21:27, Jon Hunter wrote:
> Hi Vinod,
> 
> On 17/10/2022 06:37, Vinod Koul wrote:
> > On 10-10-22, 14:51, Jon Hunter wrote:
> > > Commit a88520bfc0ec ("usb: gadget: tegra: Reduce pad power") added calls
> > > to tegra_phy_xusb_utmi_pad_power_on/down in the Tegra XUDC driver to
> > > control the pad power. This change is causing a kernel panic when
> > > powering down the pads on entering suspend with the Jetson TX2 platform.
> > > The panic occurs because the 'xudc->curr_utmi_phy' is not configured on
> > > this platform and we do not check to see if the pointer is valid before
> > > attempting to deference the pointer. Fix this by checking to see if the
> > > 'phy' pointer passed to tegra_phy_xusb_utmi_pad_power_on/down is valid.
> > 
> > Applied, thanks
> > 
> 
> We need this fix for Linux v6.1. The crash is still seen as of v6.1-rc3.

This is in phy/fixes so should be in v6.1 or in linus's tree shortly

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
