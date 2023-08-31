Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4414FC83F10
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 14:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZSxJS0jZtj2c/fBDMmNIk2MuO5OONtpCLovPAVt8a6Q=; b=2CDGH/52Qm4TTP
	au5sG22A4hdlPremvH+eiz5cW8Tl6eGSXFAkM5C8A4OqCzZUWxCOUNIIBaEWbz1iYyoXzQmj5z2yZ
	8vrzWIGnSfKZ25f6jpCuuM2ihbKx+OKH/sf4c+rHBLvGlEX1+3Wp/mcBFY600kX395ZMVb7ioWGhj
	AmUqmD++jeMcUB0j1jvYcUjcQTH+oSqh3j/ptNsQTo6jb7kAPbfRITt72zaiV1oVF+2K9QYYw5RmZ
	rB8QNtmOLSEuE3B7D471MFTNkh/N6VgSef0DOXOoQ3M71dG7qmAHh8e8s/R+++OmcelkGMWWGIcUl
	tQaL9szNwt55hGZuB3RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbiJi-00FPbW-2u;
	Thu, 31 Aug 2023 14:06:38 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbiJf-00FPaM-1V
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 14:06:37 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4Rc2st0tc7ztSBg;
	Thu, 31 Aug 2023 22:02:26 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Thu, 31 Aug
 2023 22:06:18 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <linux-phy@lists.infradead.org>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Stanley Chang
	<stanley_chang@realtek.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH] phy: realtek: usb: Fix the NULL vs IS_ERR() bug for debugfs_create_dir()
Date: Thu, 31 Aug 2023 22:05:59 +0800
Message-ID: <20230831140559.3166158-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_070635_715652_D7DEAA27 
X-CRM114-Status: UNSURE (   9.06  )
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

Since both debugfs_create_dir() and debugfs_create_file() return
ERR_PTR and never return NULL, So use IS_ERR() to check it
instead of checking NULL.

Fixes: 134e6d25f6bd ("phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY")
Fixes: adda6e82a7de ("phy: realtek: usb: Add driver for the Realtek SoC USB 3.0 PHY")
Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 6 +++---
 drivers/phy/realtek/phy-rtk-usb3.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 5e7ee060b404..67ca78762c80 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -853,11 +853,11 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
 
 	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev),
 						phy_debug_root);
-	if (!rtk_phy->debug_dir)
+	if (IS_ERR(rtk_phy->debug_dir))
 		return;
 
-	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
-				 &rtk_usb2_parameter_fops))
+	if (IS_ERR(debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
+				 &rtk_usb2_parameter_fops)))
 		goto file_error;
 
 	return;
diff --git a/drivers/phy/realtek/phy-rtk-usb3.c b/drivers/phy/realtek/phy-rtk-usb3.c
index 7881f908aade..488c749c4edc 100644
--- a/drivers/phy/realtek/phy-rtk-usb3.c
+++ b/drivers/phy/realtek/phy-rtk-usb3.c
@@ -416,11 +416,11 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
 		return;
 
 	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev), phy_debug_root);
-	if (!rtk_phy->debug_dir)
+	if (IS_ERR(rtk_phy->debug_dir))
 		return;
 
-	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
-				 &rtk_usb3_parameter_fops))
+	if (IS_ERR(debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
+				 &rtk_usb3_parameter_fops)))
 		goto file_error;
 
 	return;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
