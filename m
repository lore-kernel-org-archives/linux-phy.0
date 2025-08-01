Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4864FC87FCB
	for <linux-phy@archiver.kernel.org>; Fri,  1 Aug 2025 11:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aYnFaPsAd9VpbdlXlHWNPkUrmdU9soTWtMA52GY0f38=; b=I1mrSdey/FoWCX
	BmSzcRYwdWQghqlLAfLl9m5a/ZUIdLFFBvM8p50adE/0/QLyqGclXuVebMoQrSx6YT+TStm43oqa3
	3by8vq5OlVfUG2QMcx9YvUAAgI9ry4Twkh62/CPfkP0yYiSU89b9GzHr1BymjOalnRr5gwB4gJq5g
	Lrd0fAPggCsfAhXgAlnQnMZQeyZQM2/TZgTbv/ean9Ejr/VsP3n471QUnw+ClXIzgDwTBgk0qnoxY
	eKizdnDNnUa3fTLM4GlTOWK9JAOKlMrgzJ7TSPou/9Uh6PoGaSfXNgFT4SaIW92lxA0r0rJHrXch7
	QBJoCBKDfzwPdgKHv56g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhoLp-00000005b9z-3rft;
	Fri, 01 Aug 2025 11:55:05 +0000
Received: from fllvem-ot03.ext.ti.com ([198.47.19.245])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhoKF-00000005azo-2KCn
	for linux-phy@lists.infradead.org;
	Fri, 01 Aug 2025 11:53:29 +0000
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTP id 571BrGib3234765;
	Fri, 1 Aug 2025 06:53:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1754049196;
	bh=Mkzg6uJU8Hf0C2C7tC4oO21np+7EsTtwbHlVIynuKkQ=;
	h=From:To:CC:Subject:Date;
	b=V3byL7I5E6inGNFnzOoN+vQ7fijvH+6BtQKh/INpvu3J4qqOwuW+hPql2+dHDwXp/
	 NR1P9c7GdR3QrXNkWSaqpxuL/gfEO2K8JGW9ld3en2Px6xqZkxdFphR0nEUtk3XRMf
	 x2pX3zXGiy/AiysNwtwo7nk0+qFbsDSOi4n2Imvo=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 571BrG73751037
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Fri, 1 Aug 2025 06:53:16 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Fri, 1
 Aug 2025 06:53:15 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Fri, 1 Aug 2025 06:53:15 -0500
Received: from hkshenoy.dhcp.ti.com (hkshenoy.dhcp.ti.com [172.24.235.208])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 571BrCUg334601;
	Fri, 1 Aug 2025 06:53:13 -0500
From: Harikrishna Shenoy <h-shenoy@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <u.kleine-koenig@baylibre.com>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devarsht@ti.com>, <u-kumar1@ti.com>, <s-jain1@ti.com>
CC: <h-shenoy@ti.com>
Subject: [PATCH] drivers: phy: cadence: cdns-dphy: Enabling lower resolutions in dphy
Date: Fri, 1 Aug 2025 17:23:11 +0530
Message-ID: <20250801115311.1384313-1-h-shenoy@ti.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250801_045327_711954_85351413 
X-CRM114-Status: UNSURE (   9.60  )
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

The patch enables cdns dphy for hs_clk_rate in range between
80 Mbps to 160 Mbps as mentioned in TRM [0] by setting the
pll_opdiv field to 16.This change enables lower resolutions
like 640x480 at 60Hz.

[0]: https://www.ti.com/lit/zip/spruil1
(Table 12-552. DPHY_TX_PLL_CTRL Register Field Descriptions)

Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
---
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
