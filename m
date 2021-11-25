Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5AE5C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Nov 2021 06:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hcW1ewIUExvrXWDD4CNIN8KTCvP9NWxZ8sg5tUva9JM=; b=fwxWd8CGzCMMEU
	ucBVPsCfoX1w7HztcdEKg7O34QTEtX1/0Ye2BB0WwOaQslnS9vuVFuIQePz1T6FaeP2V+Buihdvnf
	n2nb1zuvV7MlEJgR1rNerpRqV+PSOHTj33N0r2ZCAe+8M5gdlbWlFfLXe7NbeLAayL2A5Iukce9X3
	h3Ly8WpNUPLYYtoONILhYDO5y2i+q4pNY9kU1w0TheNxBOiql83aAWZR+KMLJfN36scRYv++QGEyj
	f6gjB0QfobCfo9YoLMoKLoNvHd8YqY8WHMIXjMVpN0sHWdQ4G2V0CufsENlUpka+unBrBodOUY3PE
	aNY/wBbA31BZVUStpxsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq8On-006WGr-AM; Thu, 25 Nov 2021 06:38:25 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq8Oj-006WEr-Rb
 for linux-phy@lists.infradead.org; Thu, 25 Nov 2021 06:38:23 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.57])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4J07V11J2jz91C3;
 Thu, 25 Nov 2021 14:37:45 +0800 (CST)
Received: from kwepemm600013.china.huawei.com (7.193.23.68) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 25 Nov 2021 14:38:12 +0800
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 kwepemm600013.china.huawei.com (7.193.23.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 25 Nov 2021 14:38:11 +0800
From: Zou Wei <zou_wei@huawei.com>
To: <nandhini.srikandan@intel.com>, <rashmi.a@intel.com>, <kishon@ti.com>,
 <vkoul@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>, Zou Wei
 <zou_wei@huawei.com>
Subject: [PATCH -next] phy: intel: Remove redundant dev_err call in
 thunderbay_emmc_phy_probe()
Date: Thu, 25 Nov 2021 14:38:09 +0800
Message-ID: <1637822289-24534-1-git-send-email-zou_wei@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemm600013.china.huawei.com (7.193.23.68)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_223822_108334_69685D74 
X-CRM114-Status: UNSURE (   7.75  )
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

There is a error message within devm_ioremap_resource
already, so remove the dev_err call to avoid redundant
error message.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Zou Wei <zou_wei@huawei.com>
---
 drivers/phy/intel/phy-intel-thunderbay-emmc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/intel/phy-intel-thunderbay-emmc.c b/drivers/phy/intel/phy-intel-thunderbay-emmc.c
index 2d6ea84..593f697 100644
--- a/drivers/phy/intel/phy-intel-thunderbay-emmc.c
+++ b/drivers/phy/intel/phy-intel-thunderbay-emmc.c
@@ -472,10 +472,8 @@ static int thunderbay_emmc_phy_probe(struct platform_device *pdev)
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	tbh_phy->reg_base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(tbh_phy->reg_base)) {
-		dev_err(&pdev->dev, "region map failed\n");
+	if (IS_ERR(tbh_phy->reg_base))
 		return PTR_ERR(tbh_phy->reg_base);
-	}
 
 	tbh_phy->phy_power_sts = PHY_UNINITIALIZED;
 	id = of_match_node(thunderbay_emmc_phy_of_match, pdev->dev.of_node);
-- 
2.6.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
