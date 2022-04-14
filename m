Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FEEFC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Apr 2022 20:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bm5CTH6/VRDqroIDwzlUJsfMuLXk1N+SsCWvPGknrc=; b=j6/xn/fXmpGeE3
	iJ0DSKD2h8AszY+DafTw7RMPaas1kmLgV5Vqn5XLMB/zQt7Qpc05Cq3Eb2QUup6u4976KdrmN8GT6
	lyAB/qz40t1LRgnd4er/gKEuwAHjtCr3I50ytZH7yElQWlpY2jezLtASg/Fo6VNezBOf5B3rgeQ3I
	EE5jRixmOsGUJQV4nvjmtZXam570DmzZ3nUjN19m8cF6mMuJZLchEm+1xiBwNXPPqJelhFJ6OsgBT
	fB2N8Ypjjc1hN9wJjHlIfYqKVhfci3KSkqGuWmW67bVNlSRtU0XoMt1A/iCsKxi0HOa75V8RPsu1y
	w8R8hhCrJzWOeADTAtKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nf6LR-007FKN-P3; Thu, 14 Apr 2022 20:45:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nf6LN-007FI3-EH
 for linux-phy@lists.infradead.org; Thu, 14 Apr 2022 20:45:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nf6L4-0005dK-5A; Thu, 14 Apr 2022 22:45:14 +0200
Message-ID: <6221c3d0da08ef15f572593d67fd0e9c7ba03ab0.camel@pengutronix.de>
Subject: Re: [PATCH v2 0/7] Add the iMX8MP PCIe support
From: Lucas Stach <l.stach@pengutronix.de>
To: Richard Zhu <hongxing.zhu@nxp.com>, p.zabel@pengutronix.de, 
 bhelgaas@google.com, lorenzo.pieralisi@arm.com, robh@kernel.org, 
 shawnguo@kernel.org, vkoul@kernel.org, alexander.stein@ew.tq-group.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, linux-imx@nxp.com
Date: Thu, 14 Apr 2022 22:45:11 +0200
In-Reply-To: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
References: <1646644054-24421-1-git-send-email-hongxing.zhu@nxp.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220414_134533_534554_70C9E5E3 
X-CRM114-Status: GOOD (  21.42  )
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

I didn't get around to see what's wrong with the PCIe on my EVK, so I
wasn't able to do any reworks to the series. As I will be on vacation
from tomorrow until Apr. 25th, I'll just leave some more comments on
this series for your consideration.

Regards,
Lucas

Am Montag, dem 07.03.2022 um 17:07 +0800 schrieb Richard Zhu:
> Based on the i.MX8MP GPC and blk-ctrl patch-set[1] issued by Lucas and the
> following commits.
>   - one codes refine patch-set[5].
>   - two Fixes[2],[3].
>   - one binding commit[4].
>   - some dts changes in Shawn's git if you want to test PCIe on i.MX8MM EVK.
>     b4d36c10bf17 arm64: dts: imx8mm-evk: Add the pcie support on imx8mm evk board
>     aaeba6a8e226 arm64: dts: imx8mm: Add the pcie support
>     cfc5078432ca arm64: dts: imx8mm: Add the pcie phy support
> 
> Sorry about that there may be some conflictions when do the codes merge.
> I'm waiting for the ack now, and will re-base them in a proper sequence later.
> 
> This series patches add the i.MX8MP PCIe support and tested on i.MX8MM EVK and
> i.MX8MP EVk boards. The PCIe NVME works fine on both boards.
> 
> - i.MX8MP PCIe PHY has two resets refer to the i.MX8MM PCIe PHY.
>   Add one more PHY reset for i.MX8MP PCIe PHY accordingly.
> - Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
>   And share as much as possible codes with i.MX8MM PCIe PHY.
> - Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
>   driver.
> 
> Main changes v1-->v2:
> - It's my fault forget including Vinod, re-send v2 after include Vinod
>   and linux-phy@lists.infradead.org.
> - List the basements of this patch-set. The branch, codes changes and so on.
> - Clean up some useless register and bit definitions in #3 patch.
> 
> [1]https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220228201731.3330192-1-l.stach@pengutronix.de/
> [2]https://patchwork.ozlabs.org/project/linux-pci/patch/1646289275-17813-1-git-send-email-hongxing.zhu@nxp.com/
> [3]https://patchwork.ozlabs.org/project/linux-pci/patch/1645672013-8949-1-git-send-email-hongxing.zhu@nxp.com/
> [4]https://patchwork.ozlabs.org/project/linux-pci/patch/1646293805-18248-1-git-send-email-hongxing.zhu@nxp.com/
> [5]https://patchwork.ozlabs.org/project/linux-pci/cover/1645760667-10510-1-git-send-email-hongxing.zhu@nxp.com/
> 
> NOTE:
> Based git <git://git.kernel.org/pub/scm/linux/kernel/git/lpieralisi/pci.git>
> Based branch <pci/imx6>
> 
> Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |   1 +
> Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |   4 +-
> arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  55 ++++++++++++++++++++++
> arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  46 ++++++++++++++++++-
> drivers/pci/controller/dwc/pci-imx6.c                        |  19 +++++++-
> drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 205 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------
> drivers/reset/reset-imx7.c                                   |   1 +
> 7 files changed, 286 insertions(+), 45 deletions(-)
> 
> [PATCH v2 1/7] reset: imx7: Add the iMX8MP PCIe PHY PERST support
> [PATCH v2 2/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
> [PATCH v2 3/7] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
> [PATCH v2 4/7] dt-bindings: imx6q-pcie: Add iMX8MP PCIe compatible
> [PATCH v2 5/7] arm64: dts: imx8mp: add the iMX8MP PCIe support
> [PATCH v2 6/7] arm64: dts: imx8mp-evk: Add PCIe support
> [PATCH v2 7/7] PCI: imx6: Add the iMX8MP PCIe support



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
