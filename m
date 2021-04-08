Return-Path: <SRS0=ZRRf=JF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B652CC433B4
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 11:49:33 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46C8C610CA
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 11:49:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 46C8C610CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vgSnTCRUr9+b1vD2iy759gQ6gSUipSX2Xc4I6h8wBtY=; b=d/4ndo3LzY5zruJZuCKuerzsXD
	RfsdzYOc0EC9xY9Yus7ca86eecNxVQUYEVKFO2HvN0jkcIExWWP7fsjvtQJLqAlhSeH+QHEKgg0tO
	dMxk6FbVRFVo4S5PzaLtnKuE86LoK+1dTWta/W8Lc98zxVKew9D1J2/8mnL47gWImLTd0NiSlQvQe
	7a8nJ91LjGtvZ+PNURDNY3nlz97tmvKpR962EAGg+caoi/vU8HeqsfBjZeFJ3FRbUPia+pdXrD4a0
	VC+gP4Em4oFMpt/OYqphkSgFwIULAEgNABDrRrQ36q9OXkODCXKCfrMr17W8T/RWrLJV4fi/BxfUi
	iHgzsuGA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUTAB-007tfX-Bx; Thu, 08 Apr 2021 11:49:31 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUT9u-007tc0-Sd; Thu, 08 Apr 2021 11:49:17 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FGKHP5yJSz19L6C;
 Thu,  8 Apr 2021 19:46:57 +0800 (CST)
Received: from huawei.com (10.67.174.47) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.498.0; Thu, 8 Apr 2021
 19:49:00 +0800
From: He Ying <heying24@huawei.com>
To: <chunkuang.hu@kernel.org>, <p.zabel@pengutronix.de>,
 <chunfeng.yun@mediatek.com>, <kishon@ti.com>, <vkoul@kernel.org>,
 <matthias.bgg@gmail.com>
CC: <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>, 
 <linux-mediatek@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <heying24@huawei.com>
Subject: [PATCH v2 -next] phy: phy-mtk-mipi-dsi: Remove redundant dev_err call
 in mtk_mipi_tx_probe()
Date: Thu, 8 Apr 2021 07:48:50 -0400
Message-ID: <20210408114850.14422-1-heying24@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.47]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_124915_246604_386D7499 
X-CRM114-Status: UNSURE (   8.06  )
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

Reviewed-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: He Ying <heying24@huawei.com>
---
v2:
- Use 'return PTR_ERR();' instead of 'ret = PTR_ERR();return ret;'.

 drivers/phy/mediatek/phy-mtk-mipi-dsi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
index c51114d8e437..01cf31633019 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
@@ -151,9 +151,7 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
 	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	mipi_tx->regs = devm_ioremap_resource(dev, mem);
 	if (IS_ERR(mipi_tx->regs)) {
-		ret = PTR_ERR(mipi_tx->regs);
-		dev_err(dev, "Failed to get memory resource: %d\n", ret);
-		return ret;
+		return PTR_ERR(mipi_tx->regs);
 	}
 
 	ref_clk = devm_clk_get(dev, NULL);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
