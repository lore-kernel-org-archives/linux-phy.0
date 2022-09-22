Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 966B8C6FA86
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 11:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Srf0rH0jzmvZktDO+QM+GgCD88BZv4jWdWTGoDb8lKQ=; b=rso0YxyPy/nBJ2
	QEzQ9ZRl7Mdesa5Scp7puexYmCGaGF3MuTwt/j7vedYppkILlSh+N9NQK8SlUKLrc01+jAR5KSTKG
	AEYy9Q2dX2BohahS88uhjVup5lPS0yGBTAqvR+pcB0D1ym6kIOXZ+Mdsuvlc+Zo36FM4sH4lTEGA8
	nH7T8CzLzvj2KYY6Ez78KS/gqHygIuOwavc/htqmfE6jn2UQ+oLqPHeHZ1RnXynzdlvzy7pf62gG3
	+Z28N0AGYSvfV7HDN6sIm6i1vg7+Dz6NhO2cYPEoG+WTh1VdhpWFMPp95dsZ6L38K03fBkPtBC1NM
	9bnYNBk/h+aZd7lPRRVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAZ-00F6fG-Uk; Thu, 22 Sep 2022 11:15:03 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAX-00F6bE-03
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 11:15:02 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.57])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4MYCLS4m6ZzHqKL;
	Thu, 22 Sep 2022 19:12:48 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 19:14:58 +0800
From: Yuan Can <yuancan@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH 6/7] phy: qcom-qusb2: Use dev_err_probe() to simplify code
Date: Thu, 22 Sep 2022 11:12:27 +0000
Message-ID: <20220922111228.36355-7-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220922111228.36355-1-yuancan@huawei.com>
References: <20220922111228.36355-1-yuancan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_041501_258083_74635BBC 
X-CRM114-Status: GOOD (  10.27  )
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
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +++++++++------------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 7529a7e6e5df..2ef638b32e8f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -973,20 +973,14 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(qphy->base);
 
 	qphy->cfg_ahb_clk = devm_clk_get(dev, "cfg_ahb");
-	if (IS_ERR(qphy->cfg_ahb_clk)) {
-		ret = PTR_ERR(qphy->cfg_ahb_clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get cfg ahb clk, %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(qphy->cfg_ahb_clk))
+		return dev_err_probe(dev, PTR_ERR(qphy->cfg_ahb_clk),
+				     "failed to get cfg ahb clk\n");
 
 	qphy->ref_clk = devm_clk_get(dev, "ref");
-	if (IS_ERR(qphy->ref_clk)) {
-		ret = PTR_ERR(qphy->ref_clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get ref clk, %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(qphy->ref_clk))
+		return dev_err_probe(dev, PTR_ERR(qphy->ref_clk),
+				     "failed to get ref clk\n");
 
 	qphy->iface_clk = devm_clk_get_optional(dev, "iface");
 	if (IS_ERR(qphy->iface_clk))
@@ -1003,12 +997,9 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		qphy->vregs[i].supply = qusb2_phy_vreg_names[i];
 
 	ret = devm_regulator_bulk_get(dev, num, qphy->vregs);
-	if (ret) {
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get regulator supplies: %d\n",
-				ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to get regulator supplies\n");
 
 	/* Get the specific init parameters of QMP phy */
 	qphy->cfg = of_device_get_match_data(dev);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
