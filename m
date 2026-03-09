Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB17F41818
	for <linux-phy@archiver.kernel.org>; Mon,  9 Mar 2026 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpql3KwkKJMsRVo2Ir4972LTj6rArEF556pJk5ZF9l0=; b=XM5PqnlV10+6m/
	wKk9DyIHljGtjaxHgcVOC/QrU3j2u9XDBCqIlACVR7R7EICZBpPwqPe2Qo1PBHWls2o5jEXvF0LEC
	XYPnrR38eOUJgQ6Aabhm7Cyzl0oubqRZf5o9qQC/8T1H58Y/7XRgMIjsdGUI0IkNY7K4mg3BCcplR
	nH3RMxMOOHspHN0SyXz/yDR1IXaW/6JZfh3QZR7TfLqU9adEqXaIkJSnNrMKMLrpAmlckvdrzeCoj
	PSGOsEf+v0cXt8T83pOhLexP+Tgz0Z0pHYXIRdbMWVNPyjOiYl+eabGdl8sF9UP61lbawHv2PsoAy
	vTTt9oVJPbUBwIOhx/4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze0C-00000007maQ-0HCw;
	Mon, 09 Mar 2026 17:02:44 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vze0A-00000007mZs-2cRo
	for linux-phy@lists.infradead.org;
	Mon, 09 Mar 2026 17:02:43 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4853510b4f3so23823675e9.0
        for <linux-phy@lists.infradead.org>; Mon, 09 Mar 2026 10:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773075761; x=1773680561; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=D3yVBrm0NO/kyrzRjsGOfgFPVCo6bv+SX/DHuerXF6U=;
        b=d7s5n9PUSbd+k9xmGFeNwkCJTAWjZxab0Y1WYTT4DV8T8eBXSZxTY0646lsZcqpZJO
         WQwwzjWPHZiBHPDnvatHkyrG+snuzFTpnirPg7L0NfTtVjmJl7zrViEQzIDI6Ll3g25X
         C4t8FgjxjP/iQkNDLvmyUpurEA09rDwfUM1xq4ATY8kUkZrIo+NMn7kTz8yf0t09uFKh
         wMHKHQF4ZjE8fbQkx7uAAP3LMyi1l7GYL1HzJQeMSqPHfeuErMRrcQ1VW9uH8P4HHMxf
         Utm7JkTLfDXJszrFffYtaGLV4OO82+Jmz1nTg2HH15yReFaugtcntZhSQZO2Xy/IkvQ8
         h2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773075761; x=1773680561;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D3yVBrm0NO/kyrzRjsGOfgFPVCo6bv+SX/DHuerXF6U=;
        b=pxvyg3tdKBd5WZC6uP4iiBJT9ePdCardJw/fx4DLcncJlEAYF/uoFGkvl18bZGd4R5
         P0HFT6DD+Juyg6LHGIRoSKgMpuvPidTmQcJRWIc8prP2IeRq/yRxIRr9pgCHi+nQUMvk
         54eDGsbCaLCp2gOwDqMeK1khjc9N+4H06OAG9pmwWYqqLfCH4/pDdaCWJluUNdCiC/dP
         oV4UUwQI7J4teYAMnPZYZX7G9XD4xCb9eLD7xBseB8AAJeXsXT/A85Jo84YRB435PzTX
         ST+/c9cO1HY9pvBewlHJRvexG7rDXFTJyAK/DtVcZznNH11/LY/WVHZPJuf1WivRdOiO
         wBGQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+585uLoRys6ilkO4vnwkLLzFKzkRNo4tvMWbNN59VGS8JECqpFFeapa9tDSHDwgncQ20WS/a85jg=@lists.infradead.org
X-Gm-Message-State: AOJu0YxmD/VKn1D2Nl/TqcHf8ykFQKOdGBnxReSMWsn4K/f1AiJEnAze
	boS+ufkO90XL0n3ZupQUQ+YB3mQ4z7g0DiVYd3OgLkxnC2DHQwlU3bh8
