Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0474E9A05F
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 20:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sh2lOYZBRLtU6AvHLxqD5VvPM1O0X/tKCo9ZOZUrIFc=; b=40tU9TAVcY4ZNc
	VqNW0mDArSOx4mZl2DTU12gfRwpGSvIoSXW3cQDjBOvXtvgAR60e03sWVKYot8aOwaCLKLAyYx1gX
	7r5tOEVkeFz6c16kI3FAIH2qVfjoHzw71nvFTlFzAD76UUaorGl/m3/2WBZ3j6BF2PKsRkwqkMP7C
	tihtiER0URuFlBsUGx/sSybyNotVyLuhm4lhR+B1TOC9yaagt0RKylyfKQA982+vQ3qZmeO283MM+
	J/+dHxrCSrIc7eHTVF4M2boRhYHA/ZP2alt74MB/K2DmdldJGIH+7AhbAIIx1jwnN0LE6ikKFxiqt
	7xUEC5CD3ImAkyniuFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAfF-0000000C1ti-0CzZ;
	Thu, 19 Feb 2026 20:30:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeR-0000000C0pi-46O8
	for linux-phy@bombadil.infradead.org;
	Thu, 19 Feb 2026 20:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=mj71Q0811PnkHyQZPXMAlJpz+q06lSEY6e9R2QlDetw=; b=I/IoGUosSl65XMcl+/nywcdcG3
	5ZDzHBHI6j+1ixgUFwYSfcGsYmPO5nroGvljihbREJJPgBcAPuo/2LhB1VZnvJbebJM/DrBghYf0i
	drtqdZbHtWA52nibS2IkA/H7+zlFxHMLAK19qDYMxy002QNEp7dGnuIIx5Jvu0R5LEghQZsJVzVFN
	+YDgMs+Mx1OWBWVihzHvL/xayCo8kpT/rIgS0LEgJB/Nnm2G+j8qmUI+g2XgOp/9aFWUWNQK0Qax4
	M2k+UIKHGrwzklhw1nAsVz4/bfPbgBMBVKKPnAwPtOlj6XB7yguxv+xgqspFzdDSQZAgP+ogY5vb9
	Ld88kV3w==;
Received: from mgamail.intel.com ([192.198.163.19])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeF-00000001qf9-3OwC
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 20:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771532960; x=1803068960;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=7Yp0Zx6S5q5BQPxgAeuKyYhu3KCC6d9EY3eVALItl74=;
  b=Ksm1mx+8wZX9vkiueFsCezqVHSkeaqVYlvYBXJlpDA4X9Sp1rt3VJrDY
   B01jUucSDjlPzt1VSw+JYWZTK//ocyKx+XJau9WphVWK2K/8/iuvdfuB5
   GxK+VDDwzHg5Rg1rrXZCg6Rfck0BjIZIha0hYjXmz4Gmm3NnThFiN835w
   bKRmsrv49xXKIFTdRFpJs4BGjYomDx31B9dNuBOVt/4ed3cRfoftHHAXS
   C/kD+oXIMdd6LfW/ssoT+5/lpm8wtuwvumiNPmguwGb+VplLU019//5hp
   8SzVqw1A7eUWBKy79eyAtv4yEqpOf/ZAs9x7/5jMgrpqk8eVX7dM5vH61
   Q==;
X-CSE-ConnectionGUID: veqH9OpFT1C+umaBL2Y2KA==
X-CSE-MsgGUID: /OwGCQzhToqb2KD3zwypjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="71655724"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="71655724"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 12:29:15 -0800
X-CSE-ConnectionGUID: rE357m9XRkqSjIVYVCKtdQ==
X-CSE-MsgGUID: 8OdFyD4RRn+LKJWZM6YyZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="214492051"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa009.jf.intel.com with ESMTP; 19 Feb 2026 12:29:13 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 0B5D09D; Thu, 19 Feb 2026 21:29:12 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 4/4] phy: phy-can-transceiver: Drop unused include
Date: Thu, 19 Feb 2026 21:26:22 +0100
Message-ID: <20260219202910.2304440-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
References: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_202926_588329_45895363 
X-CRM114-Status: UNSURE (   9.14  )
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
index ebce48ef217f..ba40bad4ccb1 100644
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
