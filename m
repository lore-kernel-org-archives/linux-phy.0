Return-Path: <SRS0=iBXI=P2=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79A2AC433F5
	for <linux-phy@archiver.kernel.org>; Sun,  7 Nov 2021 07:57:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 477D960E94
	for <linux-phy@archiver.kernel.org>; Sun,  7 Nov 2021 07:57:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 477D960E94
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCxjDUfcyXZ8aPKsT7WuGQV8bPnenNs1R18leDe84WY=; b=MzPQBRPuLz73rn
	Mydu6GWNtJbQHMHVNsFG305gEd7WJfvzRIQ61y3d5p3pQj//XOLeUuRBw7n59Sv4Wz1wLqOruwy2F
	hDeNHrOo/qvU7YP8XykzGroFrEQPnVYxjHgdHayoGtdPIc5DLPoXGmUaDhZnOx7fSSoBElGbH3KMa
	JYN6Xo4qQ6F3RgwwCiiYAw1NyTrqRCG+889K6ETtfMJyEwgGKPX7owrG7xwEFfJHdVBLMqTzF8w2n
	6lMZ0fmbi3ArhntOMt268mW4DSQon0Y4uwPgs3LILvBu2Cxmk+Bx03bv0PN3RILPGmeZd3XhJCXRb
	lYYaQRgsdJITV7rasNsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjd3V-00E5oY-PS; Sun, 07 Nov 2021 07:57:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjd2x-00E5eR-NN; Sun, 07 Nov 2021 07:57:01 +0000
X-UUID: f5c0c0958b78416397561683978f504f-20211107
X-UUID: f5c0c0958b78416397561683978f504f-20211107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 393728653; Sun, 07 Nov 2021 00:56:53 -0700
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 7 Nov 2021 00:56:51 -0700
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.792.15; Sun, 7 Nov 2021 15:56:50 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkmbs10n2.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.2.792.3 via Frontend
 Transport; Sun, 7 Nov 2021 15:56:49 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Matthias Brugger <matthias.bgg@gmail.com>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-mediatek@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Eddie Hung <eddie.hung@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Yz Wu <yz.wu@mediatek.com>
Subject: [PATCH 3/6] nvmem: mtk-efuse: support minimum one byte access stride
 and granularity
Date: Sun, 7 Nov 2021 15:56:43 +0800
Message-ID: <20211107075646.4366-3-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
References: <20211107075646.4366-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_005659_804703_24162B74 
X-CRM114-Status: GOOD (  13.18  )
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

In order to support nvmem bits property, should support minimum 1 byte
read stride and minimum 1 byte read granularity at the same time.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/nvmem/mtk-efuse.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/nvmem/mtk-efuse.c b/drivers/nvmem/mtk-efuse.c
index 6a537d959f14..e9a375dd84af 100644
--- a/drivers/nvmem/mtk-efuse.c
+++ b/drivers/nvmem/mtk-efuse.c
@@ -19,11 +19,12 @@ static int mtk_reg_read(void *context,
 			unsigned int reg, void *_val, size_t bytes)
 {
 	struct mtk_efuse_priv *priv = context;
-	u32 *val = _val;
-	int i = 0, words = bytes / 4;
+	void __iomem *addr = priv->base + reg;
+	u8 *val = _val;
+	int i;
 
-	while (words--)
-		*val++ = readl(priv->base + reg + (i++ * 4));
+	for (i = 0; i < bytes; i++, val++)
+		*val = readb(addr + i);
 
 	return 0;
 }
@@ -45,8 +46,8 @@ static int mtk_efuse_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
-	econfig.stride = 4;
-	econfig.word_size = 4;
+	econfig.stride = 1;
+	econfig.word_size = 1;
 	econfig.reg_read = mtk_reg_read;
 	econfig.size = resource_size(res);
 	econfig.priv = priv;
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
