Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D428FCD3423
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9KNA48Z1PZOO2fdBmXXMmrCh15oQWqZTvjTPNWWfyzE=; b=d32kCxDwz7yAzu
	/cnqHF+5kFhwXiFWWzSLQ/xyaedef3/4GDS2hfWFoFrcVYzCVf1aRjp/64FBBkGJ7DH/tqA+bmbIM
	qGbs7O2Bi4Iwd7yuZzz1s5iqWErbDl6y/R1a2OxZcWXQWQDzZ9SM+XmpJORtRlgMR+wKYE+SqXP8T
	Y5EAyM20B5TLopOQhZ13VK0KhBwY8ByfCn4a7v2IbTqwBsmAW/Gjfmft2c6MFSraBZDWHUnzSyhYb
	W6nkxUAlLGMmkecJqL7qhsCXG4ValP87U40EHGTeA/s/bSYlwRTD+iLV0N4xKCzHyqwiJE8cE9+UQ
	GRSQoax7xJHoBEO2fmog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnIf-0000000CYaQ-2Up8;
	Mon, 04 May 2026 07:01:05 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJnId-0000000CYYt-14M5
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 07:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1777878064; x=1809414064;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=6a+NuN4eKBbINrUS/oYZuMVtQvHS3uko34ju1kyMzEg=;
  b=PHT9pX9lxhOeVScOFYWez/3cY8lIOFxEqeqxnyh/LJTwibLRCwCC+/kY
   KWavKBJAZp65JL2jmcF1W3PPkjbGCzywEYaVGyfhJGwmEtYn+/GsLkEwm
   jg3Wxb9j4iu8AFxUh3CLxcaX1yzw/fvc4AOSI7aY+0/J4YWZxOfwMtr+2
   k3aF4X+pA4H69sV5W7gEtaxaOArpY7oQzYjgaoF5EJ8pc+TDqsitqGQyc
   B6ja70TMALpxCd1dHljrPDU9/yswFLd8S7hk8p+y1RwGhwQU1QHV5ofZI
   cVr1EPk4YeUywQgGHZa97rLXG0OmA/flScwO++o/L3lztB1NKDDphPN5a
   w==;
X-CSE-ConnectionGUID: oiVoUL9GQLGhfTze5jaX1w==
X-CSE-MsgGUID: 93lvbEqNQM+ApuGdgsaE4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="82344145"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="82344145"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2026 00:01:02 -0700
X-CSE-ConnectionGUID: 5F5rVd/PT+yZ4vvXdx470g==
X-CSE-MsgGUID: Bw3EQpWXTlqPbZWoCeDl0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; 
   d="scan'208";a="240422852"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 04 May 2026 00:00:59 -0700
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 3157F98; Mon, 04 May 2026 09:00:58 +0200 (CEST)
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
Subject: [PATCH v3 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and refactoring
Date: Mon,  4 May 2026 08:58:51 +0200
Message-ID: <20260504070054.29508-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_000103_355447_260E10AE 
X-CRM114-Status: UNSURE (   8.87  )
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

Andy Shevchenko (4):
  phy: phy-can-transceiver: use device_get_match_data()
  phy: phy-can-transceiver: Move OF ID table closer to their user
  phy: phy-can-transceiver: Don't check for specific errors when parsing
    properties
  phy: phy-can-transceiver: Drop unused include

 drivers/phy/phy-can-transceiver.c | 83 ++++++++++++++++---------------
 1 file changed, 44 insertions(+), 39 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
