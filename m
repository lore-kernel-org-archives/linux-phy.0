Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A8EE9E311
	for <linux-phy@archiver.kernel.org>; Wed, 11 Feb 2026 14:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oZp3nmrb/is1Udqcpy0T2dFBIWRQQEI3/kL5awC+jWU=; b=q6TMwYcf2kmYZd
	yRgpd1RfPcj9LnDILTwKT+H8tZGwCOVQ5IZL28sMSC0OgpSX2/w/kyi87Vdtc7qUYTlO7utt8QwwT
	LIBOgwc18+lDBB3ZyqwMreQADZdoA0sdkL/8QfxNw8NxBsCosXtxYU2BZDVKv6qJopUYS0qyJ5xtE
	4JaCfUN3rFnxd5q4CimWu6eFi7wAaAGAqUONRyKzIkzM5wTuEOJ9WxvQaE+PtU/KZ5ouXzl8a4qgC
	B65kTNsnb+j0RQ2EGiDbXvS/r2VsQfXXj5ENz+/MQ5VSoliKnp3DeRMnLYUiE2aITQU7gFLpFqGS8
	i9QWI5Em5MUfB8qEwUPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqBXw-00000000kGK-32ba;
	Wed, 11 Feb 2026 14:50:28 +0000
Received: from mx-relay50-hz3.antispameurope.com ([94.100.134.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqBXp-00000000kEt-2eor
	for linux-phy@lists.infradead.org;
	Wed, 11 Feb 2026 14:50:26 +0000
ARC-Authentication-Results: i=1; mx-gate50-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=L4vyNH4YErLs5bwpzmTX4TQ2ymTibM6HD0Mohhb6Gt4=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1770821408;
 b=SlF07QGpWgsTXwg5hzfGaRT823TFO6x8CqAUQkPz/YSAp04lxr664OAG0R/C+hf4OPda0mEa
 Q2JU0RMCdiZCDkjcEy0Ypq1F6TuwAITb9vfS3PL0sba9Y4qoydVt5YZRCRmgImWc8b1vmgelR9P
 U2a0W1AQaWyMA8UTxyoI18MRWtuOg52vedun0ZQ5OWRVzbxq2pw6Opry2NMVuaI3J5wlB+N0rlw
 DxN2LR6MvynyyKM9plokQLxXkLqErJRAXV85+GePcIOZyFe/4n9Y0DeFr/2izlrZfcDWLb0TBTf
 BEeU+28zjt37NsNe70bYPsyelhEIeg/U26IzsPBYSeuGw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1770821408;
 b=pCSNFdXx6XFaJE61Tlw+SjNtFzIlQvCLHroNv8+4dRvnajZSq6Y5Ob6bvPvZu5+xgQdn0snb
 oji5wrzDT4M8uYPxoWM8IZMQWAcCH6rx+K+swSu8fwOC9V7q6WO1TNaHSZaMzlpjaqCR2USxjgj
 IhTbpweBX266cdkdZQdFgQ18G/aK7PSVz+ZZRqduQERjfrD0rK1z9mgAiOqJITS0s3+q1HG9ft5
 ptSQEcMESrzhIju8n6c22OpXyjUDDMq/Ti4W+JtzJWLiazUea6tbEgn3z/kUE68hIOcAYJncDJi
 xiA8PXJx2oIuwNF2AgBBhvhBLrAtDyUsRI6lgkL5TNEwQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay50-hz3.antispameurope.com;
 Wed, 11 Feb 2026 15:50:08 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 0CCCC5A12E8;
	Wed, 11 Feb 2026 15:49:51 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RESEND 1/1] phy: freescale: imx8qm-hsio: provide regmap names
Date: Wed, 11 Feb 2026 15:49:48 +0100
Message-ID: <20260211144949.1128122-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-cloud-security-sender: alexander.stein@ew.tq-group.com
X-cloud-security-recipient: linux-phy@lists.infradead.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype: outbound
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay50-hz3.antispameurope.com with 4fB1YW4rTYz2nJGn
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest: ba1eb0984800e64e2245420c91fb4aab
X-cloud-security: scantime:2.114
DKIM-Signature: a=rsa-sha256;
 bh=L4vyNH4YErLs5bwpzmTX4TQ2ymTibM6HD0Mohhb6Gt4=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1770821407; v=1;
 b=OH0GyFriZuvqaLnncsFQyDJRGbD3uJHoXG/i3QubJtqappwn2oVUG4QMkBgfkdIYgRHlKsJh
 t8bRSHdQmxpGoCbKNmmiI0eGfYcyzRWd5deFED5PuBWN/lmgRVnsQH2nadWEw9cx5mQhK/yJ49I
 Tsoikb+nWrDw8KZkQxMZxC5jGmXUsoM3kE43eaFRhmwn6NTSyD1kb4NwdMr1pCkaA1asCwd25CB
 77RxdqYcLQyzWZ8BNnHX+8YfP3PxvLcxkAqoRJMTK4M8IDQlW4oe/ePe0vZ/yDYuBb0OGw4MAzh
 ZDs6BCWnCvm6c5RG386GbswTt0s1bi2eTeok6Bn+c4iFw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_065021_812463_51F7642D 
X-CRM114-Status: UNSURE (   9.89  )
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

This driver uses multiple regmaps, which will causes name conflicts
in debugfs like:
  debugfs: '5f1a0000.phy' already exists in 'regmap'
Fix this by using a dedicated regmap config for each resource, each
having a dedicated regmap name.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Same as the one sent in December but with an updated CC list.

 drivers/phy/freescale/phy-fsl-imx8qm-hsio.c | 23 +++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
index 279b8ac7822df..4ab45c9f53dff 100644
--- a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
+++ b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
@@ -107,7 +107,22 @@ static const char * const lan2_pcieb_clks[] = {"apb_pclk2", "pclk2", "ctl1_crr",
 static const char * const lan2_sata_clks[] = {"pclk2", "epcs_tx", "epcs_rx",
 					      "phy1_crr", "misc_crr"};
 
-static const struct regmap_config regmap_config = {
+static const struct regmap_config regmap_phy_config = {
+	.name = "phy",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
+static const struct regmap_config regmap_ctrl_config = {
+	.name = "ctrl",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
+static const struct regmap_config regmap_misc_config = {
+	.name = "misc",
 	.reg_bits = 32,
 	.val_bits = 32,
 	.reg_stride = 4,
@@ -562,19 +577,19 @@ static int imx_hsio_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->base);
 
 	off = devm_platform_ioremap_resource_byname(pdev, "phy");
-	priv->phy = devm_regmap_init_mmio(dev, off, &regmap_config);
+	priv->phy = devm_regmap_init_mmio(dev, off, &regmap_phy_config);
 	if (IS_ERR(priv->phy))
 		return dev_err_probe(dev, PTR_ERR(priv->phy),
 				     "unable to find phy csr registers\n");
 
 	off = devm_platform_ioremap_resource_byname(pdev, "ctrl");
-	priv->ctrl = devm_regmap_init_mmio(dev, off, &regmap_config);
+	priv->ctrl = devm_regmap_init_mmio(dev, off, &regmap_ctrl_config);
 	if (IS_ERR(priv->ctrl))
 		return dev_err_probe(dev, PTR_ERR(priv->ctrl),
 				     "unable to find ctrl csr registers\n");
 
 	off = devm_platform_ioremap_resource_byname(pdev, "misc");
-	priv->misc = devm_regmap_init_mmio(dev, off, &regmap_config);
+	priv->misc = devm_regmap_init_mmio(dev, off, &regmap_misc_config);
 	if (IS_ERR(priv->misc))
 		return dev_err_probe(dev, PTR_ERR(priv->misc),
 				     "unable to find misc csr registers\n");
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
