Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FC0BCFD2F6
	for <linux-phy@archiver.kernel.org>; Mon, 24 Nov 2025 01:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8xCPPTrpp3LAourDKh6KS3On9huMTwIkpuKscT2yRIA=; b=OUWKnOfspOd3cG
	6EbdcE/YKmf20SWBLZiHUqBxYx5upse+oPeakyjjZvW/HGXhAkCk/5FKqf6AE7DaXmDvdzLJNMs60
	rwOZx/Cw7emFtJn5+g6mhEO5DABR5+FonezREn+JbBUGZgMb351JLGJrwq7pSgk7UN4gnfBuPFKOZ
	egh8SgjpfYZjb7i1emHEB/jKMTA0bPJdTMfcc8aw19IcNABTzw9kIRvzH0OAGSk5HOFbY1ILyLZbm
	zO3Bh0dpOc+xVE1HAjbTpt13Z4uIsXNRg5TPkiLDPmCRXh/yiVtki5kI5aGi1GYXo2Yh8PBPjqVHc
	ZE723eUdp9XiPM3H+MYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNLF5-0000000Auja-3KcM;
	Mon, 24 Nov 2025 01:19:47 +0000
Received: from smtp21.cstnet.cn ([159.226.251.21] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNLF1-0000000Auir-457r
	for linux-phy@lists.infradead.org;
	Mon, 24 Nov 2025 01:19:46 +0000
Received: from DESKTOP-L0HPE2S (unknown [124.16.141.245])
	by APP-01 (Coremail) with SMTP id qwCowAC3SsqrsiNpYhbSAQ--.9519S2;
	Mon, 24 Nov 2025 09:19:40 +0800 (CST)
From: Haotian Zhang <vulab@iscas.ac.cn>
To: vkoul@kernel.org,
	kishon@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Haotian Zhang <vulab@iscas.ac.cn>
Subject: [PATCH] phy: ti: da8xx-usb: Handle devm_pm_runtime_enable() errors
Date: Mon, 24 Nov 2025 09:19:19 +0800
Message-ID: <20251124011919.1581-1-vulab@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1.windows.1
MIME-Version: 1.0
X-CM-TRANSID: qwCowAC3SsqrsiNpYhbSAQ--.9519S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KryUWr17Jw15Xw4rtr1rCrg_yoW8Cr17pF
	WfXas2krWFg348Gw4DJw4kuFWYk3yrtry8KF97C3WF9a45W3yUXa4rAFyjvFsYvrykuF15
	J3WrJFy7Aa1avF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvj14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxV
	WxJr0_GcWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
	Yx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc7CjxVAaw2AF
	wI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4
	xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1D
	MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I
	0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWU
	JVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfUeh
	L0UUUUU
X-Originating-IP: [124.16.141.245]
X-CM-SenderInfo: pyxotu46lvutnvoduhdfq/1tbiBwkQA2kjIsDjaQAAs-
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251123_171944_377027_DB1526FD 
X-CRM114-Status: GOOD (  11.23  )
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

devm_pm_runtime_enable() can fail due to memory allocation. The current
code ignores its return value after calling pm_runtime_set_active(),
leaving the device in an inconsistent state if runtime PM initialization
fails.

Check the return value of devm_pm_runtime_enable() and return on
failure. Also move the declaration of 'ret' to the function scope
to support this check.

Fixes: ee8e41b5044f ("phy: ti: phy-da8xx-usb: Add runtime PM support")
Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
---
 drivers/phy/ti/phy-da8xx-usb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-da8xx-usb.c b/drivers/phy/ti/phy-da8xx-usb.c
index 1d81a1e6ec6b..be9c77f8c288 100644
--- a/drivers/phy/ti/phy-da8xx-usb.c
+++ b/drivers/phy/ti/phy-da8xx-usb.c
@@ -180,6 +180,7 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 	struct da8xx_usb_phy_platform_data *pdata = dev->platform_data;
 	struct device_node	*node = dev->of_node;
 	struct da8xx_usb_phy	*d_phy;
+	int ret;
 
 	d_phy = devm_kzalloc(dev, sizeof(*d_phy), GFP_KERNEL);
 	if (!d_phy)
@@ -233,8 +234,6 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 			return PTR_ERR(d_phy->phy_provider);
 		}
 	} else {
-		int ret;
-
 		ret = phy_create_lookup(d_phy->usb11_phy, "usb-phy",
 					"ohci-da8xx");
 		if (ret)
@@ -249,7 +248,11 @@ static int da8xx_usb_phy_probe(struct platform_device *pdev)
 			  PHY_INIT_BITS, PHY_INIT_BITS);
 
 	pm_runtime_set_active(dev);
-	devm_pm_runtime_enable(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret) {
+		dev_err(dev, "Failed to enable runtime PM\n");
+		return ret;
+	}
 	/*
 	 * Prevent runtime pm from being ON by default. Users can enable
 	 * it using power/control in sysfs.
-- 
2.50.1.windows.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
