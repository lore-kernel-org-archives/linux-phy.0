Return-Path: <SRS0=ZRRf=JF=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF89DC433B4
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 06:29:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6A6A36113E
	for <linux-phy@archiver.kernel.org>; Thu,  8 Apr 2021 06:29:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6A6A36113E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tbTAK/zST8T6pTFKOitH5SN+qcvrDK9KlMwayL5ZPc4=; b=WcVCAly8DTKUCkDEuUGQ3KfPAY
	9guewV7Ktx6in/VG2dIMNhuqoE0ZlWdCONBQAnCwL8loZk3YlUCbR4PTaibQyxe52vXLGrgWW16nM
	0sDxvCbTx9kgGu/JemMFHSwyGQGorCpebXbAy4InCsr8jy/3y3y9ifM2nJ91na28z32lj1umaTaA7
	hT6gnsAMbklf8AU6spjlksxXZQ9fuP7gncNhur/ilsWcR0Yn9sNe5ADFJKTaqYpTVfudOGWG5IGzW
	8j6JtYSMdE7VOnCOnmaurNRnUb2nxfK+zP5cHfOxOBmZ0kK02TIX9CZa5ziTkIQPAi5OHtQI0n6z9
	ZnOeWqsQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUOAU-0075ha-L1; Thu, 08 Apr 2021 06:29:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUOAO-0075gj-Th
 for linux-phy@lists.infradead.org; Thu, 08 Apr 2021 06:29:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E563A608FC;
 Thu,  8 Apr 2021 06:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617863363;
 bh=uHsJc+r3JGSVbsMiXXvgkIot25sBBbXkD4W9IOg6KBQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ar7mGh9O0Djw7s5P5ub+0E6ZR2a5mGnGwLKFoiFcKzNzaFUcegtpE+FEva7SWeleT
 fZCGdGC286B88Yd0mi2dKE4QU107EUWCpV03G4sCikQMq0rfNhou+rX56gL0rQMt/d
 xDWMPfSdVSmej/xIvoA3xwYFmCPvJcs8NvcB/FG6lE5ue/jNG2KHl6D5ebtUdymuvg
 HO+LyGT0KklJJ4W7fnyqfMdqdK3qFD+eO5HI2l7JgLgaqSZShgt+/ga3Dt7xSCM6Bb
 gmF5p0R1SWzs5NBXFXPyiAphmttVWSPmO+tCg1BAWn7IYTLfhe7riFuU9CHo/Kf55P
 v3SehExQjcJIg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Junlin Yang <yangjunlin@yulong.com>
Subject: [PATCH] phy: Revert "phy: ti: j721e-wiz: add missing of_node_put"
Date: Thu,  8 Apr 2021 11:59:14 +0530
Message-Id: <20210408062914.3813102-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210408_072925_183495_8F14CA46 
X-CRM114-Status: UNSURE (   5.88  )
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

This reverts commit 00f2e6f668b0 ("phy: ti: j721e-wiz: add missing of_node_put")
as it erroneously adds the of_node_put() as incorrect place.

Reported-by: Junlin Yang <yangjunlin@yulong.com>
Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/ti/phy-j721e-wiz.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 2b354680a272..a03866338d6a 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1114,7 +1114,6 @@ static int wiz_get_lane_phy_types(struct device *dev, struct wiz *wiz)
 			dev_err(dev,
 				"%s: Reading \"reg\" from \"%s\" failed: %d\n",
 				__func__, subnode->name, ret);
-			of_node_put(subnode);
 			return ret;
 		}
 		of_property_read_u32(subnode, "cdns,num-lanes", &num_lanes);
-- 
2.26.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
