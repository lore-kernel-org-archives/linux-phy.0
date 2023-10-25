Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00BE3C0032E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Oct 2023 14:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rrGU+UP3AJojnM/0+xxp09ZpjzKrf0PHPsgDICs83Hg=; b=Jm5Ep0wKsvZ3Sl
	mVM5fEDhLVAaU/i67pSFSwpngdvV/gLvBvoI+RdTElHnnYBqgM9ja9M1yNFp3imJOJaeAVJ7M+4Ew
	ARL/1pTbwr2DSe3aRjZE+FoGn9zJmvP0LvO/h5z060BHi6aPQ5yVmTNB1BOBnU1sRg58gVuN1Zopq
	Iqk4XjXEkwuTPcAZfOc/cG0UbfG11VsVnab7zZoHtO0GNjoEUCarw+ZpIs3s9tMN5WzGEoq7Jxqet
	+FVeXGEtBOq6C3sScsRdQYZlkQI4xoYS+po4t1sPrSWlz1LwLhSjBW00GfhGQt80a3cgDtw9KOYWu
	yEhDU3RqWfjZKY0HzfJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvewe-00CWrk-1u;
	Wed, 25 Oct 2023 14:33:16 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvewa-00CWqA-32
	for linux-phy@lists.infradead.org;
	Wed, 25 Oct 2023 14:33:14 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 39PEX4DI112703;
	Wed, 25 Oct 2023 09:33:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1698244384;
	bh=RhH/BrUGOztTNz0KuDNnXxR7aI5X9VJPOk14LY5Iigs=;
	h=From:To:CC:Subject:Date;
	b=EE5vBJ8cJmV3fW4ijWk4TRVNwMo88o6v5fyAQH3wckhY+DiTaxS4jpBQMmdPtPwI1
	 npGRKwwaYju3nScYfaPuQ46Jjy1LGxXGEEAUq9FFLhaMV8mnMWo0F6wdJnH4PqsJKr
	 ss3u5eVdtx4xxeM68l3OsvJTjIh1q3hbMx+zViYE=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 39PEX4jF004035
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 25 Oct 2023 09:33:04 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 25
 Oct 2023 09:33:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 25 Oct 2023 09:33:04 -0500
Received: from lelv0326.itg.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 39PEX4Jk105094;
	Wed, 25 Oct 2023 09:33:04 -0500
From: Andrew Davis <afd@ti.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Siddharth Vadapalli <s-vadapalli@ti.com>,
        Roger Quadros <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Andrew
 Davis <afd@ti.com>
Subject: [PATCH] phy: ti: gmii-sel: Fix register offset when parent is not a syscon node
Date: Wed, 25 Oct 2023 09:33:02 -0500
Message-ID: <20231025143302.1265633-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_073313_163893_E9B33C0A 
X-CRM114-Status: GOOD (  14.76  )
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

When the node for this phy selector is a child node of a syscon node then the
property 'reg' is used as an offset into the parent regmap. When the node
is standalone and gets its own regmap this offset is pre-applied. So we need
to track which method was used to get the regmap and not apply the offset
in the standalone case.

Fixes: 1fdfa7cccd35 ("phy: ti: gmii-sel: Allow parent to not be syscon node")
Signed-off-by: Andrew Davis <afd@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 555b323f45da1..bc847d3879f79 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -64,6 +64,7 @@ struct phy_gmii_sel_priv {
 	u32 num_ports;
 	u32 reg_offset;
 	u32 qsgmii_main_ports;
+	bool no_offset;
 };
 
 static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
@@ -402,7 +403,8 @@ static int phy_gmii_sel_init_ports(struct phy_gmii_sel_priv *priv)
 		priv->num_ports = size / sizeof(u32);
 		if (!priv->num_ports)
 			return -EINVAL;
-		priv->reg_offset = __be32_to_cpu(*offset);
+		if (!priv->no_offset)
+			priv->reg_offset = __be32_to_cpu(*offset);
 	}
 
 	if_phys = devm_kcalloc(dev, priv->num_ports,
@@ -471,6 +473,7 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 			dev_err(dev, "Failed to get syscon %d\n", ret);
 			return ret;
 		}
+		priv->no_offset = true;
 	}
 
 	ret = phy_gmii_sel_init_ports(priv);
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
