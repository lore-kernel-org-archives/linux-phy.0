Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC2EC87FD2
	for <linux-phy@archiver.kernel.org>; Thu,  7 Aug 2025 05:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YFgLb4wOw1QSJUtlPJhoEOUzYBBKQ96NAi+mzkvFPk0=; b=xeBhLrxZKu6gv2
	Jivlo0DogUNU4tyzjaLS0SGQAPmjcpCPQ6J4ogqZU8jF05J31K3KiedN3iQB5eYLqVIeoGI0Yfqpw
	HBgYO/2TjoMlgWPDsmsBwxU4B0sOlKOhejfwaQWztEa/A1B77YaHMzRXDB8rdtcn53JELAnnTGpxG
	XOXYQdfCr9T88fk/NQNEVGXpexui5kT10x6mYWO/2Rnzcbo8rBfLMAzqioQRBFuWyrjgupYWSRUFd
	F6ByyHdS2sTwLJrYXpy9knZAPZmJ0CA0yazOTTXEn3PtnVwhBL93FrtbaA3y2mMO8nJbJ4U6UBgNC
	IWegOfpUGtWlRBpGUM/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujt37-0000000HIV9-48zF;
	Thu, 07 Aug 2025 05:20:21 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujt35-0000000HIUr-03hR
	for linux-phy@lists.infradead.org;
	Thu, 07 Aug 2025 05:20:20 +0000
Received: from fllvem-sh03.itg.ti.com ([10.64.41.86])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTP id 5775K6GA676502;
	Thu, 7 Aug 2025 00:20:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1754544006;
	bh=oHumpSx3wKCOMnZgWNVeT2j3T6agkIplHk/j+VJ+VU0=;
	h=From:To:CC:Subject:Date;
	b=wz4Lkun8dW4FtCXNlVUI29OaMSEQfpTCHeR3bNLSwSDhNvL2rFofGcpbQvsnx83EV
	 rCYe5Ms90mVcRMyBSxxp+TfwEYvPDY+Ue7XShaRp36FLV+uvtJxTD81KbIBVOVzb16
	 C+GfJfVhqfI5ymB6YmnYC7hAHp1AWRFDECdFxqCc=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllvem-sh03.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 5775K6Gn4103674
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Thu, 7 Aug 2025 00:20:06 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Thu, 7
 Aug 2025 00:20:06 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Thu, 7 Aug 2025 00:20:06 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 5775K2dT791310;
	Thu, 7 Aug 2025 00:20:03 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <u.kleine-koenig@baylibre.com>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devarsht@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
CC: <h-shenoy@ti.com>
Subject: [PATCH v3] drivers: phy: cadence: cdns-dphy: Enable lower resolutions in dphy
Date: Thu, 7 Aug 2025 10:50:02 +0530
Message-ID: <20250807052002.717807-1-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_222019_139251_AEB57D2C 
X-CRM114-Status: UNSURE (   9.16  )
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

Enable support for data lane rates between 80-160 Mbps cdns dphy
as mentioned in TRM [0] by setting the pll_opdiv field to 16.
This change enables lower resolutions like 640x480 at 60Hz.

[0]: https://www.ti.com/lit/zip/spruil1
(Table 12-552. DPHY_TX_PLL_CTRL Register Field Descriptions)

Reviewed-by: Udit Kumar <u-kumar1@ti.com>
Reviewed-by: Devarsh Thakkar <devarsht@ti.com>
Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---
Changes in v3:
- Updated commit message.
- Added Reviewed-by tags.
- Link to v2: https://lore.kernel.org/all/20250806052650.429767-1-h-shenoy@ti.com/

Changes in v2:
- Updated commit message and title.
- Added Reviewed-by tag.
- Link to v1: https://lore.kernel.org/all/1ebb82ea-4b6c-4496-b7c0-17d4168d8ddf@ti.com/

Test log: https://gist.github.com/h-shenoy/3975156baf403a0ff8dbcce5b49b2b89

 drivers/phy/cadence/cdns-dphy.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index ed87a3970f83..9abed2ece9b0 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -139,7 +139,7 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
 
 	dlane_bps = opts->hs_clk_rate;
 
-	if (dlane_bps > 2500000000UL || dlane_bps < 160000000UL)
+	if (dlane_bps > 2500000000UL || dlane_bps < 80000000UL)
 		return -EINVAL;
 	else if (dlane_bps >= 1250000000)
 		cfg->pll_opdiv = 1;
@@ -149,6 +149,8 @@ static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
 		cfg->pll_opdiv = 4;
 	else if (dlane_bps >= 160000000)
 		cfg->pll_opdiv = 8;
+	else if (dlane_bps >= 80000000)
+		cfg->pll_opdiv = 16;
 
 	cfg->pll_fbdiv = DIV_ROUND_UP_ULL(dlane_bps * 2 * cfg->pll_opdiv *
 					  cfg->pll_ipdiv,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
