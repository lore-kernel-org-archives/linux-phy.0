Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEA5CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 13:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCt2zuH5vL5ZyaTS924JNRt0f/Pn93/ls/wseqibxqs=; b=GLGaB61XGPB3E5
	rcThlIbbnvK3e7mgl7tMm76/ZOWPMunXYTQVDkVBLj/PwWFHOzFidAWSOPXhf06UlHj1NtaaD8YuG
	66Ky42mQhS58aJhGqAnbvM/CoJebjQy6xplAZy74sjpyQRg2HcNQApDPw3Zr/dkWCH7X4fOreQxwy
	DITMY3mJn8Qn+wgFOZAJdqycEqD6KEmGckBGYwHXD13vv5a+pXnw5Vw5Eh0wvFLiYDjnjlfOWVNzb
	eIDZFOu5ZGpwHxx4xm9IMNznf/OuSjtyrOFEqPQ58LNIM8gODYBGUPoLi4zv8UQVzyiVgon0zujIY
	sb6vWfa6yfeUqX/+6XrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqH-0000000Gm4g-1M1k;
	Tue, 12 May 2026 13:08:09 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqE-0000000GkUU-49G7
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 13:08:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778591287; x=1810127287;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dwFBnLXsBSJhM0CEDgNPKRthY1LonLKx8Vv5G4u3TV8=;
  b=MFcEYAgzHoz3YBSxBsbrYQDVfTePRlOKuOp3cOup5nLdU20cbvN78yJd
   mjkAKeVKQBuiA2kgEmIsQLUNSi40Fiu0vYKm52F9T8M4QVZBcWr6W0kx7
   ZUJXOy4sVXkllufyci+vGJ7VIqOjjRljTxdEAsLXl2rt8WIHZURU3Ob2b
   7XQpgkl86XJtFdX5yDXLC19XHn9KZ4V2rdNZrSO68d+F7XfDqN/edD3+i
   SyTKu81X2Y3wx6mjorz+NhCEzWzD8CqQ2A7co5ybGBYGIJHCmX3GlqEHD
   MQPpM6nu7Ak3YD9l2BbDGV++GU0JjXAtexwB+SoXAmK8T8iBuJAhFFuCj
   g==;
X-CSE-ConnectionGUID: MpVnYI+sS1Os2Nrd4rytcA==
X-CSE-MsgGUID: aCSZUtFoR7OnIHiyAgAKlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90600354"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="90600354"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:00 -0700
X-CSE-ConnectionGUID: Y+1uMqVPSRezwEe6MW80Hw==
X-CSE-MsgGUID: cGT3AJYYR/q/bPajHAkS5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="233294181"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 06:05:56 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 7094699; Tue, 12 May 2026 15:05:55 +0200 (CEST)
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
Subject: [PATCH v4 1/5] phy: phy-can-transceiver: Check driver match and driver data against NULL
Date: Tue, 12 May 2026 15:01:49 +0200
Message-ID: <20260512130552.272476-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
References: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_060807_063630_4965A989 
X-CRM114-Status: GOOD (  12.89  )
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

Every platform driver can be forced to match a device that doesn't
match its list of device IDs because of device_match_driver_override()
so platform drivers that rely on the existence of a device's driver
data need to verify its presence.

Accordingly, add requisite match and driver data checks against NULL
to the driver where they are missing.

Fixes: a4a86d273ff1 ("phy: phy-can-transceiver: Add support for generic CAN transceiver driver")
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/phy-can-transceiver.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/phy-can-transceiver.c b/drivers/phy/phy-can-transceiver.c
index 2b52e47f247a..1808f903c057 100644
--- a/drivers/phy/phy-can-transceiver.c
+++ b/drivers/phy/phy-can-transceiver.c
@@ -162,6 +162,9 @@ static int can_transceiver_phy_probe(struct platform_device *pdev)
 	int err, i, num_ch = 1;
 
 	match = of_match_node(can_transceiver_phy_ids, pdev->dev.of_node);
+	if (!match || !match->data)
+		return -ENODEV;
+
 	drvdata = match->data;
 	if (drvdata->flags & CAN_TRANSCEIVER_DUAL_CH)
 		num_ch = 2;
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
