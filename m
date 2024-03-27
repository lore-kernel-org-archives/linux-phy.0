Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 923AEC54E67
	for <linux-phy@archiver.kernel.org>; Wed, 27 Mar 2024 07:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrvm0g8tfTeKSv8BNufaIwYt/j0E6vpKaQwnha4t+Fw=; b=0CJWaDwZVIchfz
	zwyMeuPVF552OZn5HzSbpPFkR13J2UTrUfpaqY4RrIuUkGaUjdZ4iHzouYKWDEvAD1v1v6Ek0uu2i
	pu6ZiuAiF6j9HL6zIyhDQGbC/9MDDqPINMLC3PLteiLhvU6UTTMQ6eYwMUVvnttuhYfUpzWnRZQEI
	k4+yMW8WBxycmdUqh3HjL8bAfQkUupXknTF9vL49rX+f544dR4pzXNw9xGgLJ1dTmTPd35z/v3H7v
	7nRKqlxL/+ybeujIJLJTkjTx1szondZVdoXwJPBpOFkoWPeojLdTl6rjiMEhp5+00IHsG9FfN/y0z
	A7kj5aQvdAze4R0nUCEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpNaM-00000007nec-0oD3;
	Wed, 27 Mar 2024 07:20:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpNaK-00000007ne5-2GJn;
	Wed, 27 Mar 2024 07:20:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=wnNVEOncldO1On7KO8fAvEAupvlzSNB7wVXjAeDRXl8=; b=eEeY0TovUIZWUtwQWRmk03KBcd
	oBY9rL1IzCPwH8MHX4WzjQbEzo+atWA8L8l1624AnzugpPPiorq7vUDXlZQjk4mkzT234Sts3z/nh
	ASseuLTvbvtzK9MiHiqnL5Qhz0GOa8dnCNUUzcclTTEomZIuVBMcNwGgq3uNBj93pThlF0jHyKTxv
	0ya3heNVp4HH9BSvuCn9GfQF3KZjcexckYaxReAvNFqfi8boPpKWK9HFTHYTz+5dA9QhUwQzn5L6Q
	j1le5Fmg1O1H51jGJLiISReAObf+f6V89HRClGQDf8KSSVbBJ0d+llvsCMkFsp3WcXZKKHty+Db70
	8mKcMAHw==;
Received: from mout.perfora.net ([74.208.4.194])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpNaG-000000005hS-1f6P;
	Wed, 27 Mar 2024 07:20:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziswiler.com;
	s=s1-ionos; t=1711524005; x=1712128805; i=marcel@ziswiler.com;
	bh=wnNVEOncldO1On7KO8fAvEAupvlzSNB7wVXjAeDRXl8=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=B+dGVDVnTFoO4u/IWt9pIZKnBjwU3o/Sn78+04Q3wr3UDgNoZmLYJPzCaa31iYTF
	 PvVYMcBVryIIPFI1dO7QbcHZuzdPG0RUGOI+T/c7CrrwvMsaYcLOVDKr45PSIDTnY
	 7WI662hjcCHUbauBAHMBaaHdqcI9dpHqC3nSfhnSeWeqgjhhR/s31JFQrC2eXPeMn
	 3JxvZiIWvTYy2t8tE792StegeSHOImTcJtKANLv+YFKY18Erp5tkvx3eRhy8IBn7I
	 OvNgPjTGe1S/skQxK79vuFWsD0MDWfckTOj7Eq+99zQdpdSV2VznpwOFVvskoJdtV
	 tY+od10URcnvELY6aw==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost.localdomain ([213.55.224.253]) by mrelay.perfora.net
 (mreueus002 [74.208.5.2]) with ESMTPSA (Nemesis) id 0MVen3-1sMdNT3wFD-00OqWK;
 Wed, 27 Mar 2024 08:20:05 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: linux-phy@lists.infradead.org
Cc: linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	stable@vger.kernel.org,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	Vinod Koul <vkoul@kernel.org>,
	Yang Li <yang.lee@linux.alibaba.com>,
	imx@lists.linux.dev
Subject: [PATCH v2] phy: freescale: imx8m-pcie: fix pcie link-up instability
Date: Wed, 27 Mar 2024 08:19:37 +0100
Message-ID: <20240327071946.8869-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:lbH4shU1mJFfwL/g76O9vJC4HBEY1pkPhgwYOBwWvJviKC6wYBk
 eSgVNuWN7mq68FVIVZu8Ignbe3vMNcizoCe9oBipJoJlfDe7Jctbka4ZbAcMVtjeDzkQDg8
 HZRospSzMu7DDOIz6yqf37LI/j1T5QUmEZQpvmr7fLyj128cxl6RnwoRuSkU5PIdMLG6ucU
 SY9JIMQnO60+H5A2M4pJw==
