Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDC1BC433EF
	for <linux-phy@archiver.kernel.org>; Wed, 15 Dec 2021 06:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gWvd50shX23WLXfCXgsL1Ye230SYDIs6f7b6SApDtyU=; b=UJTyX4E7kOQnNJ
	MGlwiWclvqOEKw6BRKwqIudm1W+qyYY1VVAo6owuHFYu79O0Q0R7I9uTMDWYhK0Gp16laf24goUW4
	4I+8L7i+JpFTvC7ht3XsTiDpZUZqv6N3UPt0URD28HYvXfFjXoLeQNC4VHJwqn9lsv7gBQvESb6lf
	2sqECyQfCzUPr740VxsF+XuuUwjHH40P6goGw8j7UnVz1fa/rgfrbkubNWDrV84S1Pvo8En9UoZJG
	7HJQZUyMPJQE0gQFq5F3wRD2ycQwOv4aCjV+MXwjEH7cuy9H/c03DTayNLAZRFC+l2MY4xJClv3wa
	iYgSQEm76OdiJQ/CNICg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxNTL-00GnI2-E0; Wed, 15 Dec 2021 06:09:03 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxNT8-00GnEr-K8; Wed, 15 Dec 2021 06:08:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6402DB81B3D;
 Wed, 15 Dec 2021 06:08:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A51EC34600;
 Wed, 15 Dec 2021 06:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639548527;
 bh=qP3M0j38d5fBfa1rRuQH/PROtJBFzHMElQ75VTNhRP8=;
 h=From:To:Cc:Subject:Date:From;
 b=K/jSxlGBl11wJVxJFEHe7GHCM7GmZ0nyK4s9VOBws+sSVdxoWgfWuVG21AmMdtxpa
 rGif7IoukBHi248vCjMu4SNFJQh8xySFRPfvtSsVGiJYK18zxn+2uKpL9DdenR9S2a
 9xClcU/55j9H8UzG6BxVyfd7nvW9FAUx1v0XlJpg5XH9ZkcxbSKwZag8T0eqBWCLGN
 nHmMsNhODlBlB+H/ytNkjDca5IuaRNLjH9HJKdmcQ5V94d9j6kZtSwKdJYdNwBsk+s
 zfu9mncHlbfujKFPeNAeQfviwU9OK7mrisBkDNpI9Ki7zN1Cjippj8WvAVaLnV46+m
 eAlVwX904qoOA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Richard Zhu <hongxing.zhu@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel test robot <lkp@intel.com>
Subject: [PATCH] phy: freescale: pcie: explictly add bitfield.h
Date: Wed, 15 Dec 2021 11:38:34 +0530
Message-Id: <20211215060834.921617-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_220850_823368_D4C469BF 
X-CRM114-Status: UNSURE (   8.45  )
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

kernel test robot complains about missing FIELD_PREP, so include
bitfield.h for that

drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:37: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]
drivers/phy/freescale/phy-fsl-imx8m-pcie.c:41:41: error: implicit declaration of function 'FIELD_PREP' [-Werror=implicit-function-declaration]

Reported-by: kernel test robot <lkp@intel.com>
Fixes: 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/freescale/phy-fsl-imx8m-pcie.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
index f6502463d49a..04b1aafb29f4 100644
--- a/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
+++ b/drivers/phy/freescale/phy-fsl-imx8m-pcie.c
@@ -3,6 +3,7 @@
  * Copyright 2021 NXP
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
