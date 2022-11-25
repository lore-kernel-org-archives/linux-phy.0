Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F5B7C4332F
	for <linux-phy@archiver.kernel.org>; Fri, 25 Nov 2022 02:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oj1ki9imvQfimp8qFNeU92yfmGIbdouvVYJsik0wckM=; b=ppmg2w3xjxPkzK
	QNwRUKQrZt7MvnyiFW0rxFq/KaYBWK4vKiksAbglLB3uKOYDcZaLsSuxVaSiPuWi9P9wS4UZxdK3X
	L/0FdVEJD8sBDOCW84dqI0FtQxef3BKGpL4ea8OAqj4U90zNLb3UJmKfliU5CKCeYQsQAUBXPlHhV
	T4FmMH7L1+57yQJc8ubGuyISnYIie2m0bScLd+zeab1xUBjEVV8LkS1zw/TSK8dnXt7xWTxKkcPUm
	x+2sJC++NlVJDWcpoMLLhemAJHAlEbdTQ0WU/etS/jB8Hx03cHEkzjxugJ5mhOXsSuuH+NCTlZxTU
	KSSmS37edmo+8kB9uFMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyOEL-00CCtH-NQ; Fri, 25 Nov 2022 02:14:17 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyOEI-00CCrU-Rj
	for linux-phy@lists.infradead.org; Fri, 25 Nov 2022 02:14:16 +0000
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NJJLm2GMyzmW8p;
	Fri, 25 Nov 2022 10:13:36 +0800 (CST)
Received: from huawei.com (10.175.100.227) by kwepemi500016.china.huawei.com
 (7.221.188.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Fri, 25 Nov
 2022 10:14:09 +0800
From: Shang XiaoJing <shangxiaojing@huawei.com>
To: <vincent.sunplus@gmail.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <shangxiaojing@huawei.com>
Subject: [PATCH] phy: usb: sunplus: Fix potential null-ptr-deref in sp_usb_phy_probe()
Date: Fri, 25 Nov 2022 10:12:22 +0800
Message-ID: <20221125021222.25687-1-shangxiaojing@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.100.227]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_181415_079246_DDBBA678 
X-CRM114-Status: UNSURE (   7.97  )
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

sp_usb_phy_probe() will call platform_get_resource_byname() that may fail
and return NULL. devm_ioremap() will use usbphy->moon4_res_mem->start as
input, which may causes null-ptr-deref. Check the ret value of
platform_get_resource_byname() to avoid the null-ptr-deref.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Shang XiaoJing <shangxiaojing@huawei.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index b932087c55b2..6816b7d2318d 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -254,6 +254,9 @@ static int sp_usb_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(usbphy->phy_regs);
 
 	usbphy->moon4_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "moon4");
+	if (!usbphy->moon4_res_mem)
+		return -EINVAL;
+
 	usbphy->moon4_regs = devm_ioremap(&pdev->dev, usbphy->moon4_res_mem->start,
 					  resource_size(usbphy->moon4_res_mem));
 	if (IS_ERR(usbphy->moon4_regs))
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
