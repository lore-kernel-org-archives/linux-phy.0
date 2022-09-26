Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 743FFC32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 18:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8r7Xorv9UuiccIOROSatcoYMjtTVoujToELcaRUqwb0=; b=BbshWqLZ0qDB1y
	7dQygLOR13JzlxMUuxo1jjYtD8Y1+D9VWmSw8fS2RB3xcekj/OQO3BSVGjZp49I5dBDX6GEtfi0ds
	jUYqIRv3Xv9DaUr/eTsXxKfLEURggPcyLpfgJqt7gg2NMLJE7TW5ezU4cI3RL6yzm035/mKjZv5zk
	X/2DgnQWiwcP2AhLFxrXkWtU60q0rhojY2WRRJP+KUzLKdPrgeW0Fd6LDuxN/sTTvca2HI+NyyjBL
	XiTlLfVCzf82gf3/+vN0v46Xb0hWDr0/NhEoXT/V5tc17LfNcsebR1eqcLmCTscF6NIjE/OndYwd3
	ogAFLj3z2Fk96eFLYggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsgA-006FFI-Td; Mon, 26 Sep 2022 18:18:06 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsg9-006FEl-43
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 18:18:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CC2C9B80CA1;
	Mon, 26 Sep 2022 18:18:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80883C43146;
	Mon, 26 Sep 2022 18:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664216281;
	bh=wAluiVNeo8nHql0makNUUTFAKus8zZtCrezjQxtwB+w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=U6YipxbEdNH1/lQItnlIL8t5MD0TobZ4XR4L3RR7dY4wqxziWPatMlpGXQ1lYTXee
	 7YooBb+eDYGIl5mnXZbLCp4XlrEXL+woIDkpx5W5FpFE5d4fjVVmbGb+S6R9N83p8M
	 z7KFG3HWzMzlZa36wwSnJBUhxJnnCahgWouh0op/ZlAWXjgLgzXuArgCeop8FIVFvi
	 Elesc4bGObZUO4eHo7RXM949LhES1q/CYUC429sy3fOi77PPvMdRFBdyN9lYEy9uhb
	 POLUb1fri+ac3o/LW4KukMgdn0NN9zIS7sjYuTSRyf00MHfZT0vc2kJyW9lKdps2sS
	 4ecaNrSHm1GMg==
Date: Mon, 26 Sep 2022 13:18:00 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
	bhelgaas@google.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
	kishon@ti.com, vkoul@kernel.org, mani@kernel.org,
	Sergey.Semin@baikalelectronics.ru, ffclaire1224@gmail.com,
	linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V2 8/9] phy: tegra: p2u: Set ENABLE_L2_EXIT_RATE_CHANGE
 in calibration
Message-ID: <20220926181800.GA1612559@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926115038.24727-9-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_111805_319592_443526A8 
X-CRM114-Status: GOOD (  10.87  )
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

On Mon, Sep 26, 2022 at 05:20:37PM +0530, Vidya Sagar wrote:
> Set ENABLE_L2_EXIT_RATE_CHANGE to request UPHY PLL rate change to Gen1
> during initialization. This helps in the below surprise down cases,
>   - Surprise down happens at Gen3/Gen4 link speed
>   - Surprise down happens and external REFCLK is cut off which causes
> UPHY PLL rate to deviate to an invalid rate
> 
> ENABLE_L2_EXIT_RATE_CHANGE needs to be set to bring the UPHY PLL rate
> back to Gen1 during controller initialization for the link up.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Reported-by: kernel test robot <lkp@intel.com>

I doubt the kernel test robot reported the issue being fixed by this
patch.  More likely it reported a syntax or similar issue in v1, and I
think the "reported-by" tag is meaningless in cases like that.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
