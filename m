Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9DC6C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 07:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nN43q7jE4j2zP0aAp942R65G+UJtmO01XI4wgTFKO8g=; b=2iMqSNV67pSSp/
	Ek/YGXfnpHJeiMFWTGHwNy/RnV42XZ2+y1xgFWMOKcqPcYBxPH8YBp835ozQEfynE1JOJRZ/RU2Io
	0mM4XUt2jk8R7MjYJi71OyfY49PVexi0QH1XHUlaefooHrSDn8Dh6RAk3uj4dJasVa8mmUi8AHTum
	DenhoOv/KO3SuhjTuTnTSlRdu0QRUXTU5JkpK1xkpY+NmN/0hm4vtGUsv7zyzfrDMnOuxQmW9+3q5
	1NAd6OiQ9d84CPjpY00BUSjZkUIes/gaiXLfIcNEyYqQ3RHhGQTdRidFONlKX/GRoMcXqyYVppXiJ
	2xlE/XCDIjOJzO06CZAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt0Jf-00000009riL-0QIJ;
	Sat, 06 Apr 2024 07:18:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt0Jb-00000009rhp-0PHU;
	Sat, 06 Apr 2024 07:18:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 13210603F1;
	Sat,  6 Apr 2024 07:18:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9DA8C433C7;
	Sat,  6 Apr 2024 07:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712387893;
	bh=dS8bADZziQoLtHlnkHj0dQ2paJIGjWmIuNewalgbWUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ea6S6N6KseF8FYU91uMYJN7GD6yzmV7gab0MK5qCOM9EoxQmArIK+Qf4SmrVk7wWd
	 w4XXWVDPPOYHHZv3evO6BMbfX4VxnqR46iifX3EPm2YW1Dotyn0Z+UrRWpPLayVoIj
	 WKMckBsbZZVR2Azg9mLn9kc6wee9HAP7/p7lvdSggO5kzf8s8yplkVQXxU6qyMQclo
	 hSdF9W6liKlu+0CsLtUDcVuJqsrZxKyA6LHu7IsCpPTRaYEe8NzCHJhG7GB+S3w8Ye
	 ptA0UggHfPqrixdz4A5ghcTFtERIWFgc6L2T1QHsXRcikxX+L11f46KBcCk7g+So27
	 mCktSUaE1/xGQ==
Date: Sat, 6 Apr 2024 12:48:09 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com,
	linux-kernel@vger.kernel.org, kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
	Yang Li <yang.lee@linux.alibaba.com>, imx@lists.linux.dev
Subject: Re: [PATCH v2] phy: freescale: imx8m-pcie: fix pcie link-up
 instability
Message-ID: <ZhD3MfXe8rhkQ_3l@matsya>
References: <20240327071946.8869-1-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327071946.8869-1-marcel@ziswiler.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_001815_223977_379B6A17 
X-CRM114-Status: GOOD (  12.99  )
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

On 27-03-24, 08:19, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> On the i.MX 8M Mini, the AUX_PLL_REFCLK_SEL has to be left at its reset
> default of AUX_IN (PLL clock).
> 
> Background Information:
> In our automated testing setup, we use Delock Mini-PCIe SATA cards [1].
> While this setup has proven very stable overall we noticed upstream on
> the i.MX 8M Mini fails quite regularly (about 50/50) to bring up the
> PCIe link while with NXP's downstream BSP 5.15.71_2.2.2 it always works.
> As that old downstream stuff was quite different, I first also tried
> NXP's latest downstream BSP 6.1.55_2.2.0 which from a PCIe point of view
> is fairly vanilla, however, also there the PCIe link-up was not stable.
> Comparing and debugging I noticed that upstream explicitly configures
> the AUX_PLL_REFCLK_SEL to I_PLL_REFCLK_FROM_SYSPLL while working
> downstream [2] leaving it at reset defaults of AUX_IN (PLL clock).
> Unfortunately, the TRM does not mention any further details about this
> register (both for the i.MX 8M Mini as well as the Plus).
> NXP confirmed their validation codes for the i.MX8MM PCIe doesn't
> configure cmn_reg063 (offset: 0x18C).
> BTW: On the i.MX 8M Plus we have not seen any issues with PCIe with the
> exact same setup which is why I left it unchanged.

This does not apply on phy/fixes, pls rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
