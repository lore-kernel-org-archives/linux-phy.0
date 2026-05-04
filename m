Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AB0CD342F
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 07:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwVeL2cyIEWTmGZW4zle1xEguhjg71Pt62RL4i2YQ1M=; b=Xk1MvZ15fcTtgw
	INzA7xcTA9yzOiHfgrHLljRGH+rYFWdM5AAWfGuXE+NDYQ43yOGd0ddrRsQj86R1UgwCoIgZ/OZLS
	cb3e/a0HhgI/uMPfieJz29CSMkB7DRZUqBBjp/dGUJsWKGPWyZ8j6gpeTU4Y8fAZmrEpUv7cTC2+Q
	y9St3ppeazW+WPDZ6M9wb5YUxNvNMLxiAypoHCGCIFdfL4UuWpuI6ZEe8T3xoxy/Y2WL3V35kB+kM
	VKo5IbC4i65BfZnkH3GVElUfL4HehKgm/vb4kgW4CxVfeEHxrX09LcOGVQisrW/C7GpwPls9IEP9p
	FcqSPW420FWsGMnzO+Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIh-0000000CYcI-1yvb;
	Mon, 04 May 2026 07:01:07 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIe-0000000CYZZ-2hWG
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 07:01:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777878064; x=1809414064;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=8vqSmnbDPc6RNbm1wm/YJrqYsV6ZrW7K+gliVr83sP0=;
  b=VJhhpIYVTHZzDWTm4ICz6MGgkWr9Gul3Y4XvGAibP+dCmooB7swTqbrV
   4gvnjID29OWD2BepvT5YK+W94piQiywrUAkSbYMX8WQJYyPLzi5xOakzK
   wNHNt8fqeOrps5ptb8Kq/n29e05GFxcyvn8R86QfdU0ujeouE2KR047v2
   FwhUUROsXKcb5fcKf1OM5+sDfTETWsnTYyd5ny0N5iE3Gz/yVF1tmTqSK
   8he91iGqo8D+GaWtnRzIT1AcIsNnGxjsS1D7tiLlWtytb4+3VzuZUh78z
   ieD84v+d+erhP77yXLI+AIIewiW3XhKzURhnBOBOyFVCIf/BzFUMkNWp7
   Q==;
X-CSE-ConnectionGUID: lbxiyEgMQ0apGbgZQDNMHw==
X-CSE-MsgGUID: iSQ6zzJDQr6kQqWTpwO7iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82582135"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="82582135"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 00:01:01 -0700
X-CSE-ConnectionGUID: xL2nn0JPTWSFgT+BHhjrMg==
X-CSE-MsgGUID: RQ/fE0cWT52+FW0Qf1PzJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="239409102"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa003.jf.intel.com with ESMTP; 04 May 2026 00:00:59 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 39AB49B; Mon, 04 May 2026 09:00:58 +0200 (CEST)
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
Subject: [PATCH v3 2/4] phy: phy-can-transceiver: Move OF ID table closer to their user
Date: Mon,  4 May 2026 08:58:53 +0200
Message-ID: <20260504070054.29508-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
References: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_000104_696694_673AD07F 
X-CRM114-Status: GOOD (  12.28  )
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

There is no code that uses ID table directly, except the
struct device_driver at the end of the file. Hence, move
table closer to its user. It's always possible to access
them via a pointer.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 58 +++++++++++++++----------------
 1 file changed, 29 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 80eece74f77d..8411d36b463b 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -97,35 +97,6 @@ static const struct can_transceiver_data tja1057_drvdata = {
 	.flags = CAN_TRANSCEIVER_SILENT_PRESENT,
 };
 
-static const struct of_device_id can_transceiver_phy_ids[] = {
-	{
-		.compatible = "ti,tcan1042",
-		.data = &tcan1042_drvdata
-	},
-	{
-		.compatible = "ti,tcan1043",
-		.data = &tcan1043_drvdata
-	},
-	{
-		.compatible = "nxp,tja1048",
-		.data = &tja1048_drvdata
-	},
-	{
-		.compatible = "nxp,tja1051",
-		.data = &tja1051_drvdata
-	},
-	{
-		.compatible = "nxp,tja1057",
-		.data = &tja1057_drvdata
-	},
-	{
-		.compatible = "nxp,tjr1443",
-		.data = &tcan1043_drvdata
-	},
-	{ }
-};
-MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
-
 static struct phy *can_transceiver_phy_xlate(struct device *dev,
 					     const struct of_phandle_args *args)
 {
@@ -229,6 +200,35 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
 
+static const struct of_device_id can_transceiver_phy_ids[] = {
+	{
+		.compatible = "ti,tcan1042",
+		.data = &tcan1042_drvdata
+	},
+	{
+		.compatible = "ti,tcan1043",
+		.data = &tcan1043_drvdata
+	},
+	{
+		.compatible = "nxp,tja1048",
+		.data = &tja1048_drvdata
+	},
+	{
+		.compatible = "nxp,tja1051",
+		.data = &tja1051_drvdata
+	},
+	{
+		.compatible = "nxp,tja1057",
+		.data = &tja1057_drvdata
+	},
+	{
+		.compatible = "nxp,tjr1443",
+		.data = &tcan1043_drvdata
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, can_transceiver_phy_ids);
+
 static struct platform_driver can_transceiver_phy_driver = {
 	.probe = can_transceiver_phy_probe,
 	.driver = {
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
