Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A06BDCD4F3C
	for <linux-phy@archiver.kernel.org>; Wed, 13 May 2026 22:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k9zn9xq1HVrd6BHOhDibvFJR42B4U5u4K2ct8QC8pQ4=; b=Vin6ROe2C8wvCN
	Q/16FATn9NxvcixUnCDnJR0E4POcGXO16uWja8Nv5RTAtRy+f+XWNpZL5GX0UxYQUbXdgr4el69W6
	QUcymCfhwz22d7+vbWoh6aRiKnwR44tOZvV9W1dlQSmjglu63wGNs1tRPDZ/dffz5k6jwZpVC8ak3
	IRTFrk0CTSH5fXir4PLZ1QQT+K65fxbmfNyq8+jAgiYjV6oZRgD+nCGvjFyXw9+l4KWgFZyXQrcEX
	EblpOO21rPR4G+mzumPS8XAPbPys/dE2X4qkwRNmIYyrm078hmB5PVdPezCkQzc3M0toar53BRBzD
	xViUt8A2mFO0eP7roE6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHgB-00000003syu-0Nzm;
	Wed, 13 May 2026 22:03:47 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNHg8-00000003svu-3dG3
	for linux-phy@lists.infradead.org;
	Wed, 13 May 2026 22:03:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778709825; x=1810245825;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=UyFfe1RpnocjlGDV7b3omhVXqWEqHJ/3s895StkmShs=;
  b=TqrGYROMRBP0mPBIGW19NAynd5mI0U6vszqdEU9H8xOhzmE0/RWuVdks
   nvCB3U8eq6OOTRqDAbWe5C8hOXWPI8MDBJanXhdD6ouiOv68TpgaJIO/L
   aoVyQnIHpcrfa4Vi4xlckG3Or52bjrc7eRyrLHraWeYOSyYdGtl9CrwHB
   2zMQASPVlWpghpUtYCShUXABHeDIJY7bo8Ox8SUYTolEbpc+Iy+QgVujh
   okB8bXndQHi5Kger/MAlzPqx14qo3Qmp6gahXD6Sdt0+eVB6m4jNEr2hO
   PzAJlNvsQoZnTH4u+jLUL0KdX6OeTUvQYqhwbakCVOIkfvmYNk/X5lRk4
   A==;
X-CSE-ConnectionGUID: 47ftYDgITpaVti2PCxcMnQ==
X-CSE-MsgGUID: ui0uI88dRzWYqPEikwQqHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90749908"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="90749908"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 May 2026 15:03:43 -0700
X-CSE-ConnectionGUID: Ec2n8dmNQLCfy8vRg8j8Lg==
X-CSE-MsgGUID: DwaCqn07Rdu2eAKl01cMTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; 
   d="scan'208";a="237224937"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa006.jf.intel.com with ESMTP; 13 May 2026 15:03:40 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 9104995; Thu, 14 May 2026 00:03:38 +0200 (CEST)
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
Subject: [PATCH v5 0/6] phy: phy-can-transceiver: Ad-hoc cleanups and refactoring
Date: Thu, 14 May 2026 00:01:25 +0200
Message-ID: <20260513220336.369628-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150344_941045_33CBF20C 
X-CRM114-Status: GOOD (  10.21  )
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


The driver does two things that need to be addressed:
- includes subject to remove gpio.h
- checks for error code from device property APIs when it can be done in
  a robust way

This series addresses the above and adds a couple of additional refactoring.

On top of that it fixes potential NULL pointer dereference when driver_override
is in use.

Changelog v5:
- fixed typo due to rebasing of patch 2 (Sashiko)
- added patch 5 to slightly improve maintainability

v4: 20260512130552.272476-1-andriy.shevchenko@linux.intel.com

Changelog v4:
- prepended the series with match and driver data check (Sashiko, Vinod)
- made the max_bitrate==0 warning only when property is present (Sashiko, Vinod)
- rebased the rest accordingly

v3: 20260504070054.29508-1-andriy.shevchenko@linux.intel.com

Changelog v3:
- fixed commit message in patch 1 (Josua)
- dropped stray change (Vinod)
- collected tags (Josua)

v2: 20260317203001.2108568-1-andriy.shevchenko@linux.intel.com

Changelog v2:
- rebased on top of the latest changes in the driver
- Cc'ed to Ulf and Josua due to above
- elaborated dropping of_node parameter (Vladimir)

v1: 20260219202910.2304440-1-andriy.shevchenko@linux.intel.com

*** BLURB HERE ***

Andy Shevchenko (6):
  phy: phy-can-transceiver: Check driver match and driver data against
    NULL
  phy: phy-can-transceiver: use device_get_match_data()
  phy: phy-can-transceiver: Move OF ID table closer to their user
  phy: phy-can-transceiver: Don't check for specific errors when parsing
    properties
  phy: phy-can-transceiver: Decouple assignment and definition in probe
  phy: phy-can-transceiver: Drop unused include

 drivers/phy/phy-can-transceiver.c | 93 +++++++++++++++++--------------
 1 file changed, 52 insertions(+), 41 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
