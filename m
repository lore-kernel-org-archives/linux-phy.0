Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90520C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 12:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=REJNv7YbIXLJOz6Cy6YG2AtPPgETnunAUiwqIE0WjX0=; b=juzQ0prLZXCmU7
	iJ9mmQ/tmoLV12xYW2y/CyKMeIDFY18EUNWr2QN2j0UwIJprcKqaWyb2auMV+mdWGyts4p7X2LLAS
	ugkw5GN0HVw4GP+q69paMgGqTis5Fto5xBTOxmHwOqekDxN45DQOGegVI+OwVQPEviYzT6gCb6I1C
	JoWw9J5skZy9xlJ/YQnnh84/WPAU8mLnl7eHmbmvJAluxxKHXmSwxXBJRZHVxQzVMppmenXCw/M2o
	kt6TB/0835hhM43ZNcGDq7nzh43YPJoMwofh2Jz5YKjy1zNRqC2nXAtBKoF9hsporlc4SxyK3qk3m
	m6jNL4kJtqFnlId9Kktw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXaM-0000000GzDl-0OFz;
	Tue, 30 Jun 2026 12:29:06 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXaI-0000000GzD8-1QqE
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 12:29:05 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 7EA21C5CD59;
	Tue, 30 Jun 2026 12:29:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E730E6025A;
	Tue, 30 Jun 2026 12:28:57 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BF6B9106F17B5;
	Tue, 30 Jun 2026 14:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782822536; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=oNGP3sotdTmFK6A7nU9ncpG1ZNmDDoUD7AUxOXF4ib4=;
	b=HF5xdtt5CnsXpRvkJRSEkWxTm+7LOvlvuahtWUHVT6H6ITA4Fm/z2tOTeePwOy0bIan7yN
	Rarubp69V8BnNPsSU0yYZ8NiFiVzPKCv+S3pwkQq+v1u37buOW7Cmi41ZEyB2YAS79dIpY
	PK2crJNBg5oEQkNlt9vPrtAV8xxQSfr1SJwHnMzWpKWeIgFM38AFLMmq6kaTBPSWw97l9D
	gHJgmftbNn2yw3NKsF5hU14Gw9QLpqiseQEQxTNQC5nJqL3AfcvrtMm9nhYf9+zkkDfv8N
	WdMmOQIoejK0N9e0cyNJbaJUPm57dX1O728T3g5cUkBRLwcUUfPpbPnY91Ph9w==
From: "Thomas Richard (TI)" <thomas.richard@bootlin.com>
Date: Tue, 30 Jun 2026 14:28:46 +0200
Subject: [PATCH] phy: phy-can-transceiver: Add suspend operation for
 tcan1043
MIME-Version: 1.0
Message-Id: <20260630-phy-can-transceiver-suspend-resume-support-v1-1-6842c2d697e4@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAH62Q2oC/y3NMQ7CMAyF4atUnrHUBlEFroIYQuJQD6TBTqqiq
 ncnAsbvDe/fQEmYFC7dBkILK8+pYTh04CeXHoQcmsH0ZuzHwWKe3uhdwiIuqSdeSFCrZkoBhbQ
 +qTHnWQoGOsejsScT7xbaYRaKvH5j19vPQq/amuU/7vsHXyPrKpEAAAA=
X-Change-ID: 20260618-phy-can-transceiver-suspend-resume-support-de9f32852fb8
To: Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, richard.genoud@bootlin.com, 
 Udit Kumar <u-kumar1@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 linux-can@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 "Thomas Richard (TI)" <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_052902_734147_129DD36C 
X-CRM114-Status: GOOD (  16.91  )
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

Add suspend operation for tcan1043. It switches the PHY in Sleep mode, the
lowest power mode of the device. If a bus wake-up pattern or a local
wake-up event occurs, the PHY transitions to Standby mode, set its internal
WAKERQ flag and set the INH output high. In Sleep mode INH is floating.

The WAKERQ flag prevents transition to Go-to-Sleep mode. The only way to
clear it is to switch to Normal mode. So to reach Sleep mode, we firstly
switch to Normal mode, then to Go-to-Sleep mode.

Suspend sequence (PHY is off):

    Standby -> Normal -> Go-to-Sleep -> Sleep

Suspend sequence (PHY is on):

    Normal -> Go-to-Sleep -> Sleep

