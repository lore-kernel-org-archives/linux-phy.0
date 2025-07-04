Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12E0CC83F05
	for <linux-phy@archiver.kernel.org>; Fri,  4 Jul 2025 08:30:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tA0RTY0DufJPxDnvYg0dtld3kltBZ2NL2sjHqbLQI0M=; b=v767r7cQrSVDWJ
	VzIpJK2O3QxKeb2+AQW9wX6jkUAHBtuFFFzrpIUEkI04dEbG46S8TwQ81Wty/f0wp/EH7eEyHZEy9
	XBZUWoNv24uzb8p8bwzERUavzW+vReWXpQMNAKSVSIbadEoHxTxGfXH9+66oVDtjFgfE11UbJ6+Pa
	4d5lAZ6etzHPjo82WLzjj+sBfZuXgiuJbFewG/DTvh4udN0CmQyX8jW1YhimPZwlsZibfRjCQVYOz
	EtDnB7Zxa8rVf7Rb8QTFLgGAWkdhL+0e5xNr1/VX0ZY7BtA3pePdpWdB021aaLnSluYgsx2g8u0Kv
	VhETjPNgCiLFz/GYwTjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXbo0-0000000DkCs-3TQl;
	Fri, 04 Jul 2025 08:30:00 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXbFw-0000000DdAq-3r16
	for linux-phy@lists.infradead.org;
	Fri, 04 Jul 2025 07:54:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1751615689; x=1783151689;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=NO75yl0C/QCwRChAfVosDGNmtR5VgVEkJtdizny75eQ=;
  b=jzdICNbbCkET6AUF087Bf8+poEYtU6w0it8TG+4QibIDT8gaG6S6VxM5
   6LsKriCReihM9RS8qSRGwzg8EiaacOQL3HphEbk7o641hXh9WT74J5uJy
   I1O7WMBfc+70tJXoBdaGI87VTrdOvSem/Q5taaDY+KE/UYAexcJYMmdVf
   5nquS8iXvDj673ZEaGuCOOk8Vk4kdzX0DQ0P1BpTnXpnA6OTH16cTnmHw
   e8/yp9qVcG7rYk5yJPZnsewQTCxI3mpGmnfByhtD1AcvPJAMzwvl0c14h
   dGuEVufmyfybgtNi9bpup8+iFFBOkMgUL1mloHLv2hAAHvD5qTSygqBQ7
   Q==;
X-CSE-ConnectionGUID: Nq3FGwFASYmwd2w+4UgB7Q==
X-CSE-MsgGUID: h2Em8x8BT1mq81PWFHIlZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="64194205"
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; 
   d="scan'208";a="64194205"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 00:54:46 -0700
X-CSE-ConnectionGUID: QEo8glDxTqWRbZPCkwigrA==
X-CSE-MsgGUID: Vww84vogRU6mgpGMnplGHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,286,1744095600"; 
   d="scan'208";a="158616602"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO svinhufvud.fi.intel.com) ([10.245.244.244])
  by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jul 2025 00:54:43 -0700
Received: from svinhufvud.lan (localhost [IPv6:::1])
	by svinhufvud.fi.intel.com (Postfix) with ESMTP id 30B1844910;
	Fri,  4 Jul 2025 10:54:41 +0300 (EEST)
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6 krs, Bertel Jungin Aukio 5, 02600 Espoo
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	David Lechner <dlechner@baylibre.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 52/80] phy: motorola: phy-mapphone-mdm6600: Remove redundant pm_runtime_mark_last_busy() calls
Date: Fri,  4 Jul 2025 10:54:40 +0300
Message-Id: <20250704075440.3221183-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
References: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_005449_013646_D16D6A88 
X-CRM114-Status: GOOD (  11.41  )
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

 drivers/phy/motorola/phy-mapphone-mdm6600.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
index fd0e0cd1c1cf..c82826bd2832 100644
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -248,7 +248,6 @@ static irqreturn_t phy_mdm6600_wakeirq_thread(int irq, void *data)
 	}
 
 	/* Just wake-up and kick the autosuspend timer */
-	pm_runtime_mark_last_busy(ddata->dev);
 	pm_runtime_put_autosuspend(ddata->dev);
 
 	return IRQ_HANDLED;
@@ -616,7 +615,6 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 		error = PTR_ERR(ddata->phy_provider);
 
 idle:
-	pm_runtime_mark_last_busy(ddata->dev);
 	pm_runtime_put_autosuspend(ddata->dev);
 
 cleanup:
-- 
2.39.5


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
