Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263E2CDB482
	for <linux-phy@archiver.kernel.org>; Tue, 17 Oct 2023 08:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sLeM9hfv7Lw9q722701gYjidwtfpgmeg7ebYyNDi34Y=; b=g8KnsU0X43EyCJ
	sbF8HrYzHCaEaAB0kJksFpP4wvYznimzUUU4cWaA4tfHhiGLPEPuZM6DnkhunQ1O9kosdZQBYdSS1
	/RbczgwABJiDHnzjJ/qAzWBqvqWzf2TtdIdQAGwOVrbxzgV86G/SEfmvWVg9Cd+Afz6+80UZytY6a
	U89AHqdtGxJ8t/19Is7rQHUIcsd8CJYB4NGzwwVDkgHr9BxqLVczt5xAqr6P1VIgYcZQwnELjp49R
	zfwntmH6AX4a6z9Tjo73+o+TZCCjZYLrjkotITVV0KMRSeNqpn7HrDOP6QlSGdSW20wCB6wJwniyJ
	PFiSw6cjY2GYcZS+plAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsf3e-00BckA-2r;
	Tue, 17 Oct 2023 08:04:06 +0000
Received: from mgamail.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsf3b-00BcjQ-0R
	for linux-phy@lists.infradead.org;
	Tue, 17 Oct 2023 08:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1697529843; x=1729065843;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=fuDluEewVCPPpRlZEUD+VBUZTdiv9Ix4p3tW1oI2M/Q=;
  b=OWTSoO0v5egY+qNju1vVAHPaZX4grZR7jYBQB5eQ6WwSVed+1LPp9zEu
   0fgg0dJhikiH0Gd577z18qx69lDtlQ7n+fAxEaqtA1Qe8lt/VQSEq4Uu+
   z/k4Pc+siFViTn9B3DMBxCAvTKjkHRybFsaQ4+vXFDhzwcJj4Qn3MPpR5
   9q86+e56viBW/DDQQbSMSfTC5vzbfwCsVrt8hMZDBMhkmd3ArngmUi4nm
   BWVCLZ8O5B8LK9yh9qwaqT80QvPkKOORTTlwIaGrhmdByKl1yz1OhsqZR
   PfxZM93kx/xeqAuw5MmS27dlLGWJ8+hcFIAiXQeXp/NN2qMWzBoXaHDem
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="382944815"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; 
   d="scan'208";a="382944815"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 01:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="872450741"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; 
   d="scan'208";a="872450741"
Received: from turnipsi.fi.intel.com (HELO kekkonen.fi.intel.com) ([10.237.72.44])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2023 01:03:58 -0700
Received: from svinhufvud.ger.corp.intel.com (localhost [IPv6:::1])
	by kekkonen.fi.intel.com (Postfix) with ESMTP id 5053D11F89D;
	Tue, 17 Oct 2023 11:03:55 +0300 (EEST)
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: [PATCH 1/1] phy: Kconfig: Select GENERIC_PHY for GENERIC_PHY_MIPI_DPHY
Date: Tue, 17 Oct 2023 11:03:54 +0300
Message-Id: <20231017080354.538047-1-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_010403_204123_E0BBCC32 
X-CRM114-Status: GOOD (  10.30  )
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

GENERIC_PHY can be selected by GENERIC_PHY_MIPI_DPHY directly as
GENERIC_PHY has no dependencies. This way drivers that depend on
GENERIC_PHY_MIPI_DPHY can avoid having to select both --- which they
apparently often omit, too, which further leads to build failures.

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 drivers/phy/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/Kconfig b/drivers/phy/Kconfig
index d1670bbe6d6b..787354b849c7 100644
--- a/drivers/phy/Kconfig
+++ b/drivers/phy/Kconfig
@@ -18,7 +18,7 @@ config GENERIC_PHY
 
 config GENERIC_PHY_MIPI_DPHY
 	bool
-	depends on GENERIC_PHY
+	select GENERIC_PHY
 	help
 	  Generic MIPI D-PHY support.
 
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
