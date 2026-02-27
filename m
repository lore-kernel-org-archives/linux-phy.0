Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EFFCFEFB56
	for <linux-phy@archiver.kernel.org>; Fri, 27 Feb 2026 15:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xovFsL1NIgN+JRfONnATw1pwTB/LKJEeVr+3Z6HaJ2k=; b=tUgkQ1jMFbIm3G
	21DeIvc8Gh1csvy3SUjo786oxAaARw1rqj1HmhEq1NGO8a3pEozmFhabVfoNqB9xhCbvlL6/CghHN
	ue4ikQDQ7Q92zok8Gwhh1Oe7mZxYRw0D64A8gnWboJB7n72o1CpGxZC9xMyC+hPfxyR4lzOe3Nw1f
	8D5fwnyN+0ADrJw/iOI+SMI5DTxSKAMopQ4aYjCsr85xgqFzR2fOciEY3IQ9rv5a+zh+upS+p0QHB
	sFeo2FVKrqqY7ppq57AX8bVF3t36dJ2eOLifRXSky83HEQZzNiNilOIxumb8WTjsU3fehSIPce6sh
	z4R4ZpbdNZ4nQ+YJE8NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmE-00000008cwY-3KiB;
	Fri, 27 Feb 2026 15:29:14 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvzmC-00000008cvD-3UdA
	for linux-phy@lists.infradead.org;
	Fri, 27 Feb 2026 15:29:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7D35B43FDD;
	Fri, 27 Feb 2026 15:29:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E30A2C2BC86;
	Fri, 27 Feb 2026 15:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772206152;
	bh=RpxcksT8+PEEro2qae8uOztJSBxTYll95ZdU+oe+7Jk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=P09on4JJYk6euKx7kjQfpSYn/VZR0FYzMugkaiAIwzdhSilTsdDY4PizeSx4Yh/X+
	 MXNg791vyfQ1wO4/6gxKBgvWTWgNcDOYqt+o2X20il6/EppQC2WHbXxGPBpnOAzANO
	 4py+A5ZxLRHz2sb6SZTpvMRN3iol/S4OKplI49OjYUHMob/jpVBuu4vTHbqpGHiAev
	 ncj8RQ63bNu+UgmAyFStepdD7ArUUO5M8G22CTrZkvhMf1uUvpKs5inGGQ5J6x+fFB
	 7XSrIApq+ALfunA1/3StVLTP1caSF6xGi4yzVkRNfHQeUtLrK+aMieGBurTAqfxQZ8
	 tisyRktwFIVbA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Oltean <olteanv@gmail.com>, chunfeng.yun@mediatek.com
In-Reply-To: <20260223071032.408425-1-vkoul@kernel.org>
References: <20260223071032.408425-1-vkoul@kernel.org>
Subject: Re: [PATCH] phy: phy-mtk-tphy: Update names and format of
 kernel-doc comments
Message-Id: <177220615055.330302.14478628933264858257.b4-ty@kernel.org>
Date: Fri, 27 Feb 2026 20:59:10 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_072912_897937_785A11DC 
X-CRM114-Status: UNSURE (   4.61  )
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


On Mon, 23 Feb 2026 12:40:32 +0530, Vinod Koul wrote:
> mtk_phy_pdata documentation does not use correct tag for struct, while at
> it fix one of member wrongly documented.
> 
> Warning: drivers/phy/mediatek/phy-mtk-tphy.c:289 cannot understand function prototype: 'struct mtk_phy_pdata'
> Warning: drivers/phy/mediatek/phy-mtk-tphy.c:296 struct member 'slew_ref_clock_mhz' not described in 'mtk_phy_pdata'
> 
> 
> [...]

Applied, thanks!

[1/1] phy: phy-mtk-tphy: Update names and format of kernel-doc comments
      commit: 8d869bc943cfe5db08f5aff355b1d8d3abeda865

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
