Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A2FC6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 13 Sep 2022 15:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4LbsojfajWnh2JJ69Fzerzgw6zBh2uFn/EWAkmEgWE=; b=0t5syYRUeB0p8Y
	e6eVdpOYoanc2PfdJMYk/hrL/im1Ti09QPxSU3iIu/hoN1/rJkpo41o9ZQLu/gH5NVPEyR5vOi8i5
	ZOS2hUo4sqrnyEto0ovnFTsXcmiibJwC/aRc1mri/5T7O9/U2erJ/xPDnEyDroMXKdrpzuXtw4zOj
	8LmzqotlgGKiYd81Gw7TmrbdOZd0U/6nmhWIb59mt/viMynZ4GSXEwJkSXsHvCF66vFd+L6hw1kW2
	h/Qbrk+7aaDLTwH9UyFNKrmB3kAaY0k0mLyAujQMP8SXiQGVb4b7AQf7wSIg0Cm20N5lUstF1J7gK
	j4dRCPTlhxrxWzN6YcAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY7OP-00C4hR-Tt; Tue, 13 Sep 2022 15:00:05 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY700-00Bgz3-IQ
	for linux-phy@lists.infradead.org; Tue, 13 Sep 2022 14:34:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id BFBB4B80FE7;
	Tue, 13 Sep 2022 14:34:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDD1AC433D7;
	Tue, 13 Sep 2022 14:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663079689;
	bh=2d3LptxMXzkoXlaSrt8wY8ciXTV2Oe42v3GLdwXwVcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZaqTmJaZMYrzJfEi29ZmYp5VDETIcvvBqZ9RjH1YLAAOQMHf5ZKGZRTZTu686eKcM
	 cZtYuRBnpXSH+GdBt5+1WA/QNOiM3M9VWjZRnF2RZXZJPJonS4qWVKqgMdTXxsV/kO
	 1TVKdRWUFT7DaGBSnZpFHPyBxYrdt0S+qp7WOlHCT6s23QyC8AEoJCzVeT7PSyijbs
	 xlraAbJRvJEO7ztier6w12vRxQf+Pv92Hw8SoMDdwe+ZR2PhWundTwwR/9nKKaZISe
	 US7cj5Jzsekz008xBpbHPgzlZQ0qn/3KUxFrBnLEVYHatT2h0ETJDBwq5suG2rs/1e
	 +pNvPFYj7dsWg==
Date: Tue, 13 Sep 2022 20:04:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: JC Kuo <jckuo@nvidia.com>
Cc: Jim Lin <jilin@nvidia.com>, thierry.reding@gmail.com,
	jonathanh@nvidia.com, balbi@kernel.org, gregkh@linuxfoundation.org,
	bhsieh@nvidia.com, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 1/2] phy: tegra: xusb: add utmi pad power on/down ops
Message-ID: <YyCVBVRQo+qPo5vH@matsya>
References: <20220816082353.13390-1-jilin@nvidia.com>
 <20220816082353.13390-2-jilin@nvidia.com>
 <YxS6FBeyS1Cs7xhI@matsya>
 <8d33abb0-51ab-67c4-50b3-ae95a5d9fb55@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d33abb0-51ab-67c4-50b3-ae95a5d9fb55@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_073452_880996_60951D76 
X-CRM114-Status: GOOD (  10.39  )
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

On 06-09-22, 10:43, JC Kuo wrote:
> Hi Vinod,

Please _do_ _not_ _top_ _post_

> Before the device or host is being attached, we can keep most of the
> transceivers powered down (PD=1/PD_DR=1) to minimize power consumption. At this
> stage, in .phy_power_on(), we enable only the single-ended receiver (PD_ZI=0)
> for detecting connection. Upon detecting device's or host's connection, host or
> controller driver will invoke tegra_phy_xusb_utmi_pad_power_on() to power on all
> of the transceivers (PD=0/PD_DR=0) to equip full link functionality.

Thanks for this explanation... It helps!

Just a suggestion, can this be moved into phy_init() you have detected
connection in phy_power_on(), the transceiver can be enabled in
phy_int... Would that work?

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
