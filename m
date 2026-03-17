Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1ADFFF6E69
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 20:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TnOl0H8co0vLEoXkfWm2Tr1+DJ+jA2eDn0f83wwuAM=; b=SrR1JDpZb83U+D
	HI+Ps3zx7tGtryTeHM6MoRGd42M5Aq/4lJ8Iyq+V1nX+klkv33eQCabCTJUhsz8TmGC5gaKlxJZx4
	SC+OdZLwdXuTFS9sHz8znoxUTVnuFwuSfYyUo5jBQBxERDm8/qv9kYsC5/2EFW4dhZmjM9JUOrNWV
	alcwVu+QodxRv2szX5LNmDsqfbcj3HeiqDadqWO+UjaHLqXhZhw+JiKzzMEyUq4aOveQhtPZYstXg
	jlaHy2DDEKAYkN1jqB+7DkNnCLwLAgP0XZDme/JPjaaERHyJBUkW+RNJ4UOXkHkgfcvkkE3PqldG9
	Byy8aSr4xa4dvNLjN9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2b3c-00000007CeQ-2NpQ;
	Tue, 17 Mar 2026 20:30:28 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2b3a-00000007CdD-11vr
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 20:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773779426; x=1805315426;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=1oTSEU4Uqt28G1kfDw6s8yAthnq4oOe8zjR0wi9b7S4=;
  b=nbNn2En/MtQMDy46f+AN5Lbl3mkeKiRC7TgENCCWzijfgrIhPSr6scOR
   YGhZZpvXEhy8ajtqqXFZHizIcsXaEbiLhKIB+c2qHe7AVBntIHOLoYLAZ
   BGPwOZGlRODo17ZuLGZ+gyHY7DInM45KQ9CB8SswqVOXPf80dcZCoxkHw
   y3CfqHjrI5eiD2NMFZl7EdzcIjgAUQl0E3o2UGAT7f+U7s+qrt1qBMXSN
   Yo7ZR4IrJgCjqzas8pBRdw9aDpzxAh27MdxXmQNzU9/E6eQkkMJ59eJLu
   KH5y8vqmVoGwZz7/u+b0DdEKpU/BoNasTxemT4ITNqh5nzZlkPO2uG+aq
   A==;
X-CSE-ConnectionGUID: UHR9vcwpRPGxIknInh6jww==
X-CSE-MsgGUID: 7uHocE49SDyF++FDWBgncA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="77433954"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="77433954"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 13:30:24 -0700
X-CSE-ConnectionGUID: WrrQjR7JQ5KV8yJfGSa2fw==
X-CSE-MsgGUID: US82iz2RSRGV6bD0XvMUxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="222434439"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa008.jf.intel.com with ESMTP; 17 Mar 2026 13:30:22 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 11D759D; Tue, 17 Mar 2026 21:30:20 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v2 4/4] phy: phy-can-transceiver: Drop unused include
Date: Tue, 17 Mar 2026 21:27:30 +0100
Message-ID: <20260317203001.2108568-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_133026_371860_07061A2B 
X-CRM114-Status: UNSURE (   9.24  )
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

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 21b0406d1a09..8e250039c183 100644
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
