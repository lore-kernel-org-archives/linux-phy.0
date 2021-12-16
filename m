Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8F2C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 06:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2H3UNRGT3CtUDRjnWw+pjpcwF34K2VceQeGssejq210=; b=YHvuQuL8yxGiJZ
	ZsNzYIeR+RCqoZA/NwE1m7+ub/62cwSWSjoT2Iq3qhkuueb0DSHEPSMJnLIyJx2ywBzKPsv6EdpkY
	ubKJ7LQAlVV/q99bj3p0hfJAgP6wNM5pyQ/6EBH1LJYrYzWl8vYewwfMoIccSAd0hp5+Cz2S4B+od
	FsaNgw3bfY1FOr7d6FpbaW3v4TmOCJEKoSq+r2eJOv3fA229aNWXA+uqiMxZYKWl940W2rc6AAZK/
	ccSeXAJtXUSFxhVZnt4xvfPkgWG70qVCgEPL2TpYiaVyKKqPH1NVpIv5R/CnySP6hm7kCYtRoquvL
	zi/KwgoM4WhKauo4Resg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxkMa-003mR6-VJ; Thu, 16 Dec 2021 06:35:36 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxkMO-003mPB-2G; Thu, 16 Dec 2021 06:35:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8555CB81E01;
 Thu, 16 Dec 2021 06:35:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 559DDC36AE4;
 Thu, 16 Dec 2021 06:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639636521;
 bh=KJuum97Hub0BzEm0OYxF3VjGxMjXXc97FgYjBn39Nv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=al8pxAXCzCx9oGA+v82lh/H9mV6riLIxaYtCMSYjLWL5marAVf0KqEG6LT8sNKVcN
 Yd0ibsTntrfFO5C6iQQ2+deG0dDyMRz1CHBm5l65l/PKh2F6FBY596XWgEbdXVTN1a
 +XTLF9WM/iKceYwxwIDoiCC3RiGuyo0MZ6O5sEjX7qoN6vpl4PBs//HpY48W2QmzvK
 CgHUj5WtNQbSlbsRD88UZbK2dUKGsMSdAzzdTesTsg9/CUmUeAQXhJEGc3yMj0Dj4j
 FuFhv/tVMKJRJEL6eBdk1/LYEUhIU3i9c8IFtNAg4txVfzp0ng2f3R/hPAfuQPMyiR
 BjsLphv4djlhg==
Date: Thu, 16 Dec 2021 12:05:17 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com,
 linux-next@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Mark Brown <broonie@kernel.org>, linux-pci@vger.kernel.org,
 Tim Harvey <tharvey@gateworks.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Zhu <hongxing.zhu@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] phy: freescale: pcie: fix building for x86_64 as a module
Message-ID: <YbreJSy+3YG9ix8+@matsya>
References: <20211215153037.688885-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211215153037.688885-1-marcel@ziswiler.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_223524_416249_80C771EF 
X-CRM114-Status: GOOD (  21.34  )
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

On 15-12-21, 16:30, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> x86_64 allmodconfig build failed like this:
> 
> /tmp/next/build/drivers/phy/freescale/phy-fsl-imx8m-pcie.c: In function
>  'imx8_pcie_phy_init':
> /tmp/next/build/drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:37:
>  error: implicit declaration of function 'FIELD_PREP'
>  [-Werror=implicit-function-declaration]
>    41 | #define IMX8MM_GPR_PCIE_REF_CLK_EXT FIELD_PREP(IMX8MM_GPR_PCIE_
> REF_CLK_SEL, 0x2)
>       |                                     ^~~~~~~~~~
> /tmp/next/build/drivers/phy/freescale/phy-fsl-imx8m-pcie.c:85:7: note:
>  in expansion of macro 'IMX8MM_GPR_PCIE_REF_CLK_EXT'
>    85 |       IMX8MM_GPR_PCIE_REF_CLK_EXT :
>       |       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> cc1: all warnings being treated as errors
> 
> Fix this by explicitly including linux/bitfield.h.

I have already pushed a patch for this
lore.kernel.org/r/20211215060834.921617-1-vkoul@kernel.org

> 
> While at it sort includes alphabethically and add a new line before the
> dt-bindings one as usually done.

Pls do send a patch for this..

> 
> Fixes: 1aa97b002258a190d77
> ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
> Reported-by: Mark Brown <broonie@kernel.org>
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> ---
> 
>  drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> index f6502463d49a..f1eb03ba25d6 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
> @@ -3,10 +3,11 @@
>   * Copyright 2021 NXP
>   */
>  
> +#include <linux/bitfield.h>
>  #include <linux/clk.h>
> +#include <linux/delay.h>
>  #include <linux/io.h>
>  #include <linux/iopoll.h>
> -#include <linux/delay.h>
>  #include <linux/mfd/syscon.h>
>  #include <linux/mfd/syscon/imx7-iomuxc-gpr.h>
>  #include <linux/module.h>
> @@ -14,6 +15,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/reset.h>
> +
>  #include <dt-bindings/phy/phy-imx8-pcie.h>
>  
>  #define IMX8MM_PCIE_PHY_CMN_REG061	0x184
> -- 
> 2.33.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
