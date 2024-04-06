Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 005E7C67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nr1eKwGHzghpB38Xrb/3UzQ/ZGpd5YqdHnQrj24uOzw=; b=CzehfE8hDxvOw5
	yJ5hf3uSXD/D2jpEks52CkvlglU1eiiK8W0TKgoIEeA4kHaq9w4InHm7w3gs7ammdkjmnRp3ondr+
	0YsLn7fZORevfBVOo3hVyNf8SmOoO6rsaglIEhZhR+0pt9vahELpebSDCowPzuuM1zGkDdTWvPhPG
	AqSbC83Vwislv3WODMoexJJd7FV/nVcd0Aq0rlNJmzBbYHiQTZyWxlOGEKHj6QffTcbSHvTqAB5CR
	tENxyckepAJJxikZS+YcbbmwVoOdC0UzpOJu2/eqtPNs1IhYho0bE2Om5pN0FYdSwcsIdm1oKaXdu
	u0c200xq0s9vPXg1Xiag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CE-0000000A1Oh-1rcx;
	Sat, 06 Apr 2024 09:18:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CA-0000000A1Mg-3M8G;
	Sat, 06 Apr 2024 09:18:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0EB6ECE0A1E;
	Sat,  6 Apr 2024 09:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD2D1C433F1;
	Sat,  6 Apr 2024 09:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395120;
	bh=srWDqFupvZIFWW4YuJg9/k4T6xavGfgaXIAS7e13Kko=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JuYAz4FMXeLoVF7y6YymuOAgO0ndvqFogoacYc2yFzZFuzEjf9P7rd1qdQRjBCMoj
	 BYEDb0xtj1oR3oIp1ipb77zrlwdVVRQL4j40o+Ie23nYUWxYdXaK69aw6PAey4Aq7O
	 rogIOW6Q9/AwMnLMGPct5Djexz/lEQgbAu/QrVX5EsD+DwXYnvJyEQuUnvMVuYCw0L
	 shXbzAlyfW8rzmhjNqpQt/WpaCZG/KzWw9cIKrPS1m10xfDXBdvrd06JkdhrHltW06
	 gBYFooD+7c52V8tCKcAv5Iy6gScNMo/6dd1gz63klI0iiKAn4j2GldO018D7jz+6on
	 eBW+hicw4xgSg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-imx@nxp.com, Lucas Stach <l.stach@pengutronix.de>, 
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de, 
 Richard Zhu <hongxing.zhu@nxp.com>, linux-kernel@vger.kernel.org, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, 
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Tim Harvey <tharvey@gateworks.com>, Yang Li <yang.lee@linux.alibaba.com>, 
 imx@lists.linux.dev
In-Reply-To: <20240322130646.1016630-1-marcel@ziswiler.com>
References: <20240322130646.1016630-1-marcel@ziswiler.com>
Subject: Re: [PATCH v1 0/1] phy: freescale: imx8m-pcie: facing pcie link-up
 instability
Message-Id: <171239511427.352254.8525089049107113141.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:48:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021843_052330_70AA6E8D 
X-CRM114-Status: GOOD (  10.09  )
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


On Fri, 22 Mar 2024 14:06:31 +0100, Marcel Ziswiler wrote:
> In our automated testing setup, we use Delock Mini-PCIe SATA cards [1].
> While this setup has proven very stable overall we noticed upstream on
> the i.MX8M Mini fails quite regularly (about 50/50) to bring up the PCIe
> link while with NXP's downstream BSP 5.15.71_2.2.2 it always works. As
> that old downstream stuff was quite different, I first also tried NXP's
> latest downstream BSP 6.1.55_2.2.0 which from a PCIe point of view is
> fairly vanilla, however, also there the PCIe link-up was not stable.
> Comparing and debugging I noticed that upstream explicitly configures
> the AUX_PLL_REFCLK_SEL to I_PLL_REFCLK_FROM_SYSPLL while working
> downstream [2] leaving it at reset defaults of AUX_IN (PLL clock).
> Unfortunately, the TRM does not mention any further details about this
> register (both for the i.MX 8M Mini as well as the Plus). Maybe somebody
> from NXP could further comment on this?
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: imx8m-pcie: fix pcie link-up instability
      commit: 3a161017f1de55cc48be81f6156004c151f32677

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
