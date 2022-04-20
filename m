Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F05BFC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Apr 2022 09:15:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWSLJpMWR3TCqp8y190vkXoDPo1FQfhNzzTjx84zvGA=; b=xjgPE2kC+nOjj8
	7punfnPwRVe+HwTG7P0B8T4DXKPxzag1iqb6aMxrTwOJdjGFCa9M+A6/fbWCIqIZsbuBDWXt7hHmD
	MJ6E2NupRG9u/Rj2cvgj04+pQHHbWtxd3FltOwSMdHKcxY5xWDTE0d8IJTTwUqmW0LYVqnuyMv2Ej
	CWslA7mR8YZOjqNa9wzoIsiBLcEaaWiJYJg1If5oMGEHjtFBiJT+5+xIseYBnQvV8Km6I403lG4dl
	/WFTGkPDfObekOX2f6ndF7RbPwtlFppZPBi4k9BpaLBkTcgNz/SlbZ/1rZaqHKG7APnVLhOlpBn4M
	S3df0eZKnFgA5261KLDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nh6Qu-008GsI-CI; Wed, 20 Apr 2022 09:15:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nh6Qr-008Gpw-15
 for linux-phy@lists.infradead.org; Wed, 20 Apr 2022 09:15:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5A804615A5;
 Wed, 20 Apr 2022 09:15:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23C8AC385A1;
 Wed, 20 Apr 2022 09:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650446127;
 bh=YZpgm2oLQIhGYSsJHeZt6621ZcIMfilgUqq05fnGaHw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ay0CYfaov/syyJpC3MEn++aJaSN4ZYTppaQhYyLpt76Du+VvvnDkKhqmrbbrK0KOq
 WTQMwmOwYpvJc0weS8K0SoT1hUb3WIysylBicOcrRDUvi2HGgenZ1kOSEvefokoevl
 dQ6AMfoOQFHJ5j9jqxudMP2Slblot7tH6/1WTsB1cz6Lr+7/s5V1lSDlixVh0kxGFV
 3F8sx/VlfsSz1/DrKlvPgFA4sYCMkPkETIx+mdF+hg0r0SkPZkK91ul8IDj20LXaQx
 6ldIsvPmLKJKDqvVpjpX74wellsf2b3OfJGkTVVlBggwzAGPr0jkBBrdUzCxQAtNhy
 bOLzfzBGZ/UzQ==
Date: Wed, 20 Apr 2022 14:45:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH RESEND v3 0/3] Cleanup the call ordering of phy_init and
 phy_power_on
Message-ID: <Yl/PK6Mw4BQeoAOA@matsya>
References: <20220407102108.24211-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407102108.24211-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220420_021529_214035_A0F3F8C3 
X-CRM114-Status: GOOD (  16.05  )
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

On 07-04-22, 12:21, Jules Maselbas wrote:
> Hi,
> 
> Last year Ahmad asked what is the correct order when calling phy_init
> and phy_power_on. Since then, I didn't see the situation improve much
> and I am once again toying around with usb phy driver.
> 
> The following two patches were in my tree for a year... Last year i
> previously tried to change the call order in the dwc2 driver but this
> requires the relevent phy to be also compatible with the "new" ordering.
> The stm32-usbphyc driver wasn't compatible, I am not sure if that is
> still is the case.
> 
> For now simply add documentation, hopefully correct, but I am not an
> expert on actual phy sementics or usage in the kernel. And add warning
> when the order is not what's expected.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
