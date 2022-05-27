Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52B31C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 27 May 2022 06:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2grq7fE2Ad2Mn45dRkkf3dpf24mha1joMX3uWrQrtGk=; b=yIfWbUINoNqwU4
	4bwhS/EzL96HF0mXlGM3ppeKagovV1mwi/JfnGjdKXI0KR7qdv6kuWa59PCbgof5RbzpvICpy5jZY
	N9PfTnTZq9Rb0gkVEZ2UyBxRfUtAwheJ3676ahpea4oe1pEJ2YowSryNxqTyfCxyy4Waet5v5ZnKf
	bqmjLs3QQJmau5wz2/s8dOFtyaF+TZCgG1YX91SYQbwEPVJuvGcwJ4YZwOV99W6cCqkBHxkzvKt2f
	Vj5B9wajsxRJr5dDODzsqIISh+RsvfwW5sjEbg1zEg7JMWtqU03nBUPTFrFxyaCwYUqiz5KKTqIQf
	atyg5tdqpDuzRDbPS5Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuTt7-00GoEJ-Jl; Fri, 27 May 2022 06:55:57 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuTt5-00GoCj-0M
	for linux-phy@lists.infradead.org; Fri, 27 May 2022 06:55:56 +0000
Received: from dggpemm500022.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4L8bCT2T1WzjX4r;
	Fri, 27 May 2022 14:55:01 +0800 (CST)
Received: from dggpemm500018.china.huawei.com (7.185.36.111) by
 dggpemm500022.china.huawei.com (7.185.36.162) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 27 May 2022 14:55:46 +0800
Received: from localhost.localdomain (10.175.112.125) by
 dggpemm500018.china.huawei.com (7.185.36.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 27 May 2022 14:55:45 +0800
From: keliu <liuke94@huawei.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: keliu <liuke94@huawei.com>
Subject: [PATCH] drivers: phy: Directly use ida_alloc()/free()
Date: Fri, 27 May 2022 07:17:14 +0000
Message-ID: <20220527071714.2359990-1-liuke94@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.125]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 dggpemm500018.china.huawei.com (7.185.36.111)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220526_235555_274796_72DE3E8C 
X-CRM114-Status: UNSURE (   8.33  )
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

Use ida_alloc()/ida_free() instead of deprecated
ida_simple_get()/ida_simple_remove() .

Signed-off-by: keliu <liuke94@huawei.com>
---
 drivers/phy/phy-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 91e28d6ce450..7115727476dc 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -910,7 +910,7 @@ struct phy *phy_create(struct device *dev, struct device_node *node,
 	if (!phy)
 		return ERR_PTR(-ENOMEM);
 
-	id = ida_simple_get(&phy_ida, 0, 0, GFP_KERNEL);
+	id = ida_alloc(&phy_ida, GFP_KERNEL);
 	if (id < 0) {
 		dev_err(dev, "unable to get id\n");
 		ret = id;
@@ -1180,7 +1180,7 @@ static void phy_release(struct device *dev)
 	phy = to_phy(dev);
 	dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
 	regulator_put(phy->pwr);
-	ida_simple_remove(&phy_ida, phy->id);
+	ida_free(&phy_ida, phy->id);
 	kfree(phy);
 }
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
