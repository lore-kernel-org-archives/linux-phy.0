Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BBC6C36011
	for <linux-phy@archiver.kernel.org>; Wed, 26 Mar 2025 15:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kVz6TV6faZhsE/JdlxrdUAxfc1ire0MkL3szsaJZhs=; b=EdcEmsgWTsqCYh
	rV9pXTTyDw/gSa8l3bJ65ifZeOpgHNQnbMb5qo/Zv2U4vq3hclGY3lZEfRcMx/bGnZTgzXiFMC7t8
	4T/N5SGysAFbsQvJQUM43Rwnfb/WCKHSsvgGrRHQNZ5Lln6iK3B2GpTfg1FmOtVooFQzv2gmCu4X7
	Z8j5AyDGkNElTiMIHr49nYDh7TBGNv0FGCbrlIOGgyDPnGJRPu+RfC2zF5nHJceJNsnhOGQ8fq/rJ
	XMB0XELM0P198NNy3Q+GVOcqCxJhraNh6x7ahVmL/R+dpKvihR/xL5q8mYI54kkChTwqCUCiFmWGY
	sVOackqN+1eyra+we+YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txScQ-00000008qeT-1Lvb;
	Wed, 26 Mar 2025 15:24:38 +0000
Received: from fllvem-ot04.ext.ti.com ([198.47.19.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txSbO-00000008qMs-13kS
	for linux-phy@lists.infradead.org;
	Wed, 26 Mar 2025 15:23:36 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 52QFNODR2227262
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 26 Mar 2025 10:23:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1743002604;
	bh=guzCcx7sZr0haX4pTDAv49k4kG8TbtZrl1jzFabfe6c=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=KiPHA4SkRkVQbH7JUsHr/y8OnVj04Ye3GVpIKGAsc0rWzVV2sGm22QXNUfun8wYdF
	 8EI8HJxtmlJi8a2+T8mGwH0/C0RpqrNDujcskEYyX9dwwdyoeOYcEcbTQ8ohVMCIw+
	 Ev5dx1yPUlfTTL/0wpCOtdGwyMEESm77THnyKamA=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 52QFNOQ2004053
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 26 Mar 2025 10:23:24 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Wed, 26
 Mar 2025 10:23:24 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Wed, 26 Mar 2025 10:23:24 -0500
Received: from localhost (ti.dhcp.ti.com [172.24.227.95] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 52QFNNXW076869;
	Wed, 26 Mar 2025 10:23:23 -0500
From: Devarsh Thakkar <devarsht@ti.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <mripard@kernel.org>,
        <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <sakari.ailus@linux.intel.com>, <u.kleine-koenig@baylibre.com>,
        <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>, <s-jain1@ti.com>,
        <r-donadkar@ti.com>, <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH v2 2/2] phy: cadence: cdns-dphy: Update calibration wait time for startup state machine
Date: Wed, 26 Mar 2025 20:53:20 +0530
Message-ID: <20250326152320.3835249-3-devarsht@ti.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250326152320.3835249-1-devarsht@ti.com>
References: <20250326152320.3835249-1-devarsht@ti.com>
MIME-Version: 1.0
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_082334_380887_40DA7EED 
X-CRM114-Status: UNSURE (   9.57  )
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

Use system characterized reset value specified in TRM [1] to program
calibration wait time which defines number of cycles to wait for after
startup state machine is in bandgap enable state.

This fixes PLL lock timeout error faced while using RPi DSI Panel on TI's
AM62L and J721E SoC [2].

[1] AM62P TRM (Section ):
https://www.ti.com/lit/pdf/spruj83

[2]:
Link: https://gist.github.com/devarsht/89e4830e886774fcd50aa6e29cce3a79

Cc: stable@vger.kernel.org
Fixes: 7a343c8bf4b5 ("phy: Add Cadence D-PHY support")
Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
---
V2: Introduced this as as separate patch

 drivers/phy/cadence/cdns-dphy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index c4de9e4d3e93..11fbffe5aafd 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -30,6 +30,7 @@
 
 #define DPHY_CMN_SSM			DPHY_PMA_CMN(0x20)
 #define DPHY_CMN_SSM_EN			BIT(0)
+#define DPHY_CMN_SSM_CAL_WAIT_TIME	GENMASK(8, 1)
 #define DPHY_CMN_TX_MODE_EN		BIT(9)
 
 #define DPHY_CMN_PWM			DPHY_PMA_CMN(0x40)
@@ -405,6 +406,8 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
 	reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, band_ctrl) |
 	      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, band_ctrl);
 	writel(reg, dphy->regs + DPHY_BAND_CFG);
+	writel(FIELD_PREP(DPHY_CMN_SSM_CAL_WAIT_TIME, 0x14) | DPHY_CMN_SSM_EN | DPHY_CMN_TX_MODE_EN,
+	       dphy->regs + DPHY_CMN_SSM);
 
 	ret = cdns_dphy_wait_for_pll_lock(dphy);
 	if (ret)
-- 
2.39.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
