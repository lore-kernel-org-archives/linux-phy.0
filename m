Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6FEDC433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 08:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAP5RoJWJ7xnJrQExaqu4kyUxuveiD1D6sI2bGzC0rA=; b=l/sOdpvAgErm8R
	5LKGJ9Ukv9d8gT44jHRs5wYKP82e0w38rW7CqwWojRXAUu9SCdJxB1h7DF8ONXcOzOroHN6VAFp4z
	2bPZuS64Nf3s7jgly4KNqHgeOPlDWQA09/nRceW4ynQoQCPYEamBohHSiWLje5UHQFcBg8aq/kGpi
	aEcZO5XfxBc9urX/5k1CG68YJ8FfNWCBWCLzEy9LhNgNATFvMLaRMrzrBUuwNNk0OLjvOTRqRX8fm
	i4fRhs2Ta483wx4orZsHbeq+zpLgv9ypZOZGvdu2lkglkXaORvY3AaOo8/Ii0dfhU3ifrIYYeqb1s
	bqUUgSS5HSuA5jV/zGvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpR2K-001Feb-PJ; Tue, 23 Nov 2021 08:20:20 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpQvA-001D2T-4G
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 08:12:58 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8Cm5C095619;
 Tue, 23 Nov 2021 02:12:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1637655168;
 bh=sTEvQ1er5plxIGdGGZR1lqxkF4CWVe/9/U+j0wI+RZc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=tVpT6338lr56oldmrxQNN+QotXyK5+oUVXFPTAMHdohoDLeWxybQejxriJXnprPMq
 tIb/tzZKljaqLdt+CR+LKMIB5Iv3pOBKMvVqTaEN7zETI/+yxp1PgFb29OPQ/Y046Z
 CWygWUc/eMRGHGzll68PSdvp0GV2G7XNltJeu7Ng=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AN8CmqV010533
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Nov 2021 02:12:48 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 23
 Nov 2021 02:12:48 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 23 Nov 2021 02:12:48 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AN8CNe2101399;
 Tue, 23 Nov 2021 02:12:44 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Aswath
 Govindraju <a-govindraju@ti.com>,
 Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH RFC v3 4/4] phy: phy-can-transceiver: Add support for setting
 mux
Date: Tue, 23 Nov 2021 13:42:21 +0530
Message-ID: <20211123081222.27979-5-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211123081222.27979-1-a-govindraju@ti.com>
References: <20211123081222.27979-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211123_001256_307632_6CEB62A8 
X-CRM114-Status: GOOD (  16.37  )
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

On some boards, for routing CAN signals from controller to transceiver,
muxes might need to be set. Therefore, add support for setting the mux by
reading the mux-controls property from the device tree node.

Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/phy/Kconfig               |  1 +
 drivers/phy/phy-can-transceiver.c | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index 82b63e60c5a2..300b0f2b5f84 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -64,6 +64,7 @@ config USB_LGM_PHY
 config PHY_CAN_TRANSCEIVER
 	tristate "CAN transceiver PHY"
 	select GENERIC_PHY
+	select MULTIPLEXER
 	help
 	  This option enables support for CAN transceivers as a PHY. This
 	  driver provides function for putting the transceivers in various
diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 6f3fe37dee0e..6c94e3846410 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -10,6 +10,7 @@
 #include<linux/module.h>
 #include<linux/gpio.h>
 #include<linux/gpio/consumer.h>
+#include <linux/mux/consumer.h>
 
 struct can_transceiver_data {
 	u32 flags;
@@ -21,13 +22,22 @@ struct can_transceiver_phy {
 	struct phy *generic_phy;
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
+	struct mux_state *mux_state;
 };
 
 /* Power on function */
 static int can_transceiver_phy_power_on(struct phy *phy)
 {
+	int ret;
 	struct can_transceiver_phy *can_transceiver_phy = phy_get_drvdata(phy);
 
+	if (can_transceiver_phy->mux_state) {
+		ret = mux_state_select(can_transceiver_phy->mux_state);
+		if (ret) {
+			dev_err(&phy->dev, "Failed to select CAN mux: %d\n", ret);
+			return ret;
+		}
+	}
 	if (can_transceiver_phy->standby_gpio)
 		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 0);
 	if (can_transceiver_phy->enable_gpio)
@@ -45,6 +55,8 @@ static int can_transceiver_phy_power_off(struct phy *phy)
 		gpiod_set_value_cansleep(can_transceiver_phy->standby_gpio, 1);
 	if (can_transceiver_phy->enable_gpio)
 		gpiod_set_value_cansleep(can_transceiver_phy->enable_gpio, 0);
+	if (can_transceiver_phy->mux_state)
+		mux_state_deselect(can_transceiver_phy->mux_state);
 
 	return 0;
 }
@@ -95,6 +107,16 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
 	drvdata = match->data;
 
+	if (of_property_read_bool(dev->of_node, "mux-controls")) {
+		struct mux_state *mux_state;
+
+		mux_state = devm_mux_state_get(dev, NULL);
+		if (IS_ERR(mux_state))
+			return dev_err_probe(&pdev->dev, PTR_ERR(mux_state),
+					     "failed to get mux\n");
+		can_transceiver_phy->mux_state = mux_state;
+	}
+
 	phy = devm_phy_create(dev, dev->of_node,
 			      &can_transceiver_phy_ops);
 	if (IS_ERR(phy)) {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
