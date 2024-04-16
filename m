Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B7AC04FF6
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZmHQu0AhmJj+mfkS8CTPhRRONZc5J3mvwHucjR6fSE=; b=oKLuvv3hi647xc
	7gQ3IPZ54RTiyMUGeZhgtP9jGtgVPRM3PdAgQJG7CzBkn+bgwwjUiHna19eseaT+5MylFqDq7a+0k
	Rf4vdmKJ2ADpU3ICsMO+1bvB4OvKv2Xb1kmd4a0spsl5e04YthUQVHInFr/y3suGbk24ETZaNnhCV
	XM9biDhpLWDAjaa4vq/oZsu6M26JGWIsONsfYPF8HYblVczyywkQQ/WCV1MR1Ju7C+yc5vOnvqYJa
	ubTqL3qQvHykdDPG2ZXPMsJptiMUnZmx1nkvFgGvJe/L959ElDEGWpIFtv4p+WFNHzBv8ZGaeUFu/
	LA52++aSV0dbLE0XupmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJS-0000000CCEO-3i0D;
	Tue, 16 Apr 2024 12:53:27 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJF-0000000CC7l-3y0U
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:53:18 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5C59C2000B;
	Tue, 16 Apr 2024 12:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271992;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Hw3jxUBFhu/KlEI+Ltv83Drt/dGgFaXZtN+apO8lfUc=;
	b=A1/F4t/v+kIbUoQdQJLmH3nvceEu5KWt9WdIGP2GzFrh+IyaqG+jBU6tA7T8bsoD+AHdUX
	oZUIUi5ggWNXCzhA6/tMjFcdru55BfK/+HgB1X/9WVykhP9umurMGF4T18TJNxcHrJLr/t
	JtM2AryoV+qEzjgRoHXbD5sYzZNVIHGwfamE2z366wNF1y+UZWYUFeem4UZrozzPz0RTlz
	aMfgmjnZhJYfFgxY1qUxVkfRG6S/xWRv4z4fMwPLqFlmYcUOnn22gZB4ncQRnRdnr1IUt1
	t/RZuRK8X7xBI/jVZLjFeoYIsJyphsCKwsxF30hkBj0vR6hXsnOAY9h1/NG8LQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:35 +0200
Subject: [PATCH 6/8] phy: cadence-torrent: add already_configured to struct
 cdns_torrent_phy
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-6-f15815833974@bootlin.com>
References: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
In-Reply-To: <20240412-j7200-phy-s2r-v1-0-f15815833974@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 gregory.clement@bootlin.com, theo.lebrun@bootlin.com, 
 thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_055314_348566_7F4F3543 
X-CRM114-Status: GOOD (  11.80  )
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

Add already_configured to struct cdns_torrent_phy, so it can be used at
differents stages.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 7b3a409da185..0636d5d04817 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -360,6 +360,7 @@ struct cdns_torrent_phy {
 	enum cdns_torrent_ref_clk ref_clk1_rate;
 	struct cdns_torrent_inst phys[MAX_NUM_LANES];
 	int nsubnodes;
+	int already_configured;
 	const struct cdns_torrent_data *init_data;
 	struct regmap *regmap_common_cdb;
 	struct regmap *regmap_phy_pcs_common_cdb;
@@ -2808,7 +2809,6 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	struct device_node *child;
 	int ret, subnodes, node = 0, i;
 	u32 total_num_lanes = 0;
-	int already_configured;
 	u8 init_dp_regmap = 0;
 	u32 phy_type;
 
@@ -2855,9 +2855,9 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_cleanup;
 
-	regmap_field_read(cdns_phy->phy_pma_cmn_ctrl_1, &already_configured);
+	regmap_field_read(cdns_phy->phy_pma_cmn_ctrl_1, &cdns_phy->already_configured);
 
-	if (!already_configured) {
+	if (!cdns_phy->already_configured) {
 		ret = cdns_torrent_clk(cdns_phy);
 		if (ret)
 			goto clk_cleanup;
@@ -2937,7 +2937,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		of_property_read_u32(child, "cdns,ssc-mode",
 				     &cdns_phy->phys[node].ssc_mode);
 
-		if (!already_configured)
+		if (!cdns_phy->already_configured)
 			gphy = devm_phy_create(dev, child, &cdns_torrent_phy_ops);
 		else
 			gphy = devm_phy_create(dev, child, &noop_ops);
@@ -3023,7 +3023,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		goto put_lnk_rst;
 	}
 
-	if (cdns_phy->nsubnodes > 1 && !already_configured) {
+	if (cdns_phy->nsubnodes > 1 && !cdns_phy->already_configured) {
 		ret = cdns_torrent_phy_configure_multilink(cdns_phy);
 		if (ret)
 			goto put_lnk_rst;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
