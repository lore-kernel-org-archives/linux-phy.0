Return-Path: <SRS0=pdUw=JL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21D35C43461
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 14:06:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71C3061222
	for <linux-phy@archiver.kernel.org>; Wed, 14 Apr 2021 14:06:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71C3061222
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ygdlxdrl87++xfv3z7MKgETGdsU9Meq7qHBLqcIMNUc=; b=Q4Yu2ToMPS0NaOBc5s+61YUwH
	yF9T1DXoIMJXz54hzIzFpM5qWAak0ut0ZKpTjVlT62biYYZahD+htEemXylwllyq/xxk9ElWrVymL
	DQMG8ozpYJDhX7Zo/+qYr+ZGlwQWxmgJ2tQZ9Uc8uLWsakJY9lqY0YwDJxryVCwSqWFLD6+77+Db6
	Sgj+S+BKqDW0WxfAvpTqiiK85iwjL5kSLC8LSPLIDDBmH/3Qds9gsu26Eb9rpcBZZxEro3ptfTdNO
	6hwHZSKz00BK6XYFARaygG7eSngtx3KXYYaDl43Sd+mVw0XkldKxUQvM82ZDRVoB7F5vXVLhqk2Ov
	WF0/oulFA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWg9i-00Cqrx-05; Wed, 14 Apr 2021 14:06:11 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWg9Y-00CqqP-9X
 for linux-phy@lists.infradead.org; Wed, 14 Apr 2021 14:06:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13EE5uij012092;
 Wed, 14 Apr 2021 09:05:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618409156;
 bh=Ka1Qy+cOYe6V8+ih28qlwPxSBVP6axSVpbaQDyyCpW8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=Ny+VcP1QGW3QORuRtue5oaUxZ/4P4F3GZIbKhsqzvxLUjBT+YqLAKurqJQrn6eTFT
 yhELoyDWm3JPhyCkqhBpZpZ5jhuN77TlE2epR2WxFCRSu+ZEFMYTjhThYoreEPAwR2
 Ih1YNgvIseLF6nADGAPGjaBc5/jRDGjgLYR33aFM=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13EE5tUD119839
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 14 Apr 2021 09:05:55 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 14
 Apr 2021 09:05:55 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 14 Apr 2021 09:05:55 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13EE5LuE074247;
 Wed, 14 Apr 2021 09:05:51 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Chandrasekar Ramakrishnan
 <rcsekar@samsung.com>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, Kishon
 Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-can@vger.kernel.org>, <netdev@vger.kernel.org>, Vignesh Raghavendra
 <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Grygorii Strashko
 <grygorii.strashko@ti.com>, Aswath Govindraju <a-govindraju@ti.com>
Subject: [PATCH v2 6/6] can: m_can: Add support for transceiver as phy
Date: Wed, 14 Apr 2021 19:35:21 +0530
Message-ID: <20210414140521.11463-7-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210414140521.11463-1-a-govindraju@ti.com>
References: <20210414140521.11463-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_150600_703460_00E4DE83 
X-CRM114-Status: GOOD (  14.78  )
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

From: Faiz Abbas <faiz_abbas@ti.com>

Add support for implementing transceiver node as phy. The max_bitrate is
obtained by getting a phy attribute.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/net/can/m_can/m_can.c          | 18 ++++++++++++++++++
 drivers/net/can/m_can/m_can.h          |  2 ++
 drivers/net/can/m_can/m_can_platform.c | 15 +++++++++++++++
 3 files changed, 35 insertions(+)

diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.c
index 34073cd077e4..4807a1f69cc7 100644
--- a/drivers/net/can/m_can/m_can.c
+++ b/drivers/net/can/m_can/m_can.c
@@ -21,6 +21,7 @@
 #include <linux/iopoll.h>
 #include <linux/can/dev.h>
 #include <linux/pinctrl/consumer.h>
+#include <linux/phy/phy.h>
 
 #include "m_can.h"
 
