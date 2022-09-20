Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 414D6ECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 09:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqzZqu153E4sKWSk7Nm/eb7y4SY6cQCpQ7heS7Fbt2k=; b=IM83kTA7LBVaSH
	9dv3LKQkMiTxxQlQR3IaZsjbLHSfeiMjcVa9+SGNqU+H05CBwl3vtZCPVk78AySAJLF0nLemEKpi9
	PopVaorfFU5XlH+KnNNvYzQivEJ3hUFeojtT5dLjB9JGbmgf2BpIigZhmH7XRYLCCIUFSFRT7BHWN
	Y3UT7wW7tZbWyHl+acgUHolgWxsXrk4ZlYwSA/5WWwiuarkVZPL6Vsf1ZeNSQmJtf/lLuvmpXv+69
	OMhsxDcWEjUCI6txSQ18g3I9A3iwueno0pGzXNWj0i55G6Vzbjp3WEGeg38+HxoMq9LB/tjkH4CpZ
	KY2X1a8/NRA/MbOw8hag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZfy-002Swi-V0; Tue, 20 Sep 2022 09:36:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZb8-002PzI-6o; Tue, 20 Sep 2022 09:31:24 +0000
X-UUID: 11d0e438a8304055a808ea3e32182774-20220920
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=Ttq0pKiSe6uVcSj6n9DaO3vOaI+EVmioWYw/ksaT8H8=;
	b=JwpM9j3OVmvwAXbdYoOjmykM8X+m4ld1RJOzGtd9zGvfXrMCS1Az+cn7zwLzGaxukuv/0Zx5rFbGqAicrdKoQFlfPj+3j6ZrNP6QaWHaPHbkH7a4ElrQBsnxGmswTsqKya4md/GIT5mLW3CP4xiGORkzG6rDCaQ/7HaE/sjX5nI=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.11,REQID:c8209cd6-af99-4d7c-bf28-091aa7234c7b,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:39a5ff1,CLOUDID:5f2d6870-dafa-4a42-b716-cf2cd4845592,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 11d0e438a8304055a808ea3e32182774-20220920
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 738370836; Tue, 20 Sep 2022 02:31:19 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Tue, 20 Sep 2022 17:00:41 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 20 Sep 2022 17:00:40 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Philipp Zabel <p.zabel@pengutronix.de>, Chunfeng Yun
	<chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I <kishon@ti.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, <dri-devel@lists.freedesktop.org>,
	<linux-mediatek@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>, Jitao Shi
	<jitao.shi@mediatek.com>, Stanley Chu <stanley.chu@mediatek.com>
Subject: [PATCH 01/18] phy: mediatek: add a new helper to update bitfield
Date: Tue, 20 Sep 2022 17:00:21 +0800
Message-ID: <20220920090038.15133-2-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920090038.15133-1-chunfeng.yun@mediatek.com>
References: <20220920090038.15133-1-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_023122_930952_C41354D6 
X-CRM114-Status: UNSURE (   7.93  )
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

Due to FIELD_PREP() macro can be used to prepare a bitfield value,
local ones can be remove; add the new helper to make bitfield update
easier.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/phy/mediatek/phy-mtk-io.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/phy/mediatek/phy-mtk-io.h b/drivers/phy/mediatek/phy-mtk-io.h
index 500fcdab165d..a723d4afc9b4 100644
--- a/drivers/phy/mediatek/phy-mtk-io.h
+++ b/drivers/phy/mediatek/phy-mtk-io.h
@@ -8,6 +8,7 @@
 #ifndef __PHY_MTK_H__
 #define __PHY_MTK_H__
 
+#include <linux/bitfield.h>
 #include <linux/io.h>
 
 static inline void mtk_phy_clear_bits(void __iomem *reg, u32 bits)
@@ -35,4 +36,10 @@ static inline void mtk_phy_update_bits(void __iomem *reg, u32 mask, u32 val)
 	writel(tmp, reg);
 }
 
+/* field @mask should be constant and continuous */
+static inline void mtk_phy_update_field(void __iomem *reg, u32 mask, u32 val)
+{
+	mtk_phy_update_bits(reg, mask, FIELD_PREP(mask, val));
+}
+
 #endif
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
