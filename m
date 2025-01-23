Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C78C02182
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jan 2025 18:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2j2JLUg9zctoP5pRT3mzcwhgGYrw8PapwXLyeWWf0y0=; b=NZgCXnWUnDSCEU
	1TiFQgdrDdk8eypsKl2ciqwKsbv+ulU5JUI0sLpTf3Zfg/CShGcdYKQP+nou0yI4dZKHPiFI7amO5
	QaRc7MMHQbXMK6nS/Dm1JGHd2vK1FKWXA8/hiFwinv5wYZw4jSWwMHe3jqVT0WLbrJhJChha/Fgbf
	TImYdJuaMTY9FHvUsf5KbbPVLJVzdSPuiJrC4HrAvbISrmbmZUQD84/YjJmL3WqAAGzTvPnOeuikI
	mTJPAvxCxUcvc7qdFyk7aU5VhPe1q3mwa7yO7/GWr7O+zA9Xku/Ub4pCqM2sdQDS/VwuQ5Hol0s42
	W9qOPWKBx57r6yIaUPxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tb1qk-0000000D1jT-2yxZ;
	Thu, 23 Jan 2025 18:22:42 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tb1qh-0000000D1j7-3yrN
	for linux-phy@lists.infradead.org;
	Thu, 23 Jan 2025 18:22:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50NIMa4M1219589
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 23 Jan 2025 12:22:36 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737656556;
	bh=IO0IbbZo0ZpWbiwy1Fz6YZWQCvWdvzpuCibfnUrnkGw=;
	h=From:To:CC:Subject:Date;
	b=RqzZBEMDh+GR8TdZoia0KYLFoBg3FIP/J/aFJAWUUFckabrP04/rtYuSYZzxocdMz
	 oSU9byghBZGgQCdBn0Q0HR4ip1c3IAfwTHv9DLDW47OD/xEfZhdjtpvscJe1yBV0N1
	 q3oInsI+pklX3VP+ymVLKpQxj2KIi5jDkNJXTAo0=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50NIMaLk028709
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 23 Jan 2025 12:22:36 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 23
 Jan 2025 12:22:36 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 23 Jan 2025 12:22:36 -0600
Received: from fllvsmtp7.itg.ti.com ([10.249.42.149])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50NIMZpB028080;
	Thu, 23 Jan 2025 12:22:35 -0600
From: Andrew Davis <afd@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Vinod
 Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Andrew
 Davis <afd@ti.com>
Subject: [PATCH] phy: ti: gmii-sel: Do not use syscon helper to build regmap
Date: Thu, 23 Jan 2025 12:22:34 -0600
Message-ID: <20250123182234.597665-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_102240_082841_E60C8416 
X-CRM114-Status: GOOD (  14.70  )
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

The syscon helper device_node_to_regmap() is used to fetch a regmap
registered to a device node. It also currently creates this regmap
if the node did not already have a regmap associated with it. This
should only be used on "syscon" nodes. This driver is not such a
device and instead uses device_node_to_regmap() on its own node as
a hacky way to create a regmap for itself.

This will not work going forward and so we should create our regmap
the normal way by defining our regmap_config, fetching our memory
resource, then using the normal regmap_init_mmio() function.

Signed-off-by: Andrew Davis <afd@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index e0ca59ae31531..ff5d5e29629fa 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -424,6 +424,12 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
 	return 0;
 }
 
+static const struct regmap_config phy_gmii_sel_regmap_cfg = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+};
+
 static int phy_gmii_sel_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -468,7 +474,14 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 
 	priv->regmap = syscon_node_to_regmap(node->parent);
 	if (IS_ERR(priv->regmap)) {
-		priv->regmap = device_node_to_regmap(node);
+		void __iomem *base;
+
+		base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(base))
+			return dev_err_probe(dev, PTR_ERR(base),
+					     "failed to get base memory resource\n");
+
+		priv->regmap = regmap_init_mmio(dev, base, &phy_gmii_sel_regmap_cfg);
 		if (IS_ERR(priv->regmap))
 			return dev_err_probe(dev, PTR_ERR(priv->regmap),
 					     "Failed to get syscon\n");
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
