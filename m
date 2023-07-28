Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E3AEB64DD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Jul 2023 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iwZ29C1OAgv63O49Dj2crbZJ1sjdiQ+GyblspqyLFEw=; b=Uts93dObE8tvWp
	egWh5yuuFzHwAdZVuNe3KSxZIYoS24YiMuYXIOCzL0kimm+FjFuPv7+CAuZSSVKqz3oRH0CwM6oXV
	iI/e+Xj9pjj1Xvj/Q/2/FZhLbyyVEWbHOiBXcp4IlEc5wsznZ7JTSNMGZbYkxxHLtuMTbdhctaL8j
	9aMyCkY/Au+WpHoXorYAILHrzZCMVLHV+WR6gu6WxejpdZPOtl/LwRsrjxoLDAopvJ0a5P5kT9jMm
	4dTLkOhda64jRImiepYEIN/NBkNsNEGGbPz3ue2PgAvQb5rhqSmvhqr8BMf2b7qgiZ+9RssaxuY28
	gKnD+jQxtPoRbVsbolQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGxl-001tJU-1o;
	Fri, 28 Jul 2023 06:28:33 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGxh-001tIQ-1m
	for linux-phy@lists.infradead.org;
	Fri, 28 Jul 2023 06:28:31 +0000
Received: from kwepemi500008.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4RByKk2NPRztRXP;
	Fri, 28 Jul 2023 14:24:58 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemi500008.china.huawei.com
 (7.221.188.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Fri, 28 Jul
 2023 14:28:14 +0800
From: Ruan Jinjie <ruanjinjie@huawei.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <gregkh@linuxfoundation.org>,
	<stanley_chang@realtek.com>, <ruanjinjie@huawei.com>,
	<linux-phy@lists.infradead.org>
Subject: [PATCH -next] phy: realtek: usb: Drop unnecessary error check for debugfs_create_dir
Date: Fri, 28 Jul 2023 14:27:34 +0800
Message-ID: <20230728062734.3398852-1-ruanjinjie@huawei.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems706-chm.china.huawei.com (10.3.19.183) To
 kwepemi500008.china.huawei.com (7.221.188.139)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_232829_814096_58BD99D8 
X-CRM114-Status: UNSURE (   7.81  )
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

This patch removes the error checking for debugfs_create_dir in
phy-rtk-usb2.c and phy-rtk-usb3.c. This is because the debugfs_create_dir()
does not return NULL but an ERR_PTR after an error.

The DebugFS kernel API is developed in a way that the caller can safely
ignore the errors that occur during the creation of DebugFS nodes.
The debugfs APIs have a IS_ERR() judge in start_creating() which can
handle it gracefully. so these checks are unnecessary.

Signed-off-by: Ruan Jinjie <ruanjinjie@huawei.com>
---
 drivers/phy/realtek/phy-rtk-usb2.c | 2 --
 drivers/phy/realtek/phy-rtk-usb3.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index ed47a1ce5d9c..715cd9480347 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -853,8 +853,6 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
 
 	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev),
 						phy_debug_root);
-	if (!rtk_phy->debug_dir)
-		return;
 
 	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
 				 &rtk_usb2_parameter_fops))
diff --git a/drivers/phy/realtek/phy-rtk-usb3.c b/drivers/phy/realtek/phy-rtk-usb3.c
index 6050f1ef4f6b..6d726926607a 100644
--- a/drivers/phy/realtek/phy-rtk-usb3.c
+++ b/drivers/phy/realtek/phy-rtk-usb3.c
@@ -416,8 +416,6 @@ static inline void create_debug_files(struct rtk_phy *rtk_phy)
 		return;
 
 	rtk_phy->debug_dir = debugfs_create_dir(dev_name(rtk_phy->dev), phy_debug_root);
-	if (!rtk_phy->debug_dir)
-		return;
 
 	if (!debugfs_create_file("parameter", 0444, rtk_phy->debug_dir, rtk_phy,
 				 &rtk_usb3_parameter_fops))
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
