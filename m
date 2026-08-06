Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5554BC56208
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DpQz7vbduB/b46vZ7o34YaIbPfsI5L4ZZAHMqez9dw=; b=tNII80b/mNXtok
	XFwbtGOU9PgiLYjKnQ4++dOhIYkZL7QLfX9BxZqa/RphqBP5F0jfw0HvIJ7su3oFs9gUbcO3Du8sg
	8MrKPOJPwE3VZKkZlIcub3GRzdi2bAtpSqyMGWSMC05t80vL/UmhWw2lXbhbRRqFN4QY1a0YfGbqR
	Oev3sXWtlIXlJ9yrzGuK0MH1ecz7NIp0KusCrDzD+bMhGRbK4pq0w423hNWoMpYwx3i16ZBZbQv4I
	tsPpbMkLRVg5WGgAsLQq23ZtgdStogwqFHL/9fjbIG0SFjrWsV7k0APPWdLAfLvCrKFC4cp216uq/
	P5zMGA7Fb0I52XawMhNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vS-00000006CpD-0Inu;
	Thu, 06 Aug 2026 16:26:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0vQ-00000006Coc-45hF;
	Thu, 06 Aug 2026 16:26:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 00F3B60DBB;
	Thu,  6 Aug 2026 16:26:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 561361F00A3A;
	Thu,  6 Aug 2026 16:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033591;
	bh=hD0bHzpZasfcL38d5d9W31p3gaknBWPj0YJDakcdYjc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=edRoiQNrUGuoHhuPWLn2rm2pKovdkhPVwVR7yuoTp9BAqAjio8nut1f4pj0S76gd6
	 p/CgqmVaEChePAr0pf4RnkHvLGWm2ure/PNSBtKAkHrtl7bq+LxG/U0zsi77pzgw/0
	 gu3qUak9paYt7JRI/jjYCl4NnbVeOkd4aB8i9yH1PBHJa4gLIMPx/36Q39ezJujk35
	 XDmY4YX0XaawZGejnHYHFckp76wmMunxYAgddlIOnyyOndKRGou/8tLfX49kNyGdug
	 3qQ5/W1cE/BskXKcdaLB/8wUbmWximsPiA3ifFuxHbc3QMnK5gd/2BrNDwK2S2djps
	 UJGw5pB3E2i3w==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260725-feature-mipi-csi-dphy-4k60-v4-0-5b2c4626d31e@wolfvision.net>
References: <20260725-feature-mipi-csi-dphy-4k60-v4-0-5b2c4626d31e@wolfvision.net>
Subject: Re: [PATCH v4 0/3] phy: rockchip: inno-csidphy: fix 2500 Mbps
 support and add clock lane phase tuning
Message-Id: <178603358793.674490.17206086804451771679.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:27 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Sat, 25 Jul 2026 18:56:02 +0200, Gerald Loacker wrote:
> This series fixes and extends the Rockchip Innosilicon CSI D-PHY driver
> to support data rates up to 2500 Mbps and adds optional board-specific
> clock lane phase tuning for signal integrity.
> 
> Patch 1 fixes an off-by-one error in the rk1808 hsfreq range table:
> the final entry was capped at 2499 Mbps, causing a rejection of the
> maximum supported rate of 2500 Mbps.
> 
> [...]

Applied, thanks!

[1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix rk1808 hsfreq table
      commit: 4fae43e33a7c10951fbdc6baf409d51bd66aaefb
[2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add rockchip,clk-lane-phase property
      commit: f82ff8609f582ca5105e45f18dfc3e949dfeaef1
[3/3] phy: rockchip: phy-rockchip-inno-csidphy: add clock lane phase tuning
      commit: 333c23c31696dbddd7dad28e82bd34e37a67d5ff

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
