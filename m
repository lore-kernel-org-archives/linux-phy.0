Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A77A6C6FA82
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 01:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u38jzghkvdemJKj4ZrZW35pRMCt5NX6nF8Yz8pmWcbI=; b=k1Auq5utWvQNoU
	50XEK49+wlKLB6LyI4azuKubCfZmg2q+Jj+llYyVK0twAFs7Ygb2Q0qY1gOk1s0xM4HQaiBLTAffq
	oltQ5dDJVeLyIi9mzWY6YT/ADTJs/BSj/6Axln20u01dIwc5GZ3JYIorczGnN8Nv6ZupEkMuC17K4
	hFhjRTB07MCtlu1aX4gQ+v6iLu/hDgSXAGJRSn30EwRY8dBUzv9m9lE76Q8SH4bmwJKbqolOjxCmt
	V1Zj28rxopSxJJUvYTXOxW4aLzBu0LgYchVM55VC4zGVYD/I3GkSz7Tq9zBmCe4wYk9tWcYHLNFJi
	baUxjQEiL7bEEiOQtEHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSlO-00AjhS-0W; Fri, 09 Sep 2022 01:24:58 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSlL-00AjQr-Jo
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 01:24:56 +0000
Received: from dggemv703-chm.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MNypk2wnxzZcPT;
	Fri,  9 Sep 2022 09:20:14 +0800 (CST)
Received: from kwepemm600010.china.huawei.com (7.193.23.86) by
 dggemv703-chm.china.huawei.com (10.3.19.46) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 09:24:45 +0800
Received: from huawei.com (10.175.127.227) by kwepemm600010.china.huawei.com
 (7.193.23.86) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Fri, 9 Sep
 2022 09:24:44 +0800
From: Sun Ke <sunke32@huawei.com>
To: <vincent.sunplus@gmail.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>
CC: <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kernel-janitors@vger.kernel.org>, <sunke32@huawei.com>
Subject: [PATCH 2/2] phy: usb: Fix return value check in sp_usb_phy_probe()
Date: Fri, 9 Sep 2022 09:35:46 +0800
Message-ID: <20220909013546.2259545-3-sunke32@huawei.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220909013546.2259545-1-sunke32@huawei.com>
References: <20220909013546.2259545-1-sunke32@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600010.china.huawei.com (7.193.23.86)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_182455_856607_B49C294D 
X-CRM114-Status: GOOD (  10.13  )
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

In case of error, the function devm_ioremap() returns NULL pointer
not ERR_PTR(). The IS_ERR() test in the return value check
should be replaced with NULL test.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Sun Ke <sunke32@huawei.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index d73a8a421d9c..50ad428cc55d 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -260,8 +260,8 @@ static int sp_usb_phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	usbphy->moon4_regs = devm_ioremap(&pdev->dev, usbphy->moon4_res_mem->start,
 					  resource_size(usbphy->moon4_res_mem));
-	if (IS_ERR(usbphy->moon4_regs))
-		return PTR_ERR(usbphy->moon4_regs);
+	if (!usbphy->moon4_regs)
+		return -EINVAL;
 
 	usbphy->phy_clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(usbphy->phy_clk))
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
