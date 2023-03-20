Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F14B9C7618A
	for <linux-phy@archiver.kernel.org>; Mon, 20 Mar 2023 12:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOhZqdSxMtZ8Q9Td8mk9rhonlKoN9f2mqfDQ5xjIQvc=; b=Hir9c0WP5pn2Sz
	4HfHLFpHZygTCLtGkKR7tA1yLz7tLZoRx/yEK28+fltdzlzEfQHd4VAnAXx49fjEyorCYt8IJwykz
	VEJ3pNBwHaNqEXk+OU8gUipWyV0icqrZV8nm6G5P03kdaM3qbqmleqo37fPWNVx53YD664Npz4fpA
	641j3iV9HvJpgTJgbjZkX/4G4ni1QKehqokHS1V8tOLLCntTeqzLD1jVnKfUoaQyezlNodC8IBgbx
	s96uP0++NbBw1D/IOSgbfDyJ2MruUvPaIwL5iKyATrDXNtKT5m46bxw8IC/dQomljFhbTcj+Zx09l
	naAGWnltwIfICY7vXw/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peEWH-008xQu-1m;
	Mon, 20 Mar 2023 12:21:45 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peEWE-008xPn-38
	for linux-phy@lists.infradead.org;
	Mon, 20 Mar 2023 12:21:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 521AECE1271;
	Mon, 20 Mar 2023 12:21:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBD20C433D2;
	Mon, 20 Mar 2023 12:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679314893;
	bh=BM50t43smgKoQ+Sf/G6qQpUQUjic7BRN6eiJg+AcMxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AeU0KW03fFg3jRTUWxGykUPb8UVwi9GUGr+mf2lVysZcu9U9zUWRCadeBWzmxEqP2
	 k1tU1fRbsoJ1GbWSl+qa1VN6s09vkQn6CU+qr22EVf1nyYVi2No+4rVoaTqj45sVDe
	 CcqdKXi/JhASFgSNx5aRCqb2fGuo2tcpC3t750gon+fiNElubbJ5ybpTeqKTyFUDBZ
	 roIj+RyGP54zb/3Xnb+Kg2JOeNgBW/fckFyIXnJ2TYNmyrbWG6FtZ+5lII543UyHEG
	 EkSIt6eobNtosYpO0EWEW8JPB04DEvkAt6ebo+ayv78LpA9T6RlXdzdCQTnS02PjuG
	 kd0yw8gfQsM4Q==
Date: Mon, 20 Mar 2023 17:51:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, JC Kuo <jckuo@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	Henry Lin <henryl@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Support sleepwalk for Tegra234
Message-ID: <ZBhPyLzY3leLKbFL@matsya>
References: <20230309061708.4156383-1-haotienh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230309061708.4156383-1-haotienh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_052143_176270_A85BC92A 
X-CRM114-Status: UNSURE (   6.46  )
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

On 09-03-23, 14:17, Haotien Hsu wrote:
> From: Henry Lin <henryl@nvidia.com>
> 
> Add new registers programming in sleepwalk sequence for Tegra234:
> MASTER_ENABLE_A/B/C/D in XUSB_AO_UTMIP_SLEEPWALK.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
