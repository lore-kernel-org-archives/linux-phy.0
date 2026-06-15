Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E222CD98DA
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jun 2026 09:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkEk7lQwBM+wnW0XpovxIwjJ6IH2p/GasHirPwkXsZY=; b=DVxEo6duZGwjPK
	e17LoEFflSUZPq/CdHcOHe0sAWm3j7kVo9L0EUO3W44HOQCnbGnwWjadIg6+SiFWEktX6tQe6Qhox
	Kt5haoqKq0Zm2gbAApoWdK05twSlXGZcwZbBH+S/EZN74l3qoHCnTxAhK7Q6kzE7e9v8mXAVGtsye
	YOQ+piJe0owChjB8F8++tKu7T7XDRd04lfEOyesAKdM8vtw2NORZW/XkVjJHodYsIBo9NS8D5LPBY
	H6/zsCHhtZXPtOqg+NDdhI/KT0q9HN4C6nBZ59op9Cik33vUnjb0H9VRz8x8Ij5US+ytvO2mtl92c
	MEkRq57ohWhYKk0FLL5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3kn-0000000DyXv-2hsn;
	Mon, 15 Jun 2026 09:37:13 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ3km-0000000DyXp-086q
	for linux-phy@lists.infradead.org;
	Mon, 15 Jun 2026 09:37:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 260096008A;
	Mon, 15 Jun 2026 09:37:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD2E1F000E9;
	Mon, 15 Jun 2026 09:37:07 +0000 (UTC)
Message-ID: <2b794049-0c44-4390-a6cd-e5bde5c5f3ca@tuxon.dev>
Date: Mon, 15 Jun 2026 12:37:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] phy: renesas: phy-rcar-gen3-usb2: Fix devm action
 registration for disabled VBUS regulator
To: Biju <biju.das.au@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Vinod Koul <vkoul@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-renesas-soc@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260612143048.317907-1-biju.das.jz@bp.renesas.com>
 <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260612143048.317907-10-biju.das.jz@bp.renesas.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi, Biju,

On 6/12/26 17:30, Biju wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
> 
> devm_regulator_get_exclusive() initialises the regulator with
> enable_count = 1, requiring the consumer to disable it before release.
> 
> Previously, the devm disable action was only registered when the
> regulator was explicitly enabled, causing the cleanup path to skip
> decrementing enable_count on device removal when the regulator was
> left disabled.
> 
> Fix this by always registering the devm disable action when the regulator
> is enabled (checked via regulator_is_enabled()), covering both the
> explicitly-enabled case and the initial state set by
> devm_regulator_get_exclusive().
> 
> This fixes WARN_ON enable count during regulator release.
> 
> Fixes: 24843404efe4 ("phy: renesas: phy-rcar-gen3-usb2: Control VBUS for RZ/G2L SoCs")
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

The approach in this patch don't solve the problem, at least on RZ/G3S. See [1] 
for logs.

I applied this patch on next-20260610:

git log --oneline -2
afe09f11d549 (HEAD) phy: renesas: phy-rcar-gen3-usb2: Fix devm action 
registration for disabled VBUS regulator
abe651837cb3 (tag: next-20260610, linux-next/master) Add linux-next specific 
files for 20260610

[1] 
https://github.com/claudiubeznea/logs/blob/2f1bab20407dfe6031385819ffeabfc4eac772bd/logs

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
