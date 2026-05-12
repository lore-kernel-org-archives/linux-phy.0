Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF2DCD4851
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 13:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uLjEynMSgy95L/KKUYvA/tnA597b/unzKtF/maoR7Lc=; b=ZTrm1T0Y8WAq36
	CfL+bA0I4FJV63WjpRid5Ex4su9zSbkPrEBZKoxlW0ZZem3/D1gbDjtDcIMmPgwTBBIqwXkmhl+ow
	EO6VKWpalsUZ65B8cq/hGnMvCBiboA14DlN85DKEbwxry8Ma9OlSwRQhzPoBv0XAD8rITOQwFnm2Y
	zHUu3acK8d8WsijTvAvzAJsjsp7l//+LfyYymQvAxktC/ilX6JS1LnRKhzGpZSaWsAdSHjad1xjK2
	fpLdXgVB3QRE9OFlYIBCf0o5q0f37PnfA7bl9BxN98EAaGKopyrjCfHYoQK3mnpG29PsWjZXf6JvA
	DGraqm0Puirw4FA7iv4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqK-0000000Gm7X-2WPU;
	Tue, 12 May 2026 13:08:12 +0000
Received: from mgamail.intel.com ([198.175.65.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMmqH-0000000GkUU-3BsL
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 13:08:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1778591289; x=1810127289;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qcMzXO16kkW22ELXgXwx0wx3D5W96Xm2XbyK4K7bWS4=;
  b=aXYojhZToVVrqNFMYltphyf5d2jeKvoNlUIPst///aoZp25To795Jsy2
   DsubVJoacfjexEVKXDFzdipwPsheAXGm2uDlHYz2PcRgdl0FExTZQ3rzZ
   MIOC6MVXCJy8fhnG9OW1NgfSQUiTkNFrDa+2o6sOEt0JAOjeXCagZkoTo
   P6iUQno8ijK6x9+Bkm61rdSC3Uhz7H7EziQL7LwmrDiSIEfhBgc9+B11N
   D3RQZlw9UKKrxxCu+u6SYUijD4Fkhv2zN4aigUjnTBdnXJzBgB8HyOjXk
   Bfii5lKUEBHuS1KdMPw3JEdCvLRjdb5nYE+Wl/uYyrShXR8Q33uvZXVPn
   Q==;
X-CSE-ConnectionGUID: fg4v3pAYRYWo/qcesyEzlw==
X-CSE-MsgGUID: 5CLPNStGQQGwSeduVThhjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90600370"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="90600370"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2026 06:06:00 -0700
X-CSE-ConnectionGUID: UCybhSIKTYCXCfDz82Ye4w==
X-CSE-MsgGUID: eesEYDwqSzGxCb1rbjDvlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; 
   d="scan'208";a="233294185"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa006.fm.intel.com with ESMTP; 12 May 2026 06:05:56 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 6DA4298; Tue, 12 May 2026 15:05:55 +0200 (CEST)
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
Subject: [PATCH v4 0/5] phy: phy-can-transceiver: Ad-hoc cleanups and refactoring
Date: Tue, 12 May 2026 15:01:48 +0200
Message-ID: <20260512130552.272476-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_060809_849793_47B6CD3D 
X-CRM114-Status: GOOD (  10.05  )
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

Andy Shevchenko (5):
  phy: phy-can-transceiver: Check driver match and driver data against
    NULL
  phy: phy-can-transceiver: use device_get_match_data()
  phy: phy-can-transceiver: Move OF ID table closer to their user
  phy: phy-can-transceiver: Don't check for specific errors when parsing
    properties
  phy: phy-can-transceiver: Drop unused include

 drivers/phy/phy-can-transceiver.c | 89 +++++++++++++++++--------------
 1 file changed, 49 insertions(+), 40 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