Signed-off-by: Thomas Richard (TI) <thomas.richard@bootlin.com>
---
 drivers/phy/phy-can-transceiver.c | 56 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 49 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 75dc49e75ca0..2bca1a173fcc 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -5,6 +5,7 @@
  * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com
  *
  */
+#include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
@@ -12,25 +13,28 @@
 #include <linux/module.h>
 #include <linux/mux/consumer.h>
 
+struct can_transceiver_phy {
+	struct phy *generic_phy;
+	struct gpio_desc *silent_gpio;
+	struct gpio_desc *standby_gpio;
+	struct gpio_desc *enable_gpio;
+	struct can_transceiver_priv *priv;
+};
+
 struct can_transceiver_data {
 	u32 flags;
 #define CAN_TRANSCEIVER_STB_PRESENT	BIT(0)
 #define CAN_TRANSCEIVER_EN_PRESENT	BIT(1)
 #define CAN_TRANSCEIVER_DUAL_CH		BIT(2)
 #define CAN_TRANSCEIVER_SILENT_PRESENT	BIT(3)
+	int	(*suspend)(struct can_transceiver_phy *phy);
 };
 
-struct can_transceiver_phy {
-	struct phy *generic_phy;
-	struct gpio_desc *silent_gpio;
-	struct gpio_desc *standby_gpio;
-	struct gpio_desc *enable_gpio;
-	struct can_transceiver_priv *priv;
-};
 
 struct can_transceiver_priv {
 	struct mux_state *mux_state;
 	int num_ch;
+	const struct can_transceiver_data *data;
 	struct can_transceiver_phy can_transceiver_phy[] __counted_by(num_ch);
 };
 
@@ -76,12 +80,28 @@ static const struct phy_ops can_transceiver_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static int tcan1043_suspend(struct can_transceiver_phy *phy)
+{
+	/* Switch to Normal mode, it clears WAKERQ */
+	gpiod_set_value_cansleep(phy->standby_gpio, 0);
+	gpiod_set_value_cansleep(phy->enable_gpio, 1);
+
+	/* Switch to Go-to-Sleep mode */
+	gpiod_set_value_cansleep(phy->standby_gpio, 1);
+
+	/* Wait transition to Sleep mode */
+	fsleep(5);
+
+	return 0;
+}
+
 static const struct can_transceiver_data tcan1042_drvdata = {
 	.flags = CAN_TRANSCEIVER_STB_PRESENT,
 };
 
 static const struct can_transceiver_data tcan1043_drvdata = {
 	.flags = CAN_TRANSCEIVER_STB_PRESENT | CAN_TRANSCEIVER_EN_PRESENT,
+	.suspend = tcan1043_suspend,
 };
 
 static const struct can_transceiver_data tja1048_drvdata = {
@@ -115,6 +135,26 @@ static struct phy *can_transceiver_phy_xlate(struct device *dev,
 	return priv->can_transceiver_phy[idx].generic_phy;
 }
 
+static int can_transceiver_phy_suspend(struct device *dev)
+{
+	struct can_transceiver_priv *priv = dev_get_drvdata(dev);
+	const struct can_transceiver_data *data = priv->data;
+	int ret, i;
+
+	for (i = 0; i < priv->num_ch; i++) {
+		if (data->suspend) {
+			ret = data->suspend(&priv->can_transceiver_phy[i]);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(can_transceiver_phy_pm_ops,
+				can_transceiver_phy_suspend, NULL);
+
 static int can_transceiver_phy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
@@ -145,6 +185,7 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	priv->num_ch = num_ch;
+	priv->data = drvdata;
 	platform_set_drvdata(pdev, priv);
 
 	mux_state = devm_mux_state_get_optional(dev, NULL);
@@ -247,6 +288,7 @@ static struct platform_driver can_transceiver_phy_driver = {
 	.driver = {
 		.name = "can-transceiver-phy",
 		.of_match_table = can_transceiver_phy_ids,
+		.pm = pm_sleep_ptr(&can_transceiver_phy_pm_ops),
 	},
 };
 

---
base-commit: a25d586f7f9e7f22e7e0350053c15924d28ed6ee
change-id: 20260618-phy-can-transceiver-suspend-resume-support-de9f32852fb8

Best regards,
-- 
Thomas Richard (TI) <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
