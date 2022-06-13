Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB30C43334
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jun 2022 16:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q5aZF3+dzgbQbPMowNIS8gmSQRkT8SzqG2fuWKdf10U=; b=JSini0BpsqlQAv
	golUsNVO5jlxE7guRC+UdBqguT0P153vSR2anzc6atLoTNuAlqKKB+uen1zRtupYUwABvSKb63B5l
	NnDKIXzQC5WFluVV32pgsKwzJ/I5HtMl4mbCqsRSC85PUoC9d/RIEgozyauK2iz/oIbyRQ9HRQW0I
	0P4a9Ok8FQSMwacd6PxUdEXrTpsvDcTZayOGl8uMtAVKM5WPI34gdSmtGsigpkdcf9MUFG1/fXIla
	+p869ycPoQAeLStaK1OFJkmvuDUBaatiVlrKMVp8tPIj9Ao8ITyuBPmCosJJEnQ2gYI4Hp/4YDEbn
	qMcDBNjr1yaNR7uTLYIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0meb-004e8L-E2; Mon, 13 Jun 2022 16:11:01 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0meY-004dBV-HH
	for linux-phy@lists.infradead.org; Mon, 13 Jun 2022 16:10:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655136658; x=1686672658;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=XkiVhgQtjYa74jxc4fNcCogOvoJpuvPnLCoIHPR00Jo=;
  b=GlmMwZbT/ionyxN4tKayK7FUF0MpGWtXLF45k7OFX8PGpQm3ysafi7Ap
   pUG1g7ln/WXnJliFD9Ia4+bfnCJYsOpcBhDWwUCQaTZrTHFbAkKmO4Sch
   3mhcYKKvO/1HB5clXxtoIRvTbhZVJADbTkjy7a+A8jsTpM8vdLnh6ghjt
   FqllRNInVhcbScTYRIRYJyLXymbE/qybDkGXL3O4qp8r8B4YpBz9RvNnG
   +J0F68yGjs2r+3Mj/Pf45TyzwLx+k/Gih/dH3GjG6MvXQIwQ/WVMXUV06
   e8WYjl58L8Kj6Cdk0MOrqvCsWzwUocO0Q2DqrNCzdhRZhC7qKN/DcBB9Q
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="275861174"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; 
   d="scan'208";a="275861174"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jun 2022 09:08:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; 
   d="scan'208";a="651502987"
Received: from black.fi.intel.com ([10.237.72.28])
  by fmsmga004.fm.intel.com with ESMTP; 13 Jun 2022 09:08:48 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
	id 4F257346; Mon, 13 Jun 2022 19:08:52 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Vinod Koul <vkoul@kernel.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Stephan Gerhold <stephan@gerhold.net>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Ferry Toth <ftoth@exalondelft.nl>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/1] phy: ti: tusb1210: Don't check for write errors when powering on
Date: Mon, 13 Jun 2022 19:08:48 +0300
Message-Id: <20220613160848.82746-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_091058_770123_242B6AAC 
X-CRM114-Status: GOOD (  13.10  )
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

On some platforms, like Intel Merrifield, the writing values during power on
may timeout:

   tusb1210 dwc3.0.auto.ulpi: error -110 writing val 0x41 to reg 0x80
   phy phy-dwc3.0.auto.ulpi.0: phy poweron failed --> -110
   dwc3 dwc3.0.auto: error -ETIMEDOUT: failed to initialize core
   dwc3: probe of dwc3.0.auto failed with error -110

which effectively fails the probe of the USB controller.
Drop the check as it was before the culprit commit (see Fixes tag).

Fixes: 09a3512681b3 ("phy: ti: tusb1210: Improve ulpi_read()/_write() error checking")
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/phy/ti/phy-tusb1210.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index c3ab4b69ea68..669c13d6e402 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -105,8 +105,9 @@ static int tusb1210_power_on(struct phy *phy)
 	msleep(TUSB1210_RESET_TIME_MS);
 
 	/* Restore the optional eye diagram optimization value */
-	return tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2,
-				   tusb->vendor_specific2);
+	tusb1210_ulpi_write(tusb, TUSB1210_VENDOR_SPECIFIC2, tusb->vendor_specific2);
+
+	return 0;
 }
 
 static int tusb1210_power_off(struct phy *phy)
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
