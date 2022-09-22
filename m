Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3CD7C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 09:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mls68PpCKAA7bjLmtS8LP+L2fvpOoOYLIVDFLr2fXXM=; b=ylzCoXGE0dhKjT
	cxZkiWSsZ5ArilR2NocBFYWRACrA5f/ZbUr6ray1SdVqW1iDrq/LiVPShSL5VbCrIwx9C9TXTpP1F
	SH97awc03hvQVZTLxJj+37zEaoRWDH1rYdHAHftt77q7YD0AuT2avjyRhnQJKkIhwU7K2Hpp70Ks8
	WTp2SsMn/iZR60DG1sPfPjJH1XE89VfrdyYA/FCe3LKqhQhEzDotEmnOObmZDBpdBfrrNgA6PHTc+
	ZvNoBKUqogchOyQML0rQoYnrVPHZ++fNanPs6kVNObYkdp/VXJwC6yZ/c7iPsdg7PhGM1UfPaK37E
	hMuBRqOY3VCtAOYvYOQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obIoX-00EYhs-J4; Thu, 22 Sep 2022 09:48:13 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obISM-00ERHl-SX
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 09:25:21 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MY8sW1cCszlXQG;
	Thu, 22 Sep 2022 17:21:03 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 17:25:11 +0800
From: Yuan Can <yuancan@huawei.com>
To: <jckuo@nvidia.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
	<linux-phy@lists.infradead.org>, <linux-tegra@vger.kernel.org>
CC: <yuancan@huawei.com>
Subject: [PATCH] phy: tegra: xusb: Use dev_err_probe() to simplify code
Date: Thu, 22 Sep 2022 09:22:43 +0000
Message-ID: <20220922092243.22281-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_022519_185337_1F8F5978 
X-CRM114-Status: UNSURE (   9.56  )
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

In the probe path, dev_err() can be replaced with dev_err_probe()
which will check if error code is -EPROBE_DEFER and prints the
error name. It also sets the defer probe reason which can be
checked later through debugfs.

Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/phy/tegra/xusb-tegra186.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/tegra/xusb-tegra186.c b/drivers/phy/tegra/xusb-tegra186.c
index 5abdf81aa143..0996ede63387 100644
--- a/drivers/phy/tegra/xusb-tegra186.c
+++ b/drivers/phy/tegra/xusb-tegra186.c
@@ -1384,12 +1384,9 @@ tegra186_xusb_read_fuse_calibration(struct tegra186_xusb_padctl *padctl)
 		return -ENOMEM;
 
 	err = tegra_fuse_readl(TEGRA_FUSE_SKU_CALIB_0, &value);
-	if (err) {
-		if (err != -EPROBE_DEFER)
-			dev_err(dev, "failed to read calibration fuse: %d\n",
-				err);
-		return err;
-	}
+	if (err)
+		return dev_err_probe(dev, err,
+				     "failed to read calibration fuse\n");
 
 	dev_dbg(dev, "FUSE_USB_CALIB_0 %#x\n", value);
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
