Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E979BC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 07:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aJ05vS/k1ATURo9PMTXuf235wWf+hhvOJ+JgKW5eizk=; b=XX6IXZuoXvxZaL
	CM+H1kESVQ/uPo9DfAdmR8irZqIS1VF7PRmUZmsRA6CvkhJp3CD63SKZNjSzUqRisAZ95GuH3+xF5
	FwZeXk7vLhfXDRDsyl3/Shnp8YY/t9xsawIFFp7+HWeUnd4qezWkcSAb8AQYzV1qSQGrQRU2LR5Kv
	poF02AW2ijoHRhqyHKLr6MAU/DY6OE6BvIH3xqoG+vjP+ERIfWEHm7xZAc4sJJgpxNU+jFlxOCh81
	bTjQ72Z1cqvENj2pRWTyXebh8h88c77V6L9ArolZX8NZPSJTJnNa35d4vna7nvSe+7zmCGaE0W3xv
	JMRrgiqe5V2w07h314ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Ah5-009xYo-3l; Mon, 19 Dec 2022 07:36:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7AgQ-009x7y-FV; Mon, 19 Dec 2022 07:35:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A5B4C1A1612;
	Mon, 19 Dec 2022 08:35:29 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6A10C1A05C8;
	Mon, 19 Dec 2022 08:35:29 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id D61911820F59;
	Mon, 19 Dec 2022 15:35:27 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	marex@denx.de,
	alexander.stein@ew.tq-group.com,
	lorenzo.pieralisi@arm.com
Cc: linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com,
	Richard Zhu <hongxing.zhu@nxp.com>
Subject: [PATCH] phy: freescale: imx8m-pcie: Add one missing error return
Date: Mon, 19 Dec 2022 15:12:21 +0800
Message-Id: <1671433941-2037-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221218_233534_722349_7A01118C 
X-CRM114-Status: UNSURE (   8.53  )
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

There should be one error return when fail to fetch the perst reset.
Add the missing error return.

Fixes: dce9edff16ee ("phy: freescale: imx8m-pcie: Add i.MX8MP PCIe PHY support")

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index 7585e8080b77..afc63552ecaf 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -255,7 +255,7 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 		imx8_phy->perst =
 			devm_reset_control_get_exclusive(dev, "perst");
 		if (IS_ERR(imx8_phy->perst))
-			dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
+			return dev_err_probe(dev, PTR_ERR(imx8_phy->perst),
 				      "Failed to get PCIE PHY PERST control\n");
 	}
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
