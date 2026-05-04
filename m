Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03B51CD3436
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 07:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdfQSFwwCBaNpx+fa8jP2zcaFkKD+VkujrncHkpiOSc=; b=pZ/xdL6o9xG6LF
	t8U+VQ6iKBAdCIQSkny5+HRJa0fu5PtW4QF0aoahPFOuG3QuhGrBaXbbRk6SOIL3Z2Mho/vNemDkh
	Ogpsc2x5zUvAF6g9q3/lUCil+rqIljh23vxT+lL2rqrdGNeUsPg+jWvbGavbuqFRPCVA+yvDJ9mTH
	UHGuxF8bJ0MBQqEa8+oO49Cl46DxaGTvdQW7W51J6jWrwngBb57g4rurWirr0t2Rm7qkbJZmfWU/W
	8Hs9gtZTazENV+k0fEoU1UnRj+FLaRR4CLzH7nARz+ZYK1N8Hg+TsQIQ4UJMVqIFAqWviXyOkM5gP
	MdtRV82znhx9R27DZ4tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIh-0000000CYch-3Bxz;
	Mon, 04 May 2026 07:01:07 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIf-0000000CYYt-1dsu
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 07:01:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777878066; x=1809414066;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vmfXkYj/cbNHIuC2J2arXddu7xxbUuXL5odOPc/oqgs=;
  b=IUnVojzQ8AMuCdiOGUsImY9rX747hxosIb3SPdEfEg8sigKQXsfkAUnj
   w0JqBsKTQvwSQY73DIfHpc5OH1wX8G8ilhrMdeuLX3arAEO13MY4Bt0Uu
   1jluYU4KkXjrp90hrLWY6ixyC6dnyzkP9YY0DxmgZjg7gbr5vLxab/z5e
   cC9neyumo2zl78vtXl+3gqjGYb19XKdo4GNtsv/SZlFS+x8QLgTsD5qY5
   GKI8r9k9jIH4TUznvZ5oIfWqxrLcwab3681ap4E2KMSTXLkuidd7lywcH
   44ekNKPc6wUo2eKhxScvxIVgnuT5JikIJa9oHqWz1tJ1RIDjaTOlX8zkf
   g==;
X-CSE-ConnectionGUID: mgkInhAhTbSqEh0mqCEBTw==
X-CSE-MsgGUID: n1ewOH+wSK6lZQ1h6uSWyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82344152"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="82344152"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 00:01:02 -0700
X-CSE-ConnectionGUID: Ji82LhtNSia3TD2t7c3YnQ==
X-CSE-MsgGUID: Yva7UI7zQPWcu65RAb89EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="240422853"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 04 May 2026 00:00:59 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 427439E; Mon, 04 May 2026 09:00:58 +0200 (CEST)
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
Subject: [PATCH v3 4/4] phy: phy-can-transceiver: Drop unused include
Date: Mon,  4 May 2026 08:58:55 +0200
Message-ID: <20260504070054.29508-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_000105_465122_C7157C43 
X-CRM114-Status: UNSURE (   9.30  )
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
index 238c7963724b..eeaad41ab924 100644
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
