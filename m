Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BF0CC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 15 Dec 2023 06:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YVwgkR/Ab3idxe7TZW4LdI6pcfVzvGwR3j+NzSFMec8=; b=teP82fDBux3s+L
	KwOl8Sx5cpdEa8KDejJ/w9Em8QroBvRRL80X8hwnj/4zSmVcJejbWEZu7r+DeyYpDc3FD9nrR94No
	EIJiyYsq/qQsGPdFaYY/Gx0sERSdqmc1UFhuCwLNCTmIYSmRN3i+nHvyLbc5qYbpRG4HiY6QhQ3/8
	9jRgiDNXc78nas7NyCnEpzJJbJvnEQin18BX4S1LrHiQ9vxrH2+4LwHx0jDRBNPElG79VgsleWgTz
	EDZv+gCS7q4h4wTZbHGuXDxlalGlL9HaY83oOrRIHWw12g25A9HzdCL2yg0uPdhNJFBQv8JvbHI7h
	i1WkH/PadyZKHk9vFxwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE1O1-0029Oo-36;
	Fri, 15 Dec 2023 06:09:25 +0000
Received: from wxsgout03.xfusion.com ([36.139.52.80] helo=wxsgout04.xfusion.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE1Ny-0029Kg-2H
	for linux-phy@lists.infradead.org;
	Fri, 15 Dec 2023 06:09:24 +0000
Received: from wuxshcsitd00600.xfusion.com (unknown [10.32.133.213])
	by wxsgout04.xfusion.com (SkyGuard) with ESMTPS id 4SrzGp1xjXzB1wtN;
	Fri, 15 Dec 2023 14:05:38 +0800 (CST)
Received: from localhost (10.82.147.3) by wuxshcsitd00600.xfusion.com
 (10.32.133.213) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Fri, 15 Dec
 2023 14:09:00 +0800
Date: Fri, 15 Dec 2023 14:09:00 +0800
From: Wang Jinchao <wangjinchao@xfusion.com>
To: Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
	<mkl@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
	<kishon@kernel.org>, <linux-can@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <stone.xulei@xfusion.com>, <wangjinchao@xfusion.com>
Subject: [PATCH] phy: phy-can-transceiver: insert space after include
Message-ID: <202312151407+0800-wangjinchao@xfusion.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Originating-IP: [10.82.147.3]
X-ClientProxiedBy: wuxshcsitd00602.xfusion.com (10.32.132.250) To
 wuxshcsitd00600.xfusion.com (10.32.133.213)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_220923_045626_021B1D61 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
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

Maintain Consistent Formatting: Insert Space after #include

Signed-off-by: Wang Jinchao <wangjinchao@xfusion.com>
---
 drivers/phy/phy-can-transceiver.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 840b7f8a31c5..ee4ce4249698 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -6,11 +6,11 @@
  *
  */
 #include <linux/of.h>
-#include<linux/phy/phy.h>
-#include<linux/platform_device.h>
-#include<linux/module.h>
-#include<linux/gpio.h>
-#include<linux/gpio/consumer.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/module.h>
+#include <linux/gpio.h>
+#include <linux/gpio/consumer.h>
 #include <linux/mux/consumer.h>
 
 struct can_transceiver_data {
-- 
2.40.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
