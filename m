Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5727CCD6115
	for <linux-phy@archiver.kernel.org>; Mon,  9 Oct 2023 17:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GtaBEg1QZiIJ05UT4i0/yqde7+l3u2sUKtXXn5N8Nj4=; b=1ZOWVOaAUSLMPO
	y9Cv66+JgSDK8I61Y0uYWeiRlQYHz8L5yqgOva13hwnL4otE52szjAJ8cPZfNZLIuLkpAfiyqBVZE
	l02GfP37+incX5mgKW7HkwB1ETwvFLFg/1cEYGyhyuZjqrEnM4Co+faGgfaHdtE2NCSXu8NXYkuxf
	PohXb1x1RRg+iJGPMlE5/hdVymZd0kx2TZf5Cp50wjGDJlLx/z07oyFZeEUj5PZxoxkelGPpxf3lN
	biYQnnmpSZU85im/AdS2O7z4w94JRFy5cdEBvfC42Km6bJWxKdfRgLjNdy35+z8Wb0sf7xqo4QwAT
	17+sxL+3+ludCWwueTzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu7d-00BIsv-0F;
	Mon, 09 Oct 2023 17:32:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpu7Y-00BIqI-2F;
	Mon, 09 Oct 2023 17:32:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C0A261253;
	Mon,  9 Oct 2023 17:32:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27C31C433B7;
	Mon,  9 Oct 2023 17:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696872763;
	bh=VUVftVqUQRAPrRXE5GXtCJ+nNN13cHRo2rvt57YHjgc=;
	h=From:To:Cc:Subject:Date:From;
	b=JYsnawpGhovMxfMRYcfdbd6wxbvQ8ChNzNDsoiXhlpSd1bo9987is6kP93xTrTY07
	 8yRI11kphrlvzEfFZmAoIxjawJVyaTU69p7pQ0tHihiSz88kIoPlISqLvaH/FnHoGs
	 2WcE9QA9XQkj8/PaGNhPeIZiwVZLKifqy4Xpwqc6WksbE1eS/tghLfoSnnLiMZfyd/
	 CZj2Jt8VJZWLB/Ic0JdPqnIE+GTcWlq0ZEqJo3NYq74ryoqQnokIHOqUeMiQS8LZCA
	 KffdxXiEhS/zudMmTiM4FHrhcZkaGIUU191GC74UF/QaF7Av3tkLvyJOy/BNjQq1oi
	 j3xv9s5ZnxvuQ==
Received: (nullmailer pid 2530447 invoked by uid 1000);
	Mon, 09 Oct 2023 17:32:42 -0000
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip-inno-usb2: Drop unnecessary DT includes
Date: Mon,  9 Oct 2023 12:29:12 -0500
Message-ID: <20231009172923.2457844-17-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_103244_772960_0F3C41FC 
X-CRM114-Status: UNSURE (   8.14  )
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

Neither of_address.h or of_platform.h are used in the driver, so drop them.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index b982c3f0d4b5..a24d2af154df 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -17,9 +17,7 @@
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
 #include <linux/of_irq.h>
-#include <linux/of_platform.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/power_supply.h>
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
