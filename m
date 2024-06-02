Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C47C25B76
	for <linux-phy@archiver.kernel.org>; Sun,  2 Jun 2024 02:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aVqJ6Om4dR4FTE5Z0+hQHGdvJ2aSORUIRP82q6k7XH0=; b=se75dJy9Vf94GA
	plcaKvw9E1ktSs+KlYN9yBdMs23qAuDo8MlWF5pWd024Xgciso4xM0pfftWbWDlqECL91gPWchvxP
	ZEQ8XetY94fQqt2kA3iPqB82rW3w25y/SOBCAQn2CA2CltrIsf27i+JNi56Xp5aVppW+dBrIENh0P
	llCIxMrOBV/wegu8hdUkTf0EQ46LHxLrDmOkEjfkdY1YCue6AjZPmYzJGtkdg2HhGXwSgR0B8PTM+
	CltYx7z2W4vjiBvFUaEjWA0a0xVFDxB2jn6QluyGRbFU7H36Txz8FNXQYGhvRG3hcW/VPfQYcMF9k
	h7ucXHKWRfPQ91PAcPmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDam5-0000000DbXb-2djU;
	Sun, 02 Jun 2024 02:16:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDam2-0000000DbWG-0CpE;
	Sun, 02 Jun 2024 02:16:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 4522GYI5121144;
	Sat, 1 Jun 2024 21:16:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1717294594;
	bh=oNE02bEOusUg2z+KZ/gOZ+49ywAiP3kNRmDQXQDhS7M=;
	h=From:To:CC:Subject:Date;
	b=DBvq5xWavY8x6CMfBX8JzQKmN0aBWJco/lCczL1MeEY8ZfPwS2PHDwv0LQQKj3xcK
	 SWMiHUglZF71ql7Sg01utPqFmfwSJ8mCvKTOpX5aNyxchOfUkoNl8X3TiUAxDdluOA
	 e/mxS4+azLIATGMfE2n9vdtpu60aW+IJKwfslQKk=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 4522GYWM046428
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sat, 1 Jun 2024 21:16:34 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Sat, 1
 Jun 2024 21:16:34 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Sat, 1 Jun 2024 21:16:34 -0500
Received: from uda0492258.dhcp.ti.com (uda0492258.dhcp.ti.com [172.24.227.9])
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 4522GT1D000696;
	Sat, 1 Jun 2024 21:16:30 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <sjakhade@cadence.com>,
        <rogerq@kernel.org>, <robh@kernel.org>, <mkl@pengutronix.de>,
        <mripard@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH] phy: cadence-torrent: Add SGMII + QSGMII multilink configuration for 100MHz refclk
Date: Sun, 2 Jun 2024 07:46:29 +0530
Message-ID: <20240602021629.3027660-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_191642_226925_1F9F66E1 
X-CRM114-Status: UNSURE (   9.19  )
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

From: Swapnil Jakhade <sjakhade@cadence.com>

Add register sequences for SGMII + QSGMII multilink configuration
for 100MHz refclk.

Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---

Hello,

This patch is based on linux-next tagged next-20240531.

Regards,
Siddharth.

 drivers/phy/cadence/phy-cadence-torrent.c | 64 +++++++++++++++++++++--
 1 file changed, 60 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 95924a09960c..651f8fc969d8 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -3074,6 +3074,26 @@ static void cdns_torrent_phy_remove(struct platform_device *pdev)
 	cdns_torrent_clk_cleanup(cdns_phy);
 }
 
+/* SGMII and QSGMII link configuration */
+static struct cdns_reg_pairs sgmii_qsgmii_link_cmn_regs[] = {
+	{0x0002, PHY_PLL_CFG}
+};
+
+static struct cdns_reg_pairs sgmii_qsgmii_xcvr_diag_ln_regs[] = {
+	{0x0003, XCVR_DIAG_HSCLK_DIV},
+	{0x0113, XCVR_DIAG_PLLDRC_CTRL}
+};
+
+static struct cdns_torrent_vals sgmii_qsgmii_link_cmn_vals = {
+	.reg_pairs = sgmii_qsgmii_link_cmn_regs,
+	.num_regs = ARRAY_SIZE(sgmii_qsgmii_link_cmn_regs),
+};
+
+static struct cdns_torrent_vals sgmii_qsgmii_xcvr_diag_ln_vals = {
+	.reg_pairs = sgmii_qsgmii_xcvr_diag_ln_regs,
+	.num_regs = ARRAY_SIZE(sgmii_qsgmii_xcvr_diag_ln_regs),
+};
+
 /* USB and DP link configuration */
 static struct cdns_reg_pairs usb_dp_link_cmn_regs[] = {
 	{0x0002, PHY_PLL_CFG},
@@ -4043,7 +4063,8 @@ static struct cdns_reg_pairs sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x04A2, TX_PSC_A2},
 	{0x04A2, TX_PSC_A3},
 	{0x0000, TX_TXCC_CPOST_MULT_00},
-	{0x00B3, DRV_DIAG_TX_DRV}
+	{0x00B3, DRV_DIAG_TX_DRV},
+	{0x0002, XCVR_DIAG_PSC_OVRD}
 };
 
 static struct cdns_reg_pairs ti_sgmii_100_no_ssc_tx_ln_regs[] = {
@@ -4052,7 +4073,8 @@ static struct cdns_reg_pairs ti_sgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x04A2, TX_PSC_A3},
 	{0x0000, TX_TXCC_CPOST_MULT_00},
 	{0x00B3, DRV_DIAG_TX_DRV},
