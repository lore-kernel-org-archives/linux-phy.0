Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F55C6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 18:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=lwJqaQOERxwaTnEfEFcNrOWARLexC9nxvtA4+1mrwDA=; b=yLIijOFnkjxInD
	0XaJiPsP2M5m4YtOylvMaJLFnw6a88g/Dn/cDRJaHquyBehX00Sn0cJs/3Q4BxKWdjSVTurFeBIc4
	j/nPFdPmOd0vGvOTHYi1R3lAxtHVfa4jfBwuu9PWvGZcVz8yvdKCmjsnFexSqTMBvwb4H4rpip5HZ
	83alNu2gSReouZ4YX6AhjX2A7d/owarCfWRUlj4V0khVRiMwWrMRwavqmgpLECkL1A5QyqKUn+caX
	JmDP6l4R3ZvWycuhvYEa4Dc08a/K8dulekOjD47dOVtvz8Mi5dEXRdt0Eaz6d9pYpk9l9a5nuVJoI
	Dq5qGvVfsEjF7pFfbiHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocseO-006F8c-7H; Mon, 26 Sep 2022 18:16:16 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocseL-006F84-UN
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 18:16:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 89B6BB80C97;
	Mon, 26 Sep 2022 18:16:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03CC1C433D6;
	Mon, 26 Sep 2022 18:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664216171;
	bh=DvgCiCK329fTQGj9gebY5EY55cLmgK8o5RPjgImGuwM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Sf95KlUwr0s3QhAzUP+UxZ7LchvJbvi8y14ND8Zw+M801b+p695Zct5qoOoOm49p2
	 kiGnHok2kLsm5U+azqJ5WsRkNLeZayKXl/8AOnEIBVhKmBSuPYRHA8oEVHqZWiExY9
	 6/Mie8DOdk0mSZskxsERxX5TR9KfNysR0AvoUxCU/o0B8390wf+XN10u5/gInHsW9p
	 IkS4vWLNPGVdjTaUfl4Tgi7OsaRffFL+mH4g7iiSshw5R3nK7yyKJHuaSsRiKxPFt3
	 TF3E9wYA3ChhQ3rRvT++MnlVMu6m5Qm6ryjbkHAW6c1s89zf38Sxaim9fQh4ol/JsG
	 uzD8G/QCdnOFQ==
Date: Mon, 26 Sep 2022 13:16:09 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Cc: lpieralisi@kernel.org, robh@kernel.org, kw@linux.com,
	bhelgaas@google.com, thierry.reding@gmail.com, jonathanh@nvidia.com,
	kishon@ti.com, vkoul@kernel.org, mani@kernel.org,
	Sergey.Semin@baikalelectronics.ru, ffclaire1224@gmail.com,
	linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	kthota@nvidia.com, mmaddireddy@nvidia.com, sagar.tv@gmail.com
Subject: Re: [PATCH V2 6/9] PCI: tegra194: Refactor LTSSM state polling on
 surprise down
Message-ID: <20220926181609.GA1612301@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220926115038.24727-7-vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_111614_151953_2F9C311D 
X-CRM114-Status: GOOD (  11.20  )
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

On Mon, Sep 26, 2022 at 05:20:35PM +0530, Vidya Sagar wrote:
> On surprise down LTSSM state transisition from L0 -> Recovery.RcvrLock ->
> Recovery.RcvrSpeed -> Gen1 Recovery.RcvrLock -> Detect.
> Recovery.RcvrLock and Recovery.RcvrSpeed time is 24 msec and 48 msec
> respectively. It takes ~96 msec to move from L0 to detect state, hence,
> increase the poll time to 120 msec. Disable the LTSSM state after it moves
> to detect to avoid LTSSM toggle between polling and detect.

s/transisition/transition/

>  		err = readl_poll_timeout_atomic(pcie->appl_base + APPL_DEBUG,
>  						data,
>  						((data &
> -						APPL_DEBUG_LTSSM_STATE_MASK) >>
> -						APPL_DEBUG_LTSSM_STATE_SHIFT) ==
> -						LTSSM_STATE_PRE_DETECT,
> -						1, LTSSM_TIMEOUT);
> +						APPL_DEBUG_LTSSM_STATE_MASK) ==
> +						LTSSM_STATE_DETECT_QUIET) ||
> +						((data &
> +						APPL_DEBUG_LTSSM_STATE_MASK) ==
> +						LTSSM_STATE_DETECT_ACT) ||
> +						((data &
> +						APPL_DEBUG_LTSSM_STATE_MASK) ==
> +						LTSSM_STATE_PRE_DETECT_QUIET) ||
> +						((data &
> +						APPL_DEBUG_LTSSM_STATE_MASK) ==
> +						LTSSM_STATE_DETECT_WAIT),
> +						LTSSM_DELAY, LTSSM_TIMEOUT);

I know we usually line up the function parameters with that opening
paren, but I think overall it would be nicer to drop a couple of the
leading tabs so these don't wrap so awkwardly.

> +	ret = readl_poll_timeout(pcie->appl_base + APPL_DEBUG, val,
> +				 ((val & APPL_DEBUG_LTSSM_STATE_MASK) ==
> +				 LTSSM_STATE_DETECT_QUIET) ||
> +				 ((val & APPL_DEBUG_LTSSM_STATE_MASK) ==
> +				 LTSSM_STATE_DETECT_ACT) ||
> +				 ((val & APPL_DEBUG_LTSSM_STATE_MASK) ==
> +				 LTSSM_STATE_PRE_DETECT_QUIET) ||
> +				 ((val & APPL_DEBUG_LTSSM_STATE_MASK) ==
> +				 LTSSM_STATE_DETECT_WAIT) ||
> +				 ((val & APPL_DEBUG_LTSSM_STATE_MASK) ==
> +				 LTSSM_STATE_L2_IDLE),
> +				 LTSSM_DELAY, LTSSM_TIMEOUT);

Ditto.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
