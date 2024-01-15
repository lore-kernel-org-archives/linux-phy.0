Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4121C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 16:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBwKc0BgKI+vBjqbE42sMHNDa8VmeS3qgKphCHVZx+A=; b=yx3J/GFdcmiAVV
	WRmQM8d8rCoSKyGphSlFjq4sxDfFAmTD0gHTAE6WBfOu2Qicld9A20I8YQbcAIIEPkdCyEOvbALuF
	6iQhC0F8bu0Btdc9+6hy5M46CWmn//bLBphMzbPzGVpUKjggSAaYBUAOo2gBu3DuljB59JIb9J0s8
	rq5CubkzfjIoCYKpjYj3coH9mreeU5xTQBTQDqYAAxNq27iVxeoKEjXR4oKKaDCC7PwzlijthlceW
	Sfo9gXDi650Ptv02ckW3l/WlctVSv+CSSC3YA0hpPFsih2xYJHwWvrvTUHl+W9EmemocnJpl/oz/p
	bFm5LuFwMKFIiLrcnd6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdz-009b5N-2a;
	Mon, 15 Jan 2024 16:16:59 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPPdT-009aYf-1G;
	Mon, 15 Jan 2024 16:16:28 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id BE59BC000E;
	Mon, 15 Jan 2024 16:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705335385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aJphqhRe7sCCUllJmYP7giuhDMzxfp8od1YO/mqFDeI=;
	b=LzfGo0f1XBKbdnRbpJLHnWitIVtExxNPOBaV1ff3LkRjE2TzsQ48ipDbFQnIgVTCJsO9Ao
	lsfbWg30X2WpUT90y0L7230VJ7vsRawFw0ki+4ZYhpn4gkhMMG1eRpvN1Ksw3qz+zqMUo5
	h8aNbW83LKhsFoIpmNIkMBP68vy9avMwwhU+Jemn/12ruKeoW3exVeRPMSTXf7GXFjDjVc
	pLgaq2fCqPqZ6BO8uVjcNQ9U7Dv5S7BK51oPx9kiEMlPoPu6LxGZFJscq8jU27CusWEYpk
	PfJDaIqQbsPQtwmwqidHFCPiL5sQjk7ZRMZzw7cxg6rgYajeIE7eFx8nh9IXHw==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 15 Jan 2024 17:14:50 +0100
Subject: [PATCH 09/14] phy: cadence-torrent: move already_configured to
 struct cdns_torrent_phy
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v1-9-84e55da52400@bootlin.com>
References: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v1-0-84e55da52400@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_081627_696944_7E0A8338 
X-CRM114-Status: GOOD (  12.88  )
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

Move already_configured to struct cdns_torrent_phy, so it can be used at
differents stages.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
 drivers/phy/cadence/phy-cadence-torrent.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 100b58965558..a1e9d06453e6 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -358,6 +358,7 @@ struct cdns_torrent_phy {
 	enum cdns_torrent_ref_clk ref_clk_rate;
 	struct cdns_torrent_inst phys[MAX_NUM_LANES];
 	int nsubnodes;
+	int already_configured;
 	const struct cdns_torrent_data *init_data;
 	struct regmap *regmap_common_cdb;
 	struct regmap *regmap_phy_pcs_common_cdb;
@@ -2741,7 +2742,6 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	struct device_node *child;
 	int ret, subnodes, node = 0, i;
 	u32 total_num_lanes = 0;
-	int already_configured;
 	u8 init_dp_regmap = 0;
 	u32 phy_type;
 
@@ -2788,9 +2788,9 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_cleanup;
 
-	regmap_field_read(cdns_phy->phy_pma_cmn_ctrl_1, &already_configured);
+	regmap_field_read(cdns_phy->phy_pma_cmn_ctrl_1, &cdns_phy->already_configured);
 
-	if (!already_configured) {
+	if (!cdns_phy->already_configured) {
 		ret = cdns_torrent_clk(cdns_phy);
 		if (ret)
 			goto clk_cleanup;
@@ -2870,7 +2870,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
 		of_property_read_u32(child, "cdns,ssc-mode",
 				     &cdns_phy->phys[node].ssc_mode);
 
-		if (!already_configured)
+		if (!cdns_phy->already_configured)
 			gphy = devm_phy_create(dev, child, &cdns_torrent_phy_ops);
 		else
 			gphy = devm_phy_create(dev, child, &noop_ops);
@@ -2956,7 +2956,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
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
