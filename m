Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A24CD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 22:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xOiRXEj0+g0sfxM2POnD7VtYcropY1kD4Xk+Kp8A50=; b=mn43fCU5VAf5ee
	8Xic1dspLfp7HPy/NaRqn8uf9+h4MggWZ2BF07rYY3x7KWBP3cVPRJf1Iau/nF9xJDpkR9cWalO3Q
	yoFSUQq+UnwudvdAU5Un2KwieA5sp31swqXWHPU41ayfg2dUxFrsDrE/biBPXt/+VZ3nHIMHS5VDp
	4CLr8eRXG59I6TWIykIT/LuXkJDlV5BjjJInXj4ChBAf3Y7Diaki05tHTU3lvqPNdG0C4E7CrE8qu
	uPz/j6BrAYKYMRENH7T3LRoeatfX8ZPL9N+3kBh5vZlurLmhWP3SJq0g3wJP0KX+dQPTzz9gjBBhz
	/ZhMO3DzvRi6gpTR4h7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgD-00000003szr-0XZC;
	Wed, 13 May 2026 22:03:49 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHg9-00000003swZ-0Qgx
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 22:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778709826; x=1810245826;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=s1l6DhuaA7WFVhf4UoEJrdxY4F6P6ok+s6nAgwQYEyM=;
  b=lbATJVwlYHkrVO3E8CGO5ivCUu4NyQj2WSsW62zH1rEToSB2TAMjoP3v
   EkK+WjPahFahY1CUmvPHrJEoQuroWARntl3Tkulwm+V0u4fBp73bBAdgb
   rOh0sDyx+UwU8z2BchRHrwX8OHB8woMkd6xLYPOfo17DO429JW7JagWRF
   8vFFklcw4LSpeTDOczJFtnlMKErIyeqiyvERbINjE/5BmnOiO3e0wy+zB
   qiPh7l4aomJLMvWazfklIlJdOLqLThbXvF3wX5BckMuWr4EBtt9qAwnmM
   dRNIfu2FvxpABjSkAgbzNIoYX6b5YPgFwOWxKJDqmuaP27xFa+8z5mSeR
   g==;
X-CSE-ConnectionGUID: 0tfbLe4MT2ONCVNF3NTu9g==
X-CSE-MsgGUID: otsoVPXnSFyOmZvQBxjELg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90749921"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="90749921"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 15:03:43 -0700
X-CSE-ConnectionGUID: fSwRn+XBRfa1aqTgtgCdUg==
X-CSE-MsgGUID: mO5ryQoFST23JZGYRgMgzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="237224938"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa006.jf.intel.com with ESMTP; 13 May 2026 15:03:40 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id A068F9D; Thu, 14 May 2026 00:03:38 +0200 (CEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Peng Fan <peng.fan@nxp.com>,
	linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulfh@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v5 4/6] phy: phy-can-transceiver: Don't check for specific errors when parsing properties
Date: Thu, 14 May 2026 00:01:29 +0200
Message-ID: <20260513220336.369628-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
References: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150345_195106_86AAEA87 
X-CRM114-Status: GOOD (  13.53  )
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

Instead of checking for the specific error codes (that can be considered
a layering violation to some extent) check for the property existence first
and then either parse it, or apply a default value.

With that, return an error when parsing of the existing property fails.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 5c9698f77c7d..3cebaa54f7db 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -128,8 +128,9 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	struct gpio_desc *standby_gpio;
 	struct gpio_desc *enable_gpio;
 	struct mux_state *mux_state;
-	u32 max_bitrate = 0;
 	int err, i, num_ch = 1;
+	const char *propname;
+	u32 max_bitrate;
 
 	drvdata = device_get_match_data(dev);
 	if (!drvdata)
@@ -151,9 +152,17 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 
 	priv->mux_state = mux_state;
 
-	err = device_property_read_u32(dev, "max-bitrate", &max_bitrate);
-	if ((err != -EINVAL) && !max_bitrate)
-		dev_warn(dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
+	propname = "max-bitrate";
+	if (device_property_present(dev, propname)) {
+		err = device_property_read_u32(dev, propname, &max_bitrate);
+		if (err)
+			return dev_err_probe(dev, err, "failed to parse %s\n", propname);
+
+		if (max_bitrate == 0)
+			dev_warn(dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
+	} else {
+		max_bitrate = 0;
+	}
 
 	for (i = 0; i < num_ch; i++) {
 		can_transceiver_phy = &priv->can_transceiver_phy[i];
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
