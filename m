Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D6B9CD1292
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 09:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wZA5dZIiwbDECfjNLOp8XYfpzfyQpt7BhCn7Q4xGGuM=; b=Wa6naGZm01Q8N7
	wTmql1BMJu1Jd1q6yH93Kx32Lot3+ruwWejJjK7j8VaXiUljpYeMM09ok7wLCH1Qds/XDkxmCQS/a
	SFy6vVi0Bnu2xQNrrKsdprScjwWd7Up2yx/HsagdgaaI78dphPOFJRPup+ZukKODfXNDr2YcoYvcz
	U7BKsCP6k9M9mackwbcrOW2A+yxiBtlJabcsuGYxTf0WBy3q6sOCkSZUbAWo5woJWxJYq6KsLAaOf
	A/WNPLaNZ45L20KUHRTdLCwtG/k2ZZudIuZmvyK7uMZ5XD8g/AOrK4gvvNJENQZuhhJYVDJdx1oHS
	Gb4xYA1jNLoxwjckaUNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CP-0000000A1Vd-3GiP;
	Sat, 06 Apr 2024 09:18:57 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rt2CK-0000000A1RK-4ACd;
	Sat, 06 Apr 2024 09:18:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 44F9BCE0A1E;
	Sat,  6 Apr 2024 09:18:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A2D1C433C7;
	Sat,  6 Apr 2024 09:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712395130;
	bh=OUXrlxpdyrcqJqLEifsJYtil4okGD8qGZToyOExWkJo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IPLRPBoUJTIz64lSs0ulj5jKGWUCP3opeZWNl1GU18wdX6jdXieYh4EYwUZhqDr+4
	 xEiGH4QXOS5BqiNuo0eQK76RJbaGs2l+X3jIESEOUvA94MhhygBaZ4cy2UV3bqMVHs
	 65VtuyFD2txH7ZDT5rPRACeIraIQmEn8XFTyxKXlDvA3Nu7d/EFn793Nr5RK60AjIw
	 BCUqzKJOJBmRV+IyK39P0JPbw92FVfa5QlKj9YkJH38Z+M3HZynMP9SL1+BQxEPNCY
	 dTwv2hGhmmDC1d5/ULOVqE0nmaFbsq9WrHZhdzmuvFZS1kMtXzyqJ43qNpoLr3Qr85
	 y7eoSicBuEBTA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-imx@nxp.com, linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org, 
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, 
 Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Sergio Paracuellos <sergio.paracuellos@gmail.com>, 
 Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>, 
 Yang Li <yang.lee@linux.alibaba.com>, imx@lists.linux.dev
In-Reply-To: <20240327071946.8869-1-marcel@ziswiler.com>
References: <20240327071946.8869-1-marcel@ziswiler.com>
Subject: Re: [PATCH v2] phy: freescale: imx8m-pcie: fix pcie link-up
 instability
Message-Id: <171239512402.352254.17030670986383011631.b4-ty@kernel.org>
Date: Sat, 06 Apr 2024 14:48:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240406_021853_251203_07C6E892 
X-CRM114-Status: GOOD (  12.15  )
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


On Wed, 27 Mar 2024 08:19:37 +0100, Marcel Ziswiler wrote:
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
