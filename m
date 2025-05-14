Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FE1CC3ABDE
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1yXMW6GebIg0Lzoo2YRridaapZHgUBqHlIorfrfypE=; b=Jj0wgy4QSjkdyE
	HyCPGglzmTXuLUSpul7ybIi88S0HpzHi4Fy3SpRJLsJptzMWO+o/XLQ9qZ+7uikCoC7TTCPo/K+qK
	Ea8aFVIE37Ab8O213LBYv7H/sfkAGmYcGx2qLXjFsXJjha3GBfDevwT1RZbyJ/qN1K04KEHt9DEJK
	PMqyvvrdXbfqJHEVANGgNFA8sXaZPQPsV4h86p6jvU2z+QvFYELtL6ZEwC5y9BAxbsFf9VfNH6phQ
	JTb/Q4QMLN0PaOPBygeBc2UXXP0RirKvvVPI5fGfKm2uDLWowosMaQOtyZcg/2HzM+f1op95SbM7S
	hyblNmPmD8YGIZ2KP3tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYU-0000000FICj-2gt0;
	Wed, 14 May 2025 13:53:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQE-0000000EuOY-2QHf;
	Wed, 14 May 2025 11:37:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C605560008;
	Wed, 14 May 2025 11:37:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1907C4CEE9;
	Wed, 14 May 2025 11:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222633;
	bh=t1bXaEu9EXQ94m0cdh4MSItJJeYMDzLla+FRFBaaVOA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NwpkfIl6MZt3iRQolb75+B6HpoTZyfFuUyBOU3iCCdWyF2d3ukbkHyrA8zIFib9nc
	 EOHXQ7yVKndC1xfuBDcWhVcVzOVrhwiAPM3NNJ7jzA//MeUd8ZZIcpVIDb/GFpCwED
	 pbNpd+NMu5yoxzB18tUGerttcXQ2a1yO5VC4uJGUYaiAtMf/iNa53FZ+fmxhi1HcH4
	 HBydiR7YPq5TnLsV4f26kN1qn2853JpHGEcof10JzSLaUY/ke7xyTcZKX793Z70uM6
	 SKT6RyfToz9+K5wt2nSCKVyNtoz/OwuA/7bc29ll3fokyUQg+QlfOc0fknmmeQCV6m
	 CXvTdBKQ4rgqg==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Daniel Golle <daniel@makrotopia.org>, Sean Wang <sean.wang@mediatek.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20250422132438.15735-1-linux@fw-web.de>
References: <20250422132438.15735-1-linux@fw-web.de>
Subject: Re: (subset) [PATCH v4 0/8] Add Bananapi R4 variants and add xsphy
Message-Id: <174722262951.85510.8563581978956288115.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:09 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Tue, 22 Apr 2025 15:24:23 +0200, Frank Wunderlich wrote:
> With this series i continue the mt7988/bananapi-r4 dts upstream work
> 
> changes in v4:
> - changes based on review comments in v3 (mostly bindings)
> - changed topmisc unit address to match reg
> 
> Daniel Golle (1):
>   phy: mediatek: xsphy: support type switch by pericfg
> 
> [...]

Applied, thanks!

[3/8] dt-bindings: phy: mtk-xs-phy: Add mt7988 compatible
      commit: 117d09e2830d6ff6c1bb2dc5629f972504fde51e
[4/8] dt-bindings: phy: mtk-xs-phy: support type switch by pericfg
      commit: b484b25a486962b568ada1f55c1b96dfd96b912d
[6/8] phy: mediatek: xsphy: support type switch by pericfg
      commit: f85eb659a48cc2f0c98a122e760552b69e56c06f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
