Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA0DDC83030
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jul 2025 08:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbqTHoLuDdcMa2rr4E7J9o3bECgyYTGXFbI/RX97+Ro=; b=X/XVcr8eblhFr2
	eQJdwltt4OAwx+eJJz+tLPN9uEuENsSch+2EUhJirnDWbXsl33S/gsjEsspAdSmfsaqMalZgY3Qn3
	pZUqNeVd1EdWsEccnSQWmsSLXxLq4aAa23UNJfg4K04M8NLjYpAl8w71nsXTc3xEw9gGwD8dm9C/D
	y4cRP4CPKl2kVNDKSl49Trq3kBTfqHMHkglYju/yXGMYCSo5wWlzDwjUxIfbi5L3PfJ6showBb0t4
	D5K5adeMvfHNl1Zo5wW/4FAFcQmlz3gjxazoJHVtZmDbBZ+Ru94mC68D5ki3GwYFZ1kFvxuESarte
	AQ1vufMMpTNZfRqUMWew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXbo0-0000000DkCa-2OWG;
	Fri, 04 Jul 2025 08:30:00 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXbFw-0000000Dd8m-0GP5
	for linux-phy@lists.infradead.org;
	Fri, 04 Jul 2025 07:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1751615688; x=1783151688;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=FD8NSdsEQqeGz8ildUOGKLMTm/GKTBxIB/60rQo+QMY=;
  b=En+0ysoNqU0BccjmRiBi/5nZRtqcFVgdNMQkPzU3gCkZl1XSsi+5S6P4
   0F6Lf7OIUJCgYXH1uUahcdX3gp1x2Q4YMopRKRKd+EtQVEVonsKxsixBV
   27iBLaonymvpIpW6J0UAJfg6UiL4YaQg39uFvKB9SAFZKQ/gYIxF1uZxz
   dkFRfWBkX3v5us55jvcZL6k/xn6J+2SsG6Ct29qqrCKn4JKXB0640SekI
   2X58QWpNtb0lbkm/z9W3TuYv4vH21z3Ai+4Q1N9be2Sr1POXNKLnkmKDL
   H2+arrftEVqyO54FZYRlPcQbCFhTZC4p6XoxjAukxHQnkYqHkDtA9Y/pL
   w==;
X-CSE-ConnectionGUID: Cn3NW/OtSd+F18jsEE6qXA==
X-CSE-MsgGUID: U3DnGXNJTZGWSWNXx0OLAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="64194214"
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; 
   d="scan'208";a="64194214"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 00:54:46 -0700
X-CSE-ConnectionGUID: Bgwjjc6LR7GBqHNaIjSxEQ==
X-CSE-MsgGUID: gXyyhgBTQJmOvqWtYsKw4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; 
   d="scan'208";a="158616606"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO svinhufvud.fi.intel.com) ([10.245.244.244])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 00:54:44 -0700
Received: from svinhufvud.lan (localhost [IPv6:::1])
	by svinhufvud.fi.intel.com (Postfix) with ESMTP id D896A44394;
	Fri,  4 Jul 2025 10:54:41 +0300 (EEST)
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 53/80] phy: ti: phy-twl4030-usb: Remove redundant pm_runtime_mark_last_busy() calls
Date: Fri,  4 Jul 2025 10:54:41 +0300
Message-Id: <20250704075441.3221235-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
References: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_005448_135977_110B797A 
X-CRM114-Status: UNSURE (   9.55  )
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
The cover letter of the set can be found here
<URL:https://lore.kernel.org/linux-pm/20250704075225.3212486-1-sakari.ailus@linux.intel.com>.

In brief, this patch depends on PM runtime patches adding marking the last
busy timestamp in autosuspend related functions. The patches are here, on
rc2:

        git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git \
                pm-runtime-6.17-rc1

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
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
