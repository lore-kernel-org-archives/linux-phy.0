Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E52C433F5
	for <linux-phy@archiver.kernel.org>; Sat, 12 Mar 2022 01:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EPLbtfiGc3Buli5JbP2Tres8ubrrtnQJXTnu+MLsZ5E=; b=Zn1hAL6JGHM9EZ
	D9J0w7/IaLdls27LNEeTaWAaiiHs/MikJUq4E8NrCliS3JIn97r1iFASWzQ86LIqTEVYNHN1w5GIu
	LUMDVx48Y5+pXfgqxNF19FulDnVQlVQiqI9MDpuoRsek2d2ZZs0Sv0X0bze58hzcPN04oNbUBcUtz
	90jjxX0OsKEO/SHqecVpBaw36YpRCcEn9DMhCA9VgkQadp6vAB1MtH5Mm4u8JUfYjuB9oyQeKS6vH
	F+WVVveEsR7APWsV1YXTsa4QYeJAKACx4QJSiGHJkGDALzoEqJbsT0o6JTePpYLS1XHRCzKEXq/sJ
	6en9aIRrGoJmplC6XiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSqiT-000XkC-1L; Sat, 12 Mar 2022 01:38:45 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSqiH-000Xjc-20; Sat, 12 Mar 2022 01:38:34 +0000
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: marex@denx.de)
 by phobos.denx.de (Postfix) with ESMTPSA id CDEB083A70;
 Sat, 12 Mar 2022 02:38:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
 s=phobos-20191101; t=1647049110;
 bh=LalfM2Ni2qKVhV43xeqKE3vCdqntn1pTXx48Vmk17yY=;
 h=From:To:Cc:Subject:Date:From;
 b=nHASEnN+f3MAScHQicmzobJchyi7ShA87O566STCk/n7+F/sjH8n2RrrbKLyUCDDG
 UT3FTW9FJMR00zSOKSLPm6e/3/Pw51QrW7dk0rsjxVsoxqj5DNjvrhRjVRgu/4nvb9
 gFxC1jbKi0QY/sr2ZVO7MCHivAT2fOFXh16QIavMNuZp2yRYapZPHHnpmlpFd0mFqx
 8IqI0PUN6ftGRRSjrLdVvmQyTFyS15JfWqds09bQHjsaBK8IrG9QqOtRbLRV0gVdNg
 ip4QVB+4IdDQOX5nMkeRjNz9oJ5z5L/B3rAsYqz/EypP8m6JSK7Ffw+dI/T8rrRgVF
 1QigX4RRtcrRw==
From: Marek Vasut <marex@denx.de>
To: linux-phy@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@denx.de>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] phy: freescale: imx8m-pcie: Handle IMX8_PCIE_REFCLK_PAD_UNUSED
Date: Sat, 12 Mar 2022 02:38:12 +0100
Message-Id: <20220312013812.169671-1-marex@denx.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_173833_467340_4AC2A3BD 
X-CRM114-Status: GOOD (  13.37  )
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
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index e56954063108c..7d8e6991279f4 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -156,15 +156,21 @@ static int imx8_pcie_phy_init(struct phy *phy)
 		break;
 	}
 
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
