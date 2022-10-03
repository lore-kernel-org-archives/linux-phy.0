Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C21C433F5
	for <linux-phy@archiver.kernel.org>; Mon,  3 Oct 2022 05:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qST2xBGxidmtNoRfNfsXJS9WJz6IYw045xmnCOnZcmk=; b=ixhoHM1MIlGOUR
	O+uuhLMynlp79YckUcFgfE78d00z3ktMJ5pkrw/IgwbqTStGNFaXPLxrT6n4pUou6N4iBiSLbj09x
	or2Mmk9tNtTIz3ckV0pxhQeMR7UqOYVAGJP1K+Ng9ldxhNweTTHMQx91x5MHs20ucqdcH3OGf3/jV
	1x2fa0t5cmqlnZbE8lwu/PZYgRwBIq8/cIsWM8zz/aEtldEDPZ5sAZVQOjwaGLaIyF1Ted88q85kS
	inw1owHt7hxGoTOBGIrejEmr/HOHotyxud5DQaJyWZ7omfSa/sgzZOdHukLfNDoSOWRuD5eTSe7Sf
	Cu9d60HzwC7Fea8si+hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofEFp-0043dG-32; Mon, 03 Oct 2022 05:44:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofEFW-0043SP-Mu; Mon, 03 Oct 2022 05:44:20 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DE1CE212666;
	Mon,  3 Oct 2022 07:44:15 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6520021266A;
	Mon,  3 Oct 2022 07:44:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 684921820F76;
	Mon,  3 Oct 2022 13:44:13 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	a.fatoum@pengutronix.de,
	p.zabel@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	robh@kernel.org,
	shawnguo@kernel.org,
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
Subject: [PATCH v11 0/4] Add the iMX8MP PCIe support
Date: Mon,  3 Oct 2022 13:24:51 +0800
Message-Id: <1664774695-23483-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_224419_034698_3D6678FE 
X-CRM114-Status: GOOD (  14.11  )
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

Main changes v10-->v11:
Refer to Ahmad's comments do the following changes;
 - Correct the spell mistake and refine the commit log.
 - Make contents of struct imx8_pcie_phy_drvdata indent by the member name.
 - Use the dev_err_probe replace the dev_err.

Main changes v9-->v10:
- Refer to Vinod's review comments, drop the array, and use the static data
  structure directly in the drvdata definition.

Main changes v8-->v9:
- Split the PHY driver changes into three patches.
  - To keep the format consistent, re-define the PHY_CMN_REG75, and remove
    two useless BIT definitions.
  - Refine the i.MX8MM PCIe PHY driver, let it more reviewable, flexible,
    and easy to expand.
  - Add the i.MX8MP PCIe PHY support.
- Only PHY related patches from v8, Since the others patches had been merged
  by Phillipp/Shawn/Lorenzo.

Main changes v7-->v8:
- Add the Reviewed-by tag, no other changes.
  Only two patches in v8, Since the others patches had been merged by
  Phillipp/Shawn/Lorenzo.

Main changes v6-->v7:
- Add "Reviewed-by: Lucas Stach <l.stach@pengutronix.de>" into first three
  patches.
- Use "const *char" to replace the static allocation.

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
drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 139 ++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------
2 files changed, 105 insertions(+), 50 deletions(-)

[PATCH v11 1/4] dt-binding: phy: Add i.MX8MP PCIe PHY binding
[PATCH v11 2/4] phy: freescale: imx8m-pcie: Refine register
[PATCH v11 3/4] phy: freescale: imx8m-pcie: Refine i.MX8MM PCIe PHY
[PATCH v11 4/4] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
