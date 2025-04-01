Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F66BC3ABC3
	for <linux-phy@archiver.kernel.org>; Mon, 12 May 2025 11:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	References:In-Reply-To:Message-ID:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vSPBZ8Eh8eZvit2QiyHXu7UNh59wy796WCmLBqHmULk=; b=yv7aoFjHyglbqJvSggn4LjGxmh
	6iDg21C4qNtdXLeubMKpW2/JYs5FyAlXjVVcWwESgEKgjtKutWT6RbNJDKXlN6gnJAGbDePfh3s14
	BcAi6iRqt47qxKPPykx5eOx8YoqtPjYLNBEcDQRi/53o3D/KsEBjG/MKRZv+3fJu6WdJufPxKxDk8
	B9l27/BloZpbvTCv2DZwGeHt3J/EQv/z6vuiHTtPppy6jEr8EUPoQEcaDJILxH2f4qxzm/jL+Z/GH
	rlFhuxbLW5Itq2f1EGmOiJeB5iTpuIc6wlk7lBwSBW+RGl0yHX+mzyiq9GPyzXGr4m9Idk2hkakP9
	Gh7/Hzgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uER9d-00000009E79-2wi7;
	Mon, 12 May 2025 11:17:05 +0000
Received: from mxhk.zte.com.cn ([63.216.63.35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZx9-00000002o8i-14si
	for linux-phy@lists.infradead.org;
	Tue, 01 Apr 2025 11:38:48 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.5.228.132])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxhk.zte.com.cn (FangMail) with ESMTPS id 4ZRmGs2HkXz5B1KS;
	Tue,  1 Apr 2025 19:38:45 +0800 (CST)
Received: from xaxapp05.zte.com.cn ([10.99.98.109])
	by mse-fl1.zte.com.cn with SMTP id 531BcX0u087176;
	Tue, 1 Apr 2025 19:38:33 +0800 (+08)
	(envelope-from shao.mingyin@zte.com.cn)
Received: from mapi (xaxapp02[null])
	by mapi (Zmail) with MAPI id mid32;
	Tue, 1 Apr 2025 19:38:36 +0800 (CST)
Date: Tue, 1 Apr 2025 19:38:36 +0800 (CST)
X-Zmail-TransId: 2afa67ebd03c78c-9d6fe
X-Mailer: Zmail v1.0
Message-ID: <20250401193836885cYSO33OlICvYYYmEMlB5J@zte.com.cn>
In-Reply-To: <20250401193134281Nbc40spYmxjVmftwF0KTZ@zte.com.cn>
References: 20250401193134281Nbc40spYmxjVmftwF0KTZ@zte.com.cn
Mime-Version: 1.0
From: <shao.mingyin@zte.com.cn>
To: <miquel.raynal@bootlin.com>, <jckuo@nvidia.com>
Cc: <vkoul@kernel.org>, <kishon@kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <thierry.reding@gmail.com>,
        <jonathanh@nvidia.com>, <linux-tegra@vger.kernel.org>,
        <yang.yang29@zte.com.cn>, <xu.xin16@zte.com.cn>,
        <ye.xingchen@zte.com.cn>, <xie.ludan@zte.com.cn>
Subject: =?UTF-8?B?W1BBVENIIDEvMl0gcGh5OiBtYXJ2ZWxsOiBhMzcwMC1jb21waHk6IFVzZcKgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZQ==?=
X-MAIL: mse-fl1.zte.com.cn 531BcX0u087176
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 67EBD045.001/4ZRmGs2HkXz5B1KS
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_043847_449076_DB3E17FE 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 12 May 2025 03:58:59 -0700
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

From: Xie Ludan <xie.ludan@zte.com.cn>

Introduce devm_platform_ioremap_resource_byname() to simplify resource
retrieval and mapping.This new function consolidates
platform_get_resource_byname() and devm_ioremap_resource() into
a single call, improving code readability and reducing API call overhead.

Signed-off-by: Xie Ludan <xie.ludan@zte.com.cn>
Signed-off-by: Shao Mingyin <shao.mingyin@zte.com.cn>
---
 drivers/phy/marvell/phy-mvebu-a3700-comphy.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
index 1d1db1737422..e629a1a73214 100644
--- a/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
+++ b/drivers/phy/marvell/phy-mvebu-a3700-comphy.c
@@ -1253,26 +1253,20 @@ static int mvebu_a3700_comphy_probe(struct platform_device *pdev)

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
+	priv->lane2_phy_indirect = devm_platform_ioremap_resource_byname(pdev,
+									 "lane2_sata_usb3");
 	if (IS_ERR(priv->lane2_phy_indirect))
 		return PTR_ERR(priv->lane2_phy_indirect);

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
