Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF5C5D6408D
	for <linux-phy@archiver.kernel.org>; Wed, 17 Dec 2025 08:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hFWdcO+HIDKhjXkjrz5NrihfcbXI4sMPTAIjsFWVvR0=; b=Lsh+ve5yYi3XBg
	q3amyt9iHT6HW2pqKq8rnvqhNDoS2eMaubGfgVS/fBNKckDJPGZsgfbO8bmhoC5/GlFQppaR2xM6o
	a0uoZ5YNLPOEgiKzlETmiodaf0OKBsBc9LN8PV43i6LqAls4C3bf33RpVh2f2dsH1GLPT9sHfSDFV
	R+N6bSg+QXhjZ3qqlSlhc0G1WQujDRdtbM5q25UCUkKuPvFOoWkt3HEptyWch8FlgzUdwnfHnJE/Z
	CN5kNKmYABQ2gfnkNhy7cHpfkStoqHAfTTJPYd0Xhsav4+a7073ojE5zxMkeQZIrO6riAI2fxDYwh
	0Wp1epophz50vl/sQ+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVmfD-00000006KHb-18bP;
	Wed, 17 Dec 2025 08:13:39 +0000
Received: from mx-relay47-hz3.antispameurope.com ([94.100.134.236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVmf8-00000006KGa-2wSj
	for linux-phy@lists.infradead.org;
	Wed, 17 Dec 2025 08:13:38 +0000
ARC-Authentication-Results: i=1; mx-gate47-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=gBojcA9uKcuTxPzbTmt63WipEC3ONCXYd+7KHmpSJsI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1765959201;
 b=bMrTQHJX7HNi/58WMpytqBlDMDn4jSXbhAicYr/+5zCqo1JhJbDcmCsD9DthUnDDUAffo3G9
 ZOgCJv1Tx284OK1Vgn1qmPivvhWxH3SQ6JliwY8RlG9SNbPbK2zgbwnpwfdsFz1ousdEwOeG4Xn
 iXU+e2VrfQKUvFRbj+xwAMPpwzer0YPC9aSwDSL0kQAuYocEg4N6noLcFmn0jzswKr5OwFRpCci
 M1pl87LNAH9WedkODOF5BK/FMjh6vwHYoHoOo5TEAdnjoSnyV9DB7FLWuf7TGEtEiIhl11WGH3m
 q6NfMf34NkaKgjjoGA/joi3DvSLqKEL4rI/9BRBBo/HuA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1765959201;
 b=ejlEmqwju3zMKxkXmk6a+WgrnbXwlm+Oc0uHUAf4pkWDN1fTZStaMh1OoKtqtRoeSViUI/3P
 wXYNHP6ubksoAX9SlgGI4fFBYnSznYINF+ctWmgAotbj1tw1XnVpSlrMmXfogHPhgVVEREF6lED
 bIInMfempyEiBmBSoKDeTYm0XOACnvG6HWDRoO3ulG9s4/8pOw3NExpvS2PZWlQSiCf+ksvT5wt
 eCapbeFYKxenbKN/mP+upxl1F1AzHQnH4VsrLV2BmMSosdSSmnYfbvJgHuhLFYmLO0PC9naPjsd
 obkhLu9CZMTgXSEGioXVLB9ZMiTaZNlmM1AoZ+3y9BnGg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay47-hz3.antispameurope.com;
 Wed, 17 Dec 2025 09:13:20 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 135C5220D78;
	Wed, 17 Dec 2025 09:13:05 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] phy: freescale: imx8qm-hsio: provide regmap names
Date: Wed, 17 Dec 2025 09:13:02 +0100
Message-ID: <20251217081303.1181922-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-cloud-security-sender: alexander.stein@ew.tq-group.com
X-cloud-security-recipient: linux-phy@lists.infradead.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype: outbound
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay47-hz3.antispameurope.com with 4dWRPY5DcFz4MJtD
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest: d01e9fb050804b371cf9e7666b08d8ae
X-cloud-security: scantime:2.392
DKIM-Signature: a=rsa-sha256;
 bh=gBojcA9uKcuTxPzbTmt63WipEC3ONCXYd+7KHmpSJsI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1765959200; v=1;
 b=mLPOaK/WJSZNxuvaTST6LbECcQzbbj47itMS2jov7jGuHN2aeUHpIfqobx5qgAY2cJ0UC56R
 GW4dQXuaSKUTU+7nj9zyp/4VLNGZFJDKNI4Oiqa/z6mQCUhVvWQxsgAa1YJ/4LCwT9Bruh+s0ew
 ZVxt49y2MhgdrBQToH9uB39V8ls1FHLnx35flSHuUUxdiOJmwqcmz98IjuoIjr07x6J1UPxc9QM
 F9G2ftGCf5NebNUbeOF4yBcDrRxofEZLOIZ+KVsdZsFXSWmJSIWaYKmO+5hf+82B1KKmwFRvDiw
 PVWOEsWItJxEsafg/5NNKnmfFAwVXhEdNpzBnXbYsZtIw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_001335_201394_C0586270 
X-CRM114-Status: GOOD (  10.13  )
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
 drivers/phy/freescale/phy-fsl-imx8qm-hsio.c | 23 +++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c b/drivers/phy/freescale/phy-fsl-imx8qm-hsio.c
index 977d21d753a59..0a0e10792dff4 100644
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
