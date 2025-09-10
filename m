Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4E3BCA0FED
	for <linux-phy@archiver.kernel.org>; Wed, 10 Sep 2025 16:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRzgTm5FIRwoqXaUpvqGLwy99re+5twQmA19LAHuy1k=; b=4JdHT6sxQUCw7Y
	h7MMyS2YktUMTVuDgd19V3+7c4d/ZEMoXH3etMluQadaheHm/r6NJLSf2CIVLgvdq3wH8wqTeng6y
	ijZDENiFmwbPR8zGTf6/0HQ2S7eVOypVYU7wSFzsxK0/yS9hfm7yTBLUQP+wl+l79sClGaatOxyPO
	Cjz8ZS8i9PnSO9x5m5m4YoZIvC6iyu7KfuqTPAlE7MO8mjj+cohQbeUSTHOhzH/wn91VZkKvVVzB8
	4BgQcfnLcotpNXFDzeJROPdC2BzYGnMxBb8ypN9ojmYGqc2K8oZKfpVv8SBcKKoaCDAB0j8ZIDFUf
	8s1G8QTrZg+ARQE2s4ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwNyd-0000000FauP-1ujm;
	Wed, 10 Sep 2025 16:47:23 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwNya-0000000Fas1-2Efs
	for linux-phy@lists.infradead.org;
	Wed, 10 Sep 2025 16:47:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DE442442E9;
	Wed, 10 Sep 2025 16:47:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F6F0C4CEEB;
	Wed, 10 Sep 2025 16:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757522839;
	bh=Z+t15aECbrtdH0Qhho1BJCHW5HvMZbzNXsR5fDu8BLk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ad5ItL8iQA7wSTwPPslRKE0/JwJ2f3sAcvYtIZY22KrHwqJtmvleXhLbbZUE52KOl
	 B2D8en1oqLsdUApzNcGYPUVt5cBXCSBggG7ZKva1kq81KpSsYPEcrVy7PObmdM1mwn
	 FYlWF6AelK+NgR/Y2PcWWv5pPUmfUPKmOC2BSId7Hn/yQU4I9fEMEx9tIGU3GKvVH5
	 XWisX+aA9WSSbCP5iUU0LLVbo7Dp2J0nbS23FdglxeoVIyWJByL0iEczAXwBmZDWrX
	 07T3OV9DVha5ThXcNErQOJWSDbnvVvU0+e2VB8CSsm43/cAKIPDV5/B9bxn0qQGWj/
	 fjJi8dR2qASBg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Devarsh Thakkar <devarsht@ti.com>
Cc: aradhya.bhatia@linux.dev, s-jain1@ti.com, r-donadkar@ti.com, 
 tomi.valkeinen@ideasonboard.com, j-choudhary@ti.com, a0512644@ti.com
In-Reply-To: <20250704125915.1224738-1-devarsht@ti.com>
References: <20250704125915.1224738-1-devarsht@ti.com>
Subject: Re: [PATCH v4 0/2] Fix PLL lock timeout and calibration wait time
Message-Id: <175752283611.484319.1968162513387724056.b4-ty@kernel.org>
Date: Wed, 10 Sep 2025 22:17:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_094720_596795_E8E6EB59 
X-CRM114-Status: UNSURE (   7.03  )
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


On Fri, 04 Jul 2025 18:29:13 +0530, Devarsh Thakkar wrote:
> This fixes PLL lockup and O_CMN_READY timeout by moving the polling
> function after common state machine gets enabled. Also fix the
> calibration wait time to optimize the polling time.
> 
> NOTE: This needs to be applied on top of
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-4-862c841dbe02@ideasonboard.com/
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-5-862c841dbe02@ideasonboard.com/
>   from the series:
>   https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02@ideasonboard.com/
> 
> [...]

Applied, thanks!

[1/2] phy: cadence: cdns-dphy: Fix PLL lock and O_CMN_READY polling
      commit: 284fb19a3ffb1083c3ad9c00d29749d09dddb99c
[2/2] phy: cadence: cdns-dphy: Update calibration wait time for startup state machine
      commit: 2c27aaee934a1b5229152fe33a14f1fdf50da143

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
