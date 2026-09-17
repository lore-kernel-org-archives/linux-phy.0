Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 518AFC88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 13:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FvgXUfrqK9b70Daw4ZLZHjnWoHcbSSJzAOvbZuP+9Js=; b=MCnoAepI0gze+5
	f2Pue1afYKTZrn0f/KgalNGukGzd6TWGxo3DHBnnhDNjJFNE3ApORUQQ9Zf1T7bLz3AmijY1U3RDq
	0LqmGl5DmvVDoeHVkQk4ySUnAROpK2u/QrbWQaCopBakVRp28Jy5UrLJCDYAGKrhmcvpXMoA8eKyF
	u825IvO9AYC/U1aQfdZBDDgopH6R2NrxC3f/jrMqfxUd1wFK6iyb5K+E1eprC4EGXn+rtfz8ZiHsr
	7VcSANrXUPPTo0Esxwgq9sutrsMJef4Z9SXDIUSWm55kvO/h2nO1+X7kCySP0DkmIz6Hr84skKpNK
	UObgktZHBji5aezAVwew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CN5-0000000BQ7d-0C9n;
	Thu, 17 Sep 2026 13:41:51 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7CN1-0000000BQ6C-1Xjz
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 13:41:48 +0000
Received: from dfae2b116770.home.arpa (unknown [36.110.52.2])
	by APP-05 (Coremail) with SMTP id zQCowAA3oz0Y7qtqAK6BCA--.3930S2;
	Thu, 17 Sep 2026 21:41:45 +0800 (CST)
From: Wentao Liang <vulab@iscas.ac.cn>
To: linux-kernel@vger.kernel.org
Cc: linux-phy@lists.infradead.org,
	mani@kernel.org,
	mchehab+huawei@kernel.org,
	neil.armstrong@linaro.org,
	vkoul@kernel.org,
	Wentao Liang <vulab@iscas.ac.cn>,
	stable@vger.kernel.org
Subject: [PATCH] phy: HiSilicon: Fix device node reference leak in hi3670_pcie_get_resources_from_pcie()
Date: Thu, 17 Sep 2026 13:41:44 +0000
Message-Id: <20260917134144.2153731-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAA3oz0Y7qtqAK6BCA--.3930S2
X-Coremail-Antispam: 1UD129KBjvJXoW7GF1xJr1xuFW3JF45Kr1fCrg_yoW8Jrykpr
	W7KFW2kFyUGa1fZr1qkF1YgFy5C3WYkFW3G3yxCw13ZFn5ZFyUZayjqFy0qF42kFZ7Za4U
	KF4UtFyDJF40yrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBFb7Iv0xC_Kw4lb4IE77IF4wAFc2x0x2IEx4CE42xK8VAvwI8I
	cIk0rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2
	AK021l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v2
	6F4j6r4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x0267AKxV
	W0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv
	7VC0I7IYx2IY67AKxVWUtVWrXwAv7VC2z280aVAFwI0_Cr1j6rxdMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VAI37AI020EjII2zVCS5cI20VAGYxC7MxkF
	7I0En4kS14v26r126r1DMxAIw28IcxkI7VAKI48JMxAIw28IcVCjz48v1sIEY20_Gr43Wr
	1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8G
	jcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2I
	x0cI8IcVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26F4j6r4UJwCI42IY6xAI
	w20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr1j6F4UJwCI42IY6I8E87Iv6x
	kF7I0E14v26rxl6s0DYxBIdaVFxhVjvjDU0xZFpf9x07b818PUUUUU=
X-Originating-IP: [36.110.52.2]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBwENA2qrrRnEtgAAsP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_064147_783310_7D6FC154 
X-CRM114-Status: UNSURE (   7.28  )
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

hi3670_pcie_get_resources_from_pcie() obtains the "pcie" child node
with of_get_child_by_name(), which takes a reference on the node, but
never releases it: both the "Didn't find pcie device" and the "Failed
to get APB regmap" error paths, as well as the success path, return
without calling of_node_put().

The node is only needed for the device lookup, so drop the reference
right after bus_find_device_by_of_node().

Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Cc: stable@vger.kernel.org
Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index 87eac058a4bc..35e634279794 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -570,6 +570,7 @@ static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 	}
 
 	pcie_dev = bus_find_device_by_of_node(&platform_bus_type, pcie_port);
+	of_node_put(pcie_port);
 	if (!pcie_dev) {
 		dev_err(dev, "Didn't find pcie device\n");
 		return -ENODEV;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
