Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD1F2C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QliK3/ghdo++eO47uxPwx0FVL9M4iL7QegZFnIjwvE8=; b=AE6J9MatQHNXzE
	I4CQ0XlA2vl/3v6ewT95Jnk9MMJQFgMItOmQ3faeq83ph8yxEoI6atTQ8REEGvZwCONU0F+j1Q9Z6
	LUzFuYHpFWRWTjG45KyTwehFNH+SHf4H8jRjMqnfHipycY+JrOQOFFfrqzHVoHAjJcHYLBKEkh+AQ
	o6UYbbC7eEjz4Tp6leMRUV1bbuRcTfVzpv3CErwzs0rOCn1IrPGIW/XqrC+UC2wDfupiDxMB0D/YD
	IdYbkPlzR+HYSXZqNQ+d+vH7PgJkzFD2mWN0ic1/5BR4pRtyaNQTnvDmmouiCNU6BI6Z5E8bmfEiO
	NEwAOXoz4vjRBSHScFCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJU-0000000CCFA-26AH;
	Tue, 16 Apr 2024 12:53:28 +0000
Received: from relay7-d.mail.gandi.net ([2001:4b98:dc4:8::227])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiJG-0000000CC8T-26Or
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:53:19 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 361F020010;
	Tue, 16 Apr 2024 12:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1713271992;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VPItTV/Mp42ilTj6tN8/dzU8kHkSA8+8bFCV4f5utvE=;
	b=po115KdOsG3t/mmyxxa9RY7XLvDp2aOIX3CTMiymKr+XSQXWVQ2i1h8s76kSAveyvXVMvt
	z7BFVWLI//KU1SXeA/E+P32LMXKZIpd2fnorFRgLc5VLQTcEo8P/PxryAGcp+GgvSsn4YT
	csvwnDjZSekOw+PLiuThbADaGQd9ory3lGJNUvBGSTUzybBsfNsN5vr/70Dx3yNZRkV9an
	rqBHflsM1PNBXTWp7Lg3qG33dra+zG/ENGYr9bFhMrNJaqWpsEmv8oNT+Dii1BddBKqtyd
	dw/+H1fkxg6vFSBnxL49k4REYVO/r/lCq6b5Mfs0yvFStVsU8uRTt42Rc3HCSQ==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Tue, 16 Apr 2024 14:52:36 +0200
Subject: [PATCH 7/8] phy: cadence-torrent: remove noop_ops phy operations
MIME-Version: 1.0
Message-Id: <20240412-j7200-phy-s2r-v1-7-f15815833974@bootlin.com>
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
X-CRM114-CacheID: sfid-20240416_055315_096312_330E1335 
X-CRM114-Status: GOOD (  12.75  )
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

Even if a PHY is already configured, the PHY operations are needed during
resume stage, as the PHY is in reset state.
The noop_ops PHY operations is removed to always have PHY operations.
The already_configured flag is checked at the begening of init, configure
and poweron operations to keep the already_configured behaviour.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 30 +++++++++++++-----------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 0636d5d04817..0e3c755e6089 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -1595,6 +1595,9 @@ static int cdns_torrent_dp_configure(struct phy *phy,
 	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
 	int ret;
 
+	if (cdns_phy->already_configured)
+		return 0;
+
 	ret = cdns_torrent_dp_verify_config(inst, &opts->dp);
 	if (ret) {
 		dev_err(&phy->dev, "invalid params for phy configure\n");
@@ -1630,6 +1633,12 @@ static int cdns_torrent_phy_on(struct phy *phy)
 	u32 read_val;
 	int ret;
 
+	if (cdns_phy->already_configured) {
+		/* Give 5ms to 10ms delay for the PIPE clock to be stable */
+		usleep_range(5000, 10000);
+		return 0;
+	}
+
 	if (cdns_phy->nsubnodes == 1) {
 		/* Take the PHY lane group out of reset */
 		reset_control_deassert(inst->lnk_rst);
@@ -2308,6 +2317,9 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	u32 num_regs;
 	int i, j;
 
+	if (cdns_phy->already_configured)
+		return 0;
+
 	if (cdns_phy->nsubnodes > 1) {
 		if (phy_type == TYPE_DP)
 			return cdns_torrent_dp_multilink_init(cdns_phy, inst, phy);
@@ -2445,19 +2457,6 @@ static const struct phy_ops cdns_torrent_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static int cdns_torrent_noop_phy_on(struct phy *phy)
-{
-	/* Give 5ms to 10ms delay for the PIPE clock to be stable */
-	usleep_range(5000, 10000);
-
-	return 0;
-}
-
-static const struct phy_ops noop_ops = {
-	.power_on	= cdns_torrent_noop_phy_on,
-	.owner		= THIS_MODULE,
-};
-
 static
 int cdns_torrent_phy_configure_multilink(struct cdns_torrent_phy *cdns_phy)
 {
@@ -2937,10 +2936,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		of_property_read_u32(child, "cdns,ssc-mode",
 				     &cdns_phy->phys[node].ssc_mode);
 
-		if (!cdns_phy->already_configured)
-			gphy = devm_phy_create(dev, child, &cdns_torrent_phy_ops);
-		else
-			gphy = devm_phy_create(dev, child, &noop_ops);
+		gphy = devm_phy_create(dev, child, &cdns_torrent_phy_ops);
 		if (IS_ERR(gphy)) {
 			ret = PTR_ERR(gphy);
 			goto put_child;

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
