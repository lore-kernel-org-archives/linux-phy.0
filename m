Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0E79C6FA82
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 02:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/0EkSiBGLY5/Kksg2WDzLQX9LQj2Jx7cR3F9TbMR1jk=; b=k4Lp4L0qxSzi8q
	ghIA+k1+WE41TdScneov3Tkh56I2mJKJd+evat8uJ87IcwSFfiirXt1GIN1CBdRJ4XmrdNb+IJSuS
	+guxra3SFjWvS0GbvnP6Phwb12uBo4D6SRRGpRlcl/7G092wJBKx1qinHwxuU+9OLu8XluYcX/XgB
	Hvf3xN+Huqh6PYa9pdfZbbZ/6v0x47MzvMi4kHAgIKSLTLiYp0schscFk19+5Ee69bsSJE8BbQB2h
	U3zsAuiEaahfTg229W12VcP5ynQAmgFY1mquZuZWnC5yPO5JoUW4As5xiKcg93uWzkggXupbKa+Og
	+FhA/jny/97bnib5XJ/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oce0v-0014cQ-QM; Mon, 26 Sep 2022 02:38:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oce0t-0014XR-1B; Mon, 26 Sep 2022 02:38:32 +0000
X-UUID: 94872021c088442290c5b48506cd5437-20220925
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:CC:To:From; bh=lNjS0daBockfvC8/I+tkIjGjCHW4b3iin6Yx3Vdho4k=;
	b=LlnTQdxsD/9oDIeb7uboHvuYrMCNGik2EKkY1aMeKTC7/Qp2BRGZcrWXGYNF1L7jFlMYw5PggHxN/1snECroFyURNLlWt9O4h9q08eHODMq9MjbAzrMgnsNPEKiILd525qDPnlOH0Dm1/yoALxDx9IA7X1rnklKyASGj+lPdTjY=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.11,REQID:671f8667-513a-41d0-8505-edcf832ea4c6,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:39a5ff1,CLOUDID:c1962ce4-87f9-4bb0-97b6-34957dc0fbbe,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:nil,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0
X-UUID: 94872021c088442290c5b48506cd5437-20220925
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <chunfeng.yun@mediatek.com>)
	(musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1681599012; Sun, 25 Sep 2022 19:38:26 -0700
Received: from mtkcas10.mediatek.inc (172.21.101.39) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.2.792.15; Mon, 26 Sep 2022 10:37:51 +0800
Received: from localhost.localdomain (10.17.3.154) by mtkcas10.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 26 Sep 2022 10:37:50 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Chunfeng Yun <chunfeng.yun@mediatek.com>, Kishon Vijay Abraham I
	<kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>, Eddie Hung
	<eddie.hung@mediatek.com>, kernel test robot <lkp@intel.com>
Subject: [PATCH next] phy: mediatek: fix build warning of FIELD_PREP()
Date: Mon, 26 Sep 2022 10:37:50 +0800
Message-ID: <20220926023750.21183-1-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_193831_100466_217511B5 
X-CRM114-Status: UNSURE (   8.33  )
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

Change the inline function mtk_phy_update_field() into a macro to
avoid check warning of FIELD_PREP() with compiler parameter
-Wtautological-constant-out-of-range-compare

the warning is caused by mask check:
"BUILD_BUG_ON_MSG(__bf_cast_unsigned(_mask, _mask) >     \"

Fixes: 29c07477556e ("phy: mediatek: add a new helper to update bitfield")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
 drivers/phy/mediatek/phy-mtk-io.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-io.h b/drivers/phy/mediatek/phy-mtk-io.h
index 9e9c6f221c92..d20ad5e5be81 100644
--- a/drivers/phy/mediatek/phy-mtk-io.h
+++ b/drivers/phy/mediatek/phy-mtk-io.h
@@ -37,9 +37,10 @@ static inline void mtk_phy_update_bits(void __iomem *reg, u32 mask, u32 val)
 }
 
 /* field @mask shall be constant and continuous */
-static inline void mtk_phy_update_field(void __iomem *reg, u32 mask, u32 val)
-{
-	mtk_phy_update_bits(reg, mask, FIELD_PREP(mask, val));
-}
+#define mtk_phy_update_field(reg, mask, val) \
+({ \
+	typeof(mask) mask_ = (mask);	\
+	mtk_phy_update_bits(reg, mask_, FIELD_PREP(mask_, val)); \
+})
 
 #endif
-- 
2.18.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
