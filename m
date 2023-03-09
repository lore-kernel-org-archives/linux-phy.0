Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91610C64EC4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpGIK3aJxWb35mCoCBs9sc4eD0SrK4i1Xp1KltKL5+k=; b=CEUlcOF2MBWUOF
	WjW1JwMqtb2uPrOKW7aRMgPTv1K+KfOtnfMBn2VEgYmjo5zaYew9OfP+ULx75gJcMugqAbBGXtQqt
	k0Jzh9vubhFsSS13u9YQmyre+EcvAyvD5e+RjlnG41gU4Ef5ST8n8JLBBKriR2/Gm6nrksxXVHdrp
	OkgGAx4hhDgGLanZg0ArnwS9SWSS19SIQFbWKkm/EyMC3NR69YwADbOLI1CbHY838h1pHNRr9xP0F
	3VcxJLVnrtuIh/hOy/3hgSQAo4XxEzbgGDuuOMhefaWySklLYeumEYvoS9HXihXT41ZbEclqQ9+aX
	2yR3kBtPRoMl20E8xRUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9sQ-0087EC-0z; Thu, 09 Mar 2023 06:35:46 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9s4-00879C-CA; Thu, 09 Mar 2023 06:35:27 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296ZKlo088790;
	Thu, 9 Mar 2023 00:35:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678343720;
	bh=zGLsQiPZMq2z1MdgUILbCI+sRAhD4UtP8PlVTdknk6E=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=WuDAZG2w3mNgNa59Cd47aZJ14QTxXE1ACwnxzGBvAGouaBdIEjfnGWVmIOyaaBO5q
	 TNWvqGIxa7hiZY/N/rUCS3jg+AUsRVpKB223vJzZ9RRpM3hGDDqv2zq3QVwFBV0Evs
	 8Og1UQJ/d4ZheUeCGdIq9bOZqcLe/hOpmjBmV3v8=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296ZKik112743
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:35:20 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:35:20 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:35:20 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296ZEQo099087;
	Thu, 9 Mar 2023 00:35:18 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH v2 1/3] phy: ti: gmii-sel: Add support for SGMII mode
Date: Thu, 9 Mar 2023 12:05:12 +0530
Message-ID: <20230309063514.398705-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309063514.398705-1-s-vadapalli@ti.com>
References: <20230309063514.398705-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_223524_499533_8FF83971 
X-CRM114-Status: GOOD (  11.90  )
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

Add support to configure the CPSW MAC's PHY in SGMII mode if the SoC
supports it. The extra_modes member of the phy_gmii_sel_soc_data struct
corresponding to the SoC is used to determine whether or not the SoC
supports SGMII mode.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 8c667819c39a..5e16d8dd5bee 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -23,6 +23,7 @@
 #define AM33XX_GMII_SEL_MODE_RGMII	2
 
 /* J72xx SoC specific definitions for the CONTROL port */
+#define J72XX_GMII_SEL_MODE_SGMII	3
 #define J72XX_GMII_SEL_MODE_QSGMII	4
 #define J72XX_GMII_SEL_MODE_QSGMII_SUB	6
 
@@ -106,6 +107,13 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 			gmii_sel_mode = J72XX_GMII_SEL_MODE_QSGMII_SUB;
 		break;
 
+	case PHY_INTERFACE_MODE_SGMII:
+		if (!(soc_data->extra_modes & BIT(PHY_INTERFACE_MODE_SGMII)))
+			goto unsupported;
+		else
+			gmii_sel_mode = J72XX_GMII_SEL_MODE_SGMII;
+		break;
+
 	default:
 		goto unsupported;
 	}
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
