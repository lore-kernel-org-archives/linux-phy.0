Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6959ECA0EDB
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbpcZ0fsidhlRHC/5qiIk2i9GkwDZT4HVTUtKcECmT4=; b=Nq+WC7x7xcjNM6
	7QB5o6RF04el9PoqcaJq45KkRuzy18gHPutjUJ9SSKpAWUPGvbYvlYG4odvP0nLZlxcqNJltAOj20
	vpsrziUkbrWqIZd9PTi3oW4jK9zvbjkJnEkpPeU7sBQ6gj6fe4VGfKHm27uPyBPXIusFrUB/FGSCf
	w6/YDnG6xusbK9RvS7cMOfnyCUR5T2qVJXvJDu4rjE57Fpjnhe09aSYyPLl6cKbE2cP7JXZ3mUbU2
	mJmEHGBRmJu3SLppljwDJrOUlqRbx5q0nT+QitLhnfIRblZGSWzI6SoxMui2DRNdoPWxYhicdGZFF
	Ynq3Ws/Y6rYlmeAKY6vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc8-0000000BpAc-03xD;
	Tue, 12 Aug 2025 19:24:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4H-0000000BSBi-44xi;
	Tue, 12 Aug 2025 16:41:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AB32844B9A;
	Tue, 12 Aug 2025 16:41:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57B88C4CEF1;
	Tue, 12 Aug 2025 16:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016905;
	bh=QGGDJtpzAvDGfqv7vg9yuxITaE/1e8imJeia0T1EH14=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=T/kTdtEhphOT6xszjdKktCKpnJpfZa5VEwMlu+vUa4rn37Qe7G6XfB5had/tshpCT
	 dKCJtPpwMY5mlN89kaeWEyCs2IesyHvzUj7WMcStNXTkp9KwDGuHpOjRzeUdmUkOQi
	 jeuQd/v6m8VGR9de5HDYzGXpn24NdCDY07RoaMj3IScRqWuVEyqKERtzoao+6pRdSN
	 9DhZycyPdSIwSY3WLvHPYdG/RZ/6YuPsBoB/wRIv9MRS5lrdh1bZVutkQlBME8rj3w
	 nOUm7fqbxZqxqssQ4c6Wr/W2f8t+Jhu5KLpiKcZe2TPSBD4psDFdK4MoJoNFM5Ax/M
	 kRjCYuRti3Bog==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Frank Wang <frank.wang@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Shresth Prasad <shresthprasad7@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>, 
 Jonas Karlman <jonas@kwiboo.se>, Yao Zi <ziyao@disroot.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250728102947.38984-2-ziyao@disroot.org>
References: <20250728102947.38984-2-ziyao@disroot.org>
Subject: Re: (subset) [PATCH v5 0/6] Support RK3528 variant of Rockchip
 naneng-combphy
Message-Id: <175501689991.633310.3061565953624951232.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:11:39 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_094146_033937_9E463BE2 
X-CRM114-Status: UNSURE (   7.28  )
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


On Mon, 28 Jul 2025 10:29:42 +0000, Yao Zi wrote:
> Rockchip RK3528 ships a naneng-combphy that operates in either PCIe or
> USB 3.0 mode. It has a similar control logic to previous generations of
> naneng-combphy but an apparently different register layout.
> 
> This series prepares phy-rockchip-naneng-combphy.c for variants with a
> different register layout and add RK3528 support.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: soc: rockchip: Add RK3528 pipe-phy GRF syscon
      commit: d7122636eca216ea2876baae45483d17e40a55f6
[2/6] dt-bindings: phy: rockchip: naneng-combphy: Add power-domains property
      commit: 19bb2bfdfa5dc4a912e7e5e3432290204e998ac9
[3/6] dt-bindings: phy: rockchip: naneng-combphy: Add RK3528 variant
      commit: d9e0fd60d8d44b2cabd41f5e370e9d41edffe6e9
[4/6] phy: rockchip: naneng-combphy: Add SoC prefix to register definitions
      commit: 11f1896e60f61ca1948cb7920585a79ce5254c0c
[5/6] phy: rockchip: naneng-combphy: Add RK3528 support
      commit: aee07ee1b97d9a3825e8db609a1c76157218cc59

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
