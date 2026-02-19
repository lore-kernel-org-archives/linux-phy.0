Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C80C6E9A04E
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 16:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4aZVu1n/qnVL2KSfEKtqyiXRh/qdCa8lyYMlymN1o0=; b=fqJz1vw/U+QSBD
	wF81Hn//9df4Bri6OJDJOlDd2dEkJCHmcHoYRoo2EulPx950kUpsbtJcN9M2uSYwJ5Tex2N+7DEbA
	vPq/hJq66kE7i2/d0X+9iqKVsqjEb9N9Txxj4HppMGJtH6ehWwVV9xSZsVTcFai9ftsv1y00sysmt
	OTAGD6k/yE1TUo31AC/3inbpzXNRFGfeSFUMgOZjs+XDZXjfjXeJqudYVoKBsfnWooN5XIb2P0984
	QBew/uyiDrfN/y99LKGsGxQ/1mpX7ii1/n7f41iUivpmaqVS1xZNQGt7dzUKBFUzHm24ldaEbY/NB
	nn4gqeJUK1S+TxXdckXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt76o-0000000Be0f-0qH8;
	Thu, 19 Feb 2026 16:42:34 +0000
Received: from smtp81.cstnet.cn ([159.226.251.81] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vt76k-0000000Be0D-2QhG
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 16:42:33 +0000
Received: from DESKTOP-L0HPE2S.localdomain (unknown [111.225.242.233])
	by APP-03 (Coremail) with SMTP id rQCowABXcdhwPZdprW_cCA--.1041S2;
	Fri, 20 Feb 2026 00:42:24 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: olteanv@gmail.com,
	vkoul@kernel.org,
	kishon@kernel.org,
	andriy.shevchenko@linux.intel.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haotian Zhang <vulab@iscas.ac.cn>
Subject: [PATCH v2] phy: hisilicon: hi3670: Fix OF node and device reference leaks
Date: Fri, 20 Feb 2026 00:38:43 +0800
Message-ID: <20260219163843.1571-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251112062246.852-1-vulab@iscas.ac.cn>
References: <20251112062246.852-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
X-CM-TRANSID: rQCowABXcdhwPZdprW_cCA--.1041S2
X-Coremail-Antispam: 1UD129KBjvJXoW7trWDGw4fZw1xtrWxAw17GFg_yoW8Ar45pF
	W7KFWUtry8G3y09F1qyF1YgFy5uFn0k3y5t3yxKw4ruFnaqa45X3yUtFyFqFnruFWfZayU
	KF18tFWkJa18trJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkl14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r
	4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY1x0262kKe7AKxVWU
	AVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14
	v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkG
	c2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI
	0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4U
	MIIF0xvEx4A2jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7VUbSfO7UUUU
	U==
X-Originating-IP: [111.225.242.233]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiDAYDA2mWpCeSvAACsa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_084230_992607_DAADB8D4 
X-CRM114-Status: UNSURE (   8.35  )
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

hi3670_pcie_get_resources_from_pcie() leaks two references:
1) The OF node returned by of_get_child_by_name() is never released.
2) The device returned by bus_find_device_by_of_node() is never put.

Fix both leaks by calling of_node_put() right after
bus_find_device_by_of_node(), and put_device() after dev_get_regmap()
when the temporary pcie_dev reference is no longer needed.

Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Suggested-by: Vladimir Oltean <olteanv@gmail.com>
Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>

---
Changes in v2:
  - Use explicit release instead of cleanup.h infrastructure.
  - Add put_device() for bus_find_device_by_of_node().
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index dbc7dcce682b..35e634279794 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -570,6 +570,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	}
 
 	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
+	of_node_put(pcie_port);
 	if (!pcie_dev) {
 		dev_err(dev, "Didn't find pcie device\n");
 		return -ENODEV;
@@ -584,6 +585,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	 * right regmap. So, let's use the named version.
 	 */
 	phy->apb = dev_get_regmap(pcie_dev, "kirin_pcie_apb");
+	put_device(pcie_dev);
 	if (!phy->apb) {
 		dev_err(dev, "Failed to get APB regmap\n");
 		return -ENODEV;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
