Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A52C54EE9
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 01:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNIr2ERqbkv1z1TwSO1nHlZxUajewDxI0DV1ymcozXA=; b=TA931oExSDaPYH
	LW5VPc+pfQlehVUynk3dSd/OxN6J+3feuM0uf/AxgHKzS7evmB6v1dVBaUmka3Xm4ZjXPHcUZXgf1
	2OGW9zgQmdgvKlh8gPWc9+UZDpF+BLPYXYd11hIKc0pTeydPwzcfk0p2ZKZP18/4sBBOtCnsLF+n6
	YT+s6NiczxbM4Wy3MuDaqF6bNSU2EmvfDKINPmoixdRFUlgrwPZzYB0GLrLm4Ye9CQX0DVqKQY2ko
	sB1XL8XMppkvUs+0vbNwgTw12N6S+lNkL9Ski0VSpjxeNilLKGEcVm863Gm9MUiiwfsIKeVqnTjIu
	LOOTEMCxMGTk3k7EoO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSlN-00Ajgw-Ue; Fri, 09 Sep 2022 01:24:57 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWSlK-00AjQp-PA
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 01:24:56 +0000
Received: from dggemv704-chm.china.huawei.com (unknown [172.30.72.57])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4MNysh2wm9zHnlP;
	Fri,  9 Sep 2022 09:22:48 +0800 (CST)
Received: from kwepemm600010.china.huawei.com (7.193.23.86) by
 dggemv704-chm.china.huawei.com (10.3.19.47) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Fri, 9 Sep 2022 09:24:44 +0800
Received: from huawei.com (10.175.127.227) by kwepemm600010.china.huawei.com
 (7.193.23.86) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Fri, 9 Sep
 2022 09:24:43 +0800
From: Sun Ke <sunke32@huawei.com>
To: <vincent.sunplus@gmail.com>, <kishon@ti.com>, <vkoul@kernel.org>,
	<p.zabel@pengutronix.de>
CC: <linux-usb@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<kernel-janitors@vger.kernel.org>, <sunke32@huawei.com>
Subject: [PATCH 1/2] phy: usb: Fix potential NULL dereference in sp_usb_phy_probe()
Date: Fri, 9 Sep 2022 09:35:45 +0800
Message-ID: <20220909013546.2259545-2-sunke32@huawei.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220909013546.2259545-1-sunke32@huawei.com>
References: <20220909013546.2259545-1-sunke32@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600010.china.huawei.com (7.193.23.86)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_182455_015729_B047F01F 
X-CRM114-Status: UNSURE (   8.14  )
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

platform_get_resource_byname() may fail and return NULL, so we should
better check it s return value to avoid a NULL pointer dereference
a bit later in the code.

Fixes: 99d9ccd97385 ("phy: usb: Add USB2.0 phy driver for Sunplus SP7021")
Signed-off-by: Sun Ke <sunke32@huawei.com>
---
 drivers/phy/sunplus/phy-sunplus-usb2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/sunplus/phy-sunplus-usb2.c b/drivers/phy/sunplus/phy-sunplus-usb2.c
index 5269968b3060..d73a8a421d9c 100644
--- a/drivers/phy/sunplus/phy-sunplus-usb2.c
+++ b/drivers/phy/sunplus/phy-sunplus-usb2.c
@@ -249,11 +249,15 @@ static int sp_usb_phy_probe(struct platform_device *pdev)
 	usbphy->dev = &pdev->dev;
 
 	usbphy->phy_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
+	if (!usbphy->phy_res_mem)
+		return -EINVAL;
 	usbphy->phy_regs = devm_ioremap_resource(&pdev->dev, usbphy->phy_res_mem);
 	if (IS_ERR(usbphy->phy_regs))
 		return PTR_ERR(usbphy->phy_regs);
 
 	usbphy->moon4_res_mem = platform_get_resource_byname(pdev, IORESOURCE_MEM, "moon4");
+	if (!usbphy->moon4_res_mem)
+		return -EINVAL;
 	usbphy->moon4_regs = devm_ioremap(&pdev->dev, usbphy->moon4_res_mem->start,
 					  resource_size(usbphy->moon4_res_mem));
 	if (IS_ERR(usbphy->moon4_regs))
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
