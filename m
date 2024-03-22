Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32BD8C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 13:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANR/qA4RY56t25F6GPxiVweN3xusDv1enVNO//rZZWs=; b=xGh1Tow/8ZTr1x
	8Ym7oNhTFxmsY7+kddy2HKMoFi0yCsc4vnH0rkuPmflrX/pxcH1jKoz/NcVfYf+Gqw7XYcdkeMdci
	imW8GdYZD9AB28z/8XECxoxK+Hbmxgd1JB+oF/wDIkbjGft7jPlzLKvpwUKerI0FT6yNld52esQSJ
	IBwR46cOgcwvn440/CnpxszhLPi8aZrvB5LUjoVn/utLbXtFnxkGZ/wxz/h+JelkRzS9/mkEs8jbB
	wE4Yvy+5wSiHw9ChU1jMsvC9k5/HiMFLnfZcYkNEPSnbjt9+g2k8d9gAuT9Gw1NQQO+cSA1TOC6OZ
	JIf2XIIYEStTqx29/Hfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnecM-00000007Eg0-1Jnz;
	Fri, 22 Mar 2024 13:07:30 +0000
Received: from mout.perfora.net ([74.208.4.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnecG-00000007Ee7-2iCP;
	Fri, 22 Mar 2024 13:07:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziswiler.com;
	s=s1-ionos; t=1711112824; x=1711717624; i=marcel@ziswiler.com;
	bh=eDcvJPYLU8aoGBtgte1WWvaJ3vzttS1IgG9REDM5l68=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:
	 References;
	b=0B3oBvcOCuJE7BwDBzLmKIwE5e5SWdtzroFvwJ1dutLNEGsAZ0NazGTKn40POTRP
	 bCAC09Hjqbl4HK6jug5+pu4FxjluUphwmrFGcBQ9rPLhJUIUg4ryblHpofypCEERA
	 ZkjrqJ5awbO14eKl4XdLTmPUbXhIrcWgWwIHylUv+5A8Evzl2QQMwAZSOMQZyT1xg
	 PRQ1Z7BMv6O+nUBl3UrjUsJIhAxUeeveNosqN/U3OK/GT74XzKuTuHRNHr4DPyLeF
	 9hw6e3xXVGYp5RsZN5PixFmIR1LaRECJNkg/pyBNjqMC3UlAdUh1tuQVP1UkcOJ42
	 gPyqQoQBA5x0J7SMCA==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from localhost.localdomain ([84.227.227.254]) by mrelay.perfora.net
 (mreueus003 [74.208.5.2]) with ESMTPSA (Nemesis) id 0Lpu1h-1r97C30djL-00flO6;
 Fri, 22 Mar 2024 14:07:04 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: linux-phy@lists.infradead.org
Cc: linux-imx@nxp.com,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>,
	linux-kernel@vger.kernel.org,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Tim Harvey <tharvey@gateworks.com>,
	Vinod Koul <vkoul@kernel.org>,
	Yang Li <yang.lee@linux.alibaba.com>,
	imx@lists.linux.dev
Subject: [PATCH v1 1/1] phy: freescale: imx8m-pcie: fix pcie link-up instability
Date: Fri, 22 Mar 2024 14:06:32 +0100
Message-ID: <20240322130646.1016630-2-marcel@ziswiler.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240322130646.1016630-1-marcel@ziswiler.com>
References: <20240322130646.1016630-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:hSP/Rc8v7m9d5HZM7O8bF6SvRxTvUu72KJswzi+HlbsLFXLs2bK
 eLpJzjfRHpiST6zEqcYF962ELDUUJBDUV3nm0y8mVIdvj6RWC9q7cGGmNmvOtuFB+lJzW1x
 OdiQ7GnUNfjeWY6i7hd1m6fNwsTppZGQvSv9kifwA7IU0xfr8+xSBbQOKQrDD32PmM9wphB
 RyQOYxk9uZRALvsWq78Mw==
UI-OutboundReport: notjunk:1;M01:P0:uFAvp8cGkn8=;n2XRoOwfdafhanJs5GoSqZTa42j
 NdJx0oaQGz8lcUw1mJ3/rJfnQvET/+eJ7BWAVTZFDoj1lY6oBqlotKIn8EQGNwHV/DaGMWkcC
 O1HNr27u3Iz3LH41h4QQ83D+tYlmgIxkd6/9XGUARu5oUY7R+CqpYK+GIsVhBZniR9/w87nxS
 9E+OE2QfO5S/J5e5CQGWH8OvE6jXLG3sOnHnEKouTPbBbu3GYojX/lgjZI1U+tHlHag86LcCw
 jw7itWArMx29QjSiQEr8tGM32CgBnCO0BuBj21qt0hdni46TgJaZttkOGYXvNJGvt0I7NaJid
 zC0O3+zCWqQI1oEHi3e1CmaHqf/Ih3rsWeZTp8+OglMmqvGx9ZtNYAc6CPT/lmmjp7Jy60XSP
 uuUT5MXg2XghrVvd5RhDOQlivlgzJ5TBQcEIpMINIiHscu1MAHGLxYvm8d56tR6Z6UnhOJBFE
 BpP3v2iWfG+oK0R87824Cse/BV/VqVvi6VvBcgCc3H8j+8ByYSUjfLp/Ez9G1panhRmaspM31
 lSq00ebEka1SDrXKFOZiZtH11iIqV4kG6ne9Z4EPot0ISpcGQvhBRxPpjIHwYAyUIBk2WHgmA
 KcmDYYP570ysZ+4eCm+TMUaOhiChXAm60uovdSeKbzjn5osCUEzAwFBRIOkSTl2eXywwWzKnv
 uLxpvmAOppAi/t/XOc6d9nXBtBOkDtcVrw13FuVGHilptcKtpZfe0JGJYmX5VxAegZQbuJRMw
 Rt41w4zyyaKEXC9m4OahmA2/SHgw7GB1WzFwNNZawzlXzD+aM19azc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_060725_056406_6460E346 
X-CRM114-Status: UNSURE (   7.15  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Leaving AUX_PLL_REFCLK_SEL at its reset default of AUX_IN (PLL clock)
proves to be more stable on the i.MX 8M Mini.

Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
---

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
