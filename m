Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ECA1C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 14:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qpf993pBddEoJ7ZrQj+O920ll7tDszAIK85r3sTmzm0=; b=Wwf3UKUQCuyF2k
	fV1kNbO1mnSUsyq01VaZWe+S4DH1Gn8zGENgQiq9TRM+jBdz1j3H7FZ1fJYnpEmyEPpDDsWy9w5T9
	rHK5JrfoTjGfzTTpxe121D9QSHFv7U7Kmts0gJCPEqCT0JiyqdWGbDmcHJ8MIUTscoKwKgRw4yivC
	sPm9kPnJBoJuu/gzj/YNdk8yWeeQ2YxlzjaPyxIccMdIPXpD7UK1n+H+QK1JtCpi2skr1H4kVqCxJ
	HNJSj6QKwavnsVgw/Z52FkXir5pZARCrKkQRp8ooZ//3nEt+l1Ks9Nc4tT65+r7nOECzaCIpjbEjy
	Z7NcIrj5NtMSiTrE5ckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYqjV-009AJc-V6; Mon, 28 Mar 2022 14:52:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYqjH-009AEm-Nf; Mon, 28 Mar 2022 14:52:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: kholk11) with ESMTPSA id CF2831F40887
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648479142;
 bh=XMWA9qgWgkC/u71lI6wm/PuAiM5oal1tM//wU28I3+Q=;
 h=From:To:Cc:Subject:Date:From;
 b=KpxYfx5mPacmgWtvt0niX7ZGuHbYIYeRj0xTOMgZP7XUOchwKhPwRxny07to7LuBj
 OJ9HizD4Ma3B8gwDFN+9W6uFPYL7qjVnfWl+BvvWvZ71uxSlsB1qTCFTtP7oNLmHt0
 VO60a4vdL+8Tzth/2i8qMPikMX4EvoI1wuoIsKaU+uGJ5GZ6SpZp01QjQAg07TETb5
 +2xfAt/nS2ciDJbTItTh6LFd1P+xmEahKdg5pFrj6iwE8nodPW0W/QA8WEJroO8oHn
 NyOHs7sVRdDzrysFgIdJhWpuwT5RolACCr4aozGJN2gMfrtIntI3EHQ8WngSSSThs3
 aVDTi9XfD5/GA==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de, chunfeng.yun@mediatek.com, kishon@ti.com,
 vkoul@kernel.org, matthias.bgg@gmail.com, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v2] phy: mediatek: phy-mtk-mipi-dsi: Simplify with
 dev_err_probe()
Date: Mon, 28 Mar 2022 16:52:17 +0200
Message-Id: <20220328145217.228457-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_075223_923799_544A8422 
X-CRM114-Status: GOOD (  10.52  )
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

Use the dev_err_probe() helper to simplify error handling during probe.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---

v2: Sorry, v1 was only partial as I have accidentally sent the
    wrong patch file. Fixed for v2.

 drivers/phy/mediatek/phy-mtk-mipi-dsi.c | 29 +++++++++----------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
index 67b005d5b9e3..28506932bd91 100644
--- a/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
+++ b/drivers/phy/mediatek/phy-mtk-mipi-dsi.c
@@ -154,11 +154,9 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
 		return PTR_ERR(mipi_tx->regs);
 
 	ref_clk = devm_clk_get(dev, NULL);
-	if (IS_ERR(ref_clk)) {
-		ret = PTR_ERR(ref_clk);
-		dev_err(dev, "Failed to get reference clock: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(ref_clk))
+		return dev_err_probe(dev, PTR_ERR(ref_clk),
+				     "Failed to get reference clock\n");
 
 	ret = of_property_read_u32(dev->of_node, "drive-strength-microamp",
 				   &mipi_tx->mipitx_drive);
@@ -178,27 +176,20 @@ static int mtk_mipi_tx_probe(struct platform_device *pdev)
 
 	ret = of_property_read_string(dev->of_node, "clock-output-names",
 				      &clk_init.name);
-	if (ret < 0) {
-		dev_err(dev, "Failed to read clock-output-names: %d\n", ret);
-		return ret;
-	}
+	if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to read clock-output-names\n");
 
 	clk_init.ops = mipi_tx->driver_data->mipi_tx_clk_ops;
 
 	mipi_tx->pll_hw.init = &clk_init;
 	mipi_tx->pll = devm_clk_register(dev, &mipi_tx->pll_hw);
-	if (IS_ERR(mipi_tx->pll)) {
-		ret = PTR_ERR(mipi_tx->pll);
-		dev_err(dev, "Failed to register PLL: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(mipi_tx->pll))
+		return dev_err_probe(dev, PTR_ERR(mipi_tx->pll), "Failed to register PLL\n");
 
 	phy = devm_phy_create(dev, NULL, &mtk_mipi_tx_ops);
-	if (IS_ERR(phy)) {
-		ret = PTR_ERR(phy);
-		dev_err(dev, "Failed to create MIPI D-PHY: %d\n", ret);
-		return ret;
-	}
+	if (IS_ERR(phy))
+		return dev_err_probe(dev, PTR_ERR(phy), "Failed to create MIPI D-PHY\n");
+
 	phy_set_drvdata(phy, mipi_tx);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
