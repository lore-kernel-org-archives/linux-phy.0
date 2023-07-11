Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92599EB64DC
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 11:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hcCDibbQXW5ydEzVSQ29HxEWs16Oc+FdXOpMlI9Mtl0=; b=eD3/mlogUwq3QK
	XkJvLTBD9ALesZTgMGGrCL3LmGzRHjpEFcNoCuCx8Vo9CiNIIPJsbRM+u8J+fENFB1Z0hqzmPaQJ+
	DDEfZSLVS3xEFkzBupM3r9K6ena6v+Il3tvI30SKn9JPwyWNAQhCVXTsg38QM9eWmyqqS9Fsa7pC5
	Y5bOvSwZDPiq12Rzqg10LoQZeXFdii3qDspsJaWJo+WZcGl9nDxGJ6CoZmJkRycDI1VhXvH9Szmzm
	6nLkmoAqf64cnTxJgYgSwlocZnUuyd4FADr9WKJAp6OxR/XCFYc8/E/jdj+CQ9pbbT+b21EqESz3T
	6RN8W83fPH3Y7ps2lmuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUt-00ElBG-0c;
	Tue, 11 Jul 2023 11:25:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJBUq-00ElAB-2Q;
	Tue, 11 Jul 2023 11:25:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 48BF461483;
	Tue, 11 Jul 2023 11:25:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A945C433C8;
	Tue, 11 Jul 2023 11:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689074731;
	bh=tl42imHbEy3iWRjfOyFYAww8EzIJLYW3adn6yI+iI5A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pdLMUjBBFpHSm+6DzrqywRJmyFzvfBynyUZGFV8/mI/kjC4/YD9N5IMv08JrPjqKo
	 qHcmW8M4c6HQgZ4wb/o0ssNqQiR5Fim4HIPxsKWSa74WKkKaGDt2ocdtwakBe0E24D
	 kujpBoanjjoA8/wpp/WUIGfE9ZsiovIgJYeIy5aXqXNra7ua3+in9vF7FZC2a0zdVo
	 HMkrCeXynIPSpbYY+UMgj7gz9nwDdjom7uNGfqF4iQ0ZxCniJFXPUVXt7W9xLpcdou
	 grIk7g//vtph81R8BMlkLyF490ia1Na+q96mcsHi645h0E/McQxaMGdBLvrgrQRovK
	 4Knalx9Lbl5tg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
Subject: Re: [PATCH v4 0/6] Support more HDMI modes on RK3228/RK3328
Message-Id: <168907472889.198426.9725171817617360411.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 16:55:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_042532_831900_A52C0EED 
X-CRM114-Status: GOOD (  10.74  )
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


On Thu, 15 Jun 2023 17:10:15 +0000, Jonas Karlman wrote:
> This is a revival of a 3+ year old series that never got picked up,
> it contains fixes and adds support for more HDMI modes on RK3228/RK3328.
> 
> This v4 series contains the original v2/v3 patches targeting the inno
> hdmi phy driver, the last patch that adds support for more HDMI modes
> has been replaced with a new patch from Alex Bee.
> 
> [...]

Applied, thanks!

[1/6] phy/rockchip: inno-hdmi: use correct vco_div_5 macro on rk3328
      commit: b98121a164bf4cc27dbf8a9cffd9f9e1b36dd9af
[2/6] phy/rockchip: inno-hdmi: round fractal pixclock in rk3328 recalc_rate
      commit: 8d2b1b97536d471ffce3f906146038dcf321ca39
[3/6] phy/rockchip: inno-hdmi: remove unused no_c from rk3328 recalc_rate
      commit: de25702be8fb7b822ae509e9d75413ed637cd2eb
[4/6] phy/rockchip: inno-hdmi: do not power on rk3328 post pll on reg write
      commit: a52df75a83e8fc322ab9383aeb4945329f9069b4
[5/6] phy/rockchip: inno-hdmi: force set_rate on power_on
      commit: 5bfc7c86bc45978f848f08fc483f57d4ecb5ebd4
[6/6] phy/rockchip: inno-hdmi: add more supported pre-pll rates
      commit: 35e7d0e3e1fa7ff94a9f82ea643d12b5c8099040

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
