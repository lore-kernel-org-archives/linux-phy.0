Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E33C7CCF9F8
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dA9XxIovqgdZh1+IjtJHlkIVWoEIeXhgVEoi0F7Yt+g=; b=EowaiJWXTYrKTo
	iFbU39PrSRMAn7OXzhf2Oo480I5C2qTP3cDIeiFr5ftCn9C0UYSIyzZck199/XKZW6J+DbPT16FuC
	CmejBs/GkYrkwqrCrtvIXSWAX7RGngUdCL+Zl58COrK5xGjs/mVLhiSq76ZTbuAjY9CIBNt6sPoKb
	inapO7w6rgF4n47mJ8R3SaEVDbnV1HNzB6lsTadGEYLJKQ3/mpRtsp2PZOGdn9S8uI4uCpdOStR8s
	22ENq3+nt0mJPTHXxn3uRFsHYNwzN7cOeWiZU9udTKmZWBtvjqewBN4VUS9D82CWL1lRTa5i+T+j0
	7TYog5fee1+s54D9xR2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOTN-00000003oHr-2r2W
	for linux-phy@archiver.kernel.org;
	Thu, 30 Oct 2025 08:57:33 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEOTK-00000003oGs-3i4H
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 08:57:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1761814651; x=1793350651;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vDX9mM2YnS3IYlqoWYx4Klo1Xq8MBd1qgbm+DTxSmYM=;
  b=hC89eXYhld80dXN2Cn9YJZsW3blDCm8pPwwIWG0BGmOGS/TPHQulVOBO
   yaPVAk9Nd33GZ+3f0um7QxwCnl3ieDqnyYwoS2sI6Mlg03EN7q/5gamoR
   MFCV/F0FG681M8YuWwM73IULTjIrlMKF7puixQMKtaPXUUeWFSzUkzW7c
   Kqseso0pI8Waj0QlB+zbrqZO1BpP1r/iOqEWqzJvGPWB6dAe6tFerznpH
   +cp5mB1xNiRio53uHh7reRKvHelXb0fB5Ab/2x13bc2uWlMKmBKL0VjYl
   8pVM/FgU2MeJ4ds5MqSc25chfMGEDV/0h8caToRHzJEX5ahiE6ifijA5h
   w==;
X-CSE-ConnectionGUID: R9uNaBEIQtuLT8EwY03pmw==
X-CSE-MsgGUID: kRlUyiQKR9ifYf6y+wdfgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="67784460"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; 
   d="scan'208";a="67784460"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2025 01:57:30 -0700
X-CSE-ConnectionGUID: IBVB6WdjQFqxsiFMbJmB4g==
X-CSE-MsgGUID: NZFecDz2R3q3WyG5PEsbUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; 
   d="scan'208";a="185834090"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.245.245.176])
  by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2025 01:57:28 -0700
Received: from punajuuri.localdomain (unknown [192.168.240.130])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 22B441206DE;
	Thu, 30 Oct 2025 10:57:25 +0200 (EET)
Received: from sailus by punajuuri.localdomain with local (Exim 4.98.2)
	(envelope-from <sakari.ailus@linux.intel.com>)
	id 1vEOTF-00000007wTF-0PSO;
	Thu, 30 Oct 2025 10:57:25 +0200
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RESEND 2/2] phy: ti: phy-twl4030-usb: Remove redundant pm_runtime_mark_last_busy() calls
Date: Thu, 30 Oct 2025 10:57:25 +0200
Message-ID: <20251030085725.1893039-2-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251030085725.1893039-1-sakari.ailus@linux.intel.com>
References: <20251030085725.1893039-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_015730_968333_4F7A038F 
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

pm_runtime_put_autosuspend(), pm_runtime_put_sync_autosuspend(),
pm_runtime_autosuspend() and pm_request_autosuspend() now include a call
to pm_runtime_mark_last_busy(). Remove the now-reduntant explicit call to
pm_runtime_mark_last_busy().

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index a26aec3ab29e..1d26189ace4f 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -505,7 +505,6 @@ static int twl4030_phy_power_on(struct phy *phy)
 	dev_dbg(twl->dev, "%s\n", __func__);
 	pm_runtime_get_sync(twl->dev);
 	schedule_delayed_work(&twl->id_workaround_work, HZ);
-	pm_runtime_mark_last_busy(twl->dev);
 	pm_runtime_put_autosuspend(twl->dev);
 
 	return 0;
@@ -598,7 +597,6 @@ static irqreturn_t twl4030_usb_irq(int irq, void *_twl)
 		if (atomic_add_unless(&twl->connected, -1, 0)) {
 			dev_dbg(twl->dev, "%s: cable disconnected %i\n",
 				__func__, status);
-			pm_runtime_mark_last_busy(twl->dev);
 			pm_runtime_put_autosuspend(twl->dev);
 			twl->musb_mailbox_pending = true;
 		}
@@ -636,7 +634,6 @@ static int twl4030_phy_init(struct phy *phy)
 	pm_runtime_get_sync(twl->dev);
 	twl->linkstat = MUSB_UNKNOWN;
 	schedule_delayed_work(&twl->id_workaround_work, HZ);
-	pm_runtime_mark_last_busy(twl->dev);
 	pm_runtime_put_autosuspend(twl->dev);
 
 	return 0;
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