-	{0x4000, XCVR_DIAG_RXCLK_CTRL},
+	{0x0002, XCVR_DIAG_PSC_OVRD},
+	{0x4000, XCVR_DIAG_RXCLK_CTRL}
 };
 
 static struct cdns_reg_pairs sgmii_100_no_ssc_rx_ln_regs[] = {
@@ -4219,7 +4241,8 @@ static struct cdns_reg_pairs qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x04A2, TX_PSC_A3},
 	{0x0000, TX_TXCC_CPOST_MULT_00},
 	{0x0011, TX_TXCC_MGNFS_MULT_100},
-	{0x0003, DRV_DIAG_TX_DRV}
+	{0x0003, DRV_DIAG_TX_DRV},
+	{0x0002, XCVR_DIAG_PSC_OVRD}
 };
 
 static struct cdns_reg_pairs ti_qsgmii_100_no_ssc_tx_ln_regs[] = {
@@ -4229,7 +4252,8 @@ static struct cdns_reg_pairs ti_qsgmii_100_no_ssc_tx_ln_regs[] = {
 	{0x0000, TX_TXCC_CPOST_MULT_00},
 	{0x0011, TX_TXCC_MGNFS_MULT_100},
 	{0x0003, DRV_DIAG_TX_DRV},
-	{0x4000, XCVR_DIAG_RXCLK_CTRL},
+	{0x0002, XCVR_DIAG_PSC_OVRD},
+	{0x4000, XCVR_DIAG_RXCLK_CTRL}
 };
 
 static struct cdns_reg_pairs qsgmii_100_no_ssc_rx_ln_regs[] = {
@@ -4541,11 +4565,13 @@ static struct cdns_torrent_vals_entry link_cmn_vals_entries[] = {
 
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_NONE), &sl_sgmii_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_PCIE), &pcie_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_QSGMII), &sgmii_qsgmii_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_USB), &usb_sgmii_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_USXGMII), &usxgmii_sgmii_link_cmn_vals},
 
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_NONE), &sl_sgmii_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_PCIE), &pcie_sgmii_link_cmn_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_SGMII), &sgmii_qsgmii_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_USB), &usb_sgmii_link_cmn_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_USXGMII), &usxgmii_sgmii_link_cmn_vals},
 
@@ -4575,11 +4601,13 @@ static struct cdns_torrent_vals_entry xcvr_diag_vals_entries[] = {
 
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_NONE), &sl_sgmii_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_PCIE), &sgmii_pcie_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_QSGMII), &sgmii_qsgmii_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_USB), &sgmii_usb_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_SGMII, TYPE_USXGMII), &sgmii_usxgmii_xcvr_diag_ln_vals},
 
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_NONE), &sl_sgmii_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_PCIE), &sgmii_pcie_xcvr_diag_ln_vals},
+	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_SGMII), &sgmii_qsgmii_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_USB), &sgmii_usb_xcvr_diag_ln_vals},
 	{CDNS_TORRENT_KEY_ANYCLK(TYPE_QSGMII, TYPE_USXGMII), &sgmii_usxgmii_xcvr_diag_ln_vals},
 
@@ -4635,6 +4663,8 @@ static struct cdns_torrent_vals_entry cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_int_ssc_cmn_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &sl_sgmii_100_no_ssc_cmn_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
@@ -4645,6 +4675,8 @@ static struct cdns_torrent_vals_entry cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_int_ssc_cmn_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &sl_qsgmii_100_no_ssc_cmn_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
@@ -4713,6 +4745,8 @@ static struct cdns_torrent_vals_entry cdns_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &sgmii_100_no_ssc_tx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_tx_ln_vals},
@@ -4723,6 +4757,8 @@ static struct cdns_torrent_vals_entry cdns_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_tx_ln_vals},
@@ -4791,6 +4827,8 @@ static struct cdns_torrent_vals_entry cdns_rx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
@@ -4801,6 +4839,8 @@ static struct cdns_torrent_vals_entry cdns_rx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
@@ -4905,6 +4945,8 @@ static struct cdns_torrent_vals_entry ti_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
@@ -4915,6 +4957,8 @@ static struct cdns_torrent_vals_entry ti_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
@@ -5017,6 +5061,8 @@ static struct cdns_torrent_vals_entry ti_j7200_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_int_ssc_cmn_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &sl_sgmii_100_no_ssc_cmn_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_cmn_vals},
@@ -5027,6 +5073,8 @@ static struct cdns_torrent_vals_entry ti_j7200_cmn_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_int_ssc_cmn_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &sl_qsgmii_100_no_ssc_cmn_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_cmn_vals},
@@ -5095,6 +5143,8 @@ static struct cdns_torrent_vals_entry ti_j7200_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &ti_sgmii_100_no_ssc_tx_ln_vals},
@@ -5105,6 +5155,8 @@ static struct cdns_torrent_vals_entry ti_j7200_tx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &ti_qsgmii_100_no_ssc_tx_ln_vals},
@@ -5173,6 +5225,8 @@ static struct cdns_torrent_vals_entry ti_j7200_rx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, EXTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_PCIE, INTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_QSGMII, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, NO_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, EXTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_SGMII, TYPE_USB, INTERNAL_SSC), &sgmii_100_no_ssc_rx_ln_vals},
@@ -5183,6 +5237,8 @@ static struct cdns_torrent_vals_entry ti_j7200_rx_ln_vals_entries[] = {
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, EXTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_PCIE, INTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 
+	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_SGMII, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
+
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, NO_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, EXTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
 	{CDNS_TORRENT_KEY(CLK_100_MHZ, CLK_100_MHZ, TYPE_QSGMII, TYPE_USB, INTERNAL_SSC), &qsgmii_100_no_ssc_rx_ln_vals},
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
