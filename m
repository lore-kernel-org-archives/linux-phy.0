Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AFF3CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 16:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3r+VybTZnW9UxtWbQm0RYHVIrk6Wr176EvtyrgY5+DU=; b=NbOVPPuJbPThDJ
	2vnlKOdt+KBlIEB6GytLqtwVNcRYt3TNZsV9x8/BRA6B3+6UOFtAgJ276Biy6D/cCxSY+G/gY8E/T
	oMgQov0l7b52BOiGH6UGVc6iYgi9sklpplU0ykMIqn+MVKNsFuqqlSRgUhYTs7Qo6B878RsNFTgzH
	HOfysgi9xFXxPY7l3Kf5o8mCCfXxGlL7r/E6c8UeOpim8Y9YKa90oT8bAMum8t8JoyxPbWvfbIkst
	NkNUm5+Pu5y3CK1lP7EBTA90YPiQQU0yPlZG3Or0evjy0Kmo3io5KaOIsXdjXE8oplANvsg09y5Fm
	zCThQxg4a05ign/mkayQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmuN-0000000879A-2duk;
	Fri, 05 Apr 2024 16:59:19 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsmuK-0000000877V-3aoE
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 16:59:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E17D3CE2459;
	Fri,  5 Apr 2024 16:59:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AF4EC433F1;
	Fri,  5 Apr 2024 16:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336354;
	bh=d/B9BUVScbOGJpc3/gnx1X+oCXRIadBU2xdDvQPlLYA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lP+u2JXZ9n8HUkFq4xNM0Ac+TW30ZZYeMNJSfpYqo4IUEy4JAzMYGqerY5AW/9VWP
	 Kcd1UD3ByKFFaHpA0x1F+um1ud6Z78Q15h6CH3TXq52yZaYBYRD0x/EsypM0TflpqT
	 cDPU8kFs7QA0/ChNKfaZcMBWgYywX0zAsDzwTxnnra1rHnj9cY5PwWmTbRWWh8k7r3
	 8jTZRdMdCPVF1XicJyCuO4ET5XK8kdGhCpbgE3eiVXf0Dfx5I85nryWJSNyBY4E2f0
	 m6hnSRRZwRN1BM9/muMUrH0XdGn+Fv+nzr6aBbHDY8nvDfAaxIMocW4oTVB+LrQ1CR
	 YDXWG6in03LRA==
Date: Fri, 5 Apr 2024 22:29:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: jonathanh@nvidia.com, thierry.reding@gmail.com, jckuo@nvidia.com,
	kishon@kernel.org, gregkh@linuxfoundation.org,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] phy: tegra: xusb: Add API to retrieve the port
 number of phy
Message-ID: <ZhAt3kPzn212vAH4@matsya>
References: <20240307030328.1487748-1-waynec@nvidia.com>
 <20240307030328.1487748-2-waynec@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240307030328.1487748-2-waynec@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_095917_101839_9AF9209F 
X-CRM114-Status: UNSURE (   9.54  )
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

On 07-03-24, 11:03, Wayne Chang wrote:
> This patch introduces a new API, tegra_xusb_padctl_get_port_number,
> to the Tegra XUSB Pad Controller driver. This API is used to identify
> the USB port that is associated with a given PHY.
> 
> The function takes a PHY pointer for either a USB2 PHY or USB3 PHY as input
> and returns the corresponding port number. If the PHY pointer is invalid,
> it returns -ENODEV.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
