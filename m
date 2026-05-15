Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F489CD343F
	for <linux-phy@archiver.kernel.org>; Fri, 15 May 2026 04:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ZvcqSI20ngQblLgroPGtLRkRzBcLLV87TnasWHHKv8=; b=rdGfRgbQPVYX8G
	SVraqu6v7zO/rWYAMSU2us9GauVpG/s7o6U4T8nO0XkHVzdocfngcNGNnPYRbWD3qr9Zu5EoKA3Zx
	D/AwNJpE5+vqfskFvvOpR1yfeiKZxtg5u41HD9mYpx+7/8S342IOQKbp5DffMODLv32nep6FgNyCj
	aQZQxUdhy4aYaSH+TXll01QbMZdIEF3Wm3pGjmqxfhXI8lD1gnAbOf5dSHZWUGHby/uIkB1bo2G+z
	ftgCIzlXC/H9Vplm0GqX+Ae2S+HmhKfq7AkeZxB5Qj46RKhP/Meig0d1G4GIj+KMJLfSP0ZFGU45g
	SA5oxq9eyDjMWvBsPtAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNjq1-00000007H9R-0geH;
	Fri, 15 May 2026 04:07:49 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNjpy-00000007H91-3Gca
	for linux-phy@lists.infradead.org;
	Fri, 15 May 2026 04:07:48 +0000
X-UUID: 9e1133f8501311f1aa26b74ffac11d73-20260515
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:d51b19e9-efa3-49b9-87dd-9ab69b70a299,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:e7bac3a,CLOUDID:dcddeb06bad0e39d871a8ecb84ef0c22,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:102|850|898,TC:nil,Content:0|15|50,EDM:2
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 9e1133f8501311f1aa26b74ffac11d73-20260515
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 227261460; Fri, 15 May 2026 12:07:41 +0800
From: Hongling Zeng <zenghongling@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	johan@kernel.org,
	kishon@kernel.org,
	rogerq@ti.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	zhongling0719@126.com,
	Hongling Zeng <zenghongling@kylinos.cn>
Subject: [PATCH 2/2] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock resources
Date: Fri, 15 May 2026 12:07:37 +0800
Message-Id: <20260515040737.28075-1-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_210747_149878_F8B2DFC6 
X-CRM114-Status: GOOD (  12.10  )
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

ti_pipe3_get_clk() has two issues with -EPROBE_DEFER error handling:

1. When devm_clk_get() for sysclk fails, the function returns -EINVAL
   instead of propagating the actual error code. This masks -EPROBE_DEFER
   to -EINVAL, breaking the probe deferral mechanism and causing permanent
   driver initialization failure on systems with non-deterministic probe
   ordering.

2. For SATA PHY refclk, the function ignores all errors to support older
   DTBs missing the refclk property. However, this incorrectly ignores
   -EPROBE_DEFER as well, causing the driver to proceed without waiting
   for the clock provider to become available.

Fix both issues:
- Return PTR_ERR(phy->sys_clk) instead of -EINVAL to propagate all
  error codes including -EPROBE_DEFER
- For SATA refclk, only ignore -ENOENT (clock not found in old DTBs)
  but propagate other errors like -EPROBE_DEFER

Fixes: a70143bbef6b ("drivers: phy: usb3/pipe3: Adapt pipe3 driver to Generic PHY Framework")
Fixes: 7f33912d2978 ("phy: ti-pipe3: Fix SATA across suspend/resume")
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
 drivers/phy/ti/phy-ti-pipe3.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 58fbc3b27813..2bfcd0c70abd 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -604,15 +604,22 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
 {
 	struct clk *clk;
 	struct device *dev = phy->dev;
+	int ret;
 
 	phy->refclk = devm_clk_get(dev, "refclk");
 	if (IS_ERR(phy->refclk)) {
-		dev_err(dev, "unable to get refclk\n");
+		ret = PTR_ERR(phy->refclk);
 		/* older DTBs have missing refclk in SATA PHY
-		 * so don't bail out in case of SATA PHY.
+		 * so don't bail out for -ENOENT, but still defer
+		 * probe for other errors like -EPROBE_DEFER.
 		 */
-		if (phy->mode != PIPE3_MODE_SATA)
-			return PTR_ERR(phy->refclk);
+		if (ret == -ENOENT) {
+			if (phy->mode != PIPE3_MODE_SATA)
+				return ret;
+		} else {
+			dev_err(dev, "unable to get refclk\n");
+			return ret;
+		}
 	}
 
 	if (phy->mode != PIPE3_MODE_SATA) {
@@ -629,7 +636,7 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
 		phy->sys_clk = devm_clk_get(dev, "sysclk");
 		if (IS_ERR(phy->sys_clk)) {
 			dev_err(dev, "unable to get sysclk\n");
-			return -EINVAL;
+			return PTR_ERR(phy->sys_clk);
 		}
 	}
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
