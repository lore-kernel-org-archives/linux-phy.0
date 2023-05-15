Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 545ADC7EE24
	for <linux-phy@archiver.kernel.org>; Mon, 15 May 2023 19:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZgepQBGAgHBoy3myoIM+/X6VbURfI7KiI1xd3kNdFLQ=; b=n0U0QenHicl6Ep
	ibwof3gMrCNRK40JYwzikJA7ZsCJMOvEjAStC4ZsmXTBaDmI6lfjXI/mXbQj4HUv97b2IntD9ZUyu
	979swl5/dFMGkOJtkfFR5O8lGI5GgsOtB34mBWtfwomeoEMVMVONpCAD/eJBzCUpD1RhuSadB7SKF
	60PoYmzOQ4n5ET81B0PZmykFD/ntZoyKx7f/KpfV8lHlMjLqkcczigf50aKs4UhiqmbsO41K3Q6cO
	1TeLi4BfJJjeeIslbCrRrgZKA7u99LVOrdwg5oSXAXVUu5S12u2hF/+Ada5ipxQY1FFwGcfhHT3ds
	1H6dKh2u3Y1+xHmyGixw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyeLy-003M35-3B;
	Mon, 15 May 2023 19:59:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyeLx-003M2I-0I
	for linux-phy@lists.infradead.org;
	Mon, 15 May 2023 19:59:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 34FJxO41053692;
	Mon, 15 May 2023 14:59:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1684180764;
	bh=ZMmu+Jtm+xCqgH0l6TlKmPYujrA59t9EtYDFwsokG04=;
	h=From:To:CC:Subject:Date;
	b=rr5h/hQX+ekYn7BB4x4Osx2Ojjg0N5sq7Mvj3ZI7Xkm2bQ0YhjJ058Z1uxRi9MFxt
	 OlOv0m+562OQNvLuCClXxrtu+AcuyDSxU1Dgw+O+64hqgxSiHgSGPYSew1FZ2O5oif
	 HUTuv1PC9Ub9mpc7o/1rKi3V16+wqlCf+HDsLM8s=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 34FJxO4S065727
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 15 May 2023 14:59:24 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 15
 May 2023 14:59:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Mon, 15 May 2023 14:59:23 -0500
Received: from fllv0039.itg.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 34FJxNP9016442;
	Mon, 15 May 2023 14:59:23 -0500
From: Andrew Davis <afd@ti.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Siddharth Vadapalli <s-vadapalli@ti.com>,
        Roger Quadros <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        Andrew
 Davis <afd@ti.com>
Subject: [PATCH] phy: ti: gmii-sel: Allow parent to not be syscon node
Date: Mon, 15 May 2023 14:59:22 -0500
Message-ID: <20230515195922.617243-1-afd@ti.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_125929_182545_E3D2B0AF 
X-CRM114-Status: GOOD (  10.39  )
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
 drivers/phy/ti/phy-gmii-sel.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 8c667819c39a..1e67ed9a5cf6 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -435,9 +435,12 @@ static int phy_gmii_sel_probe(struct platform_device *pdev)
 
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
