Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68168FF6E70
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 20:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ST3UDAyRZKxGOe7P/+QvCWRkbzUbBJRljtnJZe+gYg=; b=mZeT2mQxUIBZ1Q
	A3rJ2plECOz3XYEbnqUWk0TMM9iAyIqlFEoFLLinZALes+Syo4Mx/9au0B08eobGYmPbRsflV4CYK
	j2TMx4boJNDJwUrCRlZPW5TwiZ+SuxWQw9VktiynJ0QnE7Z+5PCnOl5+LtF6lOhsI3WBHYKQs1odf
	kwAnXj4POIcMB8wrj8etwjZQnQ3reacGo46JgQkBsruTetErTGAsGJqvPTkTGMiRRHmzdPiYLWjK+
	QwSYVvP348KBkvBYF+LO1gBnEe9cGHyxve39KpxepOvuQe4bywWgvgiXJg0AZAVzJNBXY5sS1KeyD
	l82awW3JqnCkHaC8UdLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2b3e-00000007CfK-0KOS;
	Tue, 17 Mar 2026 20:30:30 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2b3b-00000007CdD-3CDm
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 20:30:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773779428; x=1805315428;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lNwToLZvGLue8q3lhdy0+QwIrdVuQNDe6ZwtKnIqxrY=;
  b=fSFg11DscePAWRIQDXZLBi40FdZah0Y/Pkb6auYJ6jfewpL7rOUc0d3x
   egMPRJPpxfUO1tttkIwkOirKBgOEG8VLU8MTBtrMnUU1JGbyMF2R/LPXw
   4PfKMhd6FP+w9FxvGtBVOgITjJGX8t4oSehP5L+NYxk2XHUXImKz9gnAX
   pYe+hvSXObOk856zoH0O0UJ1s4KyvfRO0Hm2cgqgNKuT5/JFLLf8yeJx5
   KasxqGqzN1m/ssnZD62IPphV0a5n+WSZCv4VPocqror2l+ljJnIN438Q2
   xHE62O/G5xVAbRc2aNH/GXDiYQj4GHuW1NmXcE/FAKqVw092yzhSoThlZ
   w==;
X-CSE-ConnectionGUID: +SlY7rlpS1OatuyfrNBvSg==
X-CSE-MsgGUID: MmmCJrtDSzyuEu8xvIGXSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="77433960"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="77433960"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 13:30:24 -0700
X-CSE-ConnectionGUID: hGu+BYrHQIObg31iB5dGog==
X-CSE-MsgGUID: LSp8lOVzRw2rYHNNGwI0kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="222434441"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa008.jf.intel.com with ESMTP; 17 Mar 2026 13:30:22 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 0D51C9B; Tue, 17 Mar 2026 21:30:20 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Josua Mayer <josua@solid-run.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v2 3/4] phy: phy-can-transceiver: Don't check for specific errors when parsing properties
Date: Tue, 17 Mar 2026 21:27:29 +0100
Message-ID: <20260317203001.2108568-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
References: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_133027_815757_B0EC786D 
X-CRM114-Status: GOOD (  14.07  )
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
 drivers/phy/phy-can-transceiver.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index aaed8d08fcf0..21b0406d1a09 100644
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
 	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
@@ -148,8 +149,15 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 
 	priv->mux_state = mux_state;
 
-	err = device_property_read_u32(dev, "max-bitrate", &max_bitrate);
-	if ((err != -EINVAL) && !max_bitrate)
+	propname = "max-bitrate";
+	if (device_property_present(dev, propname)) {
+		err = device_property_read_u32(dev, propname, &max_bitrate);
+		if (err)
+			return dev_err_probe(dev, err, "failed to parse %s\n", propname);
+	} else {
+		max_bitrate = 0;
+	}
+	if (max_bitrate == 0)
 		dev_warn(dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
 
 	for (i = 0; i < num_ch; i++) {
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
