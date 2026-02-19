Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCA4E9A05F
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 20:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1kG1VOUPljQY3aGs3qdwEFk1Uq8m7cZDC+H/TlXZMMA=; b=IZgDkI+uNFsiNa
	6ktKAkNTJU8h3HWTjHaj9PooCDfuZUz/nGcAzfjS7Iz50TKvDI3Fx85W63gUISYp/7s2iZcUwpbcA
	e4D6YCAWEEwIXC01OGahc2xJHkH6K+ZNWWXW5jFBAMd1hlYQkhyMqe0N/03TRVi2OCAfzwNZRJgXf
	jvYUkfWjOybA4jyg9nBV/k7Vrz53jthFWJkMvBe0Q2z5PMp/nuyVrmYt2RofKzK8FAvUCNM2zpYVM
	86pdyT9jH6tCgOwdaOFIQ82+WEeYen08vjlaB2btbPQTy8WBIt2sWLQk0GiNCEn7+xzvjxdqqAkAU
	RIXdwFaJUwhmlU3U07kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAfN-0000000C25Z-2mye;
	Thu, 19 Feb 2026 20:30:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeb-0000000C14R-4Agt
	for linux-phy@bombadil.infradead.org;
	Thu, 19 Feb 2026 20:29:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=4Fl0GRYhJNYOzvWRHv/JnJcENsELnRQF2u1pWpxul+c=; b=Qm3BHn0zEFByHY//7U0fs4Ltaf
	t1JchQw/g1IlytSVHyXV3OtgAkFv1JhcZOc1229ZS8K+lh5JOOGz6+yqQBULtzL9p92cOEorPSNcO
	o4WlwYSdnJMKk2kCihVfUDnZBBSNp7rVLKJxMujFUAl8U0aSqfX2vZVgM7IU94PI08khLH0jcELcn
	SUPS+XDbY0FSslpQt5jTHGiDeWMmd+SlhUxxrjILpjUEEBycYvpa6YaMzmDkr+FvloSMZjKZVgRY5
	3YXe4VhECX9GfaY+ytQF1gwFoeTJH+PGBqI710Ev+2M05TMwmMAolcu4V7rayIPPRvqmybzcKC/2f
	bPrBQzvA==;
Received: from mgamail.intel.com ([198.175.65.19])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtAeQ-00000001qf8-44iB
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 20:29:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771532971; x=1803068971;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=UGGpnkOvYPbrXSd8q4HPF1cTvjy9favFkK4diENBEpc=;
  b=ef5f/FbKDOZgUpI0oJ2qc9uISgLZW1+2jUF/nA5NhNfvqRGV+7h9rMN/
   AGL5jk188ujNsW59qfORq1QlZXcRr0I3SMx0L2JciOV13I1XB5RhXjecp
   UQxtbdeWADMCvKGACPr8MdJvJPvxRVlnSDUIDlHd3kJ048T7wZAao+qau
   LnjFNpqiUHn4iMQFGMNLpqCF83aBFupzZOZrCHM+AFTyCf9GwNATHERdP
   SPlkXNexYgUYOdDGtBwcvVxe188gKCRqXRe7MldXfDVcf9iFCcv8sdkTL
   Jnesm2OsU68ART3Bf3cOA9klPmMX6ziklll9QCYDNNn+P/23CnBSiayYT
   g==;
X-CSE-ConnectionGUID: 3+C1EYHmR0OUwaZCtzqFBQ==
X-CSE-MsgGUID: GVaV+BsdRPeTo6KiQP/KNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="72532334"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="72532334"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Feb 2026 12:29:14 -0800
X-CSE-ConnectionGUID: 72B2VFTLROqp7e9PeEtwgA==
X-CSE-MsgGUID: VMf519aCQ8yJ4M8xDzEMcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; 
   d="scan'208";a="219183207"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa005.fm.intel.com with ESMTP; 19 Feb 2026 12:29:13 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id F046B95; Thu, 19 Feb 2026 21:29:11 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 0/4] phy: phy-can-transceiver: Ad-hoc cleanups and refactoring
Date: Thu, 19 Feb 2026 21:26:18 +0100
Message-ID: <20260219202910.2304440-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260219_202931_570246_9D5C9778 
X-CRM114-Status: UNSURE (   6.80  )
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

Andy Shevchenko (4):
  phy: phy-can-transceiver: Convert to use device property API
  phy: phy-can-transceiver: Move OF ID table closer to their user
  phy: phy-can-transceiver: Don't check for specific errors when parsing
    properties
  phy: phy-can-transceiver: Drop unused include

 drivers/phy/phy-can-transceiver.c | 86 ++++++++++++++++---------------
 1 file changed, 45 insertions(+), 41 deletions(-)

-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
