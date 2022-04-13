Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2525C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnh5LfonPV8YMJD5kVLpMzo0FmnkDE3imntOx1AuIcg=; b=FtymJu0mzGYch1
	VCZRCGp6ehsBEF5qUeW3xasHWXvHMrjybR+kv6u909l8e8uOnvycUO3dy77KUOr80AkFjsNHV/CyM
	D5Hyc6JC+R5o+1LD1GMj+fSi8DRS2SLE0PqMVHL1Zpjr7XkQvRWTHQYRde7mch4BYFPywJ+5odtnQ
	FpC06PdinoH7QYAf4R5/YtsycZVcODjtbmuIyYeG9juDejr4UawiNgvN64PDyZYfKdhCzSKqEqKyW
	tI3pG5I0Vpf3zAiCCAZE0ec/R/8qdmoxTZ9RE55S9tCP2ogAf8wXYqnEwCwcD3iI3ljMqtTE3eccL
	6TQy7Qf5vTzCMREmi+9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZkN-000SR0-2p; Wed, 13 Apr 2022 09:57:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZkK-000SQS-2P
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 09:57:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6CDE861CE5;
 Wed, 13 Apr 2022 09:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5853BC385A4;
 Wed, 13 Apr 2022 09:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649843826;
 bh=Gvg7LRw/xZeBOxZ+ML/w+hzH8H2F8QR6fA7vJj6buX4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UtLOsXFywpemB7ZRATqgftGYZ2fEWxqCgcGuxcXQw4snvYCkDAhuUINIOxLb9b4aU
 tqRfgkDGx/y7+jlGaHviy/A6MwxssuD+JFltbSeGrnGLtrDF1TQnzeDhePU/W4xRAq
 Zd6NLWviWanUiFhp80yq14A1rRthHvVqjkaEcWIMUXH6Mr7mQxBg+MtNDYJFq7AwVw
 XYAcy5Mq3i23R6aGWno+L9/mmAeOtD9QPwHZWQBLBsGnyxHMnYJeHi2VbpvgyEqVrC
 ySu5hAoxch9aSVNu3NqrOMLwUbyj/JzryEan+0+XEPIyI+ZrIhXBp6njMIJuWFvzcY
 +5vDvtXeBm5vw==
Date: Wed, 13 Apr 2022 15:27:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, mparab@cadence.com, a-govindraju@ti.com
Subject: Re: [PATCH] phy: cadence: Sierra: Add TI J721E specific PCIe
 multilink lane configuration
Message-ID: <Ylaeb1169qh/Nx5D@matsya>
References: <20220303055026.24899-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220303055026.24899-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_025708_207048_03C20C91 
X-CRM114-Status: GOOD (  16.06  )
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

On 03-03-22, 06:50, Swapnil Jakhade wrote:
> This patch adds workaround for TI J721E errata i2183
> (https://www.ti.com/lit/er/sprz455a/sprz455a.pdf).
> PCIe fails to link up if SERDES lanes not used by PCIe are assigned to
> another protocol. For example, link training fails if lanes 2 and 3 are
> assigned to another protocol while lanes 0 and 1 are used for PCIe to
> form a two lane link. This failure is due to an incorrect tie-off on an
> internal status signal indicating electrical idle.
> 
> Status signals going from SERDES to PCIe Controller are tied-off when a
> lane is not assigned to PCIe. Signal indicating electrical idle is
> incorrectly tied-off to a state that indicates non-idle. As a result,
> PCIe sees unused lanes to be out of electrical idle and this causes
> LTSSM to exit Detect.Quiet state without waiting for 12ms timeout to
> occur. If a receiver is not detected on the first receiver detection
> attempt in Detect.Active state, LTSSM goes back to Detect.Quiet and
> again moves forward to Detect.Active state without waiting for 12ms as
> required by PCIe base specification. Since wait time in Detect.Quiet is
> skipped, multiple receiver detect operations are performed back-to-back
> without allowing time for capacitance on the transmit lines to
> discharge. This causes subsequent receiver detection to always fail even
> if a receiver gets connected eventually.
> 
> The workaround only works for 1-lane PCIe configuration. This workaround
> involves enabling receiver detect override by setting TX_RCVDET_OVRD_PREG_j
> register of the lane running PCIe to 0x2. This causes SERDES to indicate
> successful receiver detect when LTSSM is in Detect.Active state, whether a
> receiver is actually present or not. If the receiver is present, LTSSM
> proceeds to link up as expected. However if receiver is not present, LTSSM
> will time out in Polling.Configuration substate since the expected training
> sequence packets will not be received.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
