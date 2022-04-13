Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B07C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 14:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kRhC0BAjVCCOXGZLhNhlaYmznIllzTDNq7HE+LZJzOE=; b=or/BXK5WIwco7f
	0MrrxIIyDhO0Y7wu+Lktc213LEk9ayDu+4G9ASxj1smoTEMqQ9371HEAZ+xuCmnrVFUu8f+U9wWOF
	NCBE94wmATEtaxg7Qyfq+ZRMYdAtA5ahKVEyyv+ut21wWouFhxMprOe8iMwDlbhZmbkxdOMKAIETc
	pe8v+30p7u4Ce7i3Xn60e8J48OPTZdAjZh/S1URFd3PD26+LLyvCqz19935BjXLSnfkjkusZJe8GI
	02mGOLnJxo8pyhb2oWtLXtrSLoiDpPM3KuvbLdyjsJUK8SkYR4p34BaAfkRa0x53u4JsmJuD/gw6R
	l1UkEIovAbA8WlycaBDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedfC-001Kzz-QH; Wed, 13 Apr 2022 14:08:06 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedee-001Kau-Mt; Wed, 13 Apr 2022 14:07:36 +0000
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id F150983BCF;
 Wed, 13 Apr 2022 16:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1649858849;
 bh=KaTeEzMqM/HEqpeCFLAJ2/JNfUc4X+3DSIMmBPLQiTU=;
 h=From:To:Cc:Subject:Date:From;
 b=iovkidPzcn796H+4gvM4dOBxjt4hj3MNnAkot+7RGOrUJqO0/qL8Jk/WfhPbA9az6
 gA5BPvQiUWVCo5NacOoHoOVVQgx93eYwCxVPFnu8NdVWdMgtFZBNn0hBpSNA5HyMoV
 bWXtGf1NXIZsfAVIu4AsjR/Xw50aKht2TozjHyv4dMwblmVy6Gazo8yqLTZtfQxvpc
 JfKB47Zq6IhUYxmwqRb17FinaoCcEsfu6D5rRPSYep5hOJmrHB/kMKw3a7nT7VAgTr
 1DFEB2JwnvLMAvIUUBPyeqLcVV7cidCncR0JrXs2CxLBUnHAPFGiHAilbCLUDNBmQK
 NUkQ9VTcMkjgQ==
From: Marek Vasut <marex@denx.de>
To: linux-phy@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>, Richard Zhu <hongxing.zhu@nxp.com>,
 Fabio Estevam <festevam@denx.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] phy: freescale: imx8m-pcie: Handle
 IMX8_PCIE_REFCLK_PAD_UNUSED
Date: Wed, 13 Apr 2022 16:07:10 +0200
Message-Id: <20220413140710.10074-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_070733_182357_52A01256 
X-CRM114-Status: GOOD (  12.85  )
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

The 'fsl,refclk-pad-mode' DT property used to select clock source for
PCIe PHY can have either of three values, IMX8_PCIE_REFCLK_PAD_INPUT,
IMX8_PCIE_REFCLK_PAD_OUTPUT, IMX8_PCIE_REFCLK_PAD_UNUSED. The first
two options are handled correctly by the driver, the last one is not,
this patch implements support for the last option.

The IMX8_PCIE_REFCLK_PAD_INPUT means PCIE_RESREF is PHY clock input,
the IMX8_PCIE_REFCLK_PAD_OUTPUT means PHY clock are sourced from SoC
internal PLL and output to PCIE_RESREF external IO pin. The last
IMX8_PCIE_REFCLK_PAD_UNUSED is a combination of previous two, PHY
clock are sourced from SoC internal PLL and not output anywhere.

Reviewed-by: Richard Zhu <hongxing.zhu@nxp.com>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Peng Fan <peng.fan@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
To: linux-phy@lists.infradead.org
---
V2: Rebase on phy/next
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index f1eb03ba25d61..ad7d2edfc4146 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -94,15 +94,21 @@ static int imx8_pcie_phy_init(struct phy *phy)
 			   IMX8MM_GPR_PCIE_CMN_RST);
 	usleep_range(200, 500);
 
-	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT) {
+	if (pad_mode == IMX8_PCIE_REFCLK_PAD_INPUT ||
+	    pad_mode == IMX8_PCIE_REFCLK_PAD_UNUSED) {
 		/* Configure the pad as input */
 		val = readl(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
 		writel(val & ~ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
 		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
-	} else if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT) {
+	} else {
 		/* Configure the PHY to output the refclock via pad */
 		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_EN,
 		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG061);
+	}
+
+	if (pad_mode == IMX8_PCIE_REFCLK_PAD_OUTPUT ||
+	    pad_mode == IMX8_PCIE_REFCLK_PAD_UNUSED) {
+		/* Source clock from SoC internal PLL */
 		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
 		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
 		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