UI-OutboundReport: notjunk:1;M01:P0:CIxx/7qf/R8=;cr8oAoSV4b4/HSUiSremUO3fQ1n
 GZac4UIL79J6yAl89goDCpau85ZNY6AprrHuSrxuBINAhNjtX9j+gQLbd0CReMXyvY8slULHt
 RnvU8jAd/OLNLUo5dzTNBqulw3FKD3pKS21x2e0HB3j3dHvuDSb57IpIpOCIBMdJORUIFGLUN
 viPumuf2NyBMt+keg41XiY826R+ycUSnT94TFZHhPSyTPYSY5ByJbsFA5jlK0C+bX3tDZBglK
 XsudkDcuQIsOw2Cnbt90nctrOe5Y0+PTvO3DbNA8ByKfdn4m4VTvYJM2ZOy9D7hVD36ui1pVQ
 wRRWgTyY02hb5QCYXr8yrmmCO0cuT8ogBxxNPjcX8zW36Gsr2KnmgIc7E0+xwAPNGZceN8cwT
 hWocNhGrijq46m/nE6qjY22woNc37GP5ucuPxS/eBsOMwh23dtzG7KQ6KzXZfGFNKhzl88C+r
 6jPAvm84oDavTj7X/r7G7tMCaJgrcS1v2us0CzW1LbUpGiz/ibNLPxuy3KB6dfAQ0K7pK+zce
 DJ1qfM8Azr1iiwCwm1wCQQBnx0JBtFf7xbduYQZ+WQbohbOAc3jYLBnQdJm5+oksFAYjgyjCN
 qR8irzH/IQdhkaXIBg7RA/RztGUP9oNlCsRKsHo2QTiHFmD3IEOntuQQu/Zc6Zm8cQAAMm2eR
 pAUxJ7kzQLxQfvQVIADTRuGuUm0MGOmGN3rG070Hn3oO1o2WSpSLqhjkn1BiOfHq9mt2aWOHR
 Ujiu6Q+vXMtEZFAGVCQrTIKTi56sv8rrI7xqMw1JZUnAddE68YCgXY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_072028_932061_518036A6 
X-CRM114-Status: GOOD (  12.56  )
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

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

On the i.MX 8M Mini, the AUX_PLL_REFCLK_SEL has to be left at its reset
default of AUX_IN (PLL clock).

Background Information:
In our automated testing setup, we use Delock Mini-PCIe SATA cards [1].
While this setup has proven very stable overall we noticed upstream on
the i.MX 8M Mini fails quite regularly (about 50/50) to bring up the
PCIe link while with NXP's downstream BSP 5.15.71_2.2.2 it always works.
As that old downstream stuff was quite different, I first also tried
NXP's latest downstream BSP 6.1.55_2.2.0 which from a PCIe point of view
is fairly vanilla, however, also there the PCIe link-up was not stable.
Comparing and debugging I noticed that upstream explicitly configures
the AUX_PLL_REFCLK_SEL to I_PLL_REFCLK_FROM_SYSPLL while working
downstream [2] leaving it at reset defaults of AUX_IN (PLL clock).
Unfortunately, the TRM does not mention any further details about this
register (both for the i.MX 8M Mini as well as the Plus).
NXP confirmed their validation codes for the i.MX8MM PCIe doesn't
configure cmn_reg063 (offset: 0x18C).
BTW: On the i.MX 8M Plus we have not seen any issues with PCIe with the
exact same setup which is why I left it unchanged.

[1] https://www.delock.com/produkt/95233/merkmale.html
[2] https://github.com/nxp-imx/linux-imx/blob/lf-5.15.71-2.2.0/drivers/pci/controller/dwc/pci-imx6.c#L1548

Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")

Cc: stable@vger.kernel.org # 6.1.x: ca679c49: phy: freescale: imx8m-pcie: Refine i.MX8MM PCIe PHY driver
Cc: stable@vger.kernel.org # 6.1.x
Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Richard Zhu <hongxing.zhu@nxp.com>
Link: https://lore.kernel.org/all/AS8PR04MB867661386FEA07649771FBE18C362@AS8PR04MB8676.eurprd04.prod.outlook.com

---

Changes in v2:
- Reword the commmit message.
- Meld the background information from the cover letter into the commit
  message as suggested by Fabio. Thanks!
- Document NXP's confirmation from their validation codes and add
  Richard Zhu's reviewed-by. Thanks!

 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index b700f52b7b67..11fcb1867118 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -110,8 +110,10 @@ static int imx8_pcie_phy_power_on(struct phy *phy)
 		/* Source clock from SoC internal PLL */
 		writel(ANA_PLL_CLK_OUT_TO_EXT_IO_SEL,
 		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG062);
-		writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
-		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
+		if (imx8_phy->drvdata->variant != IMX8MM) {
+			writel(AUX_PLL_REFCLK_SEL_SYS_PLL,
+			       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG063);
+		}
 		val = ANA_AUX_RX_TX_SEL_TX | ANA_AUX_TX_TERM;
 		writel(val | ANA_AUX_RX_TERM_GND_EN,
 		       imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG064);
--
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
