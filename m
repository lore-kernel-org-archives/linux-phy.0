Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770FDC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 10:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1o+y1pqth9ObkDcjzWZi9JUTQ5o6n9AA9E9UY3+Ccs=; b=E6AlHRjtBllFfO
	RT/zXWRTatEtQlJPOtxv61pVwMAJVhZv2256oJGhGid611QA6Vy9QujRVVL0pZw/u6ny1aTXEvhdp
	Oig7padq/rRe2NoDzJGSm+p0bp7ZKLsddhorLZH2V6EwfRVR22ctf66Q+b4W0sv7ZkRxyyGa6V7a4
	Qw0zlglPvHrzB1f2sXoooqU7xGBabVBlHYrdJQyCtR+DZ3Y9ymB8cMy22Ns0VszWC5zrCFnkWcVUh
	uismLy6RxytV1j5ZeS3uy8JzC5P43YIacb+78JYBPS43tiVJKXBPOu9n0xkRfiRUMvQFBN2LgMule
	ZTx/K1aNOlhoO11QANZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGJs-002QgU-0i;
	Thu, 21 Dec 2023 10:30:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGGJq-002Qf5-15
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 10:30:23 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3BLAUDlJ112064;
	Thu, 21 Dec 2023 04:30:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1703154613;
	bh=FV2RhUD9SV7SdTWfY8qp4/5H5gSClJNwlc4iyQYL4y8=;
	h=From:To:CC:Subject:Date:In-Reply-To:References;
	b=GP0l4opeE0TY7YZxiMxyUovZ7rJ5at0Qfb4HhLnC3wvEFzvANT4afVo2ziCiQamuD
	 m5QMhAniQh5SzAKvLWp4nFs7/pbY73UlYYqrvS1JpYrqDbmnpSKlTGRBYU+oENDf/O
	 l+xXYczOuK+aVlwZi/UM9IkqTcebMDrVkdrJjvbQ=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3BLAUDaR030054
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 21 Dec 2023 04:30:13 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 21
 Dec 2023 04:30:13 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 21 Dec 2023 04:30:13 -0600
Received: from localhost (chintan-thinkstation-p360-tower.dhcp.ti.com [172.24.227.220])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3BLAUCqW087744;
	Thu, 21 Dec 2023 04:30:12 -0600
From: Chintan Vankar <c-vankar@ti.com>
To: Maxime Ripard <mripard@kernel.org>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?=
	<u.kleine-koenig@pengutronix.de>,
        Sinthu Raja <sinthu.raja@ti.com>, Chintan
 Vankar <c-vankar@ti.com>,
        Andrew Davis <afd@ti.com>, Siddharth Vadapalli
	<s-vadapalli@ti.com>,
        Roger Quadros <rogerq@kernel.org>,
        Kishon Vijay Abraham
 I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [RFC PATCH 2/2] phy: ti: j721e-wiz: Add SGMII support in WIZ driver for J784S4
Date: Thu, 21 Dec 2023 15:59:56 +0530
Message-ID: <20231221102956.754617-2-c-vankar@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231221102956.754617-1-c-vankar@ti.com>
References: <20231221102956.754617-1-c-vankar@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_023022_412338_AB1E4079 
X-CRM114-Status: UNSURE (   9.24  )
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

Enable full rate divider configuration support for J784S4_WIZ_10G
for SGMII.

Signed-off-by: Chintan Vankar <c-vankar@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index fc3cd98c60ff..00d7e6a6de03 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1240,6 +1240,7 @@ static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
 	case J721E_WIZ_10G:
 	case J7200_WIZ_10G:
 	case J721S2_WIZ_10G:
+	case J784S4_WIZ_10G:
 		if (wiz->lane_phy_type[lane] == PHY_TYPE_SGMII)
 			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x2);
 		break;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
