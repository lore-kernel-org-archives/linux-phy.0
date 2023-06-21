Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3595CEB64D7
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 12:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z94oj/WDwQ8CgAJ1uhaxMrZrvxQlnohXAPaNTp25bs4=; b=o4oYafRPztN7Rk
	UKCGuFZgQFXbcP5S4Mdn0DqqbaVGqbnF5UAySe7neNFOtp1gLCX7W/vW8t+V5+IrBbjTGjhH2ssWS
	X4Tbv170Y9r3gohgietFOozrxTb35vv+VICegovpQpV3nqyGxFOcMDj99IfRqzWlss6PCpOqqh34p
	GX6n+X0ZkKFLyFcAC2dRnEROP9wX5C5QDT8UQPx099qMX49v36BOkGu3KfguwMG8UU9qpvwUwcSrm
	aytM2VE2rdrnLsV9XAkgUi1Ne6xKlGrQ9TN+qCJPopp2+8OiLwdlSsLwhXNZ7pc4t2lHW/5ArF8a8
	59D09TLUvAtLLkHzsDxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwX6-00ETXn-2q;
	Wed, 21 Jun 2023 12:01:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBwX3-00ETW3-2p
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 12:01:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6855E6154C;
	Wed, 21 Jun 2023 12:01:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E40EC433C0;
	Wed, 21 Jun 2023 12:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687348912;
	bh=Zbli/nHmg0Y57wvMmEMuZ0gz0XpSicqxaFo4q834toM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V/yAGLCvaQc5LnmSglHk1VokYaWRV/9qIdTsqcQZhm7swikGI25GfzztYtjEVSt4V
	 BnS6/YJIGS2+6kP/NmRrrNQ8nzbMxu8wFv/qWwQABnfnCXu/owoLpQXz5Nt5HN7KT0
	 f+frDJMnL9rfbUrFTEDHjmi/8tSHMCur5ocfPImS5TwRQ0j3gWF0Raqz93EPD8TbTK
	 C0rPw9+JqPsp+u3TJmB9us/Y9hqYV6PPozUwW1mBKaGh0ALHyDUZZQ09ijv0nqB0Bx
	 6+ww1GKUy04D49c9RJOlLFbwRgUGtxlXhRqc7yajhdmnQxjnapeZ0vQl7yVtFVOuSa
	 jHsCuNzwZLXdA==
Date: Wed, 21 Jun 2023 17:31:48 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: JC Kuo <jckuo@nvidia.com>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org, Wayne Chang <waynec@nvidia.com>,
	EJ Hsu <ejh@nvidia.com>
Subject: Re: [PATCH v3] phy: tegra: xusb: Clear the driver reference in
 usb-phy dev
Message-ID: <ZJLmrHC/yvqmWOqG@matsya>
References: <20230609062932.3276509-1-haotienh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609062932.3276509-1-haotienh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_050153_949050_5A00E88B 
X-CRM114-Status: UNSURE (   9.49  )
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

On 09-06-23, 14:29, Haotien Hsu wrote:
> From: EJ Hsu <ejh@nvidia.com>
> 
> For the dual-role port, it will assign the phy dev to usb-phy dev and
> use the port dev driver as the dev driver of usb-phy.
> 
> When we try to destroy the port dev, it will destroy its dev driver
> as well. But we did not remove the reference from usb-phy dev. This
> might cause the use-after-free issue in KASAN.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
