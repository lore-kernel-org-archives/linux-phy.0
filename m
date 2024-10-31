Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FC02E68973
	for <linux-phy@archiver.kernel.org>; Thu, 31 Oct 2024 10:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BMc8YFPgpUCTtdyzSwZZdCCJ9aCkgJsb3j23J4tyOxw=; b=ah1CriWbvoIuV1
	QYCK3qQvMa8C7LHwAEFDLJ0zUyfHJK666Oid35C5YmSqLD86tXNwMwKP0QpBn3qxZUqwxPRZNIesv
	5jRJEplZt4JyBU0gJCyEIg+1/R2tfOxTJdJdHhuAM8a+D21RzBYhlAdfh4k33A+Ig0g0lLl5Haa8T
	ZIifRe3T/oYlCRe3JpBYUOzpL/uFlVHEIu3acvqSutNocaa6Mm3RNOePCToCIO6yVWPrST9RUEoVj
	3FTVH+POX2jR8IkSZUhL/8q6681mrphI49LHrfl95jdNQJfFG6Ti/GW7iuMuZinLyy7CJAb5Lws/e
	Rn83i2Cz6Nd1ffqY1DvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Sjz-00000003Iy7-3nFV;
	Thu, 31 Oct 2024 10:49:23 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6ShI-00000003Idm-1zqF;
	Thu, 31 Oct 2024 10:46:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1730371596; x=1761907596;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=6PfFS6UMQ7cHAb8+W0ohRERtD1jmi9haCx++tPkMiPo=;
  b=ZXI3izTCQowZc57qEr+3mTRHjgTvnAtg+fX/yyVFleIOlP3TnGnQ1hnf
   gPKmKL8QRR3q2zBX1SReybCmLumdrpZlSkY4TZGpXya+S/qCMzUYJu7fq
   7VR3aOWa+Bycah0vdTccJksFkVYL60v5bv1t4htD1kH3dG+gH5c0EjdGN
   FxkQfXhCcbPmwjZOry57KXDhuvVpufr18w5WFJ1fa4BOlJPrbm4L61opg
   KUrIv1N3AzAG8LIbd845od3Cd6cHYrPHMAISCUseuquCdutRu9T2sNRfS
   +RgkFsRwj2ZeJJUFKU8kkKUi3QZdrOehV9bK0VItD/z4l7o8IgEZjera0
   w==;
X-CSE-ConnectionGUID: KxyX2V1YQaWuI48WW+YziQ==
X-CSE-MsgGUID: /yA1gmbHQmC2BNJDQloGJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="34032580"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; 
   d="scan'208";a="34032580"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Oct 2024 03:46:36 -0700
X-CSE-ConnectionGUID: wS9ww3noQ76p2kiP9/Y0Uw==
X-CSE-MsgGUID: d7gYKt+VTIKQBMX8fjg2Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; 
   d="scan'208";a="113442251"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2024 03:46:33 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 281A317D; Thu, 31 Oct 2024 12:46:31 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/1] phy: sun4i-usb: Remove unused of_gpio.h
Date: Thu, 31 Oct 2024 12:46:31 +0200
Message-ID: <20241031104631.2454581-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1336.g36b5255a03ac
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_034636_543093_C74FCDB4 
X-CRM114-Status: UNSURE (   8.27  )
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

of_gpio.h is deprecated and subject to remove. The drivers in question
don't use it, simply remove the unused header.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/allwinner/phy-sun4i-usb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/allwinner/phy-sun4i-usb.c b/drivers/phy/allwinner/phy-sun4i-usb.c
index cd159a71b23c..29b8fd4b9351 100644
--- a/drivers/phy/allwinner/phy-sun4i-usb.c
+++ b/drivers/phy/allwinner/phy-sun4i-usb.c
@@ -23,7 +23,6 @@
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of.h>
-#include <linux/of_gpio.h>
 #include <linux/phy/phy.h>
 #include <linux/phy/phy-sun4i-usb.h>
 #include <linux/platform_device.h>
-- 
2.43.0.rc1.1336.g36b5255a03ac


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