X-Gm-Gg: ATEYQzzlbRh8bkicMi5JVtO1geKxQ/xgpQmcrnW1+495Py9MzpDmeU5K9oQ3NCnsTSr
	w1nASpcjSJYRJ8LI62q9EV3McWiIoH0alRu2NSNSP7SiWC1jFy55Ep2zy+2E2LNIJNTm5E3mZgz
	tcNbkfbqTWngS9zp4c1SxOmq02zdN+haal1iz2MhCgMSTpQkSUrIyOK+NP/VZSZ6XkxjGNlc1FN
	LL+2uI3ry0EHhu4MlnL9hdgVsgtHS0aPq7Tm8WwlcLTU3C5Xnfx3A/xpN7IW9Fbz7kDo3DlK0KN
	0LlZ8Nun54nY91MpHd5V94gIvK+g+ixPQTUTmbAGRcHyYZmpjKA5JU5bNis5rf4xuykYc9wesqn
	vG8UCob7yWJKqpW2fI+8FYU+72SIPbEJxiz1K6010C6aTS8petkMl3zOYI7zasToHLcToAKV2Pw
	/3u4Ei6jobdPjUwPJosbVVN5eWtN5hGsaNYnpPTou/EgvrhQmrLJQNDCM9O9FOFLVOaUmPImb2f
	psqNW0MciW3+94QML0PMSsuvLwrp6LvCy6GyAeRFehSpdMdcFGPye5QQr5fH7BpqMxNHaEpww==
