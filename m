Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22149C07E9D
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 07:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ch5hN8YHTTLdoa/pMU69TAUEIewTmjdhLXFwhdXuiSo=; b=h4CqcGnBh6MrrA
	LGrpRLX/Gv8ZO5t56OAzdnbhXgpgp20cyU6zfUTL7ftOWFwcFAFJfTsu+15q8EaZea1YBZm4EDGsd
	MlYd44Wn+0S1GJRwS2qPacgBhRydfo68Wx+/cnMdbynTcF7lXrumPxu/a80Qxj5hW8zL1oHYcSDXL
	7ADytanc3qwxKjObQVQRw1Q9KAtWrQwWNzTQBwZ6lFtzU7NWT5zxoHx3ksIgGO5Vy2gG+CAD67qWH
	Uki0UU18M+xTm1jYEq9/CQNSDAugi2TXPS8tSmLT+lNspP8+4W9mDyAJasqK456w5f/FrbNhLCWXG
	1ujTVdG01GPfFge05RsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzET-006Xtb-JJ; Sat, 24 Sep 2022 07:05:49 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obzEP-006Xrf-PE
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 07:05:47 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4MZKgd2rQTzWgxf;
	Sat, 24 Sep 2022 15:01:33 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Sat, 24 Sep
 2022 15:05:32 +0800
From: Yuan Can <yuancan@huawei.com>
To: <agross@kernel.org>, <andersson@kernel.org>,
	<konrad.dybcio@somainline.org>, <kishon@ti.com>, <vkoul@kernel.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>
CC: <yuancan@huawei.com>
Subject: [PATCH RESEND 2/4] phy: qcom-qmp-pcie-msm8996: Use dev_err_probe() to simplify code
Date: Sat, 24 Sep 2022 07:02:58 +0000
Message-ID: <20220924070300.25080-3-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220924070300.25080-1-yuancan@huawei.com>
References: <20220924070300.25080-1-yuancan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_000546_026642_550EC5D5 
X-CRM114-Status: UNSURE (   9.89  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 245f6dc1710e..690e0825e3b1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -880,12 +880,9 @@ static int qmp_pcie_msm8996_probe(struct platform_device *pdev)
 		return ret;
 
 	ret = qmp_pcie_msm8996_vreg_init(dev, cfg);
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
