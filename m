Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23FF4C742A7
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:23:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWg2xwcbJkKB1DYxga/v/UAbRjSVH0LdjWTNHdC3eig=; b=VA3AEmQBpM6MRW
	FXkOSci96CgfFBiwU99UZsjb5+NNpQCMnbm5uVQuHE0jTOsYpoSPc/xGFc1NECx8kSpKSCW0eLa3Z
	vbkswnZoNxoh0WHu1Hdk1QyvahyRKp3ZGLURpUesoE/9UkxzNfqkLM6mvz/h+PexTDm/7ZgT20s8h
	vAfyWEBQ00C9k9Bm5vHaCbkTY/bCh+dPjCMd1Gw94US9fPAkmno+AR5gBerFLkPUobiN9le/pj9Ym
	/aUGs8CD35H58WX8Wzu+tSePQCOLMSvjYoTmkEgMnkORLflT4FM8tyet6NIRnlfI+HDWbswbHLwoI
	yNc10n7SpXxgo2L8NxKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9gM-008451-E0; Thu, 09 Mar 2023 06:23:18 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa9fx-0083ug-Do; Thu, 09 Mar 2023 06:22:54 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3296MiWD130014;
	Thu, 9 Mar 2023 00:22:44 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678342964;
	bh=AKWxc2g8zn/BO+bAx6NLTSzuFHfkrm4HUaOji3JbZvw=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=Bdi9oVd2Mj5OW2JvmWNLkJ5tNQAW3x9ew63fmUIz9eofFTcAM49Whqoka9VDrg1Er
	 DXKfFX/ZnexFf+WYLdUeHJpQJa0+gAm1JJCwPQmM7pwW6h9OkKQQeZZ0nd1LIuyQ41
	 01epJwmYhvBG/z7jSS4FHuQ8K5YeccDfIQadsULg=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3296Mibv004282
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 00:22:44 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 00:22:43 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 00:22:44 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3296Mca2088683;
	Thu, 9 Mar 2023 00:22:41 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH 1/3] phy: ti: phy-gmii-sel: Add support for SGMII mode
Date: Thu, 9 Mar 2023 11:52:35 +0530
Message-ID: <20230309062237.389444-2-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230309062237.389444-1-s-vadapalli@ti.com>
References: <20230309062237.389444-1-s-vadapalli@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_222253_529127_B87D876A 
X-CRM114-Status: GOOD (  11.27  )
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
 drivers/phy/ti/phy-gmii-sel.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/ti/phy-gmii-sel.c b/drivers/phy/ti/phy-gmii-sel.c
index 8c667819c39a..351173aeb0a6 100644
--- a/drivers/phy/ti/phy-gmii-sel.c
+++ b/drivers/phy/ti/phy-gmii-sel.c
@@ -23,6 +23,7 @@
 #define AM33XX_GMII_SEL_MODE_RGMII	2
 
 /* J72xx SoC specific definitions for the CONTROL port */
+#define J72XX_GMII_SEL_MODE_SGMII	3
 #define J72XX_GMII_SEL_MODE_QSGMII	4
 #define J72XX_GMII_SEL_MODE_QSGMII_SUB	6
 
@@ -106,6 +107,11 @@ static int phy_gmii_sel_mode(struct phy *phy, enum phy_mode mode, int submode)
 			gmii_sel_mode = J72XX_GMII_SEL_MODE_QSGMII_SUB;
 		break;
 
+	case PHY_INTERFACE_MODE_SGMII:
+		if (!(soc_data->extra_modes & BIT(PHY_INTERFACE_MODE_SGMII)))
+			goto unsupported;
+		else
+			gmii_sel_mode = J72XX_GMII_SEL_MODE_SGMII;
 	default:
 		goto unsupported;
 	}
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
