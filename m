Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6EF3C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 15 Mar 2022 23:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8UwzjM6ce4VujuM2bc6RayE+1WC4WRL4B3hm4EwoJs=; b=t/ah+AyoGekNH7
	7NDqFBW9FOpkOKYX/rO6TUJSbLzsthKZfLU3xSRUX2iNSUXBbi53JBiFKV05d9zEts1S+5U8ln2KP
	+vz35dV/OMqzKFbkGdribj8e0D81VKeOoPaxNSfa8xxPTChiOxPB1j3fAz6aJsQWmQWePXKmEyZ9j
	HAPrfdcqSCR4su+bYrqctm3D6bY0FiZjJH9WWaEztz9TOdZyquiDPetU7SSMc34abjFwyY50VXXpE
	J7N8p2zqi3UOreTrNyxdmvafGXwvZkam3HQBOENzDdNX8V6exgnIL1vChBc/6t8t4PropGCupoxrn
	1jgUXinSgWZNe+Kz5SSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUH1T-00Aw0m-5J; Tue, 15 Mar 2022 23:56:15 +0000
Received: from out30-43.freemail.mail.aliyun.com ([115.124.30.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUH1P-00Avxs-Qb
 for linux-phy@lists.infradead.org; Tue, 15 Mar 2022 23:56:13 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R831e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=8; SR=0; TI=SMTPD_---0V7JsXvb_1647388565; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0V7JsXvb_1647388565) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 16 Mar 2022 07:56:05 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: ioana.ciornei@nxp.com
Cc: kishon@ti.com, vkoul@kernel.org, netdev@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Yang Li <yang.lee@linux.alibaba.com>, Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH -next] phy: Remove duplicated include in phy-fsl-lynx-28g.c
Date: Wed, 16 Mar 2022 07:56:03 +0800
Message-Id: <20220315235603.59481-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_165612_051627_6A116744 
X-CRM114-Status: UNSURE (   5.36  )
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

Fix following includecheck warning:
./drivers/phy/freescale/phy-fsl-lynx-28g.c: linux/workqueue.h is
included more than once.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/phy/freescale/phy-fsl-lynx-28g.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-lynx-28g.c b/drivers/phy/freescale/phy-fsl-lynx-28g.c
index a2b060e9e284..569f12af2aaf 100644
--- a/drivers/phy/freescale/phy-fsl-lynx-28g.c
+++ b/drivers/phy/freescale/phy-fsl-lynx-28g.c
@@ -6,7 +6,6 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/workqueue.h>
-#include <linux/workqueue.h>
 
 #define LYNX_28G_NUM_LANE			8
 #define LYNX_28G_NUM_PLL			2
-- 
2.20.1.7.g153144c


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
