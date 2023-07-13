Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 148E6C001B0
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jul 2023 20:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MGc/K28cyqSgvPkb8FqNQVoDPfKfJntAG7Y9GSIxfVo=; b=N1cceafqoHIP3l
	uSxtwxHwH/D0CtLfBbPqC1VWT/MZlJjQ4lwOl7iE1rnJYA8mlHLb4CDjgQglXAdmCT2qO85zwAESO
	DeOvI5PoZj1s4zzLQUTr1lTmhykD02L5u+PJNf5Pvkuh4AngqHnZ71th7ZgaD9OrLCD6S5Non2nMc
	dEJeiUavIlkyueMmkaBD7+eFTviD5Jg/CSyLM2jUMdQhF4UlcZI74vTOAAvP31R0phKsmhCU2m8S9
	euaPbajaW2U9JvNVmpgcoqBKqvrD/l8rbwgFPlpuuJDMvKUTcS02CLZfa3bxf0kXCv724ANrIwphh
	VuHdHRRu9/Sn1Sspltww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qK2dn-004HeO-2Y;
	Thu, 13 Jul 2023 20:10:19 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qK2dl-004Hc2-0i
	for linux-phy@lists.infradead.org;
	Thu, 13 Jul 2023 20:10:18 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 36DKA4sN038606;
	Thu, 13 Jul 2023 15:10:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1689279004;
	bh=mIwOozXXFg3KmTwudLxq5mLOys7noNt7A73QFukctPs=;
	h=From:To:CC:Subject:Date;
	b=CcW11lxdxpHw+7TBQif7FPJWeZE6Lc5pWYwdgj1k2jigz1JTaCYpnzMDizIAssUeN
	 940bCK4qSdHDiQ2HjmBBTsRVGTGyATInwTPU3M2fcHdp/fEclCnGVtnDsleJpPomzc
	 vv+4vLLyAwMqPGkgYXdJLLyfrej/t9Ws2LlK2YQU=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 36DKA4VX068397
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 13 Jul 2023 15:10:04 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 13
 Jul 2023 15:10:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 13 Jul 2023 15:10:03 -0500
Received: from fllv0040.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 36DKA3Ou022042;
	Thu, 13 Jul 2023 15:10:03 -0500
From: Andrew Davis <afd@ti.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Siddharth Vadapalli <s-vadapalli@ti.com>,
        Roger Quadros <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Andrew
 Davis <afd@ti.com>
Subject: [PATCH v2] phy: ti: gmii-sel: Allow parent to not be syscon node
Date: Thu, 13 Jul 2023 15:09:57 -0500
Message-ID: <20230713200957.134480-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_131017_306772_98595D31 
X-CRM114-Status: GOOD (  10.74  )
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

If the parent node is not a syscon type, then fallback and check
if we can get a regmap from our own node. This no longer forces
us to make the parent of this node a syscon node when that might
not be appropriate.

Signed-off-by: Andrew Davis <afd@ti.com>
---

Changes from v1:
 - Rebased on v6.5-rc1

 drivers/phy/ti/phy-gmii-sel.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 6286cf25a4264..555b323f45da1 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -465,9 +465,12 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 
 	priv->regmap = syscon_node_to_regmap(node->parent);
 	if (IS_ERR(priv->regmap)) {
-		ret = PTR_ERR(priv->regmap);
-		dev_err(dev, "Failed to get syscon %d\n", ret);
-		return ret;
+		priv->regmap = device_node_to_regmap(node);
+		if (IS_ERR(priv->regmap)) {
+			ret = PTR_ERR(priv->regmap);
+			dev_err(dev, "Failed to get syscon %d\n", ret);
+			return ret;
+		}
 	}
 
 	ret = phy_gmii_sel_init_ports(priv);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
