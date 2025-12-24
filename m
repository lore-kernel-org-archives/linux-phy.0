Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CBD7E74ADE
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 07:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFeqF0oMEI54/eVnMMpuT11+W1CY8fVs6PDwNbwCjP4=; b=jDI7obLlnnLr2y
	wW5XXZ4qHjlt+75l+JMZMH/R15UOThewJQHXVACkf7nCl7sNys1MdJpwPUFjjk0A+UHMBgMWmrGgs
	rOh71IJBa9/s0/Tn66vt4RiEs6tgDhQ+zERG47sWfW+1jKI2FOgA8GSizFBhDTM/7Nsnxz547M/l5
	57KQmcYER6gvLJjsisG7IpCraFaEpdlzuTeqa0jG+gbXui/tPYDJu7/SOLqp2NdTwZxQ9oWPPw/7W
	J46S/wW3Wjv+SWTzrtl9YyaWcrzZvswflDsqsPvq03Ef3/uuWrf94OKw0I1fLuT1sJ9T9Rtp0QqFO
	K/ZkduagV5wO4iJqfqog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJMB-0000000GXxe-3EYW;
	Wed, 24 Dec 2025 07:32:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYJM9-0000000GXxH-36yN
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 07:32:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 323F943B3A;
	Wed, 24 Dec 2025 07:32:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 678C9C4CEFB;
	Wed, 24 Dec 2025 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766561545;
	bh=BR3UWpciDbuo91EGSVtusYswTqy1wClc4k6RyWd0jvg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=LiaG+Qoz5X1OPzwDsdbFvgnHLJBWWMGiPSGKdq1x78zDMF+QKnTJLMtgcPUpdTuTT
	 QR0DcecR1H5j0iRRNtUhphFTuLpztG0BSvUrow/Piniy5RZlmoBfF5RSuaNYhWyXCq
	 6f35jsOL8x5cjE0V0Iz326M55GHEoFI+n8ktx/qZflvd/K4SSmdnpg8UaamIEZCdj+
	 Giw1zQ47/QD/ins8EsJGNrP1kaIpChq0pOMnqe2x8GqIcd9Z30KsqVhF4ZEN6hW10d
	 lp/9K2G53neN1yX6gScythcYH/jLheWkGb+mlSfOqMXYacC9LvrkOk1PpWV79q7sGn
	 7zVkD+fEqMuDw==
From: Vinod Koul <vkoul@kernel.org>
To: jckuo@nvidia.com, kishon@kernel.org, thierry.reding@gmail.com, 
 jonathanh@nvidia.com, Wayne Chang <waynec@nvidia.com>
Cc: haotienh@nvidia.com, linux-phy@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20251212032116.768307-1-waynec@nvidia.com>
References: <20251212032116.768307-1-waynec@nvidia.com>
Subject: Re: [PATCH 1/1] phy: tegra: xusb: Explicitly configure
 HS_DISCON_LEVEL to 0x7
Message-Id: <176656154202.817702.8391206381480779242.b4-ty@kernel.org>
Date: Wed, 24 Dec 2025 13:02:22 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_233225_804378_EA6141C3 
X-CRM114-Status: UNSURE (   4.68  )
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


On Fri, 12 Dec 2025 11:21:16 +0800, Wayne Chang wrote:
> The USB2 Bias Pad Control register manages analog parameters for signal
> detection. Previously, the HS_DISCON_LEVEL relied on hardware reset
> values, which may lead to the detection failure.
> 
> Explicitly configure HS_DISCON_LEVEL to 0x7. This ensures the disconnect
> threshold is sufficient to guarantee reliable detection.
> 
> [...]

Applied, thanks!

[1/1] phy: tegra: xusb: Explicitly configure HS_DISCON_LEVEL to 0x7
      commit: b246caa68037aa495390a60d080acaeb84f45fff

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
