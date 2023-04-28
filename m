Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57076C77B60
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 05:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UIOYvpeoEWtve0g8Ipb4L6NugG0PWNnskIPVkKulaf8=; b=oG8Rw8G6TKo2jV
	O5Ll3W0M8B22nGVksDmu74KkDaNtVT1lPphPWPwVpYROb8JjwB6VubeFsyxCScx05U8O28O4coDbE
	S0fgH0AhD2i5WzwBV+L94I7uerY+eArmJwQbSMVztLe+Y2BDBpHUjFByLxpL1vFIPOeRkiiFzgso4
	6bLm023U5pZ3Drbb2/bZ7DX+EhXChajCRNDgBevmgqDpGtE4IbWGeRuN5HbHBtcaQqNjjzbplEMtL
	h2uPBtB79LfraJI4QqLbzK7ToSo+Z3lFdyiMld2VAQmhW6lU8BOFJz/rtRajKagVb9MmpZRquhFZg
	1oPpey1E9ADOx8v1rk7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psGeU-008DFP-2s;
	Fri, 28 Apr 2023 05:28:14 +0000
Received: from out30-119.freemail.mail.aliyun.com ([115.124.30.119])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psGeQ-008DEL-1p;
	Fri, 28 Apr 2023 05:28:12 +0000
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R981e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=ay29a033018045176;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=11;SR=0;TI=SMTPD_---0VhA7VcY_1682659679;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0VhA7VcY_1682659679)
          by smtp.aliyun-inc.com;
          Fri, 28 Apr 2023 13:28:00 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: shawnguo@kernel.org
Cc: s.hauer@pengutronix.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH -next] phy: freescale: imx8m-pcie: Use devm_platform_ioremap_resource()
Date: Fri, 28 Apr 2023 13:27:58 +0800
Message-Id: <20230428052758.38636-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_222810_796801_2CAC58AB 
X-CRM114-Status: UNSURE (   8.75  )
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

Convert platform_get_resource(),devm_ioremap_resource() to a single
call to devm_platform_ioremap_resource(), as this is exactly what this
function does.

Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index afc63552ecaf..d4c92498ad1e 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -206,7 +206,6 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct imx8_pcie_phy *imx8_phy;
-	struct resource *res;
 
 	imx8_phy = devm_kzalloc(dev, sizeof(*imx8_phy), GFP_KERNEL);
 	if (!imx8_phy)
@@ -259,8 +258,7 @@ static int imx8_pcie_phy_probe(struct platform_device *pdev)
 				      "Failed to get PCIE PHY PERST control\n");
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	imx8_phy->base = devm_ioremap_resource(dev, res);
+	imx8_phy->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(imx8_phy->base))
 		return PTR_ERR(imx8_phy->base);
 
-- 
2.20.1.7.g153144c


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
