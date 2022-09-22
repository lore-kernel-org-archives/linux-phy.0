Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EEF7C6FA82
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 11:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ADc3/A5H9ggrcnOnFfRgTvywfzC6CKRjhcB/vvgTQTk=; b=bl/RgVRGAfgITx
	D35JfXI5ztv7MUZxHETfqofYPEQD9IQEm1VGItVgrGs1+oxdIXd9QPPKO3X7l08ceqw3tzjtLM3HQ
	WZwCh8AQjpw6vRwuSvaZsCA0pNXOaz3hJFFtWamNsqMnmtKCmalyo1ZqPnuuRKJb5HuOjoHb+pD/B
	JoCOUpyUuRzUeLVXt8/0xTKoh4NPIxNDw7oGQsTr8hFSINuXWXHZc8fRNwYTqkwR9aGjFGtZrDutV
	voMGLolaDZKL0HJkjRx3qirq8d4XaBIvuwSYD6kjxkUxF2xfmBecW2yg/ug+b35RnMvv+yCn5NVId
	DgsOuEe0faEXEgfZE+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKDn-00F7jp-Kn; Thu, 22 Sep 2022 11:18:23 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKDl-00F7id-7V
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 11:18:22 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MYCN30G5PzlWyS;
	Thu, 22 Sep 2022 19:14:11 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 19:18:19 +0800
From: Yuan Can <yuancan@huawei.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH] phy: intel: Use dev_err_probe() to simplify code
Date: Thu, 22 Sep 2022 11:15:51 +0000
Message-ID: <20220922111551.37188-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_041821_459222_800A844F 
X-CRM114-Status: UNSURE (   8.76  )
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
 drivers/phy/intel/phy-intel-lgm-combo.c | 45 +++++++++----------------
 1 file changed, 15 insertions(+), 30 deletions(-)

diff --git a/drivers/phy/intel/phy-intel-lgm-combo.c b/drivers/phy/intel/phy-intel-lgm-combo.c
index 157683d10367..6010e246d52e 100644
--- a/drivers/phy/intel/phy-intel-lgm-combo.c
+++ b/drivers/phy/intel/phy-intel-lgm-combo.c
@@ -413,44 +413,29 @@ static int intel_cbphy_fwnode_parse(struct intel_combo_phy *cbphy)
 	u32 val;
 
 	cbphy->core_clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(cbphy->core_clk)) {
-		ret = PTR_ERR(cbphy->core_clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Get clk failed:%d!\n", ret);
-		return ret;
-	}
+	if (IS_ERR(cbphy->core_clk))
+		return dev_err_probe(dev, PTR_ERR(cbphy->core_clk),
+				     "Get clk failed!\n");
 
 	cbphy->core_rst = devm_reset_control_get_optional(dev, "core");
-	if (IS_ERR(cbphy->core_rst)) {
-		ret = PTR_ERR(cbphy->core_rst);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Get core reset control err: %d!\n", ret);
-		return ret;
-	}
+	if (IS_ERR(cbphy->core_rst))
+		return dev_err_probe(dev, PTR_ERR(cbphy->core_rst),
+				     "Get core reset control err!\n");
 
 	cbphy->phy_rst = devm_reset_control_get_optional(dev, "phy");
-	if (IS_ERR(cbphy->phy_rst)) {
-		ret = PTR_ERR(cbphy->phy_rst);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Get PHY reset control err: %d!\n", ret);
-		return ret;
-	}
+	if (IS_ERR(cbphy->phy_rst))
+		return dev_err_probe(dev, PTR_ERR(cbphy->phy_rst),
+				     "Get PHY reset control err!\n");
 
 	cbphy->iphy[0].app_rst = devm_reset_control_get_optional(dev, "iphy0");
-	if (IS_ERR(cbphy->iphy[0].app_rst)) {
-		ret = PTR_ERR(cbphy->iphy[0].app_rst);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Get phy0 reset control err: %d!\n", ret);
-		return ret;
-	}
+	if (IS_ERR(cbphy->iphy[0].app_rst))
+		return dev_err_probe(dev, PTR_ERR(cbphy->iphy[0].app_rst),
+				     "Get phy0 reset control err!\n");
 
 	cbphy->iphy[1].app_rst = devm_reset_control_get_optional(dev, "iphy1");
-	if (IS_ERR(cbphy->iphy[1].app_rst)) {
-		ret = PTR_ERR(cbphy->iphy[1].app_rst);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "Get phy1 reset control err: %d!\n", ret);
-		return ret;
-	}
+	if (IS_ERR(cbphy->iphy[1].app_rst))
+		return dev_err_probe(dev, PTR_ERR(cbphy->iphy[1].app_rst),
+				     "Get phy1 reset control err!\n");
 
 	cbphy->app_base = devm_platform_ioremap_resource_byname(pdev, "app");
 	if (IS_ERR(cbphy->app_base))
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
