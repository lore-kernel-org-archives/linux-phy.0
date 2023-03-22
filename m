Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFCB6C6FD20
	for <linux-phy@archiver.kernel.org>; Wed, 22 Mar 2023 02:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7qCTezbljnYjQd6dnapAWTo0+zBOF4PZc/eNeXntArA=; b=lIj
	rMKuoGX7U0AaVz1R3SOnslydLTK72iAJ3T3tFTVuSgrG8yU3X16z2pI/6x2Zb7OIXaIARGHyuw/j1
	R0L3NyfcxVxKrG5E/umb/eUm6CrAGKbUpHh94JhiQsB2M9pUraiHJEzh5HmR2ZetY6Koigz19f2Bx
	aGnyoQ6Z6iF00TwHKw0jPxla66SKHBnOstm6LeHkCzGbtH4F97nzi4cuf1+NOpU+rh11wnr0GggY5
	TqdeY9KJjOfk/qgEDnfRpyCxHhQnq1hnmlAHvs9SUytp9Akb2GLfpK2X/GKs0Hl737/UlubZ7CS4C
	Ok5IklqajjNOf4G9dxY/EN40mPgemXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pensn-00EJ4Y-0D;
	Wed, 22 Mar 2023 02:07:21 +0000
Received: from mxct.zte.com.cn ([183.62.165.209])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pensj-00EJ2v-0c
	for linux-phy@lists.infradead.org;
	Wed, 22 Mar 2023 02:07:19 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4PhBgM4xLSz501bt;
	Wed, 22 Mar 2023 10:07:11 +0800 (CST)
Received: from xaxapp02.zte.com.cn ([10.88.97.241])
	by mse-fl2.zte.com.cn with SMTP id 32M273JH031716;
	Wed, 22 Mar 2023 10:07:04 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid31;
	Wed, 22 Mar 2023 10:07:04 +0800 (CST)
Date: Wed, 22 Mar 2023 10:07:04 +0800 (CST)
X-Zmail-TransId: 2afa641a62c80ef-bb19c
X-Mailer: Zmail v1.0
Message-ID: <202303221007049346627@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <miquel.raynal@bootlin.com>
Cc: <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <vkoul@kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IG1hcnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IHVzZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1lKCk=?=
X-MAIL: mse-fl2.zte.com.cn 32M273JH031716
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 641A62CF.005/4PhBgM4xLSz501bt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_190717_414366_8573FD13 
X-CRM114-Status: UNSURE (   9.12  )
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

From: Ye Xingchen <ye.xingchen@zte.com.cn>

Convert platform_get_resource_byname(),devm_ioremap_resource() to a single
call to devm_platform_ioremap_resource_byname(), as this is exactly what
this function does.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index d641b345afa3..9aeeedf59f44 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -1241,7 +1241,6 @@ static int mvebu_a3700_comphy_probe(struct platform_device *pdev)
 	struct mvebu_a3700_comphy_priv *priv;
 	struct phy_provider *provider;
 	struct device_node *child;
-	struct resource *res;
 	struct clk *clk;
 	int ret;

@@ -1251,26 +1250,19 @@ static int mvebu_a3700_comphy_probe(struct platform_device *pdev)

 	spin_lock_init(&priv->lock);

-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "comphy");
-	priv->comphy_regs = devm_ioremap_resource(&pdev->dev, res);
+	priv->comphy_regs = devm_platform_ioremap_resource_byname(pdev, "comphy");
 	if (IS_ERR(priv->comphy_regs))
 		return PTR_ERR(priv->comphy_regs);

-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
-					   "lane1_pcie_gbe");
-	priv->lane1_phy_regs = devm_ioremap_resource(&pdev->dev, res);
+	priv->lane1_phy_regs = devm_platform_ioremap_resource_byname(pdev, "lane1_pcie_gbe");
 	if (IS_ERR(priv->lane1_phy_regs))
 		return PTR_ERR(priv->lane1_phy_regs);

-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
-					   "lane0_usb3_gbe");
-	priv->lane0_phy_regs = devm_ioremap_resource(&pdev->dev, res);
+	priv->lane0_phy_regs = devm_platform_ioremap_resource_byname(pdev, "lane0_usb3_gbe");
 	if (IS_ERR(priv->lane0_phy_regs))
 		return PTR_ERR(priv->lane0_phy_regs);

-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
-					   "lane2_sata_usb3");
-	priv->lane2_phy_indirect = devm_ioremap_resource(&pdev->dev, res);
+	priv->lane2_phy_indirect = devm_platform_ioremap_resource_byname(pdev, "lane2_sata_usb3");
 	if (IS_ERR(priv->lane2_phy_indirect))
 		return PTR_ERR(priv->lane2_phy_indirect);

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
