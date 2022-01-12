Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1649CC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jan 2022 14:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X1oK2iJuQYwYhm55w4HREqnEm8CqriYfEXiNL6YaGEs=; b=J0L7dNBVbpE1QU
	wTahEUrIIKbR3j1X+228etbejLM50WePPtmFmUhf/ZeDb8l0AD6v8XKi3SycLJ2izExMnJnNuO3Rg
	/zYib7jPefSMALXdRSai2dzxEQJ3ks8cqTXX2HdomBgAnDZT1W2uMj859j3drqHxCmNB4cSJkZPEE
	ARcGJr1+MV7J8Rs5O5JHudbmqatfIMDkRuUjb3XMfS2p5T0B3+rLNXGCypm8ysPhMs+SlC4e2nTCt
	VLGHlXUwoYUQqUvK4wq5hh3EKIuII7k8yNlhy0IFxpzzix5pZhUZ0fFMlQww1l4kneSK8ZF3w+79Z
	HwiTuy8ioFbyQY3lD3Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n7eUX-002hop-HR; Wed, 12 Jan 2022 14:20:45 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n7eUU-002hmn-Oe
 for linux-phy@lists.infradead.org; Wed, 12 Jan 2022 14:20:44 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id AF483FB03;
 Wed, 12 Jan 2022 15:20:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a970IfYtB6-K; Wed, 12 Jan 2022 15:20:35 +0100 (CET)
Date: Wed, 12 Jan 2022 15:20:27 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Richard Zhu <hongxing.zhu@nxp.com>, Li Jun <jun.li@nxp.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: freescale: i.MX8 PHYs should depend on ARCH_MXC &&
 ARM64
Message-ID: <Yd7jqwG/qmkSXfPz@qwark.sigxcpu.org>
References: <393868affd830016d35f0d9aba32ccd7098c8073.1641987369.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <393868affd830016d35f0d9aba32ccd7098c8073.1641987369.git.geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220112_062043_002694_2CA6E42C 
X-CRM114-Status: GOOD (  15.60  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,
On Wed, Jan 12, 2022 at 12:40:38PM +0100, Geert Uytterhoeven wrote:
> The Freescale/NXP i.MX8 USB3, MIPI DSI, and PCIE PHYs are only present
> on the NXP i.MX8 family of SoCs.  Hence wrap the config symbols for
> these PHYs inside a check for ARCH_MXC && ARM64, to prevent asking the
> user about these drivers when configuring a kernel without NXP i.MX SoC
> family support.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Sounds good to me:

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers,
 -- Guido

> ---
>  drivers/phy/freescale/Kconfig | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kconfig
> index c3669c28ea9fe83a..856cbec7057d9e54 100644
> --- a/drivers/phy/freescale/Kconfig
> +++ b/drivers/phy/freescale/Kconfig
> @@ -1,4 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +
> +if (ARCH_MXC && ARM64) || COMPILE_TEST
> +
>  config PHY_FSL_IMX8MQ_USB
>  	tristate "Freescale i.MX8M USB3 PHY"
>  	depends on OF && HAS_IOMEM
> @@ -22,3 +25,5 @@ config PHY_FSL_IMX8M_PCIE
>  	help
>  	  Enable this to add support for the PCIE PHY as found on
>  	  i.MX8M family of SOCs.
> +
> +endif
> -- =

> 2.25.1
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
