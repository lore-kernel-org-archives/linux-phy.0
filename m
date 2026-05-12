Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A62E6CD4F24
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 13:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2u2wccySTXn0M1k2YtFxkFimlwOfwC5bDvzi95eKDEg=; b=NNTTQC+9gxpw5q
	DAU29POl5jlOQxEcGYOmB4rB4S1iwSXrLbXjNmYBAeHutacR1qw7dXsm053U0uSYe1O/jIUI+87eZ
	QJCdntpuHbGWN8IQvFXI1s3/c4xq0KaUwCkO71+q6enR/ovnN3Jk1t8TAQyEJbP0swJfldb5VVI/2
	OOS2CemSohgMGv3mhxYCtW9zqESLh+KcI0O6mnX6pVxIQChEOEiqMehg5uC6WC0Xv+KBMPe1HrxTZ
	qSoEv5tx2Pqg45U+B5NZO7Ipkj6Bl2hBxt79mQAffwVWXvAjjyMpY70exbYlNIksfeiooWYNwFmZv
	e+4IlRTaehtxLpW/v78Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqI-0000000Gm5z-1dsO;
	Tue, 12 May 2026 13:08:10 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqD-0000000GkUR-16s7
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 13:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778591285; x=1810127285;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=4qMUuS6h5tFlP1suIW3fbkhM5BGhQH4sMAaS62b/lnw=;
  b=oE1bab4WsnIpYFPTb3dHAznaubpfvjK7Bya1cUbhH8TwdFp+QED3vA/4
   Mex7ZAXQ1TR3xIK482GhCbHaPKK6QYyYEY6c9jIqp/1lt6x+O7p3FhNUv
   jKfefLuEww2KtaLLRCbkO8mpsAZaB1L1efwIILWT3zounFJY8TnTXEdiP
   ufklyJw/htLDJ4KUxNmCztVwmXLf4svsGBhjNxyLmeklNI4fMSKwxv/Q4
   KNzg+tnAeQodavtyq5yRzxxU6mcsXDNKvH9U9Y/IWhUZSrts7izYXtRZh
   b3IuRpdcX8VSfmznmaYKUniY/VQuz5vPGfN2quhFxPziY6YWkGZ+/nSZ1
   w==;
X-CSE-ConnectionGUID: 4gGeXNhUQYSlzdTfp2jv0Q==
X-CSE-MsgGUID: LgHahjswSieRX3qbGndNaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="83351808"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="83351808"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:02 -0700
X-CSE-ConnectionGUID: RDmrtmE8RCiVomwOCGEuRg==
X-CSE-MsgGUID: 2anfmBf/T9ul3t+yFab0jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="236903550"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa010.jf.intel.com with ESMTP; 12 May 2026 06:05:59 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 81DBDA1; Tue, 12 May 2026 15:05:55 +0200 (CEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Peng Fan <peng.fan@nxp.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v4 5/5] phy: phy-can-transceiver: Drop unused include
Date: Tue, 12 May 2026 15:01:53 +0200
Message-ID: <20260512130552.272476-6-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_060805_310663_80834A27 
X-CRM114-Status: UNSURE (   9.54  )
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

This file does not use the symbols from the legacy
<linux/gpio.h> header, so let's drop it.

Reviewed-by: Josua Mayer <josua@solid-run.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 973cc7ce651f..534a4fc482aa 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -5,12 +5,11 @@
  * Copyright (C) 2021 Texas Instruments Incorporated - https://www.ti.com
  *
  */
+#include <linux/gpio/consumer.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/property.h>
 #include <linux/module.h>
-#include <linux/gpio.h>
-#include <linux/gpio/consumer.h>
 #include <linux/mux/consumer.h>
 
 struct can_transceiver_data {
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
