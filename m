Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA7D9C48297
	for <linux-phy@archiver.kernel.org>; Fri,  9 Feb 2024 16:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=deg9SXnWB68kyGRiPURl5e7ROSPFzreMTstwDSVngcQ=; b=mXu90nMBTaJ5Tb
	cQUyeJM6PGGaoUUFtc7eGbMosZ9dYexzfjaIddwtgTDXbIwfnItGzgp1hysj4muQcRaeZj6VKOnSQ
	TtZtTgcJXUcYi4Gi0jeT4DGQRl6m6YFOCAzknJWv3pX71L22AaSwsdbZzg9Lk2cfe4CA0vc57uE7Z
	lZrEbcRQiZtr65e8RIFNYwtFnZZz1H6UI3bMYkDH5nGaATMAU3bhDCzgl44x9d5gqa5oC9tau+MEk
	W513S6I+VF7HKWEb/iZBS9Ew5f9eIsNTQpZ+3G3n0ZN8wV9AlJFllwFBR8mgYkos6E2AtL1GfsTE/
	769TTKSgm/n1OeCuGTDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYTLs-0000000HSpl-1Ij1;
	Fri, 09 Feb 2024 16:03:44 +0000
Received: from mgamail.intel.com ([192.198.163.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYTLp-0000000HSnm-2KRe
	for linux-phy@lists.infradead.org;
	Fri, 09 Feb 2024 16:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1707494622; x=1739030622;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=sxZgoQzRCkLciYTRnG7LsjTANpdXGKFB+KxqRFaktcc=;
  b=NODS1jx9Uj9O1x5ivQrwpOQK+ofU43D16rs/VjS4AGjq3UI5Q1meymEQ
   X4+jXms72yGfot/hwlafDEyzDsUuKtBBhoZPdyvlZTOq3jpOPtmWcuiiG
   AmNtCr66Aur+aQoHgxjIcvtEWagM24tVLcqG5u1w5Cz6wWgNmoqKbsJ3A
   Br23qNdWCKjMmAq+WeawgWSM0iIwqDhG0GqKKZY4WH1TuoVEVTq+pexNF
   rR54cmqyYfaTOuur/WdKL5RWxp9SdsCe0lNKvWsjWugZq05HSpFAY+gZ0
   OPwTKEX9xOPiJL0t6ijDM8kA1T03ZWH3XRcusAZCnW9bfJ+Gxp/2wztA0
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="4432020"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="4432020"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2024 08:03:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10979"; a="934459658"
X-IronPort-AV: E=Sophos;i="6.05,257,1701158400"; 
   d="scan'208";a="934459658"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2024 08:03:37 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 80496159; Fri,  9 Feb 2024 18:03:36 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [PATCH v1 0/2] phy: ti: tusb1210: a couple of cleanups
Date: Fri,  9 Feb 2024 18:02:13 +0200
Message-ID: <20240209160334.2304230-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.43.0.rc1.1.gbec44491f096
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240209_080341_623679_259ACE3D 
X-CRM114-Status: UNSURE (   6.59  )
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

A couple of ad-hoc cleanups. Nothing special. Has been tested on
Intel Merrifield platform (with DWC3 using this PHY).

Andy Shevchenko (2):
  phy: ti: tusb1210: Use temporary variable for struct device
  phy: ti: tusb1210: Define device IDs

 drivers/phy/ti/phy-tusb1210.c | 57 ++++++++++++++++++-----------------
 1 file changed, 30 insertions(+), 27 deletions(-)

-- 
2.43.0.rc1.1.gbec44491f096


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
