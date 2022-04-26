Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85829C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 26 Apr 2022 11:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bK/TMaYw0PYjcQhTpczPDm6FuLc/VFZbDUHDLzAcMIc=; b=fe31PdiqJwAceW
	fG1g5XiujffWllSMY541cABA1Q7O1/l7nSggQguakWqYZelu3z/eQ+cNrh9CtDC6K2uEp2FO2eCDk
	PTNT5whdcPjqK4zhhpN5ahRkxoxHPCw7xx3Gxw8S0gcO2PBw5uLls7JqWFyF6ooLZJi8/WYU0eRMP
	pcfXk4x340lwL7SXxcPhIDKaiOzKuBUJSqM+QsCX0bFZYv5ge2iM8F20GYpOvo5JvOsFhrR25uUXv
	sla5NgBEPy6eBciw6oIv/Y7lDykzZYgOGkkHOPlRChNXlpa707SH7bqJfRTW7A6mbDt6A9dafoN+q
	uVvzl7yjOjWKbvRg5kgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njJ55-00E30k-Rn; Tue, 26 Apr 2022 11:10:07 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njJ53-00E2wN-0P
 for linux-phy@lists.infradead.org; Tue, 26 Apr 2022 11:10:06 +0000
Received: from dggpeml500024.china.huawei.com (unknown [172.30.72.55])
 by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4KnfJk3cF5zfbD5;
 Tue, 26 Apr 2022 19:08:54 +0800 (CST)
Received: from huawei.com (10.175.112.208) by dggpeml500024.china.huawei.com
 (7.185.36.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 26 Apr
 2022 19:09:47 +0800
From: Yuan Can <yuancan@huawei.com>
To: <linux-phy@lists.infradead.org>
CC: <linux-kernel@vger.kernel.org>, <kishon@ti.com>, <vkoul@kernel.org>,
 <mchehab+huawei@kernel.org>, <dan.carpenter@oracle.com>, <mani@kernel.org>,
 <yuancan@huawei.com>
Subject: [PATCH -next] phy: hisilicon: Add resource release in
 hi3670_pcie_get_resources_from_pcie
Date: Tue, 26 Apr 2022 11:05:43 +0000
Message-ID: <20220426110543.49726-1-yuancan@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpeml500024.china.huawei.com (7.185.36.10)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_041005_243789_3102EE6C 
X-CRM114-Status: UNSURE (   7.10  )
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

Reference count of pcie_port and pcie_dev should be decremented when
error occurs.

Fixes: 73075011ffff8 (phy: HiSilicon: Add driver for Kirin 970 PCIe PHY)
Signed-off-by: Yuan Can <yuancan@huawei.com>
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index 0ac9634b398d..77c9c72d939e 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -567,6 +567,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
 	if (!pcie_dev) {
 		dev_err(dev, "Didn't find pcie device\n");
+		of_node_put(pcie_port);
 		return -ENODEV;
 	}
 
@@ -581,6 +582,8 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
 	if (!phy->apb) {
 		dev_err(dev, "Failed to get APB regmap\n");
+		put_device(pcie_dev);
+		of_node_put(pcie_port);
 		return -ENODEV;
 	}
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
