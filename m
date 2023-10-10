Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43EDCCD98C0
	for <linux-phy@archiver.kernel.org>; Tue, 10 Oct 2023 20:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=60F/dCJvnwO9tNycG1dXJSptxw7hK+FAa+wtgxMkrUs=; b=lcC3mDXJLyj16/
	DE6xNd8eFddPGBuscNpQzaH1wQu1EhP4demAM+D04dlANdUTyP9zGrBtVJbZ23C9XdBXlnp7QAXN3
	bsp7lymTJvo3+Xq4xVbDeeGeL69i/d9I8djhfG0magIwjaAFFD880ffv9SNzFFFn0Xf5hYFUmNfGt
	DOTyLDnA1k1K0NVafHGPnWiukiMAZaC+f7gRPN+8moMZ8UFHJ3fKnwtpPmteQa/U2AofRakdxGK3g
	88+wxkj2BGPk82Mf8AEUc8wzM/mBClaCwEQKFTt9IgocXMQmPUpx5SHt6xqJmQNndm11XtgLA8u77
	3ak10REXnupqi8mn6Jow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqJn0-00E9hh-2x;
	Tue, 10 Oct 2023 20:57:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqJmx-00E9gu-1S
	for linux-phy@lists.infradead.org;
	Tue, 10 Oct 2023 20:57:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5F6A16182C;
	Tue, 10 Oct 2023 20:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91D46C433C7;
	Tue, 10 Oct 2023 20:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696971428;
	bh=u8+kackalOuLDc7cWB4DvuqMcg0D1zYet7blRkIR7GM=;
	h=From:To:Cc:Subject:Date:From;
	b=bycelGIK6oapVcld+LF/xHL1B9RKon3S9cXRELxn56mgTejM95A+wgLTLmsGabcW0
	 3FNgwKwAgY3jsXWJ3T/TOLRAeNLmh7S57h4nzz1z5f1t8wdBFxWSEcc0Pk5iCZr03f
	 nS+HG33aMaslZYYYO3xGMF/Fyjo4Y6kqRhWi4Mtojwwn9hUqDpS5Wuzc2fMASIItt8
	 1HdYL32T0us63BTkltpc1g1Iqm6y+0H2oPDktpP7A0tI7Q5BVc8nxt5d7xd7nklr9U
	 xTryQOeIN6iqIkl+gfTWteS/+5YfukTJUYlqO6MXuRkysZTfztPcQY5ZOR4ZqngLoZ
	 ug9k1Y57x3Huw==
Received: (nullmailer pid 1585181 invoked by uid 1000);
	Tue, 10 Oct 2023 20:57:06 -0000
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] phy: realtek: Replace of_device.h with explicit includes
Date: Tue, 10 Oct 2023 15:57:00 -0500
Message-ID: <20231010205701.1585026-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_135711_535414_DF0C4C71 
X-CRM114-Status: GOOD (  11.85  )
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

The DT of_device.h and of_platform.h date back to the separate
of_platform_bus_type before it as merged into the regular platform bus.
As part of that merge prepping Arm DT support 13 years ago, they
"temporarily" include each other and pull in various other headers. In
preparation to fix this, adjust the includes for what is actually needed.

of_device.h isn't needed, but platform_device.h was implicitly included by
it.

Signed-off-by: Rob Herring <robh@kernel.org>
---
Note these were added in the merge window and missed the last round.
---
 drivers/phy/realtek/phy-rtk-usb2.c | 2 +-
 drivers/phy/realtek/phy-rtk-usb3.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/realtek/phy-rtk-usb2.c b/drivers/phy/realtek/phy-rtk-usb2.c
index aedc78bd37f7..0a6426285c67 100644
--- a/drivers/phy/realtek/phy-rtk-usb2.c
+++ b/drivers/phy/realtek/phy-rtk-usb2.c
@@ -8,8 +8,8 @@
 
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
 #include <linux/uaccess.h>
 #include <linux/debugfs.h>
 #include <linux/nvmem-consumer.h>
diff --git a/drivers/phy/realtek/phy-rtk-usb3.c b/drivers/phy/realtek/phy-rtk-usb3.c
index dfb3122f3f11..67446a85e968 100644
--- a/drivers/phy/realtek/phy-rtk-usb3.c
+++ b/drivers/phy/realtek/phy-rtk-usb3.c
@@ -8,8 +8,8 @@
 
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_device.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
 #include <linux/uaccess.h>
 #include <linux/debugfs.h>
 #include <linux/nvmem-consumer.h>
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
