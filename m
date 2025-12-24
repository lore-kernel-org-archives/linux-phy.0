Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0E67E78491
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Axc0ICoKpAebDbb0RGUzvl0Df2IKc7cX3ZslEkvqvng=; b=R7vfDJS5oOtrt7
	LzIm4MzyGp+1cYnXWJu+Xk4xx57TWnODz+PI6Po6DNyqnSwPaO+QYWgd9xRytVdGrOSMOkqixOvAH
	Oz1w2UYtn2G0/sUuvCqWmwVJfaViFRDPk5qgUOUDKMSpP7XY1j989hzaf3XcpUIfIEJ/GccpLyrLr
	/KGrGmf1R/uFMbOmGU8e1D8soudyHoH02IVQrAOSLQZm8PcmZgEMBSvAorhSbagUzWhGj57ZXEvKZ
	GRoRkSDbdf8ZK1SU7yz6Mht3cvH3bRncXplO76a0HGNlzhB4FiANfP6+vvAlrft+6GIjj+OiXjGV4
	G26Njcfu56wGc43PGz1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYWnp-0000000HQsX-0qhx;
	Wed, 24 Dec 2025 21:53:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYWnk-0000000HQs6-2ZZ0;
	Wed, 24 Dec 2025 21:53:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 94C4960010;
	Wed, 24 Dec 2025 21:53:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 154BDC4CEF7;
	Wed, 24 Dec 2025 21:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766613227;
	bh=jBtUeNJRO+RbhNPQJjWLbiBQiPsGJ9VvONJQVLV0Q1c=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=C7KSL8HLRTy1Rk1rIfQkwTEDk+GAA7eqse4JiJ11JBbVPOp9zcd+4E+g3RRAUbTs4
	 KinvoQ/FKT32X7ZJqskw6uFUnCH0qXEATSskCo7yhDmKB7Hm5uHr/XBb8jY2q5K0ck
	 jSyXCbdZO5E2aetjKXi/ns+jPd1X1ZpQr6og2NXOYv0RGZuBp0X4SeEf3B0TAatLnS
	 vMzH9uvgjAv+1qTEY3KS/4SuX9KN/B70QJ6ix/RhVGURosukgDjftpbxLO6g2WBCjS
	 gtOJesCpyd1vP8p1pVqS2UqZuOUAt8f4toWDUdbha5uTIJD/a17dQ2JKVFPXHvtv5g
	 uKeORvnnmAZyw==
MIME-Version: 1.0
In-Reply-To: <176656156358.817806.16966474957670370356.b4-ty@kernel.org>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com> <176656156358.817806.16966474957670370356.b4-ty@kernel.org>
Subject: Re: [PATCH v3 0/9] phy: convert from clk round_rate() to determine_rate()
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Brian Masney <bmasney@redhat.com>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Maxime Ripard <mripard@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>
Date: Wed, 24 Dec 2025 11:53:43 -1000
Message-ID: <176661322399.4169.14248756511703978007@lazor>
User-Agent: alot/0.11
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

Quoting Vinod Koul (2025-12-23 21:32:43)
> 
> Applied, thanks!
> 

Thanks Vinod! Can you provide a tag or immutable branch so I can remove
round rate from the clk core in linux-next?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
