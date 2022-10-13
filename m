Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02557C4332F
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 02:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fIke20QPgj06nWGKEZQ9iO1h6HZrPQwgcECfDBzIr28=; b=lVFkAGwcRnLRV4
	z0HrBqvEyZyt0LqlzH5OeRA/xpJKjHVRr7gdBPA4LUpLmcM6EMBPGs11L7g5AOxE9Kfatjhlo+7DW
	upjdixptcdhqqOrCbavimzUzWnDhdf0ukEnTtjVPpjPc45MF9Uo5gy6raB6rMav0YE25xq96uG6EX
	WFbI0siMDdIfyyX/raeYsI4VKV2F82zVH/a2yIf7PnXGWIxUsFifxtpQ89qz0xSChTqjJk66ac1Zd
	x8slpJ49/RcBeYu34jDnE86JtvqUwoa2qDiv4sRd2ilRieOWc7MUUyFA2RnFXCOVUmEqBzA2qbXoK
	yLXES1Rxx2m/myDTP1bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oincy-00AEj1-2F; Thu, 13 Oct 2022 02:07:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oincd-00AEbr-39; Thu, 13 Oct 2022 02:06:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A7AD1B1B09;
	Thu, 13 Oct 2022 04:06:50 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1058E1B1ADB;
	Thu, 13 Oct 2022 04:06:50 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 71F911802204;
	Thu, 13 Oct 2022 10:06:48 +0800 (+08)
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
Subject: [PATCH RESEND v12 0/4] Add the iMX8MP PCIe support
Date: Thu, 13 Oct 2022 09:46:58 +0800
Message-Id: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_190655_291934_840C84E2 
X-CRM114-Status: UNSURE (   9.18  )
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

Re-base to the pci-v6.1-changes of pci/next branch. 
Update the cover-letter, and re-send the v12 patch-set.
This series adds the i.MX8MP PCIe support and tested on i.MX8MP
EVK board when one PCIe NVME device is used.

- i.MX8MP PCIe has reversed initial PERST bit value refer to i.MX8MQ/i.MX8MM.
  Add the PHY PERST explicitly for i.MX8MP PCIe PHY.
- Add the i.MX8MP PCIe PHY support in the i.MX8M PCIe PHY driver.
  And share as much as possible codes with i.MX8MM PCIe PHY.
- Add the i.MX8MP PCIe support in binding document, DTS files, and PCIe
  driver.

Main changes v11-->v12:
 - In the local down kernel(6.0-rc7 plus local codes) PM tests, i.MX8MP
   PCIe encounters link failure.
   To resolve this failure, the resets of i.MX8MP PCIe PHY should be always
   kept 1b'1. Merge the fix into v12 patches here.

Main changes v10-->v11:
Refer to Ahmad's comments do the following changes;
 - Correct the spell mistake and refine the commit log.
 - Make codes indent by the member name
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
- Only PHY related patches in v9, Since the others patches had been merged
  by Phillipp/Shawn/Lorenzo [1].

Main changes v7-->v8:
- Add the Reviewed-by tag, no other changes.
  Only two patches in v8, Since the others patches had been merged by
  Phillipp/Shawn/Lorenzo [1].

<snipped.>

[1]
Shawn's tree
d50650500064 arm64: dts: imx8mp-evk: Add PCIe support
9e65987b9584 arm64: dts: imx8mp: Add iMX8MP PCIe support
5506018d3dec soc: imx: imx8mp-blk-ctrl: handle PCIe PHY resets

Philipp's tree
051d9eb40388 reset: imx7: Fix the iMX8MP PCIe PHY PERST support

Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  16 ++++++++--
drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 142 ++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------------------
2 files changed, 106 insertions(+), 52 deletions(-)

[RESEND v12 1/4] dt-binding: phy: Add i.MX8MP PCIe PHY binding
[RESEND v12 2/4] phy: freescale: imx8m-pcie: Refine register
[RESEND v12 3/4] phy: freescale: imx8m-pcie: Refine i.MX8MM PCIe PHY
[RESEND v12 4/4] phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
