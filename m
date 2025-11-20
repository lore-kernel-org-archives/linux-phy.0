Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 342ECCF9C73
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 17:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMaqsnjf80akXRs8MY6cegBOjIaxwr2mPeo/02eGpyo=; b=l0L2woh6MJ4Cuk
	GTF0H2RXnDpqXrpO0aeTPh2XAyuCWXATZ0Wbvfy1bcCJ8y5PR+UMl3rfUw+7BMabFfR822GWSSyrV
	vdCsaKa1fukv6BvcNR48NKpfKlXy6nmhEeCeDNHZ7+IibTQdVbyMjnECWSefS95gN26/zYrMS3F+L
	ccohXCTQZ63fBYJOPfB4mCsDLGQjEDUxB8blLoTkLBv6BW+5XNmt5WtuXcZYuPtBtwGeqiTmMQ3pW
	l/hdFo7A7Jp1iCek+wSLAF5TS19F/+ezsP+anRHUucOJMnlKt7Z6plOcm/wYopx0Dqvvw6bwXpany
	u4mWJfI3M8kADg497+BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C4-0000000744j-3xZl;
	Thu, 20 Nov 2025 17:11:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8C0-0000000742M-0fKP
	for linux-phy@lists.infradead.org;
	Thu, 20 Nov 2025 17:11:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 927E4601EF;
	Thu, 20 Nov 2025 17:11:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E92EC116C6;
	Thu, 20 Nov 2025 17:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658695;
	bh=5wzxcrvaGv7atXkrXN0bTcUzJ7kZ+lrRO/axNUDhPZs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ib+c8rVwYpC7/0y/ecf7L6ifkoJNECXqkp4IPKJdaA1QOfDrYCGMV57LIhXktOBlL
	 +gy7JLJo32O9x+5N05aHEjO1YD6n7DhQlWrekY1RRZ4VD+0tXUNyT7c5HMfizGIETl
	 lTwW2U8+/Hu/JNfTVc0mMSQtpDKEu/2nxSyeDYnVxOab8uw87WffcPM9nJkG4Y5F4n
	 F3WftcpJc7OzIH1UB+GGDDXKoOvnymwxbAf0veH4I1aeGMHp7lNZ2DRibXnNzrF9N8
	 ZwC2+p8n50AgDh/m1r0BBOP3LuhbSwq8NcKOlXe91MupXI1nrr6e/Xrmoq0M+figlo
	 waMvlbd3JpD8w==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be, 
 magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, 
 biju.das.jz@bp.renesas.com, Claudiu <claudiu.beznea@tuxon.dev>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: (subset) [PATCH v8 0/7] Add initial USB support for the
 Renesas RZ/G3S SoC
Message-Id: <176365869114.207696.6136305677225848114.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:31 +0530
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


On Thu, 23 Oct 2025 16:58:03 +0300, Claudiu wrote:
> Series adds initial USB support for the Renesas RZ/G3S SoC.
> 
> Series is split as follows:
> - patches 1-2/7		- fixes on bindings and driver for USB PHY
> - patches 3-5/7		- updates the rzg2l-usbphy-ctrl driver and documentation
> 			  with support for setting PWRRDY though SYSC
> - patches 6-7/7		- add device tree support
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: renesas,usb2-phy: Mark resets as required for RZ/G3S
      commit: bc6f8b756c89d831c91a65ef9f3b5ceabdbae441
[2/7] phy: renesas: rcar-gen3-usb2: Fix an error handling path in rcar_gen3_phy_usb2_probe()
      commit: 662bb179d3381c7c069e44bb177396bcaee31cc8

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
