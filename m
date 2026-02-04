Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8193E9D3FB
	for <linux-phy@archiver.kernel.org>; Wed,  4 Feb 2026 15:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yJN41yyF62cqIIpv82NgQTWcZv/VoO7FtiY07hD+FPk=; b=dwQPHjAr7Nsvxw
	XkB6NkOrjSSz+01BJwCQORBfvTEd3S4W5THk0vLNkEE7LcT15Bnmv3nlzNbt10LSfXzU9HSee3VpY
	BLnCSzSxY0WFG0I+dP2eGTRoywZJ8SOgXNvt4+ndanlup34Q/ZFUGAVZhMfnbr9ik76XsXUachhJ+
	n4sRFR4n8TbZANwPwwBJnjFMfaUTa+PlOfB0RJggmWn6SLy55926dMq2XXQCH6UO3J4PFFuo7UTYs
	UTbs6NDfP/iLzt0TnGr2Nl3y7MbZfjL5jY1jKOmgH2BiaHcftqMRD8tqdYgi+nhxAPeljWErVf1Ha
	DKf8ijNY8YDiT355segQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf3A-00000008gwL-21Nl;
	Wed, 04 Feb 2026 15:44:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnf37-00000008gvP-3VNe
	for linux-phy@lists.infradead.org;
	Wed, 04 Feb 2026 15:44:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 236124448C;
	Wed,  4 Feb 2026 15:44:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CE9AC116C6;
	Wed,  4 Feb 2026 15:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770219853;
	bh=LNU3tzQY4or7VrdVr1sb9TPpZUlYzq+UaZCdPgaa9Fo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AxnY9iKxV5L6gqsFIZTXONsrN+d6zJ3JEsSFVFSLELFpBRXUmDuBfU1q+S1zOTnUT
	 C7s/xgea/1cqml8bJ6DZczwL7w+52XmE4iKPeQWyNH7A94jwhw9pL++Exl9bGvVpmU
	 KxVa8y63JTMzCiJb4TW9isJevF2anKqs1B3IoAGWrPsIBMl/b5yCbJRe6xTI7yRAdP
	 A2bIjgkFrGKWvfl0XFYTNbpOERozRyFT0+NoGID8VnrHSqCrpvXiE7CCAT0K4t3Yss
	 lVHsgkamru42DI4r1j4N7tuukI6MWyp+xgxaOknl7ELkdV04hYs6vdUromhFcENdfr
	 Nu8x2cdqoCGlg==
From: Vinod Koul <vkoul@kernel.org>
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Biju Das <biju.das.jz@bp.renesas.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260202095118.1233046-1-arnd@kernel.org>
References: <20260202095118.1233046-1-arnd@kernel.org>
Subject: Re: [PATCH] phy: renesas: rcar-gen3-usb2: add regulator dependency
Message-Id: <177021985074.133434.6732550091543283691.b4-ty@kernel.org>
Date: Wed, 04 Feb 2026 21:14:10 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_074413_913999_4558862A 
X-CRM114-Status: UNSURE (   6.71  )
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


On Mon, 02 Feb 2026 10:51:14 +0100, Arnd Bergmann wrote:
> The driver start registering a regulator, but can still be
> enabled even when it is unable to call into the regulator
> subsystem:
> 
> aarch64-linux-ld: drivers/phy/renesas/phy-rcar-gen3-usb2.o: in function `rcar_gen3_phy_usb2_probe':
> phy-rcar-gen3-usb2.c:(.text+0x2884): undefined reference to `devm_regulator_register'
> 
> [...]

Applied, thanks!

[1/1] phy: renesas: rcar-gen3-usb2: add regulator dependency
      commit: 3a03a0e47cf2e0ec7ce7ca9e0bf4c59ec537ad09

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
