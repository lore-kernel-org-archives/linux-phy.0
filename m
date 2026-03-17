Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94911FF6E6E
	for <linux-phy@archiver.kernel.org>; Tue, 17 Mar 2026 20:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gEVdD+TTidh9E/EMU0AthOxn53IZSEu8X+LhALZhWoo=; b=jTFNWcEZ9CRPlb
	He6CJQY+yYcB0v1SkfK0FOuJlHKEbTAWn9srH7P8+FXQfhgNXqHRaHd/EQbxfRpa9rkcp8ZjX+UcQ
	g80Ff3Lt51CN4tC3uzwo22IwT2DdTw1WkrGShBD87uBGPf3z8TabgtMfMvYZATWpDq30ZV0b0XuLr
	7Llvb8Fv/FeHnaJYPWYaJot5Weico/yThhMQX5aPLjmAolos9o7lhVjpZ2NrR4Z04NJcGSAlj6Dyw
	tNxaifwPmn/6nfOY7CRaUXO38E50QQpi5eGv4AhGm3M/9tTUkT+jFqX1uAzAdhSgw+v2d2NDETe+R
	O+vqRQSHfe5G9zd3T0gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2b3c-00000007CeJ-1HW5;
	Tue, 17 Mar 2026 20:30:28 +0000
Received: from mgamail.intel.com ([192.198.163.11])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2b3a-00000007CdE-11un
	for linux-phy@lists.infradead.org;
	Tue, 17 Mar 2026 20:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773779426; x=1805315426;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=xLeLleax5TCQNPTg61bOs9yT2cCjVjiPOVMyP9cMJmI=;
  b=oATWwPNEj9HQiIKKP3/CbCQ8x3AARqLApL4i8Lh+vxvefLjf6FhqLkNs
   VmP7isYioDtxYyU0w5dkWoM3vpOMPwz6YCtB2XEE6yVxSEEV7l/KN8JFf
   QYGstCgUnYDSQFe0pa0bb33pKX9po3e99tR3NWbqKOQE+gHkx4co+2KFB
   ItjzOEIEPfItqCB+hcTYme7rvNyuOndmGYjMovc1EOAKuuiX8jwD29sJi
   4Rw0VBzKSc3GtDMKuNxG/mBglsmwx0uiAQuPw5ZwCPMnrEyAUXpNTcZUz
   wofH9BHooLTxSA4Bj4PA5066YDxNmoDZqCYr64qTBBDeodZ3vWIE7t2Gw
   Q==;
X-CSE-ConnectionGUID: 4QjSfToRR1aCH+i1w8peTQ==
X-CSE-MsgGUID: t9tYW5j0Q8CLzRgbyqOrYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="85456288"
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="85456288"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 13:30:24 -0700
X-CSE-ConnectionGUID: gPm3KkzaQvu1v37aSgCSfA==
X-CSE-MsgGUID: xGI3cHaZTz+VNUXaZdtx9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,126,1770624000"; 
   d="scan'208";a="226527805"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa003.jf.intel.com with ESMTP; 17 Mar 2026 13:30:21 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 0246295; Tue, 17 Mar 2026 21:30:19 +0100 (CET)
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
Subject: [PATCH v2 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and refactoring
Date: Tue, 17 Mar 2026 21:27:26 +0100
Message-ID: <20260317203001.2108568-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_133026_372147_305ED1CA 
X-CRM114-Status: UNSURE (   8.97  )
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

The driver does two things that need to be addressed:
- includes subject to remove gpio.h
- checks for error code from device property APIs when it can be done in
  a robust way

This series addresses the above and adds a couple of additional refactoring.

Changelog v2:
- rebased on top of the latest changes in the driver
- Cc'ed to Ulf and Josua due to above
- elaborated dropping of_node parameter (Vladimir)

v1: 20260219202910.2304440-1-andriy.shevchenko@linux.intel.com

Andy Shevchenko (4):
  phy: phy-can-transceiver: Convert to use device property API
  phy: phy-can-transceiver: Move OF ID table closer to their user
  phy: phy-can-transceiver: Don't check for specific errors when parsing
    properties
  phy: phy-can-transceiver: Drop unused include

 drivers/phy/phy-can-transceiver.c | 84 ++++++++++++++++---------------
 1 file changed, 44 insertions(+), 40 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
