Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D72C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 12 May 2022 13:11:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6TfoJdmZXv2KvfiGRHJQNzHkx6aoDybBw3dEDZJYIHY=; b=HAOmumZgcFFfCq
	6AvQT+6GUFv/BectUQveO89WO0WVfk8h02MTx5KL1CxG+6k5eFG454AKJy/gNRXTozC2GUEI6GvNE
	FM9+/6JBmB5T//4Bl2Qof02uhIGPtEyOapAB1Hhyxg47kQZKIJn/LPxwIffdpArSXUnkYR8qZSj6j
	8BY7NN6UA26d4qYcevNgUb94n88Hvj+xfqyw7Qj+CSQYKmI3EziGn7SHul978RKNg3DrFn/2hk6wk
	oNhgexqDYXFFfnMgRbufB7IvoQ3IHIi9IBKu04cofQJDjSy2Reluq7dHE9jR62f7LLGWYfikjjEPK
	mlfASjM595jEeGl/gfAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1np8bT-00C0qz-JK; Thu, 12 May 2022 13:11:39 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1np8bR-00C0pR-2Q
 for linux-phy@lists.infradead.org; Thu, 12 May 2022 13:11:38 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 127DE80B3;
 Thu, 12 May 2022 13:07:56 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-omap@vger.kernel.org, Miaoqian Lin <linmq006@gmail.com>
Subject: [PATCH] phy: mapphone-mdm6600: Fix runtime disable on probe
Date: Thu, 12 May 2022 16:11:28 +0300
Message-Id: <20220512131128.631-1-tony@atomide.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220512_061137_203638_8AC5B55E 
X-CRM114-Status: UNSURE (   9.33  )
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

Commit d644e0d79829 ("phy: mapphone-mdm6600: Fix PM error handling in
phy_mdm6600_probe") caused a regression where we now unconditionally
disable runtime PM at the end of the probe while it is only needed on
errors.

Fixes: d644e0d79829 ("phy: mapphone-mdm6600: Fix PM error handling in phy_mdm6600_probe")
Cc: Miaoqian Lin <linmq006@gmail.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/phy/motorola/phy-mapphone-mdm6600.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/motorola/phy-mapphone-mdm6600.c b/drivers/phy/motorola/phy-mapphone-mdm6600.c
--- a/drivers/phy/motorola/phy-mapphone-mdm6600.c
+++ b/drivers/phy/motorola/phy-mapphone-mdm6600.c
@@ -627,10 +627,12 @@ static int phy_mdm6600_probe(struct platform_device *pdev)
 	pm_runtime_put_autosuspend(ddata->dev);
 
 cleanup:
-	if (error < 0)
+	if (error < 0) {
 		phy_mdm6600_device_power_off(ddata);
-	pm_runtime_disable(ddata->dev);
-	pm_runtime_dont_use_autosuspend(ddata->dev);
+		pm_runtime_disable(ddata->dev);
+		pm_runtime_dont_use_autosuspend(ddata->dev);
+	}
+
 	return error;
 }
 
-- 
2.36.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
