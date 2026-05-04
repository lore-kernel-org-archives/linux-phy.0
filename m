Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DCCDCD3427
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 07:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eu16ZlzBr16IAQCZlk55DTzDDHX+HoGT8e7HwD1IBVI=; b=f6ZENiGuIkKiv8
	eJl29lQ9rU7T7bFXeazYlcapxJ67Wa8wJYIkh3sTrVhdBRPW3AJFaYwiaN3AD7q29vtw1Oo30pUks
	8jKFSM0crlo8bYAJ7deViKCAyEn7vAg9edNu6Wi2g369APGTGQGPCdKE0uJauyg567Wq65jeOibbt
	48kDrPDe86jQYzJDBzh3ipgAMorfuMzhejNSk42KUzrWHHhM14A08baPbMPbxWyqOPM9I6LObEfWp
	kTXxr/2GxORsiAc+xkjaakgBuTazTpLmWcsLIigQjh2QF2wYFlLmeJ2bqTgtoXGfo/j6LZXT1ScHt
	ewDazbXEo62zVrzDEi6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIh-0000000CYbr-0fEM;
	Mon, 04 May 2026 07:01:07 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIe-0000000CYYn-2SVM
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 07:01:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777878064; x=1809414064;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=KxWs9qmEPOEiZlGqedJKlS+its/yHjm1HTMluZhe4cA=;
  b=JfS9acjOdMWN2P/e5Pk7Tp3FLt+8IlSxL0qdTiq5LEsMw7RN3xEhEH3R
   XF8/kF2Vnu+0t8n52HJCjBv+h550RGawCB3l4ryTr5ya+yS3FLKkpY//K
   tD6LnKPr+JmT5plCYINPVr+DdY5Kissnr7ahNIhGH9t9QgtnsnatPsX2q
   Xr0xBkPfpnqnfgPusAN0wXTlAx5jplQ69v/RgRNFNK9WquEJGpjj2Cl3U
   s2FiZKnOkZM3aynwr3JIqrhTp5ztEpTQOaNe9mcYjfyvn2hFH0b6nkJW4
   6pofcRjmJZOLbMiWYNHY014GqgdIFS9HHo/1x8/QOZmDMNlDf2D3MdLW+
   w==;
X-CSE-ConnectionGUID: 6882To0QS36EldplTvKUrg==
X-CSE-MsgGUID: +Pe0BL77Q766bYfOOz0RXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82582121"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="82582121"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 00:01:01 -0700
X-CSE-ConnectionGUID: lFWrn2JwSOmCqoVduvuxxQ==
X-CSE-MsgGUID: tAtiDNAMTouiBbaFYNoCFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="239409099"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa003.jf.intel.com with ESMTP; 04 May 2026 00:00:59 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 3DFE09D; Mon, 04 May 2026 09:00:58 +0200 (CEST)
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
Subject: [PATCH v3 3/4] phy: phy-can-transceiver: Don't check for specific errors when parsing properties
Date: Mon,  4 May 2026 08:58:54 +0200
Message-ID: <20260504070054.29508-4-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_000104_655574_B32B998D 
X-CRM114-Status: GOOD (  14.11  )
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
index 8411d36b463b..238c7963724b 100644
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
