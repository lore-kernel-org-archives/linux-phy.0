Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B830DC54EE9
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 11:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvckE9qtHZbH1h8Dhe79FKnLfxVgu7LmpOpE2i23Yz8=; b=QQcYWvvy0+Hf2g
	vPozx8lcU1LiQmZbsmpVZzsuFMk9Eb/UQNSeylu1OAKndA6N1vCm4rITLEIuEyicnVp+kODgJ3e5a
	hOHWwCF+wugjEsqFZQiPI3YodOAIa476WmOLtLjelYp/o+08HZdvy7KGnRzEzgbhiGcoWDPa2tucp
	Pibk9pXXzQgzaKM2mSXN/87xNoNJn7fDBT7SBSTYDX2eWg+TZOv+xparfISYscC52+l3ry6UjL+GP
	IoMTA3ERGhugu2ebjBBzRKZ0JzjCIY4/e2E0bFegUp4omJn1ShXUkfbEa8AFRsuu511WltiesxfBl
	LsYjovAG19rFGaRNYueg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAd-00F6hd-5T; Thu, 22 Sep 2022 11:15:07 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAY-00F6bl-1K
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 11:15:04 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MYCJQ45DNzWgwx;
	Thu, 22 Sep 2022 19:11:02 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 19:14:59 +0800
From: Yuan Can <yuancan@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH 7/7] phy: qcom-snps: Use dev_err_probe() to simplify code
Date: Thu, 22 Sep 2022 11:12:28 +0000
Message-ID: <20220922111228.36355-8-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220922111228.36355-1-yuancan@huawei.com>
References: <20220922111228.36355-1-yuancan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_041502_306309_42B0030F 
X-CRM114-Status: UNSURE (   9.91  )
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
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 25022949108b..a59063596214 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -559,12 +559,9 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return PTR_ERR(hsphy->base);
 
 	hsphy->ref_clk = devm_clk_get(dev, "ref");
-	if (IS_ERR(hsphy->ref_clk)) {
-		ret = PTR_ERR(hsphy->ref_clk);
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get ref clk, %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(hsphy->ref_clk))
+		return dev_err_probe(dev, PTR_ERR(hsphy->ref_clk),
+				     "failed to get ref clk\n");
 
 	hsphy->phy_reset = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(hsphy->phy_reset)) {
@@ -577,12 +574,9 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		hsphy->vregs[i].supply = qcom_snps_hsphy_vreg_names[i];
 
 	ret = devm_regulator_bulk_get(dev, num, hsphy->vregs);
-	if (ret) {
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get regulator supplies: %d\n",
-				ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to get regulator supplies\n");
 
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
