Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7429CCFA74C
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 09:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DySS5Hbz2zizNNd5e79P1RLnxZ3YdP6GX/3nmVNUvYU=; b=RnRr+bgVup3hMG
	TG6Oytm9nHYw5siotiBrf7Ud0cJqldR/wdQr+4PKUiUt4Sm2AWBkSnqB8CU3c65vDhmnNMtgszreX
	i0VG6tcEuQ6ascq9SOS/FVJkKnZ7Pma/4MHUFHrdWT2X4RqdPjDYBpvsnA327AMqicShJWLlXmeGQ
	4GZcPxdLs9ld28Cn7xOWwgr0QmqklDMbqwDpuO2dVv1KYzkaZD+Nn4QAO6NH2TrtshUK3AWZn9SdH
	m+o7IKR8fojSjIf2fFnKtmFOrFQ15p9yx1u2rsvubgqciP4Df0EME4+v2I9OBlB/P9q4FZ/kALn2y
	oF4wXhRsF555IFjse7Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sweuv-0000000Bhsj-0kEi;
	Fri, 04 Oct 2024 09:48:09 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sweoe-0000000Bfwm-0S2T
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 09:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728034900; x=1759570900;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=9YDRVLqVV+RO9DorOO7JdhHBJFA5m/GJzfXk7RwrSgo=;
  b=FJmURpicnxTwjNAAchoREf5JMJEYY7a/vQZ4V5W14LesxfVL5om4nnww
   dxGJTBuUzU/0EsWNholRmR/32YmTNM3p1Xb49/LzT5a3K/lghvhVRiHRe
   NBqhHWEzb42LhTQr3GBMCm6i/tFecHa8esUi4fdbVlCziRY7BXZkzKFT4
   9fdNjLkzDgb1M7u2ULNy6bFvQ9WnsU+uGnkSd7N4BJW6G3XvrkoBg0Usc
   127H72XPMJoL7XvagZnsD6WU0qhlzyq6g1NaUHMCxZgdv+WVMkE1nlBKq
   E/rlP+KkJASxKvfSxL3DnG6aIi6SpKP5VpNqEHQvoJOVkqE4mifh8EdUp
   g==;
X-CSE-ConnectionGUID: 52Rd+uQxRKaiMe82ma2emA==
X-CSE-MsgGUID: yMyfv6KFQLavveeKhmGOGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="52656257"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; 
   d="scan'208";a="52656257"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2024 02:41:39 -0700
X-CSE-ConnectionGUID: kTxrDsv4ToGWMdKDXl/Oig==
X-CSE-MsgGUID: GBJn+vH8SAWFKzCqC5kxKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; 
   d="scan'208";a="74975101"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2024 02:41:39 -0700
Received: from punajuuri.localdomain (punajuuri.localdomain [192.168.240.130])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 37A2E120E06;
	Fri,  4 Oct 2024 12:41:34 +0300 (EEST)
Received: from sailus by punajuuri.localdomain with local (Exim 4.96)
	(envelope-from <sakari.ailus@linux.intel.com>)
	id 1sweoY-000TdW-0g;
	Fri, 04 Oct 2024 12:41:34 +0300
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-phy@lists.infradead.org
Subject: [PATCH 33/51] phy: motorola: phy-mapphone-mdm6600: Switch to __pm_runtime_put_autosuspend()
Date: Fri,  4 Oct 2024 12:41:34 +0300
Message-Id: <20241004094134.113912-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241004094101.113349-1-sakari.ailus@linux.intel.com>
References: <20241004094101.113349-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_024140_271880_32F561A2 
X-CRM114-Status: GOOD (  11.14  )
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

pm_runtime_put_autosuspend() will soon be changed to include a call to
pm_runtime_mark_last_busy(). This patch switches the current users to
__pm_runtime_put_autosuspend() which will continue to have the
functionality of old pm_runtime_put_autosuspend().

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index 376d023a0aa9..5daf3217c7a0 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -251,7 +251,7 @@ static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
 
 	/* Just wake-up and kick the autosuspend timer */
 	pm_runtime_mark_last_busy(ddata->dev);
-	pm_runtime_put_autosuspend(ddata->dev);
+	__pm_runtime_put_autosuspend(ddata->dev);
 
 	return IRQ_HANDLED;
 }
@@ -619,7 +619,7 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 
 idle:
 	pm_runtime_mark_last_busy(ddata->dev);
-	pm_runtime_put_autosuspend(ddata->dev);
+	__pm_runtime_put_autosuspend(ddata->dev);
 
 cleanup:
 	if (error < 0) {
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
