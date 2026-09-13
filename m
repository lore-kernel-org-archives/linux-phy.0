Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04F84C88E40
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 08:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqipCbrdO6KCnJpWIPbVO1jHvXBYB/0YZZw+vo13PFY=; b=ZTb/cfZTP7ASrT
	V3ZR10u8NKIqKGWkkXK6tynPcah5UUCkd2ew0DMrPOXQGHZF3VDxEgmHuSYoe5p8ec4kq0Bjn8B2x
	A0HJVxE3b1io+ZGjyT7CpzSHTREGMr83kNTDLEFZp0rk6dAy3KD6Q53ZIa4f+8COZHgUzvkRn21hn
	L821yic0W3qjReV2zqYo6k9ZsmSxQPXyicRmDJfX7liYUBA225vY6wXBURTFoxW2CTT0oy+aW9R4B
	xs4lJS7YxXl1ORb1/qwbkebU8NAqIBP3qdWbtEs10R164JbZZK3a5xgLu0i1o6Ecf9FZXuaLFMktM
	fisEPUIoZwPX6wAc84uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5fj0-00000001Why-1IdQ;
	Sun, 13 Sep 2026 08:38:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5fiy-00000001Whp-36r8
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 08:38:08 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D0B7560210;
	Sun, 13 Sep 2026 08:38:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A85D1F000FF;
	Sun, 13 Sep 2026 08:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789288687;
	bh=zYaObIl9eJLvHocuOdg7xLi92zre2V2kD4I8U81J+hg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oIaCJah6w5rhCJBugBBYhg/r/NVGgyOnQAYoB6rHwBxQ6G5I2wN1HYepVZKKjs0y/
	 WqHUMHc8bRb7VjN15mZd3NMCpuuXYuTmVSwg352EDoeB4loa3LHBkhSYTBeNeqLjmV
	 2dhxeJzDYLfJOR+L0bfOapugakqXI/kOqA7pjPXpGhXMR4GaXRizmO4tTYr1lP0Y1Y
	 OKu5w7QM6ZZ9X82GJz67n5sTSIMeg7ZARewHhvMMyCvqnxJ1IoWRHQA+BYmkfudPjh
	 01+zXnwxfT7hZeasAyLzT7cQg6ThsLIg7MyF47XhM0WW4+Is706TLaF4EHFSKTpVbu
	 WPT/pRi4p38mw==
Date: Sun, 13 Sep 2026 10:38:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kartik Rajput <kkartik@nvidia.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Thierry Reding <treding@nvidia.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add nvidia,tegra264-mphy
Message-ID: <20260913-elegant-banana-rooster-1b28ee@quoll>
References: <20260909-tegra264-mphy-v1-0-ce61a80dc065@nvidia.com>
 <20260909-tegra264-mphy-v1-1-ce61a80dc065@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260909-tegra264-mphy-v1-1-ce61a80dc065@nvidia.com>
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

On Wed, Sep 09, 2026 at 03:13:58PM +0530, Kartik Rajput wrote:
> Add binding for the MIPI M-PHY on NVIDIA Tegra264 SoCs. The M-PHY is
> a hardware block with two lanes, l0 and l1, used by the Tegra264 UFS
> host controller.
> 
> Signed-off-by: Kartik Rajput <kkartik@nvidia.com>
> ---
>  .../bindings/phy/nvidia,tegra264-mphy.yaml         | 108 +++++++++++++++++++++
>  include/dt-bindings/phy/nvidia,tegra264-mphy.h     |  12 +++
>  2 files changed, 120 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
