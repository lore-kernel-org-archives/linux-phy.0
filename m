Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68AD0C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nf5j0ZET26QmRuiiRxiwalNXDnVcchzpfeygkvVueRk=; b=sQJA8vyFGv1fjZ
	r+9ndLaX8B2isJy2WgmFWRY0jKYb6DTHo71sJvabfxJhpLDGtalvIMQBkxnMAMLq4n5qcvA2SwGFc
	DhfDVYbR37ra6+OXEIYVhV9vkBaZSLhv7UNp1QraOusH1A4quqQSQk90BbVwE+f49MRDHsxIehwMr
	j9pS0LF4kaanOTcsc2rmK74kXfedbPA5ZqQGka+TSv5+Zs4fyyp39ispEmS2HGdJGA5QkjibBVYc9
	qw6Q0uhwKCwjZFWeRZUO8UTq6QMXWzNoT64p3yI4fX1Tz11iLrIrOBgYoMy+WAEiXJV+/l7bjMg06
	0g/ZBOW5E25Utmu7sH5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piF3o-007ZNS-08;
	Fri, 31 Mar 2023 13:44:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piF3l-007ZMi-2o
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 13:44:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5D292B82FC3;
	Fri, 31 Mar 2023 13:44:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42F5DC433EF;
	Fri, 31 Mar 2023 13:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270291;
	bh=d9Fe4OlQvEZdFcbBLYw4zSiNG69Za5tYzhCykGM8QAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tq3bgiWC/0VjSdLfisgRJ4dsJ9FfV/Me6jQmnw/pU24Tf3aufl6188YqMVJupxIh0
	 DE1RhpJEycgL566GznxJcLvjxK3iNpNwIM1wvGNeKHdPlNYnla3eaz5P9eWfvJDF0+
	 vOHDbTGRCyi1Z9kQ3GyXD4KrH36i9x/gwKxaWruBhDnf2byEfk/suVuYGZrmtgEqcD
	 /o4A8ZAtJ2KIlEXjAQd4NU5pv8nLc+hmcT1u7u1nlhuJzgFzoZT/8kdfU1hNzWSsyj
	 OzvalPPhmDQ20IToi7plb4Q+3QFXV3zepVrTjDX2VSiRbE0FGhyn7A98PikJbEPP/Z
	 5D+7JNeSK4Q3Q==
Date: Fri, 31 Mar 2023 19:14:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, mparab@cadence.com, rogerq@kernel.org
Subject: Re: [PATCH] phy: cadence: Sierra: Add PCIe + SGMII PHY multilink
 configuration
Message-ID: <ZCbjzXB3GW8siHYz@matsya>
References: <20230220141216.25326-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230220141216.25326-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_064454_064479_93D0D204 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
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

On 20-02-23, 15:12, Swapnil Jakhade wrote:
> Add register sequences for PCIe + SGMII PHY multilink configuration.
> This has been validated on TI J7 platforms.

This fails to apply for me, can you please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
