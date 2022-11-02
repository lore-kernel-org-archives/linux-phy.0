Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAF96C4332F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Nov 2022 02:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9oVBJsKAIKhh53Slb09Vb2+ZW/1w0fDzkSSHMxPDFdI=; b=fSJVtYN4VcAlK8
	LcXI5xkes8zMJw2rFTTU5okcqwGGqFSag5aZihq0AlTT7Xg9p3ZG0GfmpW3eapDFpMLaII31vs4LI
	KAMv2Ig+cGT7EKDYMutCreiV0Y2om2nYnVlRYgFiO+t0AnonqD33Ebgw36Eb04Bwn+/5jYxjHe8Oz
	89UJrec47264yxngnOPyjk7K9Zi/WuH1uVoDLdmmjvsxIOp29/TYFg/dqX8WWlPEvvOqZakTvirm5
	Hn24aQf5s/Tuw92SvmSNyhmSGtJMGnaSLfeaioR1MJf3LgFm3yhDKMPU41xOhZHN5054wev0enCmP
	TtKvoKihkzoTA2Nx+xwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq3yA-0083hB-AR; Wed, 02 Nov 2022 02:59:10 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq3y6-0083fS-OE
	for linux-phy@lists.infradead.org; Wed, 02 Nov 2022 02:59:08 +0000
Received: from kwepemi500023.china.huawei.com (unknown [172.30.72.53])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4N2BL238WkzRnwG;
	Wed,  2 Nov 2022 10:54:02 +0800 (CST)
Received: from huawei.com (10.175.112.208) by kwepemi500023.china.huawei.com
 (7.221.188.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Wed, 2 Nov
 2022 10:58:58 +0800
From: Peng Wu <wupeng58@huawei.com>
To: <vincent.sunplus@gmail.com>, <kishon@ti.com>, <vkoul@kernel.org>
CC: <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<liwei391@huawei.com>, <wupeng58@huawei.com>
Subject: [PATCH] phy: sunplus: Fix an IS_ERR() vs NULL bug in sp_usb_phy_probe
Date: Wed, 2 Nov 2022 02:56:27 +0000
Message-ID: <20221102025627.122388-1-wupeng58@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.112.208]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemi500023.china.huawei.com (7.221.188.76)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_195907_020909_3EB90DB0 
X-CRM114-Status: UNSURE (   9.92  )
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

The devm_ioremap() function returns NULL on error, it doesn't return
error pointers.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Peng Wu <wupeng58@huawei.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index b932087c55b2..e827b79f6d49 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -256,8 +256,8 @@ static int sp_usb_phy_probe(struct platform_device *pdev)
 	usbphy->moon4_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "moon4");
 	usbphy->moon4_regs = devm_ioremap(&pdev->dev, usbphy->moon4_res_mem->start,
 					  resource_size(usbphy->moon4_res_mem));
-	if (IS_ERR(usbphy->moon4_regs))
-		return PTR_ERR(usbphy->moon4_regs);
+	if (!usbphy->moon4_regs)
+		return -ENOMEM;
 
 	usbphy->phy_clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(usbphy->phy_clk))
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
