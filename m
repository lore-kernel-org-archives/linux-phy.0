Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40CA3C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 16:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8uKhSOhjUtuEra4JXgDirhP4lf5BfuL8lsEe5z9ghk=; b=dwmYcPs04ItOuQ
	Ogh8Cw9VGQ8tqKFhcJKjabnkaSe/Gt719uqjXxJDiQ9jxKD7d1iUsXwZFiupqiXaWnwfG06tDw0Ju
	pF5ktgKOyo1CPKJwUV5BURh/Rr6Q7HQnbxTyiLUKnNEr1eZFgWDY64I6DwO+q7oLIqzfr8i4jf5Rz
	JS32BCUy4ssFrn9iAPwZkCOPyJkaOQaPGwmhH3VoAJzRmJqgSA+KBYPF2DREx/+mCFT7MjJxu0RBo
	eDPFpiT6/2UBCM7eAE5m7Gha2bswiWoBMwrxltG7Uy8UXGnmQATLKjcbe6onJPcVc88HEKWNX4snC
	kccNnF1/97ByID/N849w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYTLv-0000000HSr5-3hgS;
	Fri, 09 Feb 2024 16:03:47 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYTLq-0000000HSog-3VyR
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 16:03:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1707494623; x=1739030623;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=rwEsgngaV9IDPY5c2M3rnBWaSuyjqeEB7+v3YF0TYSY=;
  b=HN67/GcGiSrph1/H5Z0oJfN5kPLDBU1my0dHm/iCDnbHWxKYJytIQ/bQ
   bu51FvuohZUPyFxPXzkzmsrC20zFr0S+I3puUHVluawEVfWBTwvedfuv8
   cUtvf9KBYpZWhTv1L5dz42NANY5FL3RXLrMVCllAxoVg9XK2H1yIvEG6H
   3DqfCpZaaj7coW/aUfFkep5vrfqTxe37IxSv5TEOAmv/7BPHDERodr9P3
   Mp2hHxRzPlcAdGKpLBBVwawy8BJ6/qi66E8Nvag+NErHzTVmwFo9jBjBX
   5mejw4TbILO6sA+LFhK7yuPY6yZwT4A5FB5j+Fn8rmnILoH8vDju7csta
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="4432023"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="4432023"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2024 08:03:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="934459659"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="934459659"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2024 08:03:37 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 9AAE3161; Fri,  9 Feb 2024 18:03:36 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [PATCH v1 2/2] phy: ti: tusb1210: Define device IDs
Date: Fri,  9 Feb 2024 18:02:15 +0200
Message-ID: <20240209160334.2304230-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1.gbec44491f096
In-Reply-To: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
References: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_080342_969993_ADCD80F4 
X-CRM114-Status: GOOD (  12.22  )
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

Define device IDs since some of them are being used more than once.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/ti/phy-tusb1210.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index 7232b104a62d..13cd614e12a1 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -17,6 +17,10 @@
 #include <linux/property.h>
 #include <linux/workqueue.h>
 
+#define TI_VENDOR_ID		0x0451
+#define TI_DEVICE_TUSB1210	0x1507
+#define TI_DEVICE_TUSB1211	0x1508
+
 #define TUSB1211_POWER_CONTROL				0x3d
 #define TUSB1211_POWER_CONTROL_SET			0x3e
 #define TUSB1211_POWER_CONTROL_CLEAR			0x3f
@@ -436,7 +440,7 @@ static void tusb1210_probe_charger_detect(struct tusb1210 *tusb)
 	if (!device_property_read_bool(dev->parent, "linux,phy_charger_detect"))
 		return;
 
-	if (ulpi->id.product != 0x1508) {
+	if (ulpi->id.product != TI_DEVICE_TUSB1211) {
 		dev_err(dev, "error charger detection is only supported on the TUSB1211\n");
 		return;
 	}
@@ -562,11 +566,9 @@ static void tusb1210_remove(struct ulpi *ulpi)
 	tusb1210_remove_charger_detect(tusb);
 }
 
-#define TI_VENDOR_ID 0x0451
-
 static const struct ulpi_device_id tusb1210_ulpi_id[] = {
-	{ TI_VENDOR_ID, 0x1507, },  /* TUSB1210 */
-	{ TI_VENDOR_ID, 0x1508, },  /* TUSB1211 */
+	{ TI_VENDOR_ID, TI_DEVICE_TUSB1210 },
+	{ TI_VENDOR_ID, TI_DEVICE_TUSB1211 },
 	{ },
 };
 MODULE_DEVICE_TABLE(ulpi, tusb1210_ulpi_id);
-- 
2.43.0.rc1.1.gbec44491f096


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
