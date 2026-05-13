Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 607CECD4F21
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 22:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCt2zuH5vL5ZyaTS924JNRt0f/Pn93/ls/wseqibxqs=; b=23q4DdOpGi8Vg6
	Oc2kONNZGyx53jORF6BoRYKomeuB5kj2IH9QouSbHp12e73kHrZqo/0uq5xqlPD0+7T2+fEUsgSko
	D8pfa7HizdfFL+909BM5VAmm2RZBmSQ44XlFYpXJHhfRtW6+Gae9DPyXlWtdf2m/F3xKy8e+ObALp
	v5NaagFWdLtHXr/h92IjTlAvCHf2QcvsieKQyBCPea6ITzuIQFNRaqxgMTOCqK5SXcXKO1cawKMNw
	m3S+vjZ5WULYXeOlYCTsXBp8+BUbd4feApPVn2XJDWfIMObYR4TAWIfis5x2utBQqEDDNpubNC9ip
	dODPYVTma4anuFL8rP3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgA-00000003sxc-0CZ8;
	Wed, 13 May 2026 22:03:46 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHg7-00000003svt-2gA2
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 22:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778709824; x=1810245824;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=dwFBnLXsBSJhM0CEDgNPKRthY1LonLKx8Vv5G4u3TV8=;
  b=EF70uXKY/ISd6rkoaHXP2nh5v6TXGObW2evyQyUjP8Dx/6yF06iHgSue
   oDi9a7G3xDj5WjSU1qp222BaCuZbAwTRlrBGqSPwd8r85p77Ax1hEwUv9
   46oMKg6YzRaWeuhNINOha01wfkxS/4gHZYSQ9zvzH+GbURUNwMIFe+obo
   jP882WOy7zyngxI3c5yYOL9Of607VPnC4DfI9nl8DvDyxKhOQplcuXw58
   I9I9OmmEfFmcr4NjXipCgsDvTnunuB0pKW4iSd2htvY/mpgmxpRCeyNZo
   kS7FBj2zTd4WvtKv6aWDowx7nky6TvhjjJvCctPeTa+jHEDS0cGHR1aLg
   Q==;
X-CSE-ConnectionGUID: JjlK5AnCTzON9HqXBz0vWw==
X-CSE-MsgGUID: OarHhXn/SZCBisL6mMbwoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79600739"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="79600739"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 15:03:42 -0700
X-CSE-ConnectionGUID: HXaP3u2zSlmHvqU9Upj2Rw==
X-CSE-MsgGUID: VQ9ATF74QHWiC3PJQYuEQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="238447029"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa007.jf.intel.com with ESMTP; 13 May 2026 15:03:39 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 93CBA98; Thu, 14 May 2026 00:03:38 +0200 (CEST)
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
Subject: [PATCH v5 1/6] phy: phy-can-transceiver: Check driver match and driver data against NULL
Date: Thu, 14 May 2026 00:01:26 +0200
Message-ID: <20260513220336.369628-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
References: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150343_719347_0414F972 
X-CRM114-Status: GOOD (  12.30  )
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
