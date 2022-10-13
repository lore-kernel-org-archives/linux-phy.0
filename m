Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C40A3C433FE
	for <linux-phy@archiver.kernel.org>; Thu, 13 Oct 2022 02:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScFgyJWTWKwjVrgQf+7cjVvLZqbgK+TmsvZsZJmBsu4=; b=Sr9HyFk4LP/GOD
	CWMg4/QDZnbrn60szrAJpNrJ3O0Jb1phkC7XBMjxmlk4trgZMa2ognl0EOk2G3jdgJs0PglTYn0Tk
	zy+WVfkDVi4GdN7r0eXyOtOhFfizQhui7+nWfaTP0KZ21om+bWdDcj9uOIJ9JEyRAVPPUJv8yLz4W
	rB325yZ5v+OvqbS75K1tQ4qjd1MqXI7PRgsrV3TsagY7c/hbd6AbulhNWNUw1ivxyxB+BU9823n8p
	I/FHwkGfiRDGMQARXPGTCAYPnNJCf57SnifdwhkdMtTdHvwJTstUuuiWXyVMMJ/Cy7ohk44HGZUH3
	CbFgemU/L9VitHFIv4rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oincx-00AEit-U3; Thu, 13 Oct 2022 02:07:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oincd-00AEc9-7I; Thu, 13 Oct 2022 02:06:56 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5C4D021101C;
	Thu, 13 Oct 2022 04:06:53 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 23111211023;
	Thu, 13 Oct 2022 04:06:53 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 74E371802204;
	Thu, 13 Oct 2022 10:06:51 +0800 (+08)
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
	linux-imx@nxp.com,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [RESEND v12 2/4] phy: freescale: imx8m-pcie: Refine register definitions
Date: Thu, 13 Oct 2022 09:47:00 +0800
Message-Id: <1665625622-20551-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
References: <1665625622-20551-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_190655_434402_099662CF 
X-CRM114-Status: UNSURE (   8.27  )
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

No function changes, refine PHY register definitions.
- Keep align with other CMN PHY registers, refine the definitions of
  PHY_CMN_REG75.
- Remove two BIT definitions that are not used at all.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Marek Vasut <marex@denx.de>
Tested-by: Richard Leitner <richard.leitner@skidata.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index c93286483b42..3c8c255499cd 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -31,12 +31,10 @@
 #define IMX8MM_PCIE_PHY_CMN_REG065	0x194
 #define  ANA_AUX_RX_TERM		(BIT(7) | BIT(4))
 #define  ANA_AUX_TX_LVL			GENMASK(3, 0)
-#define IMX8MM_PCIE_PHY_CMN_REG75	0x1D4
-#define  PCIE_PHY_CMN_REG75_PLL_DONE	0x3
+#define IMX8MM_PCIE_PHY_CMN_REG075	0x1D4
+#define  ANA_PLL_DONE			0x3
 #define PCIE_PHY_TRSV_REG5		0x414
-#define  PCIE_PHY_TRSV_REG5_GEN1_DEEMP	0x2D
 #define PCIE_PHY_TRSV_REG6		0x418
-#define  PCIE_PHY_TRSV_REG6_GEN2_DEEMP	0xF
 
 #define IMX8MM_GPR_PCIE_REF_CLK_SEL	GENMASK(25, 24)
 #define IMX8MM_GPR_PCIE_REF_CLK_PLL	FIELD_PREP(IMX8MM_GPR_PCIE_REF_CLK_SEL, 0x3)
@@ -131,9 +129,8 @@ static int imx8_pcie_phy_power_on(struct phy *phy)
 	reset_control_deassert(imx8_phy->reset);
 
 	/* Polling to check the phy is ready or not. */
-	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG75,
-				 val, val == PCIE_PHY_CMN_REG75_PLL_DONE,
-				 10, 20000);
+	ret = readl_poll_timeout(imx8_phy->base + IMX8MM_PCIE_PHY_CMN_REG075,
+				 val, val == ANA_PLL_DONE, 10, 20000);
 	return ret;
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
