Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1462C44520
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jul 2026 11:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2teZjNzEdFcUjR2a9UyP+zTE4vwyJi2Y4ybKV2ofdnM=; b=ahUuJiI2QPtWVS
	zRFLmG3eT2yvpipiEK90bUw3Fx/F08Ltm3h4fXhTuk8WNA1gaX+KSZHZwY4vVM11sQL4Im0B1rz5A
	lQqfBG4n8AGmEjX0G2l8qusJMpzkWB/gFSNkJxLjr9a4KZT56JIWJAMsZOGzwrNPxvInIOX0JpRyZ
	p/6VuD/9mYM9dXEaImoXOzSvd9m86GXz8l6HKvLAizj4cC4XVPoVTeNNMC+jZvr4SYGdC9nTKxQdd
	pavCJdXAuAwTjc10y5PWzn32YhuLo/cqdyxt7hftXkliObvYjyCQ6gbTKEQTnVkUHh0HicdFP/No6
	2ivm9arCXaPwukviu5pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmIN-00000006c9S-1Pbe;
	Mon, 20 Jul 2026 11:36:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmIM-00000006c91-0COx;
	Mon, 20 Jul 2026 11:36:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5574641ADB;
	Mon, 20 Jul 2026 11:36:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA4961F00A3D;
	Mon, 20 Jul 2026 11:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784547385;
	bh=v36e970MK+YgUbuwLDVXe5yspfmfNDBswqX60ky+hII=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=hR3tQwnjfBN2EIGsDQoz+X4UVx6Wjqmnc8SKjKcQhsrpAVIZ4EATATQa1tBxBNjJ4
	 /516ebGbb9o8t5/PjRVE4gRynVQRztTGg6bKpY0xcChyqkPdTWW+V/9uOa3Hg/J6Da
	 h4XlKtJjKoprBP+3/iL0UZIj3h6DDer2HTvcfyzGFcRqRp3c5cIq9F4IA1EgFg4+lK
	 2SmleYv2VM+rtgLxpHphsALgeDDSlMx3RzA2NI+/QgJE/MLRIOpLS7oBavRnjXx8k4
	 g5Bf+fIOp6JsTv/4tIdfE/bBh3VkH+II3K53VLKghK5nbRrxevRc2n/yELoCrWnATM
	 qamclOw8FtkLg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org
In-Reply-To: <20260714-naneng-ssc-fix-v1-1-1c40a58061ae@flipper.net>
References: <20260714-naneng-ssc-fix-v1-1-1c40a58061ae@flipper.net>
Subject: Re: (subset) [PATCH] phy: rockchip: naneng-combphy: Always
 configure SSC spread direction
Message-Id: <178454738244.1375859.4122685311138244257.b4-ty@kernel.org>
Date: Mon, 20 Jul 2026 17:06:22 +0530
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


On Tue, 14 Jul 2026 19:41:20 +0400, Alexey Charkov wrote:
> Commit 0b31f297557f ("phy: rockchip: naneng-combphy: Consolidate SSC
> configuration") moved the SSC spread spectrum direction setup into the
> new rk_combphy_common_cfg_ssc() helper. That helper returns early when
> the 'rockchip,enable-ssc' property is absent, whereas the equivalent
> RK3568_PHYREG32 direction writes previously ran unconditionally in the
> per-type switch statements, independent of whether SSC modulation was
> actually enabled.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: naneng-combphy: Always configure SSC spread direction
      commit: be2b5b17b7053fee142939076746d26b2d6c9702

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
