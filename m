Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 672CAC6FA91
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 11:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjcq43HNMH5b2HKFDeVHKvnD27lzobdBUAW9Bre+qGo=; b=OSyNFospfnnaJO
	wN8uIaSvCmHF9cIJpWtwhtyDsg0mkGosLC8upExpHw+6qcKLrTAatbAujUeKj4SmJJcbyQwQEKI6Z
	2qrAd7HZOL7ziqGHf++jC14DQXdvAd1bGn5uY/fSlZUvdYQDfwxfFFa+0Zx/CandawnvVS/H/H7VV
	zucgw2OEtaaCoG74lOkkTi8iG8mbi3+BRGwiagha91aN5NyrqoV9wVTq0cmqpWuswoQv/YbtRJc8R
	AA9EiOSAYU+u2h3FvNhZHid9qV8XuwXP+5r+ZJA368qT7Pd0Jw/SopjyzpcDAZQRszjtxQzAN6KZa
	xQCvBxeh9/zo/fyIMRTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAZ-00F6eo-QP; Thu, 22 Sep 2022 11:15:03 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obKAV-00F6ax-SC
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 11:15:01 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4MYCJ95hRHzlWFB;
	Thu, 22 Sep 2022 19:10:49 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Thu, 22 Sep
 2022 19:14:57 +0800
From: Yuan Can <yuancan@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH 4/7] phy: qcom-qmp-ufs: Use dev_err_probe() to simplify code
Date: Thu, 22 Sep 2022 11:12:25 +0000
Message-ID: <20220922111228.36355-5-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220922111228.36355-1-yuancan@huawei.com>
References: <20220922111228.36355-1-yuancan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_041500_095738_1CFE8B1C 
X-CRM114-Status: GOOD (  11.15  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 01a99a06fd4f..198353e8ca81 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -1316,12 +1316,9 @@ static int qcom_qmp_phy_ufs_probe(struct platform_device *pdev)
 		return ret;
 
 	ret = qcom_qmp_phy_ufs_vreg_init(dev, cfg);
-	if (ret) {
-		if (ret != -EPROBE_DEFER)
-			dev_err(dev, "failed to get regulator supplies: %d\n",
-				ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to get regulator supplies\n");
 
 	num = of_get_available_child_count(dev->of_node);
 	/* do we have a rogue child node ? */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
