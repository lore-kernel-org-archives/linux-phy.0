Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 218EFC77B60
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 06:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EBOfgoH6mWcpJvIwTX6L+u3texLX5dkGOxH3BVBRJwI=; b=TphbxuB2ENxRqq
	qPaUFOHDej7woXG71wymOUX7fqqbpbPZaRmE0d3X1qq87V6pghrtoAfxoRtZeEHC3Yz8EgrsFIpM7
	WKytVbr3hf/2jdEg/43sKU5rtwNnx8gGwwFHhhbb5eceS4W0RNWA7h+6+L6JF2ol0F+n9U+ersrCh
	zT+1xqGljZq8DcINbMqsQP2EqFJH7J4Bpe6TjdOhtvG6nOw/4dPtRX4aqP6lNOlegHMs/XWqCqQfR
	5bYfNoJ2Ir5738urJd8R1D0DPkrnVSRj9cxr3rUjJ+VOEpWxmQWE42Da2doQHEXnJk7dy2MNTkj64
	WQs2rGMEqiHKXnN3WQrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi8Cq-00609x-2B;
	Fri, 31 Mar 2023 06:25:48 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi8Ce-00606L-2h;
	Fri, 31 Mar 2023 06:25:39 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 32V6PTuT100228;
	Fri, 31 Mar 2023 01:25:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1680243929;
	bh=9h/ntFw0EFUnq0el7i0tjeXB41W/9vSfuU1AW08A8ko=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=WPOCJGAQvLAxLltOfCdtJEgQHGkDpDxV9xWewkHzqzRvxDjA4Xgswypj+iN/nTwSx
	 LZbPEkDL1cP7fr/dN3NFnlDFx9kKRyYYnRM0H3Gx1s2COUX6rhKk4Vtj3G/rWRH7va
	 /85cNL0vX8jrN1QjJK37YGC6j43QXU6qbE/wxFJQ=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 32V6PTWI074210
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 31 Mar 2023 01:25:29 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Fri, 31
 Mar 2023 01:25:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Fri, 31 Mar 2023 01:25:29 -0500
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 32V6PLvB027504;
	Fri, 31 Mar 2023 01:25:27 -0500
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 2/2] phy: ti: gmii-sel: Enable USXGMII mode for J784S4
Date: Fri, 31 Mar 2023 11:55:21 +0530
Message-ID: <20230331062521.529005-3-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331062521.529005-1-s-vadapalli@ti.com>
References: <20230331062521.529005-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_232536_995047_ABB676D3 
X-CRM114-Status: GOOD (  12.50  )
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

TI's J784S4 SoC supports USXGMII mode with the CPSW9G instance's MAC
ports 1 and 2. Add USXGMII mode to the extra_modes member of J784S4's
SoC data.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-gmii-sel.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index fba5c0c0771c..6286cf25a426 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -25,6 +25,7 @@
 /* J72xx SoC specific definitions for the CONTROL port */
 #define J72XX_GMII_SEL_MODE_SGMII	3
 #define J72XX_GMII_SEL_MODE_QSGMII	4
+#define J72XX_GMII_SEL_MODE_USXGMII	5
 #define J72XX_GMII_SEL_MODE_QSGMII_SUB	6
 
 #define PHY_GMII_PORT(n)	BIT((n) - 1)
@@ -114,6 +115,13 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 			gmii_sel_mode = J72XX_GMII_SEL_MODE_SGMII;
 		break;
 
+	case PHY_INTERFACE_MODE_USXGMII:
+		if (!(soc_data->extra_modes & BIT(PHY_INTERFACE_MODE_USXGMII)))
+			goto unsupported;
+		else
+			gmii_sel_mode = J72XX_GMII_SEL_MODE_USXGMII;
+		break;
+
 	default:
 		goto unsupported;
 	}
@@ -239,7 +247,8 @@ static const
 struct phy_gmii_sel_soc_data phy_gmii_sel_cpsw9g_soc_j784s4 = {
 	.use_of_data = true,
 	.regfields = phy_gmii_sel_fields_am654,
-	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII),
+	.extra_modes = BIT(PHY_INTERFACE_MODE_QSGMII) |
+		       BIT(PHY_INTERFACE_MODE_USXGMII),
 	.num_ports = 8,
 	.num_qsgmii_main_ports = 2,
 };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
