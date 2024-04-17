Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D7FCC4345F
	for <linux-phy@archiver.kernel.org>; Wed, 17 Apr 2024 14:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sd/mLvJT4kbbrWbf+zTLjd1iEwp8rknbbVtZDiQSQhw=; b=z0/KwBzJR3Zsqe
	DPndR2kKYS4LeedfhftUxVjL+MQ8/ruWKdvOW0GRVbajcFblaznt0U8U3vwp5RPfnQFhGCVcr0ZeW
	QSMfxXTUkzC06zabeXdB7Hm+fSma9hBflP3umkG9Bgk39MMUBHbeNSBjrSAWsUdML5NfZSqAVy5lO
	uvxVf1GhAy0+CytTzNRPPyil0FxjSzPnaYdlT34KQQ/3awiTodkLmIRHBQB70lEBbie5WsA4+qz4n
	QJShCK2NrPHSuoLqdCxlkdUXfT5P7Gp+emp7DbFfjEjbSN5y7Y5VaOovfDQagDASI5/RWk1+yRLSP
	+nmDqVmRP7dwJmqHAXiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6Rx-0000000GNhY-3NsR;
	Wed, 17 Apr 2024 14:39:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx6Rv-0000000GNfy-0wsa;
	Wed, 17 Apr 2024 14:39:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 796CC614EF;
	Wed, 17 Apr 2024 14:39:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 404EBC32782;
	Wed, 17 Apr 2024 14:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713364786;
	bh=X893UP2WP8VWJ3MuckBolFjKnD1ylVRbqSggNLSKC+o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Kox5ntpPnxq6JsRnQvZ+cNw4XmnrM8MQoPJnQO3Bh+u8AaZg1wuFbJ8E7a1bHeyjB
	 XvoSozBQiYD2yKvXQeFvLvuNVHF6iCvj7ukfwpI8Xj1zoWx6zDBuDw0pEzP6i59Rcd
	 DxkIW17WO93l0xR+aTO5tHiMDyamCGncZU57Xbo9IcHPw54MbOzjSPt2GqxudNw6fi
	 sJ2o7PGYxsDsgo6nGQ6AhlyKWLItxC5GRck3XWAC0qkS7H6w22Ei5ImjQ5j9eMPpOT
	 yhnGDUcnqDrKQrhB6Gy9fD8UAiJJHQh5kiGlWbLYGg1ix/J+HsasfVKe13ysVwlmG8
	 fvAYoI2J+I+pg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, kernel test robot <lkp@intel.com>
In-Reply-To: <20240416145233.94687-1-sebastian.reichel@collabora.com>
References: <20240416145233.94687-1-sebastian.reichel@collabora.com>
Subject: Re: [PATCH v1 1/1] phy: rockchip: usbdp: fix uninitialized
 variable
Message-Id: <171336478389.736784.10694944654639288018.b4-ty@kernel.org>
Date: Wed, 17 Apr 2024 20:09:43 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_073947_370576_A3ABF887 
X-CRM114-Status: UNSURE (   8.32  )
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


On Tue, 16 Apr 2024 16:51:23 +0200, Sebastian Reichel wrote:
> The ret variable may not be initialized in rk_udphy_usb3_phy_init(), if
> the PHY is not using USB3 mode.
> 
> Since the DisplayPort part is handled separately and the PHY does not
> support USB2 (which is routed to another PHY on Rockchip RK3588), the
> right exit code for this case is 0. Thus let's initialize the variable
> accordingly.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: usbdp: fix uninitialized variable
      commit: c9342d1a351ee1249fa98d936f756299a83d5684

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
