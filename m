Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B315CCFA1A
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 06:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UzWBg1FcYgXw7pI2jHrwhaJRjuZvyKg9fBnbfxaILus=; b=l59WmxlO2EpKKF
	U3xz+AL2ZboAOiEIplC0KcEGcRunC/ZY8gtHBz1EGFn90JWvZfum5A8hbpH41i2l0wffEafWH93r2
	mlPsH5CYfag1l3Y2bTJjxPdb6yzXQj7vXo9nBcwUuNYuWTNHs/bmtqcuDU2qs1Lbhmc/PdE4MhBGz
	u2GwePSQmiy1+7xj0rxf66oh2B4VQSCEJTlukQ+6L44Z6VImkFnzpxoccuAJH6yKD+6w3hQYe3hzH
	FmP/1xvmz8lJChlJBfEtv5gHqxcgUFHwv0yYLw7WQUHrcJxZI8OPEh0fJbrP92cl+XXjY84zxcndr
	0COfPaf0J1eufLQF7Z/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ4Jp-00000008C4c-2uKl;
	Wed, 12 Nov 2025 06:27:01 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ4Jm-00000008C4I-2hT5
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 06:27:00 +0000
Received: from DESKTOP-L0HPE2S (unknown [124.16.141.245])
	by APP-01 (Coremail) with SMTP id qwCowAAHoM+uKBRpZD1wAA--.849S2;
	Wed, 12 Nov 2025 14:26:55 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: vkoul@kernel.org,
	kishon@kernel.org,
	andriy.shevchenko@linux.intel.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haotian Zhang <vulab@iscas.ac.cn>
Subject: [PATCH] phy: hisilicon: Fix OF node reference leak
Date: Wed, 12 Nov 2025 14:22:46 +0800
Message-ID: <20251112062246.852-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowAAHoM+uKBRpZD1wAA--.849S2
X-Coremail-Antispam: 1UD129KBjvJXoW7AryfJFW3tF18JFykArW5Wrg_yoW8Xr47pF
	4YkFWakF4UW3yF9F40vF1UWFyY9an8Ca43A34Ikw4FvFnYyryDXayUXFy0v3ZIyFWkZFWU
	KFWUtF1UJF4UtrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26r
	xl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r106r15McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkF7I0En4kS14v2
	6r126r1DMxkIecxEwVAFwVW8AwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJV
	W8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF
	1VAFwI0_JF0_Jw1lIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6x
	IIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvE
	x4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvj
	DU0xZFpf9x0JUILvNUUUUU=
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiCREEA2kUFx1CbgAAsE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_222659_068058_E2D652E9 
X-CRM114-Status: UNSURE (   9.78  )
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

hi3670_pcie_get_resources_from_pcie() leaks an OF node reference
obtained by of_get_child_by_name(). The reference is not released
on any of the error paths or on successful return, causing a
reference count leak.

Fix this by declaring the device node with the __free(device_node)
cleanup construct to ensure the reference is automatically released.

Fixes: 73075011ffff ("phy: HiSilicon: Add driver for Kirin 970 PCIe PHY")
Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index dbc7dcce682b..fc4f50aa31cd 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -558,11 +558,10 @@ static int hi3670_pcie_noc_power(struct hi3670_pcie_phy *phy, bool enable)
 
 static int hi3670_pcie_get_resources_from_pcie(struct hi3670_pcie_phy *phy)
 {
-	struct device_node *pcie_port;
 	struct device *dev = phy->dev;
 	struct device *pcie_dev;
-
-	pcie_port = of_get_child_by_name(dev->parent->of_node, "pcie");
+	struct device_node *pcie_port __free(device_node) =
+		of_get_child_by_name(dev->parent->of_node, "pcie");
 	if (!pcie_port) {
 		dev_err(dev, "no pcie node found in %s\n",
 			dev->parent->of_node->full_name);
-- 
2.50.1.windows.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
