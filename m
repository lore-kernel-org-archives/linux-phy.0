Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0D4E68973
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 10:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=185QhRccA2UTWkyzc9ofgmKPaPNgJWLWnzc4iY+6gQw=; b=tlYpZJQ1Mmh9xE
	KxwQrqGtQdCwCvdLPMha6Ij4EYlyFwl7xdi2yu8w3swhRiA5jwmFlJVX+uUNbXucKTorWfPrzuIaN
	XzBwdV0gcS7o4PoUOE9ScVuXN7Lwd+7qgxZYLSJuBIj/UcFLNwE3ucaa4WPwyJTNvCYBOOF/CWDkg
	y9Q/AhsfW7YxZxlhDZhp1nVq9rYuleAqYlwXjIZps5WvKGoY993hxELDQu1I4jijTUC9FUmLaEqEY
	Pznc/BqCLYnPyk+RqSHewkf4U6r52169kEWdFLpu4hqwDMg9rT4Kwq4WFOMMDOrsd5OLeqKbz/ays
	t8qCiRaWXho8IS+yphzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Sgj-00000003IRE-1h21;
	Thu, 31 Oct 2024 10:46:01 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Seu-00000003I5c-0WtM
	for linux-phy@lists.infradead.org;
	Thu, 31 Oct 2024 10:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1730371448; x=1761907448;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=6jafkym8hwm2gs6Wy4PAFuWVy2CuiroeKnaHE9SQcVM=;
  b=gqCyoXXdnODJSDgj8+KUYdVi94c6YzRWRVmUHBYK/gcDUBUCV67KdMC0
   a6VgTBKi+Aw8qIObfkq+g0He9/tYcg9J7Miotr+n/gZ+nrEEpEkFJSEry
   mZLoc3lOPKEozmbc5UhBgOrAnTZCBi0m722q+Tezfg3m4JIPnxaL7uKc8
   X80WF6PFs0gOXpY+1UiTKGSq4mRfTMYcbabbmWrQixmvGoI7k0tyySR4K
   zBt7xs/dIhZMGLzuDNwx1SD4PBf3sGE7s4y8t18ITgKmEiSBy/9OiwdXL
   oq+FQBcR7Htmcvi3zHRPE5jci7Vie+qiBKBlDXWHknPUkgThKB8bfn1H8
   g==;
X-CSE-ConnectionGUID: SqN0vK28Qwqlqn4/XfLecg==
X-CSE-MsgGUID: 691XZ2naRkeTratZcAHFrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30056962"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; 
   d="scan'208";a="30056962"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2024 03:44:07 -0700
X-CSE-ConnectionGUID: YcB9MRHFRG+DoyYG0BRcCw==
X-CSE-MsgGUID: wLzs5UcLTziR1k9FCt2y6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; 
   d="scan'208";a="82746439"
Received: from black.fi.intel.com ([10.237.72.28])
  by orviesa006.jf.intel.com with ESMTP; 31 Oct 2024 03:44:04 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 2B17A17D; Thu, 31 Oct 2024 12:44:02 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [PATCH v1 1/1] phy: HiSilicon: Don't use "proxy" headers
Date: Thu, 31 Oct 2024 12:44:01 +0200
Message-ID: <20241031104401.2454179-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_034408_238279_CFE71F4A 
X-CRM114-Status: UNSURE (   6.67  )
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

Update header inclusions to follow IWYU (Include What You Use)
principle.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/hisilicon/phy-hi3670-pcie.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/hisilicon/phy-hi3670-pcie.c b/drivers/phy/hisilicon/phy-hi3670-pcie.c
index 0ac9634b398d..dbc7dcce682b 100644
--- a/drivers/phy/hisilicon/phy-hi3670-pcie.c
+++ b/drivers/phy/hisilicon/phy-hi3670-pcie.c
@@ -16,15 +16,20 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/bits.h>
 #include <linux/clk.h>
-#include <linux/gpio.h>
-#include <linux/kernel.h>
+#include <linux/delay.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/io.h>
 #include <linux/mfd/syscon.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
-#include <linux/of_gpio.h>
+#include <linux/of.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/types.h>
 
 #define AXI_CLK_FREQ				207500000
 #define REF_CLK_FREQ				100000000
-- 
2.43.0.rc1.1336.g36b5255a03ac


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
