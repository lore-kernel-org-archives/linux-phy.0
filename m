Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F14DEC433EF
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 13:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKZHSvVbCFsNtdQXLN1MP8r3aQ/E73mq7sp0zq1k0s4=; b=oUyB7ELsNXHUYp
	hdgAsH6CNQ95vBQ4JqlRSMXfzyPSu7GU3lQ1dv93dW8PEJNR8OUF0rh7pZorpKK1QvKo9K3ug1vhv
	E6tygo8N+zqJxK4KOwBQSk1BMg7oE7oJBF7pWOOJWdzUApL2JvRz2HbkxcKQrrbRXnjn19HnhoPER
	DPGzl6/DqEi197S8uPbuGqUMrLtYqwS3qko7SNo8Ol4NaYQ8lUZ5PWYiLpgnH7jBRLJB65ixTh9MF
	/VDAHHYyBWHy7myHcP33+3KMCaJa+zmSstu5kWiek53yE8GMSJqXrCjeGlAHL4qQkmMawqqRr3/Af
	0OcG+0anjCdF5exDWDDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mslrE-00CQOJ-FQ; Thu, 02 Dec 2021 13:10:40 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mslrB-00CQNC-C5
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 13:10:38 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1B2DAHuC048421;
 Thu, 2 Dec 2021 07:10:17 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1638450617;
 bh=/NgGi4z2UeQc+qcSMlJU+oGJHEz7+dU8GUdgk8XoMWM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=sgFp+Jl8WOfIyGB5+lRpNatDWq2bOzta78ho3vng5VRO1lhOoRU4uRS7YmjCjqEN+
 d4AQWZv/0Z+nFYmHLL88T3yFMv1Ol6jMry573iKpLW1Tk3QnBoAXpfTWMrSyEpTS6J
 lz0+GsOKGErWypINiFtvtsrHBEckjJfr4UfSc/eQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1B2DAHRH040638
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 2 Dec 2021 07:10:17 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Thu, 2
 Dec 2021 07:10:17 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Thu, 2 Dec 2021 07:10:17 -0600
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1B2DA4Kk031324;
 Thu, 2 Dec 2021 07:10:14 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Aswath Govindraju <a-govindraju@ti.com>, Wolfgang Grandegger
 <wg@grandegger.com>, Marc Kleine-Budde <mkl@pengutronix.de>, Kishon Vijay
 Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, <linux-can@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] phy: phy-can-transceiver: Add support for setting mux
Date: Thu, 2 Dec 2021 18:40:02 +0530
Message-ID: <20211202131002.12217-3-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211202131002.12217-1-a-govindraju@ti.com>
References: <20211202131002.12217-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_051037_517164_1CCCB914 
X-CRM114-Status: GOOD (  16.26  )
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
reading the mux-states property from the device tree node.

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
index 6f3fe37dee0e..cb91d0e94da7 100644
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
 
+	if (of_property_read_bool(dev->of_node, "mux-states")) {
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
