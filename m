Return-Path: <SRS0=ZbHx=IQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DBBC433E9
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 13:48:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F03064F04
	for <linux-phy@archiver.kernel.org>; Thu, 18 Mar 2021 13:48:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F03064F04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=alY75lVjUgSqvavXJ6/xqnyFkLvPsptr13qM5u+Y1As=; b=pEbQE7KmS+GA51P1s6bglhA1oj
	4Lby7qrkW8icbjofRJZOtePouh0YzZqRTOaeOtpX8ZUhS1l8jc1uTh2oS47ie9h7XN+hehGrh530U
	gaCDbT7u/MjMaDntWsHUxnjRosEGolR2sClaq3nL2wHeU67uzKQrSW2wI3SNqoB6KEF3hSayJ7dBn
	sRGYv4jrUxlKVnbP2e6l1pPEIlOsOT7okjh+K6VXwgxZKApFT19NXk4W9tF3V6kry2gFVyYvGmaqQ
	88OfNF5DcOgRKxUNUcZDqwPz2U/kTEO7R2WZ13lTX9CgFbmePSi/beVX45ykUKF2A/3104W2g7SQq
	lNi7HCzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMt18-005PMg-Hy; Thu, 18 Mar 2021 13:48:50 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMt0r-005PKE-PY; Thu, 18 Mar 2021 13:48:37 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4F1SwP4MpbzQj9Z;
 Thu, 18 Mar 2021 21:45:57 +0800 (CST)
Received: from localhost.localdomain (10.175.102.38) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.498.0; Thu, 18 Mar 2021 21:48:14 +0800
From: 'w00385741 <weiyongjun1@huawei.com>
To: <weiyongjun1@huawei.com>, Kishon Vijay Abraham I <kishon@ti.com>, "Vinod
 Koul" <vkoul@kernel.org>, Lars Povlsen <lars.povlsen@microchip.com>, "Steen
 Hegelund" <Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Bjarni Jonasson
 <bjarni.jonasson@microchip.com>, Andrew Lunn <andrew@lunn.ch>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <kernel-janitors@vger.kernel.org>, Hulk Robot
 <hulkci@huawei.com>
Subject: [PATCH -next] phy: sparx5_serdes: Fix return value check in
 sparx5_serdes_probe()
Date: Thu, 18 Mar 2021 13:56:47 +0000
Message-ID: <20210318135647.1286295-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210318_134834_842659_99917443 
X-CRM114-Status: GOOD (  11.24  )
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

From: Wei Yongjun <weiyongjun1@huawei.com>

In case of error, the function devm_ioremap() returns NULL
pointer not ERR_PTR(). The IS_ERR() test in the return value
check should be replaced with NULL test.

Fixes: 2ff8a1eeb5aa ("phy: Add Sparx5 ethernet serdes PHY driver")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 06bcf0c166cf..dd854d825000 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -2438,10 +2438,10 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 
 	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	iomem = devm_ioremap(priv->dev, iores->start, iores->end - iores->start + 1);
-	if (IS_ERR(iomem)) {
+	if (!iomem) {
 		dev_err(priv->dev, "Unable to get serdes registers: %s\n",
 			iores->name);
-		return PTR_ERR(iomem);
+		return -ENOMEM;
 	}
 	for (idx = 0; idx < ARRAY_SIZE(sparx5_serdes_iomap); idx++) {
 		struct sparx5_serdes_io_resource *iomap = &sparx5_serdes_iomap[idx];


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
