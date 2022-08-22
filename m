Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB75C32774
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 13:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o0syUNqB46vnyDWgPDvqh83N75zJZ1Olt5uxpu2NjzU=; b=oJlVBnsf/7vLX9
	GgxY+wUh0Fm1kgDmXIjAALlC2Sb6CtPXQrPp+XkpCQllobcDib0cdX20AxSn/e9lTkzcll6PCoIJH
	Uz5d/algvD+WnGPiSFY9uS4KJRkvZ8zfNs2tzp75/vWSvb8RrUSwW5WbrP3e+O1a3+oFkVApxmFXc
	4gxQ58zMscbAviayFVII6PjfjpNaZvipSLpLaygK2wuOoFHTQ/1LsDxdr8IfRxQgUnxqxEnTeXhqk
	GHmKUiDTDHn24pb6zkS5NWTf8mDmxokELIwBNquoHGtyExpibQfIk3D0bwDzW4gC/N9ZiTgjj9Rsu
	eHPxGcS02pr5eUd5XPog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ7UD-00A0a3-7w; Mon, 22 Aug 2022 13:29:01 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ7TZ-009zwd-L8; Mon, 22 Aug 2022 13:28:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E6ABB2000FB;
	Mon, 22 Aug 2022 15:28:16 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AB799200002;
	Mon, 22 Aug 2022 15:28:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 0D8F61820F59;
	Mon, 22 Aug 2022 21:28:14 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de,
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
Subject: [PATCH v1 2/2] phy: freescale: imx8m-pcie: Fix the wrong order of phy_init() and phy_power_on()
Date: Mon, 22 Aug 2022 21:10:56 +0800
Message-Id: <1661173856-1192-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
References: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_062821_873861_C36DF0BF 
X-CRM114-Status: UNSURE (   9.94  )
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

Refer to phy_core driver, phy_init() must be called before phy_power_on().
Fix the wrong order of phy_init() and phy_power_on() here.

Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

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
