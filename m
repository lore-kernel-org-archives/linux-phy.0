Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA64BCD4F35
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 13:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew26N9xfQ8B6mrze9VFeWNLIOFi7zijeEKWKyGE69/Q=; b=kdariynRDp7Jd6
	ZcX8/FhV4AbnNQ0SKvLfcpF07Lfw8uxCsCGeTogdIL6nPOufTapNOPWwXSmYvgz5Iiuf9QwuUqiyz
	OeVduu8qId3R5T+aIeE0MIBED0/z+LUVreVpMTXuZyvy48ZSxI1TZQnyzl5TdfQsUxLYvYqy6aA2a
	bPAoDnL65t1TtOtCPdxjtnVr432B/04a/msxYS2PSCNXejKhPWXivIb6oz5ycgmSBOTCypvPbXZpW
	vI79b/Y9owYGuUiIHKI/YbxjqUBibMHRurat9BLvdf6Vaj3MWZ/ML460OCrdxesvt5LWPxGCivo78
	jt+C40DHK1+bWNJFit8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqK-0000000Gm7P-2JJt;
	Tue, 12 May 2026 13:08:12 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqG-0000000Gm3i-25kU
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 13:08:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778591288; x=1810127288;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aWyJaQvi0RjHwj/BHyzTjrlBIlDr2rwbaqRKmtrI03w=;
  b=Y9OqtSCD/pVyPFXIz9sKgHV79FHhHrdGUDWK46aQ6Vg4u3Txfuoosq5R
   956zj4t5Qh4Xbey9p2huYuyuHKnSbgNNSjkFLjJWIpTnvH3dmC9wVlVEa
   BlUD6WvJUc04B2u6ZWxmlU1NNCmbasfWmqko4PvhsydFYbSMBN5y1B/2F
   UxmLhxLBWb1SZtxnEvLugRZ7PhMIfhxsDJTRiKKJT+VXS7+df+7scDYR0
   57QK0RmIngNxb9SoqD18SJe+I+8M5cdMZZNpVDm5tteFIrqkOT0UGbRLm
   2B8fFbHw8SSDxWNP8IZ5Vzkqfr0d0XrH3M7yTQJYMw0itvnLfh1MZjqVC
   A==;
X-CSE-ConnectionGUID: ixyePIORSACt+x23CzdLAA==
X-CSE-MsgGUID: rVZNbuRRRa+ritn9eWRViw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90600377"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="90600377"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:00 -0700
X-CSE-ConnectionGUID: mRMRMezYS/KqyfWN7E09fw==
X-CSE-MsgGUID: sf3sO/OxQ06rWeh6Hr3eLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="233294183"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 06:05:56 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 7DD1C9E; Tue, 12 May 2026 15:05:55 +0200 (CEST)
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
Subject: [PATCH v4 4/5] phy: phy-can-transceiver: Don't check for specific errors when parsing properties
Date: Tue, 12 May 2026 15:01:52 +0200
Message-ID: <20260512130552.272476-5-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_060808_618796_2DD616C6 
X-CRM114-Status: GOOD (  14.03  )
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
index 23655956ace8..973cc7ce651f 100644
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
 	if (drvdata)
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