X-Received: by 2002:a05:600c:3b0c:b0:477:5b0a:e616 with SMTP id 5b1f17b1804b1-485269188admr199557965e9.5.1773075760400;
        Mon, 09 Mar 2026 10:02:40 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d? (p200300ea8f46ce0005f97f3c5f9a2a3d.dip0.t-ipconnect.de. [2003:ea:8f46:ce00:5f9:7f3c:5f9a:2a3d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541aacd81sm4246225e9.14.2026.03.09.10.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 10:02:40 -0700 (PDT)
Message-ID: <8ea1a929-33b8-49ee-afe6-355f5a7d2bd1@gmail.com>
Date: Mon, 9 Mar 2026 18:02:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [PATCH v2 net-next 1/5] net: phy: move mdio_device reset handling
 functions in the code
From: Heiner Kallweit <hkallweit1@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 David Miller <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
Content-Language: en-US
In-Reply-To: <9d5724bc-e525-4f8f-b3f8-b16dd5a1164e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_100242_698850_5A8D9C67 
X-CRM114-Status: GOOD (  17.21  )
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

In preparation of a follow-up patch this moves reset-related functions
in the code.

Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
---
 drivers/net/phy/mdio_device.c | 162 +++++++++++++++++-----------------
 1 file changed, 81 insertions(+), 81 deletions(-)

diff --git a/drivers/net/phy/mdio_device.c b/drivers/net/phy/mdio_device.c
index b8a5a183819..da4fb7484c7 100644
--- a/drivers/net/phy/mdio_device.c
+++ b/drivers/net/phy/mdio_device.c
@@ -24,6 +24,87 @@
 #include <linux/property.h>
 #include "mdio-private.h"
 
+/**
+ * mdio_device_register_reset - Read and initialize the reset properties of
+ *				an mdio device
+ * @mdiodev: mdio_device structure
+ *
+ * Return: Zero if successful, negative error code on failure
+ */
+int mdio_device_register_reset(struct mdio_device *mdiodev)
+{
+	struct reset_control *reset;
+
+	/* Deassert the optional reset signal */
+	mdiodev->reset_gpio = gpiod_get_optional(&mdiodev->dev,
+						 "reset", GPIOD_OUT_LOW);
+	if (IS_ERR(mdiodev->reset_gpio))
+		return PTR_ERR(mdiodev->reset_gpio);
+
+	if (mdiodev->reset_gpio)
+		gpiod_set_consumer_name(mdiodev->reset_gpio, "PHY reset");
+
+	reset = reset_control_get_optional_exclusive(&mdiodev->dev, "phy");
+	if (IS_ERR(reset)) {
+		gpiod_put(mdiodev->reset_gpio);
+		mdiodev->reset_gpio = NULL;
+		return PTR_ERR(reset);
+	}
+
+	mdiodev->reset_ctrl = reset;
+
+	/* Read optional firmware properties */
+	device_property_read_u32(&mdiodev->dev, "reset-assert-us",
+				 &mdiodev->reset_assert_delay);
+	device_property_read_u32(&mdiodev->dev, "reset-deassert-us",
+				 &mdiodev->reset_deassert_delay);
+
+	return 0;
+}
+
+/**
+ * mdio_device_unregister_reset - uninitialize the reset properties of
+ *				  an mdio device
+ * @mdiodev: mdio_device structure
+ */
+void mdio_device_unregister_reset(struct mdio_device *mdiodev)
+{
+	gpiod_put(mdiodev->reset_gpio);
+	mdiodev->reset_gpio = NULL;
+	reset_control_put(mdiodev->reset_ctrl);
+	mdiodev->reset_ctrl = NULL;
+	mdiodev->reset_assert_delay = 0;
+	mdiodev->reset_deassert_delay = 0;
+}
+
+void mdio_device_reset(struct mdio_device *mdiodev, int value)
+{
+	unsigned int d;
+
+	if (!mdiodev->reset_gpio && !mdiodev->reset_ctrl)
+		return;
+
+	if (mdiodev->reset_state == value)
+		return;
+
+	if (mdiodev->reset_gpio)
+		gpiod_set_value_cansleep(mdiodev->reset_gpio, value);
+
+	if (mdiodev->reset_ctrl) {
+		if (value)
+			reset_control_assert(mdiodev->reset_ctrl);
+		else
+			reset_control_deassert(mdiodev->reset_ctrl);
+	}
+
+	d = value ? mdiodev->reset_assert_delay : mdiodev->reset_deassert_delay;
+	if (d)
+		fsleep(d);
+
+	mdiodev->reset_state = value;
+}
+EXPORT_SYMBOL(mdio_device_reset);
+
 void mdio_device_free(struct mdio_device *mdiodev)
 {
 	put_device(&mdiodev->dev);
@@ -108,87 +189,6 @@ void mdio_device_remove(struct mdio_device *mdiodev)
 }
 EXPORT_SYMBOL(mdio_device_remove);
 
-/**
- * mdio_device_register_reset - Read and initialize the reset properties of
- *				an mdio device
- * @mdiodev: mdio_device structure
- *
- * Return: Zero if successful, negative error code on failure
- */
-int mdio_device_register_reset(struct mdio_device *mdiodev)
-{
-	struct reset_control *reset;
-
-	/* Deassert the optional reset signal */
-	mdiodev->reset_gpio = gpiod_get_optional(&mdiodev->dev,
-						 "reset", GPIOD_OUT_LOW);
-	if (IS_ERR(mdiodev->reset_gpio))
-		return PTR_ERR(mdiodev->reset_gpio);
-
-	if (mdiodev->reset_gpio)
-		gpiod_set_consumer_name(mdiodev->reset_gpio, "PHY reset");
-
-	reset = reset_control_get_optional_exclusive(&mdiodev->dev, "phy");
-	if (IS_ERR(reset)) {
-		gpiod_put(mdiodev->reset_gpio);
-		mdiodev->reset_gpio = NULL;
-		return PTR_ERR(reset);
-	}
-
-	mdiodev->reset_ctrl = reset;
-
-	/* Read optional firmware properties */
-	device_property_read_u32(&mdiodev->dev, "reset-assert-us",
-				 &mdiodev->reset_assert_delay);
-	device_property_read_u32(&mdiodev->dev, "reset-deassert-us",
-				 &mdiodev->reset_deassert_delay);
-
-	return 0;
-}
-
-/**
- * mdio_device_unregister_reset - uninitialize the reset properties of
- *				  an mdio device
- * @mdiodev: mdio_device structure
- */
-void mdio_device_unregister_reset(struct mdio_device *mdiodev)
-{
-	gpiod_put(mdiodev->reset_gpio);
-	mdiodev->reset_gpio = NULL;
-	reset_control_put(mdiodev->reset_ctrl);
-	mdiodev->reset_ctrl = NULL;
-	mdiodev->reset_assert_delay = 0;
-	mdiodev->reset_deassert_delay = 0;
-}
-
-void mdio_device_reset(struct mdio_device *mdiodev, int value)
-{
-	unsigned int d;
-
-	if (!mdiodev->reset_gpio && !mdiodev->reset_ctrl)
-		return;
-
-	if (mdiodev->reset_state == value)
-		return;
-
-	if (mdiodev->reset_gpio)
-		gpiod_set_value_cansleep(mdiodev->reset_gpio, value);
-
-	if (mdiodev->reset_ctrl) {
-		if (value)
-			reset_control_assert(mdiodev->reset_ctrl);
-		else
-			reset_control_deassert(mdiodev->reset_ctrl);
-	}
-
-	d = value ? mdiodev->reset_assert_delay : mdiodev->reset_deassert_delay;
-	if (d)
-		fsleep(d);
-
-	mdiodev->reset_state = value;
-}
-EXPORT_SYMBOL(mdio_device_reset);
-
 /**
  * mdio_probe - probe an MDIO device
  * @dev: device to probe
-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
