Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1197CEACEF
	for <linux-phy@archiver.kernel.org>; Mon, 17 Nov 2025 01:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=64XgL97iKHK0j8amQDsizkh3L4M8zzEfLdWZXq92jvE=; b=eRZB+Rf9ljmZim
	8mWHKcPnYfWXOvrHKCUs14iKHUi7BgjoWbCTFt/izRBUpq1TKrDsnRfwl7i89XZZ6KxzzaSrZ5tvj
	AaLgLnIenUFb0HGzHi86uLFGWzfWKXHG9Mnehi5Q9GF3bD/D8jk7org6WPeoT5i433KdYqgDvpx+v
	qTNz9uCC5Niif/r0El/ffCzMTyxTEZO3bCccLoaPG/O99wIuz3fu4Saz5wVkSaFW+QsJekif6igum
	C+jOpAjc8G38qyvz2VWQspFOqsH03VCxcaewj/9NzuYcuZjaW+GGE/EIRSegi3hfL53lM8+a1LnKf
	QjgMvyiwCjvVoMXizW7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKndt-0000000FFKA-2tlB;
	Mon, 17 Nov 2025 01:02:53 +0000
Received: from smtp84.cstnet.cn ([159.226.251.84] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKndp-0000000FFJA-2vdM
	for linux-phy@lists.infradead.org;
	Mon, 17 Nov 2025 01:02:52 +0000
Received: from localhost.localdomain (unknown [202.112.113.212])
	by APP-05 (Coremail) with SMTP id zQCowABXU2QkdBppz4ICAQ--.23440S2;
	Mon, 17 Nov 2025 09:02:35 +0800 (CST)
From: Ma Ke <make24@iscas.ac.cn>
To: vkoul@kernel.org,
	kishon@kernel.org,
	make24@iscas.ac.cn,
	andriy.shevchenko@linux.intel.com,
	mchehab+huawei@kernel.org,
	mani@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	akpm@linux-foundation.org,
	stable@vger.kernel.org
Subject: [PATCH v2] phy: HiSilicon: Fix error handling in hi3670_pcie_get_resources_from_pcie
Date: Mon, 17 Nov 2025 09:02:27 +0800
Message-Id: <20251117010227.17238-1-make24@iscas.ac.cn>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: zQCowABXU2QkdBppz4ICAQ--.23440S2
X-Coremail-Antispam: 1UD129KBjvJXoW7WFWfJr4rCw18ZrW5tF4xJFb_yoW8KFyfpF
	WUKFWakryUJ397uFWSvF45XFyYkFs0ka45A34Ik34fZFnYvryqqayUtFy0qF129FWkZFWU
	KFyUtF4DGF48trJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUPY14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr
	1j6F4UJwAac4AC62xK8xCEY4vEwIxC4wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40E
	FcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr
	0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8v
	x2IErcIFxwACI402YVCY1x02628vn2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4
	vE14v_KwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E
	14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIx
	kGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAF
	wI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r
	4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUmQ6LU
	UUUU=
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: ppdnvj2u6l2u1dvotugofq/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251116_170250_164933_08E197B5 
X-CRM114-Status: GOOD (  12.93  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

In hi3670_pcie_get_resources_from_pcie(), the reference obtained via
bus_find_device_by_of_node() is never released with put_device(). Each
call to this function increments the reference count of the PCIe
device without decrementing it, preventing proper device cleanup. And
the device node obtained via of_get_child_by_name() is never released
with of_node_put(). This could cause a leak of the node reference.

Add proper resource cleanup using goto labels to ensure all acquired
references are released before function return, regardless of the exit
path.

Found by code review.

Cc: stable@vger.kernel.org
Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Signed-off-by: Ma Ke <make24@iscas.ac.cn>
---
Changes in v2:
- modified the patch for the warning that variable 'ret' is set but not used.
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index dbc7dcce682b..9960c9da9b4a 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -560,7 +560,8 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 {
 	struct device_node *pcie_port;
 	struct device *dev = phy->dev;
-	struct device *pcie_dev;
+	struct device *pcie_dev = NULL;
+	int ret = 0;
 
 	pcie_port = of_get_child_by_name(dev->parent->of_node, "pcie");
 	if (!pcie_port) {
@@ -572,7 +573,8 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
 	if (!pcie_dev) {
 		dev_err(dev, "Didn't find pcie device\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto out_put_node;
 	}
 
 	/*
@@ -586,10 +588,15 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
 	if (!phy->apb) {
 		dev_err(dev, "Failed to get APB regmap\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto out_put_device;
 	}
 
-	return 0;
+out_put_device:
+	put_device(pcie_dev);
+out_put_node:
+	of_node_put(pcie_port);
+	return ret;
 }
 
 static int kirin_pcie_clk_ctrl(struct hi3670_pcie_phy *phy, bool enable)
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
