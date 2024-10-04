Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C14B0CFA753
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 09:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pUsAICbs5d+YBnxBo8aydh6yIpYdpM2ic+QOYtNwgI=; b=yugIMhHggz4Wrz
	Fwx3zE/yGICNL571+Fzz5kePrs0BEoibY9D8w5saKLZ3mIdMTYYqm7jvk/nm9SXGiRnFWAm4gT/OX
	+nRog25fj0O7OjuutKcWPoSzrIn9k4eib38Op9H7fDsRiLyOkyaFKY5vRbRcfk1dpVwvha7L6g0Xh
	iJQqfrip8p1GSIwDGpNomaIp09rtDyrA7o+y6LJg2VZMDxfnCOuUFn/mv1h1kaKwXynL9P6ueQ9Yn
	Nw16bWFPSdaum3WnQvKg2AOgFLbIPaWNHnY6H0oJYyLzUxioZxKXCkMsB1iEGxdWBwteV/MMWuOIE
	lbBM9P/q73HVJqq33z0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sweuv-0000000Bht0-1vuF;
	Fri, 04 Oct 2024 09:48:09 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sweoe-0000000Bfxm-0zWf
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 09:41:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1728034900; x=1759570900;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tCHvr0SyNGUYLTGRNDiC4xtq0W0bs2XnhsTdr2TIz+0=;
  b=bF5mOBA419uyl0Mp96GuFXY8+xgBI+/w5thjbtZqDOO+FbZnAeQo3RjK
   oTRrip/5BUkgm2F/f9XlQFplusZoP+OpdngYLMHWQ1Co4BfLqPliLUEe2
   dWyor1y+FbKlbfeE3jbi0uSFqUC8/JXfh3TGobExkx6+sxccU/UdSvuN0
   qW6naJmw7ZUL+ugURrznJ52OCumgLe57hXIpLbnJyhT8bNzz+F6oXpYeE
   vASTj/eOJJ0Np5ueltntgMyum2W13N5H/lHZUKd6rlz5w/uORAjSL/265
   ntO4RIqh0uxvFjPYJ1z8nVA5I2ar/7DgnjLILN19XVrGl9FhRgCInbWBQ
   g==;
X-CSE-ConnectionGUID: YKTJpgOIR+OMxwH4x2tY9A==
X-CSE-MsgGUID: RcZaGNYnQ/yWNhW1ezFWfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="52656261"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; 
   d="scan'208";a="52656261"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2024 02:41:40 -0700
X-CSE-ConnectionGUID: BOBigxYBTKORIaGr8fufmg==
X-CSE-MsgGUID: hzHSQ45kTm2M430Gtu20Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; 
   d="scan'208";a="74975103"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2024 02:41:39 -0700
Received: from punajuuri.localdomain (punajuuri.localdomain [192.168.240.130])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 4C4D4120E62;
	Fri,  4 Oct 2024 12:41:34 +0300 (EEST)
Received: from sailus by punajuuri.localdomain with local (Exim 4.96)
	(envelope-from <sakari.ailus@linux.intel.com>)
	id 1sweoY-000Tdn-0x;
	Fri, 04 Oct 2024 12:41:34 +0300
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-phy@lists.infradead.org
Subject: [PATCH 34/51] phy: ti: phy-twl4030-usb: Switch to __pm_runtime_put_autosuspend()
Date: Fri,  4 Oct 2024 12:41:34 +0300
Message-Id: <20241004094134.113929-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241004094101.113349-1-sakari.ailus@linux.intel.com>
References: <20241004094101.113349-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_024140_314398_E0B536B3 
X-CRM114-Status: UNSURE (   9.62  )
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

pm_runtime_put_autosuspend() will soon be changed to include a call to
pm_runtime_mark_last_busy(). This patch switches the current users to
__pm_runtime_put_autosuspend() which will continue to have the
functionality of old pm_runtime_put_autosuspend().

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 drivers/phy/ti/phy-twl4030-usb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-twl4030-usb.c b/drivers/phy/ti/phy-twl4030-usb.c
index 6b265992d988..e0492b61c9aa 100644
--- a/drivers/phy/ti/phy-twl4030-usb.c
+++ b/drivers/phy/ti/phy-twl4030-usb.c
@@ -506,7 +506,7 @@ static int twl4030_phy_power_on(struct phy *phy)
 	pm_runtime_get_sync(twl->dev);
 	schedule_delayed_work(&twl->id_workaround_work, HZ);
 	pm_runtime_mark_last_busy(twl->dev);
-	pm_runtime_put_autosuspend(twl->dev);
+	__pm_runtime_put_autosuspend(twl->dev);
 
 	return 0;
 }
@@ -599,7 +599,7 @@ static irqreturn_t twl4030_usb_irq(int irq, void *_twl)
 			dev_dbg(twl->dev, "%s: cable disconnected %i\n",
 				__func__, status);
 			pm_runtime_mark_last_busy(twl->dev);
-			pm_runtime_put_autosuspend(twl->dev);
+			__pm_runtime_put_autosuspend(twl->dev);
 			twl->musb_mailbox_pending = true;
 		}
 	}
@@ -637,7 +637,7 @@ static int twl4030_phy_init(struct phy *phy)
 	twl->linkstat = MUSB_UNKNOWN;
 	schedule_delayed_work(&twl->id_workaround_work, HZ);
 	pm_runtime_mark_last_busy(twl->dev);
-	pm_runtime_put_autosuspend(twl->dev);
+	__pm_runtime_put_autosuspend(twl->dev);
 
 	return 0;
 }
@@ -782,7 +782,7 @@ static int twl4030_usb_probe(struct platform_device *pdev)
 		return err;
 
 	pm_runtime_mark_last_busy(&pdev->dev);
-	pm_runtime_put_autosuspend(twl->dev);
+	__pm_runtime_put_autosuspend(twl->dev);
 
 	dev_info(&pdev->dev, "Initialized TWL4030 USB module\n");
 	return 0;
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
