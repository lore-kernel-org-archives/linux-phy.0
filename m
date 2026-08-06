Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF1CEC56205
	for <linux-phy@archiver.kernel.org>; Thu,  6 Aug 2026 16:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRD38o28NnNPAWYNyLPCcDNVqyduTTf59H5iVmKkdFU=; b=MalD+zC62HT99e
	f5exJ80y7LoZdHk1k0XV/gNI+nDtwY2KDaIuPr9c5IGDDrOAp9vSU9QujPBuRxkHHN7UK7XcKWnHz
	/mjY1xzW2fSVQNl9YIByZpRXBfl1Je96BV7ew0rGXQAfZBlceIwp3a3nl63CXWnQtNfmhb3fLnM9d
	sOBrN+TDn5zs44PzVmAkLq0NR7RfxD84Ec8jUQxR9fIkx6ysDRpsOcyc5Z0sFfn4jk5LUFaNaFf0+
	HBBYSdKqsSdoanU8Zk+jMWnNxpSuQhV3WfoYT77q9W2AQaB+XKJSuNWCSYA2A4Fy5XHheeNV0Omgv
	tMnID7YwnUbucpz/bEwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0v9-00000006Ckg-2uWw;
	Thu, 06 Aug 2026 16:26:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0v8-00000006Cka-2WwD
	for linux-phy@lists.infradead.org;
	Thu, 06 Aug 2026 16:26:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 07BC540F05;
	Thu,  6 Aug 2026 16:26:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34D0C1F000E9;
	Thu,  6 Aug 2026 16:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786033573;
	bh=FKkPZaVYoltg/L8op3kBjttnUeSwREqYX0CaIydI8ow=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Yo1YvEtlsSycfv4PyQF/qZI7okNOuWjDJ4W4tB3NbkJALUqICb3yHIaoxuxpo3ZEU
	 DiPf8Kk9ydFEK5BRVNVo3c4hKYCKIcuZUr4jnZQTp7mBo0NxCSnl++Tfnl0cnxeLfI
	 /CHdZ4c5LGB/UNEvZHM5ALOHiqzLdY/W7JrWJpVL2jc6QMYRSbHHvj3jrPD8LSzuaE
	 a54ehei8mxy/pLchdt5QJbqQQW22uWWpo8JdR56ldN5yWolP5hRvtNlSQqtsdBGp4k
	 Qzqu8TbWgdoZxZYbX41RBlxg/QP3knQhX/45Mw3UpNG3HiCGVN5InNKk6l/f6oPiSi
	 sHmciL2c0GLwA==
From: Vinod Koul <vkoul@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Bartosz Golaszewski <brgl@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Magnus Damm <magnus.damm@gmail.com>, Biju <biju.das.au@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
References: <20260806102236.149159-1-biju.das.jz@bp.renesas.com>
Subject: Re: (subset) [PATCH v6 00/10] Add RZ/G3L USB2.0 host support
Message-Id: <178603356779.674490.693458204654739135.b4-ty@kernel.org>
Date: Thu, 06 Aug 2026 21:56:07 +0530
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


On Thu, 06 Aug 2026 11:22:19 +0100, Biju wrote:
> This patch series aims to add USB2.0 host support for the RZ/G3L SMARC
> EVK. The RZ/G3L USB PHY block is similar to RZ/G3S, but each port
> has an OTG controller, unlike RZ/G3S, which has an OTG controller only on
> port 1. This series migrates regulator driver to use id-table so there
> is hard dependency between reset driver and regulator driver.
> 
> Merge strategy:
>   An Ack/Rb tag from Regulator Maintainer for patch#1 and #5.
>   Patch #1,#2,#3,#4,#5 - Reset subsystem
>   Patch #5,#6,#7 - PHY subsystem
>   Patch #8,#9 - Renesas SoC
> 
> [...]

Applied, thanks!

[06/10] dt-bindings: phy: renesas,usb2-phy: Document RZ/G3L PHY bindings
        commit: e6c3be558da06062a6a6fcbb8d33986832db3d60
[07/10] phy: renesas: phy-rcar-gen3-usb2: Add RZ/G3L support
        commit: 881f6b6f4ccdbdd6b856a574445694bb1f56d79e
[08/10] phy: renesas: phy-rcar-gen3-usb2: Fix devm action registration for disabled VBUS regulator
        commit: 49c9b71b45081e5e5eeb507a2d6edb80d332dc59

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
