Return-Path: <SRS0=aqAb=JI=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B2B8C433B4
	for <linux-phy@archiver.kernel.org>; Sun, 11 Apr 2021 14:30:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DF55B610CA
	for <linux-phy@archiver.kernel.org>; Sun, 11 Apr 2021 14:30:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DF55B610CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lqz88GpW3yDNd3TRGGBbbb6wSYIsEnPki1plK8noqEU=; b=LbctfjsLhSPiHEk63w2iyTtx1
	T/xEXw9uafRdis0I1TicNa2YQYzkoszv5IRq3pWdTQeEGUd5T7HsJL1HFETkgu/GL6ezokjzcjZAQ
	A4AGz54wRQ8Mr8zwtIpx+7jBfYkr/TAgK7jn2cartrI2wWgXv8NeXWCNya7UHxGXodguYm9gYlGXE
	wbSe489YBfG3fXtMQ6nQsEQb0Zb296Bt0+SJ7qEWPnwToX/7yYjzPWrkd+TuvLnR/qX2rIfNYRMn6
	TGco2V4Bu/bRZVGZNNLC1dWunsBH9rBMgy8ZEoOGUrEwFDd9cxd0YQqmYucQYFRJUENuc3cR16sCc
	DHGHvgXqw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVb6m-004ZeF-D7; Sun, 11 Apr 2021 14:30:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVb6k-004ZeA-Nk
 for linux-phy@desiato.infradead.org; Sun, 11 Apr 2021 14:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=QXeV1R1nwgKGVyJjwxXB7fNSr22zHDq33SSN0zL6BHA=; b=wXGMCF9keJkH9XIPfxKwWh/seb
 X5pXiJ0xBJxlbTuox3jg6YZmku/T8l+UyiV59vpdfPpitNCdh3ZmU04cFEmXDPU5uzko97YfZeMgz
 mZgy9WSbojO/bMqbyM+2KXmbEzBKw7HXfGr3c+gkkWbV1vzHmDM1gRTMtU6sfvqlQ6SazHUqULRJY
 dQujd3zz7ldfviXVRmXQnonE2EdsB3pulER0HEfUSW54zBYI9jQ95oxXF60ZEFuhuYkm1gALI7OVX
 JedMzeotI6xl3otyKTM9WrOvu0+liJkdIhCR8Ushj9wxJPwiYFNY1BrjoIxd4fVXy0NerLQFB3THM
 prCeGjXg==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVb6i-005Ycc-7x
 for linux-phy@lists.infradead.org; Sun, 11 Apr 2021 14:30:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B975660FD8;
 Sun, 11 Apr 2021 14:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618151433;
 bh=pCMnb5nX7ZCPBwul6KUVOSq+mnPHU59xMBeUvZ7Eegk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iafxZ7UpdQ/DxbNUOcTV807BWTcf4VS2rdAWWBz0nJHWY51eODVHwQjTwOqJbxd+M
 0hoUMXy2ljcHtm8SK3b9MQvqKf5/L5rW1nVw71sLlzP+JvJXgkxCZ5FUAI2J65xa2z
 obUxH4hJy4SJYqIINS7orqqOy7/isPI33zLGEqM54+OgCB/k2FYUDnhCBe5q091Ud8
 J1F4KakoLZQLUkiJ9r/c4IZaL2cbxRNZYOg0E3Ul0/NVyXCNRdzyV+ndbqBjvQfjt/
 oEDDe94y5T2Amr/Rqwzd5bI4dCHNseCcSlO2g2WkAVAUJBkOmSPClT6vvjd556GVZO
 adJCs/G2UjycQ==
Date: Sun, 11 Apr 2021 20:00:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Jon Hunter <jonathanh@nvidia.com>, JC Kuo <jckuo@nvidia.com>,
 linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v9 09/13] phy: tegra: xusb: Add wake/sleepwalk for Tegra210
Message-ID: <YHMIBES4z7RLFUMS@vkoul-mobl.Dlink>
References: <20210325164057.793954-10-thierry.reding@gmail.com>
 <20210401110512.2743589-1-thierry.reding@gmail.com>
 <YGvrMJ6FwwV3KOpt@vkoul-mobl.Dlink>
 <YGxo6558N4llZo2U@orome.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YGxo6558N4llZo2U@orome.fritz.box>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_073036_349514_D128438A 
X-CRM114-Status: GOOD (  11.58  )
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

Hi Thierry,

On 06-04-21, 15:58, Thierry Reding wrote:
> On Tue, Apr 06, 2021 at 10:31:36AM +0530, Vinod Koul wrote:
> > On 01-04-21, 13:05, Thierry Reding wrote:
> > > From: JC Kuo <jckuo@nvidia.com>
> > > 
> > > This commit implements Tegra210 XUSB PADCTL wake and sleepwalk
> > > routines. Sleepwalk logic is in PMC (always-on) hardware block.
> > > PMC driver provides managed access to the sleepwalk registers
> > > via regmap framework.
> > 
> > Acked-By: Vinod Koul <vkoul@kernel.org>
> 
> Hi Vinod,
> 
> thanks for looking at these so quickly. Unfortunately this missed the
> v5.12-rc6 cut-off for ARM SoC. However, all the prerequisites are now
> in ARM SoC and Greg had acked the XHCI patches, another option would
> be for me to send you a pull request for this series with all the
> prerequisites (that are already in ARM SoC) included for v5.13. What
> do you think?

Sorry but phy tree goes thru Greg as well and PR is already done.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
