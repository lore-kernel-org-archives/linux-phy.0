Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D17CDB469
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 03:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvKRDc7uT/qfKKZZUQB8xFi/ENf7s41C7yllKVyh6c8=; b=tBSy+aV5XqVyM5
	OlW6WS02fCDmU7+rLwLEIxw+FJwo112nOQdtQZiO/AD6DWiy3tIX8L8q0Q8Y4xM3XjYuxOastb/yO
	bbFKma524YVQOx+u+9kY2RveRPPR6OLMxllWyrW8QwpC1eTg1dtV+41Zw7q2uorIO0uliCun/74uN
	8ThBOEemZLigwDwtisaPZQRzB9GZS1dVmP8/sbomNGeiuzAu9MBb2kMT4X2Dbshd0hQ5tp8KtxVfB
	qoKKt/CboDB6FzMnA9oeDDOeRH6Wtky8Ai7pO8Gkw8LmL0jZe99NNXdYQc/LxGNUKLZ/Y7XtQ9STb
	srP5UbJjLsnf4FwJSFvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waPV7-00000001x0b-0OhM;
	Fri, 19 Jun 2026 03:02:37 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waPV2-00000001wx8-1AoW
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 03:02:33 +0000
X-UUID: 48dacf326b8b11f1aa26b74ffac11d73-20260619
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:c8c46bd3-1295-4aad-9be9-3a414bf6a44e,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:c8ae752301f7761af2c279356987945b,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850|865|898,TC:nil,Content:0|1
	5|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI
	:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 48dacf326b8b11f1aa26b74ffac11d73-20260619
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1762564668; Fri, 19 Jun 2026 11:02:19 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	johan@kernel.org,
	kishon@kernel.org,
	rogerq@ti.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>,
	Sashiko AI <sashiko@kernel.org>
Subject: [PATCH v6 1/4] phy: ti-pipe3: Fix ignored clock enable return value  in init
Date: Fri, 19 Jun 2026 11:02:11 +0800
Message-Id: <20260619030214.1779043-2-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260619030214.1779043-1-zenghongling@kylinos.cn>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_200232_630894_64BA84E1 
X-CRM114-Status: GOOD (  10.54  )
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

ti_pipe3_init() ignores the return value of ti_pipe3_enable_clocks(),
which can lead to:

1. Unclocked hardware access if clock enable fails
2. Unbalanced clock disables in error paths

ti_pipe3_enable_clocks() returns an error code when clock enable fails
and rolls back any partially enabled clocks. If we ignore this error
and continue, we access hardware without proper clocking, which can
cause bus errors.

Additionally, if we reach error paths later in the function and call
ti_pipe3_disable_clocks(), we'll be disabling already-disabled clocks,
causing unbalanced disable warnings.

Fix this by checking the return value of ti_pipe3_enable_clocks()
and returning early if it fails.

Fixes: 234738ea3390 ("phy: ti-pipe3: move clk initialization to a separate function")
Reported-by: Sashiko AI <sashiko@kernel.org>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>

---
Change in v5:
  -Add Fix ignored clock enable return value in init patch
---
Change in v6:
  -Fix all clock leak paths comprehensively
  -PCIe syscon update failure path
  -SATA DPLL lock check path (also fix incorrect return logic)
  -SATA errata path in ti_pipe3_exit()
---
 drivers/phy/ti/phy-ti-pipe3.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index b5543b5c674c..b8c055893742 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -500,7 +500,10 @@ static int ti_pipe3_init(struct phy *x)
 	u32 val;
 	int ret = 0;
 
-	ti_pipe3_enable_clocks(phy);
+	ret = ti_pipe3_enable_clocks(phy);
+	if (ret)
+		return ret;
+
 	/*
 	 * Set pcie_pcs register to 0x96 for proper functioning of phy
 	 * as recommended in AM572x TRM SPRUHZ6, section 18.5.2.2, table
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
