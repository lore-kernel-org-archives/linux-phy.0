Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4278EECAAD4
	for <linux-phy@archiver.kernel.org>; Mon, 29 Aug 2022 08:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1xlHVkpaYOPdLdGa3SinL58MwC/AlWiZN4/IqwRSECw=; b=t1omNnUfkuqbW7
	ZAf+dXzn30FzIPX+1fT9Aqf6TEi0CRy8L1fJDpLVmjclJgtvBOItEKsF9c/pZi5Ml4Yb2Bxrc3/u0
	SvzF3Fpo7Xv4PFKJCszaIvxzxwvTWGD5GjdvZJE3ElweGxgDoWA1uwHQksOECIjeHG0D3GQaNUy6M
	yGgdZvttgI5+PdKLQTREzovRoltcWl5+ucea8y7/UttCkXzp7Qqdl04jTt8PUZjQfbn2584H2jtMr
	HNfmd0FkZDDXlmgXVrufZWdqHKlUoJy901A9dun+YbrOlaaSxsQ9YOlVMjuQnfNBT8ky9jWcEkNGF
	rvoxdr43Dcuyr3T68cIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSaF3-006Fl6-JR; Mon, 29 Aug 2022 08:35:33 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSaCV-006EBF-N2; Mon, 29 Aug 2022 08:32:59 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 296FD200FC8;
	Mon, 29 Aug 2022 10:32:53 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E2A3D200FAC;
	Mon, 29 Aug 2022 10:32:52 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 02341181D0C0;
	Mon, 29 Aug 2022 16:32:50 +0800 (+08)
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
Subject: [PATCH v4 0/6] Add iMX8MP PCIe support
Date: Mon, 29 Aug 2022 16:15:11 +0800
Message-Id: <1661760917-9558-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_013255_977073_0FC1F0AE 
X-CRM114-Status: UNSURE (   9.81  )
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

Main changes v3-->v4:
- Regarding Phillip's suggestions, add fix tag into the first commit.
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

Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 +++++++--
arch/arm64/boot/dts/freescale/imx8mp-evk.dts                 |  53 +++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mp.dtsi                    |  46 ++++++++++++++++++++++++-
drivers/pci/controller/dwc/pci-imx6.c                        |  17 +++++++++-
drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 150 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------
drivers/reset/reset-imx7.c                                   |   1 +
6 files changed, 232 insertions(+), 51 deletions(-)

[PATCH v4 1/6] reset: imx7: Fix the iMX8MP PCIe PHY PERST support
[PATCH v4 2/6] dt-binding: phy: Add iMX8MP PCIe PHY binding
[PATCH v4 3/6] phy: freescale: imx8m-pcie: Add iMX8MP PCIe PHY
[PATCH v4 4/6] arm64: dts: imx8mp: Add iMX8MP PCIe support
[PATCH v4 5/6] arm64: dts: imx8mp-evk: Add PCIe support
[PATCH v4 6/6] PCI: imx6: Add iMX8MP PCIe support

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
