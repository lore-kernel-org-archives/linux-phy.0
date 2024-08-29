Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9321DC87FD3
	for <linux-phy@archiver.kernel.org>; Thu, 29 Aug 2024 19:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uj/4zincL+gdIZ+o6hdpl9QyyYnuau0PYZ2EcTcbCQ4=; b=E72nnk+fHdefcR
	gPSU/B+5g1BiYsx5kaH8s8SZthq3nLwfCr+1rdUP8ETynpItkiRQ143wU6KwktxSswPckhcVxE6J0
	f68136te+g7B5b2CDju7fOSanxA7g8q+B5NHeRS0EErSgLWWNbjmgEi1vZX+fO/Dygwis41t0+McC
	H7SwZ8PPUFnKxNFGG8pfcFsgevYniuu1qXE7JrvlnD19xoA8jvUNa62j2DlLHzyrC/T0ZFGFNBSgD
	iIEacLEV6fESCW66qJSGhaSuEOWSqvpJy1sJHlO/XZLysY4wF54AMUCJEwqxP2xsvV8L8bo8jHwuV
	p54dXcUFPgpj7YMuY06w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkVF-00000003Ibe-0kI0;
	Thu, 29 Aug 2024 19:08:17 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjkSs-00000003IC0-3Uul;
	Thu, 29 Aug 2024 19:05:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 19EF3A429C0;
	Thu, 29 Aug 2024 19:05:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 739B6C4CEC1;
	Thu, 29 Aug 2024 19:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724958349;
	bh=E68W6HyOr1dym1PCtA6bbg+E2MN5CuGFNKO1zy+6XgU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=t+KFAYOHefXd07XQTwKfo43Y5t5epatCYWycfyoGaHMhgTtBa46VFZc2wmxqiu3AG
	 TEu9q/aRebTyjr1wrjrZ5QWWELA/Jzk2kkvjhZvwbCHWaLetU1CLZ1VwUb7lwuzdyW
	 DldvZ8xZ5zZ5Up23ZL26K8Xg+z6cwWmuMxCGS5bBxBjgiUSHZaX3172y0jYu/O62av
	 bZ88QhtkUMXBaf9k/TZDghj0Zu9IUBCtl1qX4othiQBaTGovF4UY9SSiGiYMhuOAsW
	 9zsJxbIg80wk7gBs+gr545VzdojvtHi1jWryCqvLGZ7M7CgquwnznCg5DBl8MMqKOm
	 mHPFqh7wYFWrQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, Hui-Ping Chen <hpchen0nvt@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240805030356.14565-1-hpchen0nvt@gmail.com>
References: <20240805030356.14565-1-hpchen0nvt@gmail.com>
Subject: Re: [PATCH v4 0/2] Add support for nuvoton ma35 usb2 phy
Message-Id: <172495834711.405683.69011643308831007.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 00:35:47 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_120550_971951_4DD8E1CA 
X-CRM114-Status: UNSURE (   8.42  )
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


On Mon, 05 Aug 2024 03:03:54 +0000, Hui-Ping Chen wrote:
> This patch series adds the usb2 phy driver for the nuvoton ma35 ARMv8 SoC.
> It includes DT binding documentation and the ma35 usb2 phy driver.
> 
> v4:
>   - Update ma35d1 usb2 phy driver
>     - Update the 'readl_poll_timeout' to 'regmap_read_poll_timeout'.
>     - Update MODULE_AUTHOR name.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: nuvoton,ma35-usb2-phy: add new bindings
      commit: c174f1c6c100b18c4a908b117265d7cd99fff6c7
[2/2] phy: nuvoton: add new driver for the Nuvoton MA35 SoC USB 2.0 PHY
      commit: b48baf69db9725aa5ddde52d98cd7b5517ddd9eb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
