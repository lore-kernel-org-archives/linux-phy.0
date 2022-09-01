Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75635ECAAD2
	for <linux-phy@archiver.kernel.org>; Thu,  1 Sep 2022 04:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OvdyOwm86WJktoaiBYfBj10b6Xby+beamDF4gVb1Sgw=; b=GSjJFvGd4R7ML3
	jw6JN76aB5xhD7W5Ki9M9ev0QwKgAdE5kPPx6J+oVoHASHAMFvuPswgA9q//teb46BcpLudfQj8Gs
	K/QzoxqTK1n7wEXzxvZ15C4cSNHB271KUDwjB2uKsx1XaOH7DyFzKdbMs9JmfvO+m6FFF5+TVYChk
	BHY+Yyq3Dx2cwIz7oGcudp3JfnVZiH/LnrkrnhKUGOOSUmml+s/7LRNrlufuq/ouXiN0cRYW7QDcF
	MIoCtHnmwl+bmgGv54uAR2aBYOuJXD/0bchKvvcOX4+XcGbOCladRaBpAmxsM3DHp9TEvBx4ejId6
	y+8KwCD6NhCZCW93Ie7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTbhR-009UB9-Kt; Thu, 01 Sep 2022 04:21:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTbgq-009Tv2-0W; Thu, 01 Sep 2022 04:20:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A69631A4389;
	Thu,  1 Sep 2022 06:20:23 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 702281A4371;
	Thu,  1 Sep 2022 06:20:23 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 9165E181D0CA;
	Thu,  1 Sep 2022 12:20:21 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	alexander.stein@ew.tq-group.com,
	marex@denx.de,
	richard.leitner@linux.dev
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH v6 0/7] Add the iMX8MP PCIe support
Date: Thu,  1 Sep 2022 12:02:33 +0800
Message-Id: <1662004960-14071-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_212028_353036_CBC96AE0 
X-CRM114-Status: GOOD (  12.95  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Based on the 6.0-rc1 of the pci/next branch. 
This series adds the i.MX8MP PCIe support and tested on i.MX8MP
EVK board when one PCIe NVME device is used.

- i.MX8MP PCIe has reversed initial PERST bit value refer to i.MX8MQ/i.MX8MM.
  Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
- Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
  And share as much as possible codes with i.MX8MM PCIe PHY.
- Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
  driver.

Main changes v5-->v6:
- To avoid code duplication when find the gpr syscon regmap, add the
  gpr compatible into the drvdata.
- Add one missing space before one curly brace in 3/7 of v5 series.
- 4/7 of v5 had been applied by Phillipp, thanks. For ease of tests, still
  keep it in v6.

Main changes v4-->v5:
- Use Lucas' approach, let blk-ctrl driver do the hsio-mix resets.
- Fetch the iomuxc-gpr regmap by the different phandles.

Main changes v3-->v4:
- Regarding Phillipp's suggestions, add fix tag into the first commit.
- Add Reviewed and Tested tags.

Main changes v2-->v3:
- Fix the schema checking error in the PHY dt-binding patch.
- Inspired by Lucas, the PLL configurations might not required when
  external OSC is used as PCIe referrence clock. It's true. Remove all
  the HSIO PLL bit manipulations, and PCIe works fine on i.MX8MP EVK board
  with one NVME device is used.
- Drop the #4 patch of v2, since it had been applied by Rob.

Main changes v1-->v2:
- It's my fault forget including Vinod, re-send v2 after include Vinod
  and linux-phy@lists.infradead.org.
- List the basements of this patch-set. The branch, codes changes and so on.
- Clean up some useless register and bit definitions in #3 patch.

Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 ++++++++--
arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  53 +++++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  43 +++++++++++++++++++++++++
drivers/pci/controller/dwc/pci-imx6.c                        |  27 ++++++++++++++--
drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 143 +++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------------
drivers/reset/reset-imx7.c                                   |   1 +
drivers/soc/imx/imx8mp-blk-ctrl.c                            |  10 ++++++
7 files changed, 241 insertions(+), 52 deletions(-)


 [PATCH v6 1/7] dt-binding: phy: Add iMX8MP PCIe PHY binding
 [PATCH v6 2/7] arm64: dts: imx8mp: Add iMX8MP PCIe support
 [PATCH v6 3/7] arm64: dts: imx8mp-evk: Add PCIe support
 [PATCH v6 4/7] reset: imx7: Fix the iMX8MP PCIe PHY PERST support
 [PATCH v6 5/7] soc: imx: imx8mp-blk-ctrl: handle PCIe PHY resets
 [PATCH v6 6/7] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY
 [PATCH v6 7/7] PCI: imx6: Add i.MX8MP PCIe support

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
