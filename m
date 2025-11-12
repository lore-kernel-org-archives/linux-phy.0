Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0A78CCF9F8
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 08:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N+jBgB/p8eSeIXX9kTbUKEXHytltMuE38u94h7Xl0HY=; b=LC6r5/MkVt7eDE
	jOclBSgL0N6HN4WWlg1KK9EuTV8Jfxw/Nx9sPcNziOsmSl1MOM/9pwGSNAbVq/bLZ7zdaKmsklVNY
	grR8r1f2biR8Q7u4uKrek7gOqZJ/EPweM2s28Lovy+apzmVl5MqHxVcVF0L12qmQqdaqLAq16WVzq
	1+G/F4mBdqQvhpZdELLcy5K3YCU7ZjaU4Sl6UbZm7CflFKeZRQt3DWbi2gisMN6v8I8cllI/mUGiZ
	y6zf2hBtUYXX/TSEYu3F/sHM2soYjO7ptde8b6VOYb1k6vLVKeXyjaGiW9DzMspDmxWmxOj5SjGqe
	u/SmdHmIyFPQpmVauxIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6ac-00000008Oit-377W;
	Wed, 12 Nov 2025 08:52:30 +0000
Received: from mgamail.intel.com ([192.198.163.17])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJ6aa-00000008OiZ-3mDn
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 08:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762937548; x=1794473548;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=/HupXrEtviHKeYqFWD2xOuGaa1w8dBZFeGJomcGBZZ8=;
  b=bcoRBpPgE4DYQcvDPEkMH647anNbhK1oA457OuqBJG78fnn7Lb0DgCR5
   nWehVboYhhCfZj1SK0THbPBf2LQRpEIlVmmq+8DlJUySv4lId+oxaBhJF
   bD4yYPuTIgZo0nkvpC3mIjX/IZ7hFElyPW877c3w4s2tw3XCxqqpeKmdJ
   vXte7T1RsI/cZ+pQTdJEetXJG8jxeUI7WHXO7EPb1qsDhPJ4IwmUHb8uc
   iQeNbXff/D0LhfmEp+5/RhU/7RnibMPJyE7LvP8ClWdD5QFCopH9k17k0
   Vkcip2NZGWffBYFGNkjt/7BCG3OZ5nF77IDnl3o5uztdqLCac7jCTVvuv
   Q==;
X-CSE-ConnectionGUID: UZ5bP8SnT5ae2dN+Ytll8w==
X-CSE-MsgGUID: /VXuDLBGR0qQpHf4lIs/LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="64900544"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; 
   d="scan'208";a="64900544"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2025 00:52:26 -0800
X-CSE-ConnectionGUID: PlNl9rPYTWWXs8v5DozB/g==
X-CSE-MsgGUID: Yx4G9kIMTnG3StpM5ARJhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; 
   d="scan'208";a="219894591"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa001.fm.intel.com with ESMTP; 12 Nov 2025 00:52:25 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 4E2F295; Wed, 12 Nov 2025 09:52:24 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Inochi Amaoto <inochiama@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>
Subject: [PATCH v1 1/1] phy: sophgo: Remove unused of_gpio.h
Date: Wed, 12 Nov 2025 09:52:20 +0100
Message-ID: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_005228_948055_4DD4A35F 
X-CRM114-Status: UNSURE (   7.56  )
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

of_gpio.h is deprecated and subject to remove.
The driver doesn't use it, simply remove the unused header.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/sophgo/phy-cv1800-usb2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/sophgo/phy-cv1800-usb2.c b/drivers/phy/sophgo/phy-cv1800-usb2.c
index 64f8e37b4b52..6fe846534e9c 100644
--- a/drivers/phy/sophgo/phy-cv1800-usb2.c
+++ b/drivers/phy/sophgo/phy-cv1800-usb2.c
@@ -11,7 +11,6 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
-#include <linux/of_gpio.h>
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 #include <linux/regmap.h>
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
