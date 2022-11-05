Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26A9BC433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 14:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JD2WvQ3vrC7QTUYx891njScJYFgdj53y1W3kqQo0B7M=; b=tGBDb1rBgH9lnT
	5BCOw8TlUacbUtAMbaA3172t5DVOBhObuGjXmfHp1gvglaeX/n8r8dUiGR9RWDQWUYk4hZuuxVy+5
	3mdY/tJX1WAIt535qno2YLZSlOBpihJk8FcCAu6cKuGLubptRAwx6jyKt9bz4O99jY544L40LKtYh
	84b20264S6MTSIHubp5AQZuEoMb26gP/lxxh5ylf8etLzc0pZ5agDCjYLqDL8XTQrB5aBH+o2QA8R
	0VBdo/soOur3rRrSQ9KB6+b6WYevoj6fF2Of0v3+9NqNVT0LYNk54I1vyocpiiu+rSk9Am1rd1BeP
	JnnRmvLgBTsW6A/U+sow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKLR-006ikz-Ip; Sat, 05 Nov 2022 14:40:25 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orKLP-006ikH-0y
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 14:40:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7F5CEB80159;
	Sat,  5 Nov 2022 14:40:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 961DEC433D6;
	Sat,  5 Nov 2022 14:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667659220;
	bh=29M2448cgOHYMEKXGsRwTgE8lDNz4UjpIrZVsELUkhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bflqU6waEXJqA6CNM09mtvnNt/MZZikccFuzmCnxFLkmYKiXy63JrPY+t+MzZ1oYb
	 OtC6+GcrwZxIoxEp0Ki+TTNKl/0CV/GJuC4ybq2IO08Q9JNNMTUprs3GgwAS3gEfEL
	 wRR8wkvsro/j4Tw00v1LhsZhbU3wvYmSzzipipcbOnL4kxLQ6cvWBfEiuGlcrD3ufY
	 SVtxrSpCKYnLNW3rerKUzP9hk4Kqrla9CB2eKcPuBXstLq+E7bffk55hgDD5ciAf4h
	 H2yRtkqw8GxU0j+v9IjCoQC4QF0FR6HVRmJwHUmgCYvtnWBsRtKMQq/VYCOaq/DHSH
	 m8pnSqQCFUjtQ==
Date: Sat, 5 Nov 2022 20:10:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, JC Kuo <jckuo@nvidia.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>
Subject: Re: [PATCH] phy: tegra: xusb: Remove usb3 supply
Message-ID: <Y2Z10EDPOwj5X2yX@matsya>
References: <20221005084031.2154251-1-haotienh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221005084031.2154251-1-haotienh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_074023_228489_32951467 
X-CRM114-Status: UNSURE (   6.32  )
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

On 05-10-22, 16:40, Haotien Hsu wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Remove redundant codes for getting the vbus supply of usb3 ports because
> we get and control the vbus supply by the companion usb2 ports

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
