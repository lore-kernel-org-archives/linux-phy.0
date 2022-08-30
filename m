Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00992ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 08:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9UIcJS05ZRk+MGUihhIIUrstDrEh3yq5hOh/LAJICxY=; b=n918a1edVwaEv+
	KI/S27mxwD0UE9Mq/coDl/6L01T+S0cN2Zl+pFmxzIwY012TeJhSaVFK72Zo6WGiWjfPeFzq66s6+
	Uy/tuVmIs80Qvm04n0GvqkfSYxs7bsezki1FFo104NEdEHY+HkhtpwnwfDPIS6QPZCejkYmpUOsHp
	KMGMcsEtmiU27MKFj0g5VsMs7UaEIZa3DBgyOi7curXW13PdWH9a8cjDYuG0OCOqmpwbOIeX6KByT
	9+6Zuc+mwHLOE6J8FqnlkoyGWdtOdNpHMs4v+1zhjNi5qe9a18W3oRbYorvWD6J/SCu3qNKI5kj4v
	6QCqEQRvgp91knkKNR4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwIO-00F3UV-UG; Tue, 30 Aug 2022 08:08:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSwDq-00F1Yk-Qk; Tue, 30 Aug 2022 08:03:49 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EF5BE1A3CF3;
	Tue, 30 Aug 2022 10:03:42 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B6E261A1712;
	Tue, 30 Aug 2022 10:03:42 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id D403D180031C;
	Tue, 30 Aug 2022 16:03:40 +0800 (+08)
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
Subject: [PATCH v5 0/7] Add the iMX8MP PCIe support
Date: Tue, 30 Aug 2022 15:45:57 +0800
Message-Id: <1661845564-11373-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_010347_052276_7CC2F06E 
X-CRM114-Status: GOOD (  10.72  )
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

Main changes v4-->v5:
- Use Lucas' approach, let blk-ctrl driver do the hsio-mix resets.
- Fetch the iomuxc-gpr regmap by the different phandles.
- Reorder the patches, place the DT changes at the begin of this series.

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

Lucas(1):
soc: imx: imx8mp-blk-ctrl: handle PCIe PHY resets

Richard(6):
dt-binding: phy: Add iMX8MP PCIe PHY binding
arm64: dts: imx8mp: Add iMX8MP PCIe support
arm64: dts: imx8mp-evk: Add PCIe support
reset: imx7: Fix the iMX8MP PCIe PHY PERST support
phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
PCI: imx6: Add iMX8MP PCIe support

Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 ++++++++--
arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  53 ++++++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  43 ++++++++++++++++++++++++++
drivers/pci/controller/dwc/pci-imx6.c                        |  29 ++++++++++++++++--
drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 137 +++++++++++++++++++++++++++++++++++++++++++++++++++++-----------------------------
drivers/reset/reset-imx7.c                                   |   1 +
drivers/soc/imx/imx8mp-blk-ctrl.c                            |  10 ++++++
7 files changed, 235 insertions(+), 54 deletions(-)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
