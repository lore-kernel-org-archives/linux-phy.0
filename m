Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4938C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Nov 2022 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y1JVxRgkamobENY/ZsMIrfRYk9GU3WaFYZzzedphA1s=; b=jDnxwUwR/NMb5E
	VwNle4o2iRoRVltqvy1zG8dLUBufj/Wx2Pr5l4HRJQ4KvJXZT98gQQmmp4aPMigHS74ImgkPRCUmG
	new88Qx1/snq4rZy6K60QhzcM84UJ4j/sqdv1/PkEtmIK28yk7z9P/L2xn9cMltP/WOJkgwVIvJAj
	bajWT1fHvU5IoqZ4MH+Jg4KPc/dv/M8QnImlR+YNZ0qBjxlshFljS2KsTSkwiGEDVPcAelN8fmqcM
	IzLJvqHMQNoAoJewMIJd0M4s+tP4uq4ekwquur8lhNvqheQ0hqAvlN3TBj06BaA1lVzLiIdPtsz7+
	lzU0nCLJZsVMiJkKgCDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq31p-007y8G-7M; Wed, 02 Nov 2022 01:58:53 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq31m-007y6F-9Z
	for linux-phy@lists.infradead.org; Wed, 02 Nov 2022 01:58:51 +0000
Received: from dggpemm500023.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4N290R2cK9zRnsS;
	Wed,  2 Nov 2022 09:53:43 +0800 (CST)
Received: from dggpemm500007.china.huawei.com (7.185.36.183) by
 dggpemm500023.china.huawei.com (7.185.36.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 09:58:40 +0800
Received: from huawei.com (10.175.103.91) by dggpemm500007.china.huawei.com
 (7.185.36.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 2 Nov
 2022 09:58:39 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
CC: <yangyingliang@huawei.com>, JC Kuo <jckuo@nvidia.com>, "Kishon Vijay
 Abraham I" <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Thierry Reding
	<thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>
Subject: [PATCH] phy: tegra: xusb: fix error handing in tegra_xusb_{pad|port}_init()
Date: Wed, 2 Nov 2022 09:57:32 +0800
Message-ID: <20221102015732.1332099-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpemm500007.china.huawei.com (7.185.36.183)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_185850_542421_6851B86E 
X-CRM114-Status: UNSURE (   8.57  )
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

If device_add() is not called successful, it can not call
device_unregister(), it will lead a kernel crash because
of deleting not added device. Fix these by using put_device()
instead.

Fixes: 53d2a715c240 ("phy: Add Tegra XUSB pad controller support")
Cc: JC Kuo <jckuo@nvidia.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/phy/tegra/xusb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/tegra/xusb.c b/drivers/phy/tegra/xusb.c
index 95091876c422..65e15dcde02f 100644
--- a/drivers/phy/tegra/xusb.c
+++ b/drivers/phy/tegra/xusb.c
@@ -165,16 +165,16 @@ int tegra_xusb_pad_init(struct tegra_xusb_pad *pad,
 
 	err = dev_set_name(&pad->dev, "%s", pad->soc->name);
 	if (err < 0)
-		goto unregister;
+		goto put_dev;
 
 	err = device_add(&pad->dev);
 	if (err < 0)
-		goto unregister;
+		goto put_dev;
 
 	return 0;
 
-unregister:
-	device_unregister(&pad->dev);
+put_dev:
+	put_device(&pad->dev);
 	return err;
 }
 
@@ -542,16 +542,16 @@ static int tegra_xusb_port_init(struct tegra_xusb_port *port,
 
 	err = dev_set_name(&port->dev, "%s-%u", name, index);
 	if (err < 0)
-		goto unregister;
+		goto put_dev;
 
 	err = device_add(&port->dev);
 	if (err < 0)
-		goto unregister;
+		goto put_dev;
 
 	return 0;
 
-unregister:
-	device_unregister(&port->dev);
+put_dev:
+	put_device(&port->dev);
 	return err;
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
