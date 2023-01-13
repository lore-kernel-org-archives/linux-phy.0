Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7404EC3DA78
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 17:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/sAsZGbwib7CjV7W/4lyF/W2dCKF+Hhv57eqWBVmDE=; b=CmahqGtT8N9p4O
	sasq4zMf77mfCwHwSJJj1x/HjkOGp9tYKcDq1Bk99ghYl7Hu92eYIBQ0GUJ21VdCKd+LkE+7vT1gv
	t3vZsLKrpnfoWWBZIIsVOITC9joNx9hTn8nwYeE/VnILXjqkrk2km7MH4TxpEPgR3N0E0DlT5k+1M
	qOxxVhzGlmWbuglrRTNAW6snndoFgrZ7TS3NNlgEK4h66ZfW3ZZMCoKS/FRY87bHBY1uotjdYd77e
	frs3GoE+NnRy4SPemwbDMawytxFS8ZsbHiUnU1RCSceS7FnPWPB/jKHyP7TzwiFiRNKd22a4LtuxS
	dsz5KBLqk9x+8CtZFzSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOCV-003u3S-Tj; Fri, 13 Jan 2023 17:50:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGOCT-003u2f-GG
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 17:50:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C16CB622C7;
	Fri, 13 Jan 2023 17:50:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ACF4C433D2;
	Fri, 13 Jan 2023 17:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632244;
	bh=FnagUZgEXRRDYaf933HETSbfnBBpYz3V+x3ryh1PkNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s9ur/ScPWVnRwda0Bb6t8CD5FeIi4gYX3qtDc1UlRUkWZ9oQNRbaC/Dw8Yh31/ewA
	 8wK/lNjjJWsJhMDuRlPjqXuWQlBeRqj3dss6TkXDG57JS6N95VaYkkmEtE2Mut85ZN
	 TKi0xHC9u1J1q0JSAdNwZyDMt8kXbqHsqifLeyYbSJEUoiTdjewA5ceE2AIIIRe24y
	 GGa3Cci6mZGJaLz6B3qQ1zSglxBS/P8xeDRkLm17p61wL98IpT7oIpFHkzlcy+jg6W
	 zuevhmPnY2jsS80nwuYhOCtUYj4iiOqR2ZFiCt8d0OLuhL/Ppc0h8aAD1AjHMgbH8E
	 v1N+D2DrHTiWA==
Date: Fri, 13 Jan 2023 23:20:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Haotien Hsu <haotienh@nvidia.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, JC Kuo <jckuo@nvidia.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Wayne Chang <waynec@nvidia.com>, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: tegra: xusb: Support USB role default mode
Message-ID: <Y8GZ8HNASmlJgRNd@matsya>
References: <20221216042146.99307-1-haotienh@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221216042146.99307-1-haotienh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_095045_595520_8732369D 
X-CRM114-Status: UNSURE (   5.94  )
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

On 16-12-22, 12:21, Haotien Hsu wrote:
> Support role-switch-default-mode property when usb-role-switch is
> enabled.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
