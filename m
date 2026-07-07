Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63830C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 15:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIi+BKkb2WzfvXkdsPdZHQ3EJMz50gIcfbT7AJuAdyM=; b=H7qBCx4sGa2aWW
	Lb1ugyZgzCECL64jPJO6rMjQueYLfqY7QLuXSOphzbDH9eYT3vyt1RmMN+j6GSSfBCn+lMZqZJ/I/
	tMuKhYVu25Yt7zQEa+bczta3tpInrA7K8DpgYdkoX7erlwc4+yBRdld1zSdneLKaP28FtaCDLcZYU
	UxrbdClyiIMdy0Cakke7QbUNim53R7z/VhcSuumO6IcwBJi4Pgq5m2DfLKCytJDeo1YBGM2ewwSgB
	08fLrzvN5tA5b063ngV0SKyLMSMBUpfsPpSxxvuogH/I89UagtzC43WPk87KNTBgP+WRS6kK3xqds
	kohEgJRrZQLBsWYYoTLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7wu-0000000FM8Z-0AZs;
	Tue, 07 Jul 2026 15:43:04 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7wj-0000000FLwv-21ws;
	Tue, 07 Jul 2026 15:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783438970;
	bh=WveJIKcSDFtln6moBUm4mMfeMv6Y8I/JiesYCykNM8g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=p2oVJ2qklGmKZNK/3dc4Zi0jaX6UNrC89+N5mwax6PXQuUoOeTrrN9RBCfT0L2df2
	 zaCYYzP8ajacguO649Von6x91Q9Vw2pb302e3MNC5Rvg5Nd3uWNYo7jm5C89zq2FmM
	 7Pxyxq4XUJuBNm+SCY5cwElurHajbdRqqBqrGSjhkaY7zZktwMmlwPiYKy9IFr88fG
	 Y6+5nY1wbbuW6WZFpn3I/AZylE8rV40raUZmZ88+Tvjf5qpQwQtT1CdW7IytVbEPog
	 9WQ+zlJQZoW342tDLa+KAM0FyOe0YXgIsJhoXCgwX62w66i6KlDQcyKWdl419w9qsi
	 /W5pd3imjFASQ==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 26FC117E0DE6;
	Tue, 07 Jul 2026 17:42:50 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunfeng.yun@mediatek.com
Cc: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	chunkuang.hu@kernel.org,
	p.zabel@pengutronix.de,
	justin.yeh@mediatek.com,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH v3 02/12] phy: phy-mtk-dp: Rename regs to regmap in struct mtk_dp_phy
Date: Tue,  7 Jul 2026 17:42:35 +0200
Message-ID: <20260707154245.198361-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_084253_669430_3C33B635 
X-CRM114-Status: GOOD (  11.78  )
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

In preparation to perform further cleanups and to extend the
driver to support more SoCs, rename the `regs` member to `regmap`
to improve readability, as this is a common name across many
kernel drivers for a struct regmap.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/mediatek/phy-mtk-dp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-dp.c b/drivers/phy/mediatek/phy-mtk-dp.c
index d7024a144335..bf7b3a95e72d 100644
--- a/drivers/phy/mediatek/phy-mtk-dp.c
+++ b/drivers/phy/mediatek/phy-mtk-dp.c
@@ -79,7 +79,7 @@
 				 XTP_LN_TX_LCTXCP1_SW3_PRE0_DEFAULT)
 
 struct mtk_dp_phy {
-	struct regmap *regs;
+	struct regmap *regmap;
 };
 
 static int mtk_dp_phy_init(struct phy *phy)
@@ -94,13 +94,13 @@ static int mtk_dp_phy_init(struct phy *phy)
 		DRIVING_PARAM_8_DEFAULT
 	};
 
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE0_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE0_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE1_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE1_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE2_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE2_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
-	regmap_bulk_write(dp_phy->regs, MTK_DP_LANE3_DRIVING_PARAM_3,
+	regmap_bulk_write(dp_phy->regmap, MTK_DP_LANE3_DRIVING_PARAM_3,
 			  driving_params, ARRAY_SIZE(driving_params));
 
 	return 0;
@@ -131,10 +131,10 @@ static int mtk_dp_phy_configure(struct phy *phy, union phy_configure_opts *opts)
 			val = BIT_RATE_HBR3;
 			break;
 		}
-		regmap_write(dp_phy->regs, MTK_DP_PHY_DIG_BIT_RATE, val);
+		regmap_write(dp_phy->regmap, MTK_DP_PHY_DIG_BIT_RATE, val);
 	}
 
-	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_PLL_CTL_1,
+	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_PLL_CTL_1,
 			   TPLL_SSC_EN, opts->dp.ssc ? TPLL_SSC_EN : 0);
 
 	return 0;
@@ -144,10 +144,10 @@ static int mtk_dp_phy_reset(struct phy *phy)
 {
 	struct mtk_dp_phy *dp_phy = phy_get_drvdata(phy);
 
-	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_SW_RST,
 			   DP_GLB_SW_RST_PHYD, 0);
 	usleep_range(50, 200);
-	regmap_update_bits(dp_phy->regs, MTK_DP_PHY_DIG_SW_RST,
+	regmap_update_bits(dp_phy->regmap, MTK_DP_PHY_DIG_SW_RST,
 			   DP_GLB_SW_RST_PHYD, 1);
 
 	return 0;
@@ -176,7 +176,7 @@ static int mtk_dp_phy_probe(struct platform_device *pdev)
 	if (!dp_phy)
 		return -ENOMEM;
 
-	dp_phy->regs = regs;
+	dp_phy->regmap = regs;
 	phy = devm_phy_create(dev, NULL, &mtk_dp_phy_dev_ops);
 	if (IS_ERR(phy))
 		return dev_err_probe(dev, PTR_ERR(phy),
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
