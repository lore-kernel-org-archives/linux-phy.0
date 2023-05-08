Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85606C77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 11:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPP16pguftOuO0Ngv0jnwDUZMwlaDvenQXvOJ4FjrRM=; b=dsBoXTkVfbsyR6
	L4nm/5ztJqA2H66fpF8JxAs03LKnUHsfs5sUovtkR2ZPEnl0rbVTQI5/Vpz/xa7qwBMVzdkV1XkVb
	uwGW2Mx9JDaWNF2oft2YxQsW0aFzE8ohVsUl2ZbOZiYB5RnXhiuL1quEWO1JrvrRD8R3+w7f8qbdb
	7AlSD5kfxw0wcvfKJV7QyMEQcisCLo/ir+SiaMjkuiMiOt9C7vAbyO9lBRWhSF1mAf7GXFyOHLjp1
	ohRGyt2t48kg3bWSAq8ykUwwr7ZG8Ax11xxZSeRp1jjrOOpga3eXtAKgU0u1WVK1I7cunS0l0HZUV
	Nblr33poLLSOD5YsyA9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzH2-000QjB-0c;
	Mon, 08 May 2023 11:43:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvzGz-000QiD-1Z;
	Mon, 08 May 2023 11:43:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1377361518;
	Mon,  8 May 2023 11:43:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E734CC433A0;
	Mon,  8 May 2023 11:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683546200;
	bh=01f3Go1YWZ5fuIRF6yYHIXEN7EeVi5WcswKnPII6Gxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L4rq1gttmEtCjLmqaIPKu7Le4ItutJzvCW83HeWYf+2MX5cR+PdcH+7//L1c2Fqrv
	 Wt4xkajZwFbwFhl0Pn9gsYztzmZ2WkceRLzXxjh08QrOTkLydZb1tEOGHSzHNJuAHA
	 qkTdfOuT2YqC0silvowU9qw6/ImUJ1X7K37ixF3J9Q2YG8unWtXsqwAxkVAsavV1Ri
	 RWIE9aF/0L5IjgHW6jn6Oof3dt+vTacZX3gUVdSh2c/i8acwXL9rAEAT9k9UKXMM6i
	 WMF2+pyiT//9uwH6do6TU1M6LCixIxUoRVWsSax7OHlj+/cpoLaYtGmeT0OLmYbKB7
	 c5qIcyOIjDA0g==
Date: Mon, 8 May 2023 17:13:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Daniel Machon <daniel.machon@microchip.com>
Cc: kishon@kernel.org, Steen.Hegelund@microchip.com,
	UNGLinuxDriver@microchip.com, joe@perches.com,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] Power down serdes lanes and CMUs initially
Message-ID: <ZFjgVNsyIcLemolS@matsya>
References: <20230417180335.2787494-1-daniel.machon@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230417180335.2787494-1-daniel.machon@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_044321_562502_F4633467 
X-CRM114-Status: GOOD (  11.48  )
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

On 17-04-23, 20:03, Daniel Machon wrote:
> This patch series aims to lower the power consumption of the Sparx5
> switch chip, by configuring optimal quiet mode for serdes lanes, as well
> as powering down unused CMUs (Clock Multiplier Unit). Before this series,
> serdes lane quiet mode were not optimally configured, and all the CMUs were
> powered on by default. This uses needless power.
> 
> Each serdes lane is provided a CMU clock, depending on the serdes mode
> and the serdes index. CMUs will now be powered on individually, when
> needed. The amount of power saved varies, depending on the port
> configuration. As a reference, this change saves about 1W on
> sparx5_pcb135 and 2W on sparx5_pcb134.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
