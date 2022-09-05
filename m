Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91BF8C6FA82
	for <linux-phy@archiver.kernel.org>; Mon,  5 Sep 2022 03:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TzOy4brVXz71Ja3FzPtDjM+k9UQhOYGzaFdkhTsqwRc=; b=c6ZiMc7ErZpPzj
	9NpnsyYGVVLn5zgUTXRAaKUglCuPz83SEyeEIX21wZuePjyNYhtJAAoiqEdAlHa0LZSeZ3+ZLLKgF
	RW0cm3YYGZRjK7tXDSRN7ioNAH1fHfCvGUWf95/g83S6OMsMFQ6gtJlp5QcsGUIS/tSgVmF+oHcG4
	krKI3UxHzDv3/aLbwipD0DZtjpkNjNeJ4kkN4/gR8/C5Y++JA4ZpAjdHHZF1CaML9c1E1vO9c/Q53
	fvsSUco4v/nr76bmm2I26sZRQfKtjjagOCX4TaMsxupYtcyrmwWYOgrU2plDjFCbcwcZIs5Kj2bV6
	qV8U7A5MmESzmVLaEOqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV2XZ-006hf3-JA; Mon, 05 Sep 2022 03:12:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV22p-005yGT-On; Mon, 05 Sep 2022 02:41:09 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0FBDC1A1CE4;
	Mon,  5 Sep 2022 04:40:59 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CDF841A1CDF;
	Mon,  5 Sep 2022 04:40:58 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 2D67D1820F5B;
	Mon,  5 Sep 2022 10:40:57 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: a.fatoum@pengutronix.de,
	l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	vkoul@kernel.org,
	marcel.ziswiler@toradex.com,
	kishon@ti.com
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH v3] phy: freescale: imx8m-pcie: Fix the wrong order of phy_init() and phy_power_on()
Date: Mon,  5 Sep 2022 10:23:03 +0800
Message-Id: <1662344583-18874-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_194105_423041_618F2C89 
X-CRM114-Status: GOOD (  10.16  )
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

Refer to phy_core driver, phy_init() must be called before phy_power_on().
Fix the wrong order of phy_init() and phy_power_on() here.

Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/pci/controller/dwc/pci-imx6.c      | 6 +++---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 8 ++++----
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 6e5debdbc55b..b5f0de455a7b 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -935,7 +935,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
 	}
 
 	if (imx6_pcie->phy) {
-		ret = phy_power_on(imx6_pcie->phy);
+		ret = phy_init(imx6_pcie->phy);
 		if (ret) {
 			dev_err(dev, "pcie PHY power up failed\n");
 			goto err_clk_disable;
@@ -949,7 +949,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
 	}
 
 	if (imx6_pcie->phy) {
-		ret = phy_init(imx6_pcie->phy);
+		ret = phy_power_on(imx6_pcie->phy);
 		if (ret) {
 			dev_err(dev, "waiting for PHY ready timeout!\n");
 			goto err_phy_off;
@@ -961,7 +961,7 @@ static int imx6_pcie_host_init(struct dw_pcie_rp *pp)
 
 err_phy_off:
 	if (imx6_pcie->phy)
-		phy_power_off(imx6_pcie->phy);
+		phy_exit(imx6_pcie->phy);
 err_clk_disable:
 	imx6_pcie_clk_disable(imx6_pcie);
 err_reg_disable:
diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index ad7d2edfc414..c93286483b42 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -59,7 +59,7 @@ struct imx8_pcie_phy {
 	bool			clkreq_unused;
 };
 
-static int imx8_pcie_phy_init(struct phy *phy)
+static int imx8_pcie_phy_power_on(struct phy *phy)
 {
 	int ret;
 	u32 val, pad_mode;
@@ -137,14 +137,14 @@ static int imx8_pcie_phy_init(struct phy *phy)
 	return ret;
 }
 
-static int imx8_pcie_phy_power_on(struct phy *phy)
+static int imx8_pcie_phy_init(struct phy *phy)
 {
 	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
 
 	return clk_prepare_enable(imx8_phy->clk);
 }
 
-static int imx8_pcie_phy_power_off(struct phy *phy)
+static int imx8_pcie_phy_exit(struct phy *phy)
 {
 	struct imx8_pcie_phy *imx8_phy = phy_get_drvdata(phy);
 
@@ -155,8 +155,8 @@ static int imx8_pcie_phy_power_off(struct phy *phy)
 
 static const struct phy_ops imx8_pcie_phy_ops = {
 	.init		= imx8_pcie_phy_init,
+	.exit		= imx8_pcie_phy_exit,
 	.power_on	= imx8_pcie_phy_power_on,
-	.power_off	= imx8_pcie_phy_power_off,
 	.owner		= THIS_MODULE,
 };
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
