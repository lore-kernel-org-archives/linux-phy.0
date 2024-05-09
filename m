Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D068C25B74
	for <linux-phy@archiver.kernel.org>; Thu,  9 May 2024 06:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pokg7evFc89PjHbtc0D5LrRe8zfkVYZbVnTszfO57U8=; b=GdnF8lgOqIfmGJ
	7k/SLgJ11F4P1jxrar77e027UoHtG3ETxLpqNNU41kiPyTeiblrcD+urHq1FiTMo2SUEuK1KU6+0B
	59EMcSxX009bEwPjOszt3IBFZ2BtCq34BTak5tzWYlVztMmicc/tkXi+9n6eILfCRbNF+YBNFjFNc
	YgTQCZo7X/iudHNY9kaEqk4JpCcyyr9JjV4EwQMQZ0mTlp5HQtEe79osKsHT4kvzuEqf/CcKAQigI
	AQGgOpSh+P2c2n7UxCZ3VN3RwtgmdqZMwtYNu+MEnR5gbcACbBaFhhWSzq3frfJzvCjW9TpjdDGj8
	Dso/dXP9LEhC9egQfuNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4x4F-00000000Xmb-3RFK;
	Thu, 09 May 2024 06:15:47 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4x49-00000000XjH-3oSC;
	Thu, 09 May 2024 06:15:43 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 503171A0BEA;
	Thu,  9 May 2024 08:15:40 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BCF5B1A1F52;
	Thu,  9 May 2024 08:15:39 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id C2E81181D0FC;
	Thu,  9 May 2024 14:15:37 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: conor@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com,
	conor+dt@kernel.org
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: [PATCH v4 0/3] Add i.MX8Q HSIO PHY support
Date: Thu,  9 May 2024 13:56:18 +0800
Message-Id: <1715234181-672-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_231542_238330_D12B0AB9 
X-CRM114-Status: UNSURE (   9.64  )
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

v4 changes:
- Re-format the "phy-cells" as <&hsio_phy lane_id phy_mode controller_id>
- Use each lane as a phys entry, suggested by Rob.
PCIEA:
phys = <&hsio_phy 0 PHY_MODE_PCIE>;
or:
phys = <&hsio_phy 0 PHY_MODE_PCIE>, <&hsio_phy 1 PHY_MODE_PCIE>;

PCIEB:
phys = <&hsio_phy 1 PHY_MODE_PCIE>;
or:
phys = <&hsio_phy 2 PHY_MODE_PCIE>;

SATA:
phys = <&hsio_phy 2 PHY_MODE_SATA>;

- Add a new propery "fsl,hsio-cfg".
The HSIO configuration (fsl,hsio-cfg) is one global state.
It should be known and used to set global setting: PCIE_AB_SELECT and
PHY_X1_EPCS_SEL at the begin of HSIO initialization like this listed below.

 +-------------------------------------------------------------+
 |CRR(SYS.CSR) register|PCIAx2 and|PCIEAx1, PCIEBx1|PCIEAx2 and|
 |                     |SATA      |SATA            |PCIEBx1    |
 |---------------------|----------|----------------|-----------|
 |PCIE_AB_SELECT       | 0        | 1              | 1         |
 |---------------------|----------|----------------|-----------|
 |PHY_X1_EPCS_SEL      | 1        | 1              | 0         |
 +-------------------------------------------------------------+
When first PHY instance is probed, PHY driver can't get a global view of the
HSIO use case and doesn't know how to set global setting: PCIE_AB_SELECT and
PHYX1_EPCS_SEL.
Because first PHY instance doesn't know followed PHY instance use mode.

So, one property named "fsl,hsio-cfg" has to be introduced here to specify the
setting of the global setting: PCIE_AB_SELECT and PHY_X1_EPCS_SEL.

Here is the discussion about this.
https://lkml.org/lkml/2024/4/26/231

- Address Conor's comments about the "fsl,refclk-pad-mode".
fsl,refclk-pad-mode:
  description:
    ...
  enum: ["input", "output"].

v3:https://patchwork.kernel.org/project/linux-phy/cover/1713939683-15328-1-git-send-email-hongxing.zhu@nxp.com/

v3 changes:
Refer to Conor's comments.
- Let filename match a compatible
- Refine description of the fsl,refclk-pad-mode.
- Remove power-domains description.
- Keep clock ording for two devices.
- Drop the unused label and status.
Refer to Rob's comments.
- Use standard phy mode defines.
- Correct the spell mistakes in the binding document.

v2:https://patchwork.kernel.org/project/linux-phy/cover/1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com/ 

v2 changes:
- Place the dt-bindings header file changes as the first one
in the patch-set, make the annotation more clear, and add
Frank's Reviewed-by tag.

v1:https://patchwork.kernel.org/project/linux-phy/cover/1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com/

[PATCH v4 1/3] dt-bindings: phy: phy-imx8-pcie: Add header file for
[PATCH v4 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
[PATCH v4 3/3] phy: freescale: imx8qm-hsio: Add i.MX8QM HSIO PHY

Documentation/devicetree/bindings/phy/fsl,imx8qm-hsio.yaml | 142 ++++++++++++++++++++
drivers/phy/freescale/Kconfig                              |   8 ++
drivers/phy/freescale/Makefile                             |   1 +
drivers/phy/freescale/phy-fsl-imx8qm-hsio.c                | 598 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include/dt-bindings/phy/phy-imx8-pcie.h                    |  29 +++++
5 files changed, 778 insertions(+)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
