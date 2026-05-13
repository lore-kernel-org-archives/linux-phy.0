Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DC2DCD4F3F
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 22:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CbQhVlXc+4CiUSdXO1kgHTiQmv1czDDGauFLohPukNo=; b=pPIXhIX42ZRwvT
	HesXVZUqtT90Ay8qNR2s9FQuxdYu4rsA0Zx+gWfdo2pYJ+yJCNZWxWiR9wJTa3SbWXCkeMtTcfH7U
	7lDeOg4Oz9t+FM1S79ulmxWTU2TlPDZEjqS4disFYsEDMOYGzsM90O/yaIAHN5ZMiAySgz+JbECDq
	UX4vU5B7wLhIdujZarZuDYHs4tCEqIgbfLJll/U+QC+MKwuhy1pb7L9XoVFF+U3UcJTklXD7ozr9t
	AZAUR/g3KYjeewxqoqGAISjL6QX8OK29O6Lujzcvo4AKcP6Qw018cbbIO8U6asYsgl0m+pm8N0AK0
	hqZkYI5yuS2F/hmMKV3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgD-00000003t0X-1768;
	Wed, 13 May 2026 22:03:49 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgA-00000003svu-1NiP
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 22:03:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778709827; x=1810245827;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gy1uI67ch6VNJy85J226jiXi1gtzpJYr85LZJvbDvLQ=;
  b=lkFsOga3p4JJuM+MsV1CcxZLwRCcFOzbA7JmceSk+hgK1elRmIzxd6XP
   IZIdpW4MlI4/80ViQUxVmpS4Z8We2fQvm4Dg+LBIxuTHl05WepVAIYL5w
   Q1uEzIazVXgCihuizjETJqQtHXLDQ7kTyNmIzSg4teIfk8gxxkcHmlOdB
   PZiFUPxnqAY/zPvxK2D4slaINB/Sd9UT5qR4zBWXbdYbPkNqhI7Gi6Icw
   xhtcHYGrH7baZ5C286JjJ97+o1OBVWKijxYfqNwX29nfJkj8G5sXZ9vxB
   F7JP8NG+BKLymokDbUMsZjqPC3CzbLlhC1z9I2TSYlrdE/O3JZXZd9BrG
   w==;
X-CSE-ConnectionGUID: lh0UVUisSu+NOAfj4mSC9Q==
X-CSE-MsgGUID: vM2dIPpFRyebYxqBfNkR0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90749935"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="90749935"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 15:03:46 -0700
X-CSE-ConnectionGUID: 7kTdIxVUSbqu72h617A84Q==
X-CSE-MsgGUID: fRbaHHhgRzmHjPYNUkV/Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="237224945"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa006.jf.intel.com with ESMTP; 13 May 2026 15:03:43 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id A93ABA1; Thu, 14 May 2026 00:03:38 +0200 (CEST)
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
Subject: [PATCH v5 6/6] phy: phy-can-transceiver: Drop unused include
Date: Thu, 14 May 2026 00:01:31 +0200
Message-ID: <20260513220336.369628-7-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
References: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150346_411397_53EC9F98 
X-CRM114-Status: UNSURE (   9.04  )
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
index 30330499585b..75dc49e75ca0 100644
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
