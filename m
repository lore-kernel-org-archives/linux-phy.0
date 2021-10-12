Return-Path: <SRS0=98aa=PA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BB2FC433FE
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:06:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CEC2E61076
	for <linux-phy@archiver.kernel.org>; Tue, 12 Oct 2021 09:06:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CEC2E61076
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w5rarEEWYtOOZS/ZIl+0XINCxnXc39z9RXPvfcDX1CI=; b=rjXzKsGdvNH7SV
	1cmW9qxrTjyTRMShtha4LwAKU0yakS+eZemiiKeFf0xgAQpk8pRF/fwoW09/szhImuZU1vIga2vXR
	RoXpRp8W3PjKPCMbNTFH/2ARfcdzWA6NwNy5Bl0u2xf5yicfpx+f05uGOYu7ofv0KxOZjha5YHn1U
	WQA8Kh+9G0aFb6GRbq69eqGk0sJHEXknN+RscoG/RIDKB1nBQvaS4/l7x4dDA6pe6zYD0XZAkzll4
	saTT2jrXg81W6Sj5a9g/yCwf/2dtRvQKvW/JudQdV3KhN/SeMOrijG3Vs8dRmw+OMDElo/rGg/qUa
	eOxhQvAktyrFjHV6zcYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maDk9-00C92s-AH; Tue, 12 Oct 2021 09:06:41 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maDjb-00C8ow-Hf; Tue, 12 Oct 2021 09:06:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 753431A1D1C;
 Tue, 12 Oct 2021 11:06:05 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3B6C91A1D11;
 Tue, 12 Oct 2021 11:06:05 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 9B2AE183AD14;
 Tue, 12 Oct 2021 17:06:03 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, tharvey@gateworks.com, kishon@ti.com,
 vkoul@kernel.org, robh@kernel.org, galak@kernel.crashing.org,
 shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: [PATCH v3 0/9] add the imx8m pcie phy driver and imx8mm pcie support
Date: Tue, 12 Oct 2021 16:41:09 +0800
Message-Id: <1634028078-2387-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_020607_754913_C3F9D8C8 
X-CRM114-Status: GOOD (  12.48  )
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

refer to the discussion [1] when try to enable i.MX8MM PCIe support,
one standalone PCIe PHY driver should be seperated from i.MX PCIe
driver when enable i.MX8MM PCIe support.

This patch-set adds the standalone PCIe PHY driver suport[1-5], and i.MX8MM
PCIe support[6-9] to have whole view to review this patch-set.

The PCIe works on i.MX8MM EVK board based the the blkctrl power driver
[2] and this PHY driver patch-set.

[1] https://patchwork.ozlabs.org/project/linux-pci/patch/20210510141509.929120-3-l.stach@pengutronix.de/
[2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210910202640.980366-1-l.stach@pengutronix.de/

Main changes v2 --> v3:
- Regarding Lucas' comments.
 - to have a whole view to review the patches, send out the i.MX8MM PCIe support too.
 - move the PHY related bits manipulations of the GPR/SRC to standalone PHY driver.
 - split the dts changes to SOC and board DT, and use the enum instead of raw value.
 - update the license of the dt-binding header file.

Changes v1 --> v2:
- Update the license of the dt-binding header file to make the license
  compatible with dts files.
- Fix the dt_binding_check errors.

Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml    |   6 +++
Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  79 +++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi                |  53 ++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mm.dtsi                    |  46 ++++++++++++++++-
drivers/pci/controller/dwc/pci-imx6.c                        |  63 ++++++++++++++++++++++-
drivers/phy/freescale/Kconfig                                |   9 ++++
drivers/phy/freescale/Makefile                               |   1 +
drivers/phy/freescale/phy-fsl-imx8m-pcie.c                   | 218 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include/dt-bindings/phy/phy-imx8-pcie.h                      |  14 ++++++
9 files changed, 486 insertions(+), 3 deletions(-)

[PATCH v3 1/9] dt-bindings: phy: phy-imx8-pcie: Add binding for the
[PATCH v3 2/9] dt-bindings: phy: add imx8 pcie phy driver support
[PATCH v3 3/9] arm64: dts: imx8mm: add the pcie phy support
[PATCH v3 4/9] arm64: dts: imx8mm-evk: add the pcie phy support
[PATCH v3 5/9] phy: freescale: pcie: initialize the imx8 pcie
[PATCH v3 6/9] dt-bindings: imx6q-pcie: Add PHY phandles and name
[PATCH v3 7/9] arm64: dts: imx8mm: add the pcie support
[PATCH v3 8/9] arm64: dts: imx8mm-evk: add the pcie support on imx8mm
[PATCH v3 9/9] PCI: imx: add the imx8mm pcie support

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
