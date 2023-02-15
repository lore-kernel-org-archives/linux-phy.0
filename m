Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A759C05027
	for <linux-phy@archiver.kernel.org>; Wed, 15 Feb 2023 03:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Mime-Version:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5FHmDbta1cc2Ul8qYk3svkr/PAXf369cxHDL2bTIaEw=; b=xDi
	0qrBLx+gyGrYNM0RU4vC1CJ9+nfiodGHysYthcU9OijPJ6i35+3uMQG6LlWdmAyeMg8J444wwlUG9
	1mowYiSg0dZWSW/4M2LDwdYXVk1u5Re5XYRbwKKoaN1/5F6+CDzfTvQWWyQKZzNYCilPU47zn1FqI
	mBdkMTGERGIIjDn78PqULjvnfkKk+jPzU4P7Lp4qXSQhBJRRFgy7x+9JbjJ+R5N+ponP4aZ2Rfzce
	T8JAtvUVQDHi/cHuDn9tBxe1oBxT2NBmod6foxexdgos0Xs/JfuZ/kkT+mAjWBR27ZXnLXKeB/A05
	OicLlx4xL91uD7DiRLwTDH2NaLGbQyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS8QI-004VvN-Pq; Wed, 15 Feb 2023 03:25:34 +0000
Received: from mxct.zte.com.cn ([183.62.165.209])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS8QF-004Vsr-Fi
	for linux-phy@lists.infradead.org; Wed, 15 Feb 2023 03:25:33 +0000
Received: from mse-fl2.zte.com.cn (unknown [10.5.228.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mxct.zte.com.cn (FangMail) with ESMTPS id 4PGk3k2kVdz4xyCY;
	Wed, 15 Feb 2023 11:25:22 +0800 (CST)
Received: from xaxapp01.zte.com.cn ([10.88.99.176])
	by mse-fl2.zte.com.cn with SMTP id 31F3P6TP010713;
	Wed, 15 Feb 2023 11:25:06 +0800 (+08)
	(envelope-from ye.xingchen@zte.com.cn)
Received: from mapi (xaxapp01[null])
	by mapi (Zmail) with MAPI id mid31;
	Wed, 15 Feb 2023 11:25:07 +0800 (CST)
Date: Wed, 15 Feb 2023 11:25:07 +0800 (CST)
X-Zmail-TransId: 2af963ec50933a968cfb
X-Mailer: Zmail v1.0
Message-ID: <202302151125076179524@zte.com.cn>
Mime-Version: 1.0
From: <ye.xingchen@zte.com.cn>
To: <vkoul@kernel.org>
Cc: <nandhini.srikandan@intel.com>, <rashmi.a@intel.com>, <kishon@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: =?UTF-8?B?W1BBVENIXSBwaHk6IGludGVsOiBVc2UgZGV2bV9wbGF0Zm9ybV9nZXRfYW5kX2lvcmVtYXBfcmVzb3VyY2UoKQ==?=
X-MAIL: mse-fl2.zte.com.cn 31F3P6TP010713
X-Fangmail-Gw-Spam-Type: 0
X-Fangmail-Anti-Spam-Filtered: true
X-Fangmail-MID-QID: 63EC50A2.000/4PGk3k2kVdz4xyCY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_192531_748497_17BF9AAD 
X-CRM114-Status: UNSURE (   9.67  )
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

Convert platform_get_resource(), devm_ioremap_resource() to a single
call to devm_platform_get_and_ioremap_resource(), as this is exactly
what this function does.

Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>
---
 drivers/phy/intel/phy-intel-thunderbay-emmc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/intel/phy-intel-thunderbay-emmc.c b/drivers/phy/intel/phy-intel-thunderbay-emmc.c
index 593f6970b81e..4fe63240779f 100644
--- a/drivers/phy/intel/phy-intel-thunderbay-emmc.c
+++ b/drivers/phy/intel/phy-intel-thunderbay-emmc.c
@@ -461,7 +461,6 @@ static int thunderbay_emmc_phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	const struct of_device_id *id;
 	struct phy *generic_phy;
-	struct resource *res;

 	if (!dev->of_node)
 		return -ENODEV;
@@ -470,8 +469,7 @@ static int thunderbay_emmc_phy_probe(struct platform_device *pdev)
 	if (!tbh_phy)
 		return -ENOMEM;

-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	tbh_phy->reg_base = devm_ioremap_resource(&pdev->dev, res);
+	tbh_phy->reg_base = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
 	if (IS_ERR(tbh_phy->reg_base))
 		return PTR_ERR(tbh_phy->reg_base);

-- 
2.25.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