@@ -1514,6 +1515,7 @@ static void m_can_stop(struct net_device *dev)
 static int m_can_close(struct net_device *dev)
 {
 	struct m_can_classdev *cdev = netdev_priv(dev);
+	int err;
 
 	netif_stop_queue(dev);
 
@@ -1536,6 +1538,14 @@ static int m_can_close(struct net_device *dev)
 	close_candev(dev);
 	can_led_event(dev, CAN_LED_EVENT_STOP);
 
+	if (cdev->transceiver) {
+		err = phy_power_off(cdev->transceiver);
+		if (err) {
+			netdev_err(dev, "error powering off phy, err=%d\n", err);
+			return err;
+		}
+	}
+
 	return 0;
 }
 
@@ -1720,6 +1730,14 @@ static int m_can_open(struct net_device *dev)
 	struct m_can_classdev *cdev = netdev_priv(dev);
 	int err;
 
+	if (cdev->transceiver) {
+		err = phy_power_on(cdev->transceiver);
+		if (err) {
+			netdev_err(dev, "error powering on phy, err=%d\n", err);
+			return err;
+		}
+	}
+
 	err = m_can_clk_start(cdev);
 	if (err)
 		return err;
diff --git a/drivers/net/can/m_can/m_can.h b/drivers/net/can/m_can/m_can.h
index ace071c3e58c..38cad068abad 100644
--- a/drivers/net/can/m_can/m_can.h
+++ b/drivers/net/can/m_can/m_can.h
@@ -28,6 +28,7 @@
 #include <linux/iopoll.h>
 #include <linux/can/dev.h>
 #include <linux/pinctrl/consumer.h>
+#include <linux/phy/phy.h>
 
 /* m_can lec values */
 enum m_can_lec_type {
@@ -82,6 +83,7 @@ struct m_can_classdev {
 	struct workqueue_struct *tx_wq;
 	struct work_struct tx_work;
 	struct sk_buff *tx_skb;
+	struct phy *transceiver;
 
 	struct can_bittiming_const *bit_timing;
 	struct can_bittiming_const *data_timing;
diff --git a/drivers/net/can/m_can/m_can_platform.c b/drivers/net/can/m_can/m_can_platform.c
index 599de0e08cd7..566ba25fb186 100644
--- a/drivers/net/can/m_can/m_can_platform.c
+++ b/drivers/net/can/m_can/m_can_platform.c
@@ -6,6 +6,7 @@
 // Copyright (C) 2018-19 Texas Instruments Incorporated - http://www.ti.com/
 
 #include <linux/platform_device.h>
+#include <linux/phy/phy.h>
 
 #include "m_can.h"
 
@@ -67,6 +68,7 @@ static int m_can_plat_probe(struct platform_device *pdev)
 	struct resource *res;
 	void __iomem *addr;
 	void __iomem *mram_addr;
+	struct phy *transceiver;
 	int irq, ret = 0;
 
 	mcan_class = m_can_class_allocate_dev(&pdev->dev,
@@ -101,6 +103,18 @@ static int m_can_plat_probe(struct platform_device *pdev)
 		goto probe_fail;
 	}
 
+	transceiver = devm_of_phy_optional_get_by_index(&pdev->dev, pdev->dev.of_node, 0);
+	if (IS_ERR(transceiver)) {
+		ret = PTR_ERR(transceiver);
+		dev_err(&pdev->dev, "error while getting phy, err=%d\n", ret);
+		return ret;
+	}
+
+	if (!transceiver)
+		dev_info(&pdev->dev, "No transceiver phy found\n");
+	else
+		priv->cdev.can.bitrate_max = transceiver->attrs.max_link_rate;
+
 	priv->base = addr;
 	priv->mram_base = mram_addr;
 
@@ -108,6 +122,7 @@ static int m_can_plat_probe(struct platform_device *pdev)
 	mcan_class->pm_clock_support = 1;
 	mcan_class->can.clock.freq = clk_get_rate(mcan_class->cclk);
 	mcan_class->dev = &pdev->dev;
+	mcan_class->transceiver = transceiver;
 
 	mcan_class->ops = &m_can_plat_ops;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
