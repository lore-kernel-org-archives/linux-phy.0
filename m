Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 191FEC48BF6
	for <linux-phy@archiver.kernel.org>; Mon,  4 Mar 2024 16:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaxKZMuiBVnuwmeTqRJv47mQysWI68QCQEgjh7wBXgM=; b=HgiXtvvdUBGBUq
	lmc4ds8DQ29oUWyDJqtYpevB5tJDOn7gyY1sNzA6/7M1YdZ8lT43IiCrbcK/L/ZtRPfrxhmllw9Ib
	s2w9tk2/8csTVRliLllTxvSmQKcyewSdjb0t6iyi9i0aMc5Tji4JxE5E4bbBLgk4LIqiYL0+0Si6e
	iajY+r5VjaRiZvLxxm8MlMocmZ2HT8gXC//+nzL7RmsWODqhO8Kxcr5bqgEWJgurdbSVvG+3cH9p/
	agEcX0IOQs1K+JAplNluY8cH8StVEHb1lxnxYxT7q06ES/xku+wk6qnNXFsB9IWbSlN2CVIPWmxIs
	oEDXDFp9Ph8sZ4IyBp2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhBWQ-00000009tnm-11Hp;
	Mon, 04 Mar 2024 16:50:38 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhAMk-00000009ce2-2VGA;
	Mon, 04 Mar 2024 15:36:55 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id AE0981BF204;
	Mon,  4 Mar 2024 15:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709566591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kd9Oz4mdVW+hDLej27Xfdp5hp9Tma/hgJ2XUMzL0uAo=;
	b=L4Zzf4vINewbTLzOek8ywqdNRQTcMGgT1T78dNAvJ08wb1UOFzcnMRT3lboAucDV4zWxff
	oWdtgYF2g/GzqrBm6YyEvtxZPTrHS0tIu23sU2VVrTFodL4CqJ/EFZHB8IPYKivor/38SN
	L53+UVOCAES0QA6BpVlBCh5Owts47tgyrirQdAnyGLy77S+P889nWs1HjxeIMVNMzm7rcM
	TZLXnZbK3nZVFX4wq2etkQUWrpDV7k7d2BXMnjZxW4AH/gb+tJIB1BCNn7F0dvIk2mv3zP
	yNGljErCqNGOPns14qcLeQ8hLYQSFUUKJAGEsF5fe4L7Nl6XTNm2FmFUrLQs3w==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Mon, 04 Mar 2024 16:35:55 +0100
Subject: [PATCH v4 12/18] phy: cadence-torrent: remove noop_ops phy
 operations
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v4-12-6f1f53390c85@bootlin.com>
References: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v4-0-6f1f53390c85@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
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
X-CRM114-CacheID: sfid-20240304_073639_377912_B7851372 
X-CRM114-Status: GOOD (  14.19  )
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
index b35fbc8a60e5..52cadca4c07b 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -1593,6 +1593,9 @@ static int cdns_torrent_dp_configure(struct phy *phy,
 	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(phy->dev.parent);
 	int ret;
 
+	if (cdns_phy->already_configured)
+		return 0;
+
 	ret = cdns_torrent_dp_verify_config(inst, &opts->dp);
 	if (ret) {
 		dev_err(&phy->dev, "invalid params for phy configure\n");
@@ -1628,6 +1631,12 @@ static int cdns_torrent_phy_on(struct phy *phy)
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
@@ -2306,6 +2315,9 @@ static int cdns_torrent_phy_init(struct phy *phy)
 	u32 num_regs;
 	int i, j;
 
+	if (cdns_phy->already_configured)
+		return 0;
+
 	if (cdns_phy->nsubnodes > 1) {
 		if (phy_type == TYPE_DP)
 			return cdns_torrent_dp_multilink_init(cdns_phy, inst, phy);
@@ -2443,19 +2455,6 @@ static const struct phy_ops cdns_torrent_phy_ops = {
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
@@ -2869,10 +2868,7 @@ static int cdns_torrent_phy_probe(struct platform_device *pdev)
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
