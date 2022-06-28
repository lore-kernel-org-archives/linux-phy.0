Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0668BC43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlbZlpY1BZ2KFhmxBaeYQJ1levAG3hoJQ+EV+9YFU64=; b=gbq4u1ecNIbWq3
	o8ecj1WVsWoYsGdXYasl/0cUQnP3rOQPg8+EL8JCdQHhA5Nr5dDjiptrRNc4OmhAeeR5pNXn1hVbq
	raDOW3u2CwN3bdsRDSZtFt1Sw0GXb3lKfJs2DXAgx8abbkQk9qn3o0WnT0Y/6YQKPvMpuBBYYS4tP
	sJttQgM5yYs9cfe9HPjTOZvXPf9aJ2LhYHwGdaCxucSUEyR3A9qvLtTBw8owHfZLIFON4Pi8G/c7M
	zlZsdg6nVFKppUHONGnwyzq3U398ldao3DhYhvGfpI8YGCi+7cY7xkDaU1YAnljTfBcVXlRTR7Bg5
	2K/8zM5zMRITiRe8nC/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFR-0069X4-Cr; Tue, 28 Jun 2022 12:23:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFO-0069WA-D1
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0562661471;
	Tue, 28 Jun 2022 12:23:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D657C341CE;
	Tue, 28 Jun 2022 12:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656418993;
	bh=bw4JxdKBLg5YZjdvIpofcV0Tb/wNIuvBvilj7qW7zR0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NlG8+Oki4S49DTX5lyXPrUoA0zvZXhni38IAMJwdfhYUd4J+oLh2DRXIkSVheOAti
	 yJFyC5rKCtSd6XL0SVdjXDRLEqdXlcGge+Mwh0dDaXyOWSXJOizEiMqmOx8QnQE6SV
	 y9qpA8gxoEag9lZ29lEgdyf+C5RnI3G9pZNKtJsSh6FDL/lMXyVtGa+kQU+5AUzolR
	 rsq5m0DCeBMhlZ2ccc0lZ64mEmmjJu6rgHpZpJoO3cJpKF2kWQozMRZn4cNf+Qnkj0
	 FuriCOXpjGQDOu4frPjvIGlJTRSrHZYySz4plDp1O67yom+/0ScHw0f1xZIBAnVBlL
	 dyoUGJlFHAAIQ==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 1/7] phy: ti: phy-j721e-wiz: Add SGMII support in wiz driver for J7200
Date: Tue, 28 Jun 2022 15:22:49 +0300
Message-Id: <20220628122255.24265-2-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052314_523891_25B5807C 
X-CRM114-Status: GOOD (  13.36  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Siddharth Vadapalli <s-vadapalli@ti.com>

Select the same mac divider for SGMII too as the one being used for
QSGMII.

Enable full rate divider configuration support for J721E_WIZ_10G for
SGMII.

Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/phy/ti/phy-j721e-wiz.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 70bac931f99a..8c10ee8e2707 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -325,7 +325,8 @@ static int wiz_p_mac_div_sel(struct wiz *wiz)
 	int i;
 
 	for (i = 0; i < num_lanes; i++) {
-		if (wiz->lane_phy_type[i] == PHY_TYPE_QSGMII) {
+		if (wiz->lane_phy_type[i] == PHY_TYPE_SGMII ||
+		    wiz->lane_phy_type[i] == PHY_TYPE_QSGMII) {
 			ret = regmap_field_write(wiz->p_mac_div_sel0[i], 1);
 			if (ret)
 				return ret;
@@ -1025,12 +1026,18 @@ static int wiz_phy_reset_assert(struct reset_controller_dev *rcdev,
 
 static int wiz_phy_fullrt_div(struct wiz *wiz, int lane)
 {
-	if (wiz->type != AM64_WIZ_10G)
+	switch (wiz->type) {
+	case AM64_WIZ_10G:
+		if (wiz->lane_phy_type[lane] == PHY_TYPE_PCIE)
+			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x1);
+		break;
+	case J721E_WIZ_10G:
+		if (wiz->lane_phy_type[lane] == PHY_TYPE_SGMII)
+			return regmap_field_write(wiz->p0_fullrt_div[lane], 0x2);
+		break;
+	default:
 		return 0;
-
-	if (wiz->lane_phy_type[lane] == PHY_TYPE_PCIE)
-		return regmap_field_write(wiz->p0_fullrt_div[lane], 0x1);
-
+	}
 	return 0;
 }
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
