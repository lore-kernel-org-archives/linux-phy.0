Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 792C7C6FD1F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 09:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ym4B1cYRd7WFIrX9SC3SamJkFsZl0bS17DJB3yTsgFA=; b=KF/fj8SEb+AWES
	7ymX+F+OvTmdmWrKJZqsp/qQxldbznJt9pOomu0+oiuLOdaklLNZyQYokvaZCMYZLZARcmowws3Rr
	RPuLwRXSIZn3Gtg7Rhq988eXSwddoWmhQ83cgD2e6wngs5aSMg7qhn6Yrstl9ynLL3gh1w9TpA45o
	hGwcbFGCZnO3szAqZfDYSwHE3avxrD5dZjbxnWmjuvRF0JWAWlSiGbvulsQD160e8szbeGXVb4Py5
	txhimdnHrDToDNb41v0b5GVm3kz2wT5ibZUslhIKyZi1WVpfeS4DJarxarOBh0yFUJQSEpNEdtiLn
	S+QJ1UxWiBZhVsbw/KQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paCW6-008mMa-O9; Thu, 09 Mar 2023 09:24:54 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paCVu-008mHb-M0; Thu, 09 Mar 2023 09:24:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3299OcHN125982;
	Thu, 9 Mar 2023 03:24:38 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1678353878;
	bh=BOKBHcCqGnaJkeAmMroI2rUSfeIV35zHDqQqZy70/a8=;
	h=From:To:CC:Subject:Date;
	b=MDpfjD+RFb2uwBXKDmSNYAXKH4PXwERA3yOoy6DcRmydZhqhYmrZEpQUzQM4eB6SR
	 aWd61LBMYdVadSADT0rmUFBzzGK1EkHS23gdS3TVjfmHLl45hPnUMA6kIEGMl6zcb1
	 szdqiWniESBuN750I85v1Fw+Y+4HlluViWBC3ffk=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3299OcCh078571
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 9 Mar 2023 03:24:38 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16; Thu, 9
 Mar 2023 03:24:38 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.16 via
 Frontend Transport; Thu, 9 Mar 2023 03:24:38 -0600
Received: from uda0492258.dhcp.ti.com (ileaxei01-snat2.itg.ti.com [10.180.69.6])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3299OZwG020927;
	Thu, 9 Mar 2023 03:24:36 -0600
From: Siddharth Vadapalli <s-vadapalli@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <rogerq@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <srk@ti.com>,
        <s-vadapalli@ti.com>
Subject: [PATCH] phy: ti: j721e-wiz: Add SGMII support in WIZ driver for J721E
Date: Thu, 9 Mar 2023 14:54:34 +0530
Message-ID: <20230309092434.443550-1-s-vadapalli@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_012442_817642_BEE4E476 
X-CRM114-Status: UNSURE (   8.39  )
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

Enable full rate divider configuration support for J721E_WIZ_16G for SGMII.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 1b83c98a78f0..ed4b0442cf5b 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1235,6 +1235,8 @@ static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
 		if (wiz->lane_phy_type[lane] == PHY_TYPE_PCIE)
 			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x1);
 		break;
+
+	case J721E_WIZ_16G:
 	case J721E_WIZ_10G:
 	case J7200_WIZ_10G:
 	case J721S2_WIZ_10G:
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
