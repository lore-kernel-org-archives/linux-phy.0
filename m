Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56C97ECAAD2
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 15:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwvRgI8i+MjGkBpOnzjs4iAT7ji4RWGsof8t1B7BOAU=; b=Xy/m4jQfrzXzMc
	u2CqjNHLXh3uE9qZemEWjJCBlTia/sYV65gYLiJiIMaQ8FcxYNVXuRiJhGpb8vnkMO6PRRRH0/oRz
	adDBULQ2Dbd7fe3hNV1eqBUVTFey0TnAzZjAozsl7bDEhEE/bKB8GXCow8E2A7CbH2nGrk/u1oTae
	RXzxheHlVZkErPfTE5YFCuEhaBM8CLNWj7iOoPKREYU3APz3cDJpMo7czQZvYAV4uhbaA3cFUnzEh
	ph4NCHVkt2pYx6j8vwDweMHfI40sr3QXQ18m7/G8ZcW4xxhyb9iJAWvxVwhONxJF3LedWCLB712WA
	fgowAknrZxvMBWYluJWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSgYs-00BK9s-Pu; Mon, 29 Aug 2022 15:20:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSgYp-00BK9B-NQ
	for linux-phy@lists.infradead.org; Mon, 29 Aug 2022 15:20:25 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1oSgYf-00077I-3W; Mon, 29 Aug 2022 17:20:13 +0200
Message-ID: <c668fff254b9f56b699a2714bb8c016e3b0cc5b5.camel@pengutronix.de>
Subject: Re: [PATCH v4 0/6] Add iMX8MP PCIe support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
	bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
	shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Mon, 29 Aug 2022 17:20:11 +0200
In-Reply-To: <1661760917-9558-1-git-send-email-hongxing.zhu@nxp.com>
References: <1661760917-9558-1-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_082023_791701_CEEF9AB2 
X-CRM114-Status: GOOD (  19.46  )
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

Hi Richard,

instead of review comments I sent you a two patches to rework things
more to my liking. Hope you agree with the approach.

One question, though: did you test this with devices with Gen2/3
speeds? The Marvell WiFi module on my EVK board only links with Gen1,
while it claims Gen2 speed in the LnkCap register. However, it does
seem to come up with Gen1 as the target link speed in LnkCtl2, so maybe
the device is at fault here.

Regards,
Lucas
 
Am Montag, dem 29.08.2022 um 16:15 +0800 schrieb Richard Zhu:
> Based on the 6.0-rc1 of the pci/next branch. 
> This series adds the i.MX8MP PCIe support and tested on i.MX8MP
> EVK board when one PCIe NVME device is used.
> 
> - i.MX8MP PCIe has reversed initial PERST bit value refer to i.MX8MQ/i.MX8MM.
>   Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.
> 
> Main changes v3-->v4:
> - Regarding Phillip's suggestions, add fix tag into the first commit.
> - Add Reviewed and Tested tags.
> 
> Main changes v2-->v3:
> - Fix the schema checking error in the PHY dt-binding patch.
> - Inspired by Lucas, the PLL configurations might not required when
>   external OSC is used as PCIe referrence clock. It's true. Remove all
>   the HSIO PLL bit manipulations, and PCIe works fine on i.MX8MP EVK board
>   with one NVME device is used.
> - Drop the #4 patch of v2, since it had been applied by Rob.
> 
> Main changes v1-->v2:
> - It's my fault forget including Vinod, re-send v2 after include Vinod
>   and linux-phy@lists.infradead.org.
> - List the basements of this patch-set. The branch, codes changes and so on.
> - Clean up some useless register and bit definitions in #3 patch.
> 
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 +++++++--
> arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  53 +++++++++++++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  46 ++++++++++++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  17 +++++++++-
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 150 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------
> drivers/reset/reset-imx7.c                                   |   1 +
> 6 files changed, 232 insertions(+), 51 deletions(-)
> 
> [PATCH v4 1/6] reset: imx7: Fix the iMX8MP PCIe PHY PERST support
> [PATCH v4 2/6] dt-binding: phy: Add iMX8MP PCIe PHY binding
> [PATCH v4 3/6] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
> [PATCH v4 4/6] arm64: dts: imx8mp: Add iMX8MP PCIe support
> [PATCH v4 5/6] arm64: dts: imx8mp-evk: Add PCIe support
> [PATCH v4 6/6] PCI: imx6: Add iMX8MP PCIe support



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
