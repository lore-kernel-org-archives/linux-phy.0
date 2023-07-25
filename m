Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A499C0015E
	for <linux-phy@archiver.kernel.org>; Tue, 25 Jul 2023 06:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JwpznYH7G69pWwcCisMiDviHsOCibEB8qwCl4QpvVfw=; b=XbDLFc7M8V6pJw
	HunX/yzUQp2Aq05FsD6iNkvmSH6+miBcGki6f0pibB1OrNtI5iXpHebHXm0XmKa7zJfxNlHvoOZKE
	Mn6baQoDXFY1wmdolc+XsrqiqFLyrzHk16f3BsIOwjh3QjhBWGIIRsHQSaA7/dq03BxzIc67AyXbm
	eOMy3Vkn1P3HxlPVKNKXpG+Dvl2T9AcwfXE8d3SMjsIK6B46eJrs4IxJDpuKJPXuhTHDUzaOZgTjB
	VPGF/rZS0jAagUES3F4p1SKK82e52Z3MvPH3UjJJCWrf7pj163NSHOz2QrSisr8VyTzj0UlLHAmXC
	XOb8OMPMvAAzslSSfXUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBhO-006QrU-0S;
	Tue, 25 Jul 2023 06:39:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOBhL-006QqU-1T
	for linux-phy@lists.infradead.org;
	Tue, 25 Jul 2023 06:39:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EB77B61556;
	Tue, 25 Jul 2023 06:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0252BC433C7;
	Tue, 25 Jul 2023 06:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690267146;
	bh=8XPdv++zb+Beyc4F2LPhMvvoYzw149hnSzBvwhfpFKU=;
	h=From:To:Cc:Subject:Date:From;
	b=PkRQle4hiz+JFu1a6FtVPgjtpT3Xb3h/Z11Yzy19A9OG1DuV8Qtt65fHiMBKHjeon
	 qumSXERgh7r1Acc8hHldE/rJRuXCiJcnAQ/H4/315ZZv+ov4TTMB4sw1u23R9SIRZC
	 6s+i3zALwRZ6jUhS4RUUCNNSen+WFm30DiiOuIOh9pei3m1icxv3QiZ+Tt+qviXOJG
	 2F41p63wlGa5Dr/O8DDjSdM9+4+qz4ft1T6mX1+QmF5xt1g7Cj+lbBeMLIVN7G8RWT
	 Apy4lZ//htnBWcOCthilwiohl3HhYj0IEUK7DlzAXsVkJaB+WK7L763iB1hkQ+QcmU
	 Ym0eetJ4badqw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org,
	Minda Chen <minda.chen@starfivetech.com>,
	Roger Quadros <rogerq@kernel.org>,
	Changhuang Liang <changhuang.liang@starfivetech.com>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v2] phy: starfive: make phys depend on HAS_IOMEM
Date: Tue, 25 Jul 2023 12:08:56 +0530
Message-ID: <20230725063856.482696-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_233907_541375_D0E1C676 
X-CRM114-Status: UNSURE (   8.64  )
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

the startfive phy drivers use devm_platform_ioremap_resource() which on
some archs (s390) is not present. So make the drivers depend on HAS_IOMEM

Fixes: f8aa660841bc ("phy: starfive: Add mipi dphy rx support")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202307250509.oeudxG28-lkp@intel.com/
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/starfive/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/starfive/Kconfig b/drivers/phy/starfive/Kconfig
index a560533a674e..0508f9b123e0 100644
--- a/drivers/phy/starfive/Kconfig
+++ b/drivers/phy/starfive/Kconfig
@@ -5,6 +5,7 @@
 
 config PHY_STARFIVE_JH7110_DPHY_RX
 	tristate "StarFive JH7110 D-PHY RX support"
+	depends on HAS_IOMEM
 	select GENERIC_PHY
 	select GENERIC_PHY_MIPI_DPHY
 	help
-- 
2.41.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
