Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 454BAC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 17 May 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IkmoKnN7wTD+6vPs+w+b1/jGhwIIplKDRLFAm7mi9D0=; b=NLXkZvkMbOda6U
	IBt6/ZE6NvEyAs4QP1xmMrLd3bW8NSsZzIWZYhA3C6Sv7mWR5jZAQl6JqQEi/7RQoGyn5QhvsoYwt
	BQLJXYDkRLZnb3dvStJutHOjBdKYVUlDDDFbD3Cc7hYluhv2E3BeXBNw2FefcTeF3GjCNhceHq7zE
	gst/+F09qW5eXTKzqaFmuYvpcRGyCpm126YN+tjV4YMiHB6hd5E+BnPqhZj42L4fiHQB5lqmHrqwV
	QAuKvoyWfSAWUsxHRQn1CYV8+E/QExC3dqC9Vz5RwJXCIUmcqraIyn1MR6BcV3R6bVsYN5m/gqrEZ
	k1YeLokkP49fw8GN/kRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqyDs-00EQQH-J6; Tue, 17 May 2022 14:30:52 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqwsx-00DmLi-2m
 for linux-phy@lists.infradead.org; Tue, 17 May 2022 13:05:16 +0000
Received: from kwepemi500023.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4L2bt26xRrzhZ9v;
 Tue, 17 May 2022 21:04:10 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemi500023.china.huawei.com
 (7.221.188.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 17 May
 2022 21:04:44 +0800
From: Peng Wu <wupeng58@huawei.com>
To: <agross@kernel.org>, <bjorn.andersson@linaro.org>, <kishon@ti.com>,
 <vkoul@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <wupeng58@huawei.com>, <liwei391@huawei.com>
Subject: [PATCH] phy: qcom: fix missing clk_disable_unprepare() on err in
 qcom_pcie2_phy_power_on
Date: Tue, 17 May 2022 13:00:00 +0000
Message-ID: <20220517130000.28943-1-wupeng58@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemi500023.china.huawei.com (7.221.188.76)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_060511_415491_75FD43E7 
X-CRM114-Status: UNSURE (   8.80  )
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

Fix the missing clk_disable_unprepare() before return
from qcom_pcie2_phy_power_on() in the error handling case.

Signed-off-by: Peng Wu <wupeng58@huawei.com>
---
 drivers/phy/qualcomm/phy-qcom-pcie2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-pcie2.c b/drivers/phy/qualcomm/phy-qcom-pcie2.c
index 5407e59bb185..1cc8145e0811 100644
--- a/drivers/phy/qualcomm/phy-qcom-pcie2.c
+++ b/drivers/phy/qualcomm/phy-qcom-pcie2.c
@@ -162,8 +162,10 @@ static int qcom_pcie2_phy_power_on(struct phy *phy)
 
 	ret = readl_poll_timeout(qphy->base + PCIE20_PARF_PHY_STTS, val,
 				 !(val & BIT(0)), 1000, 10);
-	if (ret)
+	if (ret) {
+		clk_disable_unprepare(qphy->pipe_clk);
 		dev_err(qphy->dev, "phy initialization failed\n");
+	}
 
 out:
 	return ret;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
