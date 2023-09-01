Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01611CA0FE1
	for <linux-phy@archiver.kernel.org>; Fri,  1 Sep 2023 07:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s1a/WRhY5LpM8QvRjeLa+tgxIbmjeV4Y9G9VSH1SrAk=; b=WVKXYzGnbZ1iZJ
	NkSo7j4o/g8mhVX9QTqXAbSXeefrZlNWgOOvSZ7y26nZqfx5xQoxbu1SrtVWbzLaaLCo1+yjlNpR9
	AY+AMpRvbDucswrFSEYvN0OwmtL+xIqw/M5cwuvZS3YzqpQe0RCgfAd2xZviBS7fnFwgt2oEE1iQn
	HfK7MBaWUHCbQsDmZMaGIhtSZAxe0lHGftx81Xphc68XpN5LuQy6nfV5wqTEExH6+YOBOo7pcqzXB
	9gY62UeoFTZNaz99Prol9wyh47+bQgJekyq4QnOHLbkMVLUD/PilQNXdB+6Qz7CJ7IDScfp0rvXrO
	kbcZ3tcZF+W6k2fFfh/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbyxb-00GdDT-1E;
	Fri, 01 Sep 2023 07:52:55 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbyxX-00GdCj-30
	for linux-phy@lists.infradead.org;
	Fri, 01 Sep 2023 07:52:54 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.55])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RcVZr6QhjzrSHk;
	Fri,  1 Sep 2023 15:51:00 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 1 Sep
 2023 15:52:42 +0800
From: Jinjie Ruan <ruanjinjie@huawei.com>
To: <linux-phy@lists.infradead.org>, Vinod Koul <vkoul@kernel.org>, Kishon
 Vijay Abraham I <kishon@kernel.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Stanley Chang <stanley_chang@realtek.com>
CC: <ruanjinjie@huawei.com>
Subject: [PATCH -next v2] phy: realtek: usb: Drop unnecessary error check for debugfs_create_dir()
Date: Fri, 1 Sep 2023 15:52:31 +0800
Message-ID: <20230901075231.1368947-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230901_005252_162410_CECE2DA4 
X-CRM114-Status: GOOD (  10.49  )
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

Both debugfs_create_dir() and debugfs_create_file() return ERR_PTR
and never return NULL.

As Greg suggested, this patch removes the error checking for
debugfs_create_dir in phy-rtk-usb2.c and phy-rtk-usb3.c. This is because
the DebugFS kernel API is developed in a way that the caller can safely
ignore the errors that occur during the creation of DebugFS nodes. The
debugfs APIs have a IS_ERR() judge in start_creating() which can handle it
gracefully. So these checks are unnecessary.

Fixes: 134e6d25f6bd ("phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY")
Fixes: adda6e82a7de ("phy: realtek: usb: Add driver for the Realtek SoC USB 3.0 PHY")
Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:
- Remove the err check instead of using IS_ERR to replace NULL check.
- Update the commit message and title.
---
 drivers/phy/realtek/phy-rtk-usb2.c | 10 ++--------
 drivers/phy/realtek/phy-rtk-usb3.c | 10 ++--------
 2 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index 5e7ee060b404..aedc78bd37f7 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -853,17 +853,11 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
 
 	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev),
 						phy_debug_root);
-	if (!rtk_phy->debug_dir)
-		return;
 
-	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
-				 &rtk_usb2_parameter_fops))
-		goto file_error;
+	debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
+			    &rtk_usb2_parameter_fops);
 
 	return;
-
-file_error:
-	debugfs_remove_recursive(rtk_phy->debug_dir);
 }
 
 static inline void remove_debug_files(struct rtk_phy *rtk_phy)
diff --git a/drivers/phy/realtek/phy-rtk-usb3.c b/drivers/phy/realtek/phy-rtk-usb3.c
index 7881f908aade..dfb3122f3f11 100644
--- a/drivers/phy/realtek/phy-rtk-usb3.c
+++ b/drivers/phy/realtek/phy-rtk-usb3.c
@@ -416,17 +416,11 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
 		return;
 
 	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev), phy_debug_root);
-	if (!rtk_phy->debug_dir)
-		return;
 
-	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
-				 &rtk_usb3_parameter_fops))
-		goto file_error;
+	debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
+			    &rtk_usb3_parameter_fops);
 
 	return;
-
-file_error:
-	debugfs_remove_recursive(rtk_phy->debug_dir);
 }
 
 static inline void remove_debug_files(struct rtk_phy *rtk_phy)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
