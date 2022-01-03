Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 709B3C433EF
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jan 2022 15:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0pAK3597vOSU820yGSEoyAUzBFaSCLdY7kggz8fD2U=; b=LbOqAHdNqpeE3J
	1s89LnoyHJ2KNR+RwoEj3gFQl1Xc1z+e+Iny4xUof25KSZTRBhw9tkKN3VN3zeZrR8fJsWyXm+/10
	a5wwCvj9WEwxMuzLGi9o6I3dFES8dzegKs8wUQI60BfJJlcP+gxd1MSEiXlyCBtA6otKIR85LA9HT
	mZL3TZCyzTHd1M/Rl7OM3oBUJWRw77bvvI+IGDdD7pzkx3Lz2xNKrYOlxRoMGk5nKKEqczF9Ox8dU
	ObKyXh3PZTilnmfjhCOh/ByUuLl0QC05iXpFDwwdY7DeIGQCdf1sEZ+C5ZKJEYf3LCMv/95km0JB3
	8YQx9bHe4BXLT5PDrjew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4PIs-009LAF-R6; Mon, 03 Jan 2022 15:31:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4PIc-009L2g-Hv; Mon, 03 Jan 2022 15:31:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: kholk11) with ESMTPSA id B3B5E1F42536
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1641223861;
 bh=ufpjK9obNzMvAWdLd5nIOYsHY/3E6VwId5SApV+NWmY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IxrxphPRJeH6xoKd3/7H4lUO1e6wRNNj0KJ/Zlho65Hs5+j/ZlkHzo0vV+XG3mNQm
 tW5ZmzFM83RZPEDnb3H9hRssaNZ+1t2YPEI3LLEBuqtlgFokb4edV6w2+/hJR9PZPj
 gkyvg1MV0ddmx8DS5Q/HlP3BsxkkAAIos7S3Un7ghBMGhw0tFeLgXbp7t+vbz/XUDm
 TFnMXx5v04qo1DWwjFZDoYlOqRcl3ycrCNZx6kCxJdD41bGJoW6oNvRkab1o8aqugl
 d5Qe3H91vrbFrG+J636lwLZ0sgVOWTg52czd/4k0eYrAQ8+R/lBgeGPiAh32clLuZ2
 iULNNllkTd7VQ==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de, chunfeng.yun@mediatek.com, kishon@ti.com,
 vkoul@kernel.org, matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH 2/4] phy: mediatek: phy-mtk-hdmi: Reorder to remove forward
 declarations
Date: Mon,  3 Jan 2022 16:30:53 +0100
Message-Id: <20220103153055.50473-2-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220103153055.50473-1-angelogioacchino.delregno@collabora.com>
References: <20220103153055.50473-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_073102_748255_E07961CB 
X-CRM114-Status: UNSURE (   8.28  )
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

Forward declarations for mtk_hdmi_power_{on,off} aren't necessary:
move mtk_hdmi_phy_dev_ops down to remove forward declarations.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-hdmi.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-hdmi.c b/drivers/phy/mediatek/phy-mtk-hdmi.c
index 707e90691e6e..b4193cb4e4e3 100644
--- a/drivers/phy/mediatek/phy-mtk-hdmi.c
+++ b/drivers/phy/mediatek/phy-mtk-hdmi.c
@@ -6,15 +6,6 @@
 
 #include "phy-mtk-hdmi.h"
 
-static int mtk_hdmi_phy_power_on(struct phy *phy);
-static int mtk_hdmi_phy_power_off(struct phy *phy);
-
-static const struct phy_ops mtk_hdmi_phy_dev_ops = {
-	.power_on = mtk_hdmi_phy_power_on,
-	.power_off = mtk_hdmi_phy_power_off,
-	.owner = THIS_MODULE,
-};
-
 inline struct mtk_hdmi_phy *to_mtk_hdmi_phy(struct clk_hw *hw)
 {
 	return container_of(hw, struct mtk_hdmi_phy, pll_hw);
@@ -43,6 +34,12 @@ static int mtk_hdmi_phy_power_off(struct phy *phy)
 	return 0;
 }
 
+static const struct phy_ops mtk_hdmi_phy_dev_ops = {
+	.power_on = mtk_hdmi_phy_power_on,
+	.power_off = mtk_hdmi_phy_power_off,
+	.owner = THIS_MODULE,
+};
+
 static const struct phy_ops *
 mtk_hdmi_phy_dev_get_ops(const struct mtk_hdmi_phy *hdmi_phy)
 {
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
