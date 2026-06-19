Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5454BCD98FA
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 03:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5jsJBO8Lz/8ZM1HrI5Lg4GvJH28uGZGzW8mTw2NjmM=; b=MOOJUsy0TAuTER
	9fSetGDJ2WOvwrk0EdRhTpThgUt6uOIiQUNLDlSPJ5l7rPCCIeie93z+78iNGuiDyuF8EoMn61yAg
	VS14QKvxghQxCPHOoi+tAd+IVtjNwLbUhYQYsSRC3Y0nXp1Hw4vm/6Luw3Nkm26VMiPRB770eRQf2
	3/9mzaYKOxk+6izuTXJ55Cfr8Vv4dPzCnZo+Ti4Q0w+bX+zGjFDNdOWGGxqvZvamKYpHkL31HMe16
	NQJHv5g7pVdnmxlEAg4yNqJttvbpJBJR3edS7Z3b8a0YmoJv7XOfhF/XLLT9Xf8GnVMQ97pl3BKGX
	j8Gs8jrmIXaJoiagXQaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waPV3-00000001wzV-45qi;
	Fri, 19 Jun 2026 03:02:33 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waPV0-00000001wxU-0BFo
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 03:02:32 +0000
X-UUID: 4998a2286b8b11f1aa26b74ffac11d73-20260619
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:62259371-ccf8-4e1b-95c0-b752d34a7e12,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:e7bac3a,CLOUDID:483e151e0416aeccc44b3131c855062e,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850|865|898,TC:nil,Content:0|1
	5|50,EDM:2,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 4998a2286b8b11f1aa26b74ffac11d73-20260619
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1350137075; Fri, 19 Jun 2026 11:02:20 +0800
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
Subject: [PATCH v6 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock  resources
Date: Fri, 19 Jun 2026 11:02:13 +0800
Message-Id: <20260619030214.1779043-4-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260619030214.1779043-1-zenghongling@kylinos.cn>
References: <20260619030214.1779043-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_200230_398288_29CFBF39 
X-CRM114-Status: GOOD (  12.75  )
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
- Use devm_clk_get_optional() for SATA refclk to handle optional
  clocks while propagating -EPROBE_DEFER and other errors

Fixes: a70143bbef6b ("drivers: phy: usb3/pipe3: Adapt pipe3 driver to Generic PHY Framework")
Fixes: 7f33912d2978 ("phy: ti-pipe3: Fix SATA across suspend/resume")
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>

---
Change in v4:
 -Merge refclk leak fix and EPROBE_DEFER fix into a single patch
 -Use devm_clk_get_optional() for SATA refclk
 -Drop manual -ENOENT handling
 -Ensure error paths are fully symmetric
---
Change in v5:
 -Add Fix ignored clock enable return value in init patch
---
Change in v6:
 -Fix all clock leak paths comprehensively:
 -PCIe syscon update failure path
 -SATA DPLL lock check path (also fix incorrect return logic)
 -SATA errata path in ti_pipe3_exit()
---
 drivers/phy/ti/phy-ti-pipe3.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 2d36fe4c4218..9ec228c2a940 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -608,14 +608,20 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
 	struct clk *clk;
 	struct device *dev = phy->dev;
 
-	phy->refclk = devm_clk_get(dev, "refclk");
+	/*
+	 * refclk is optional for SATA PHY to support older DTBs, but
+	 * required for other modes. Use devm_clk_get_optional() for SATA
+	 * which returns NULL for -ENOENT, allowing us to propagate all
+	 * other errors including -EPROBE_DEFER.
+	 */
+	if (phy->mode == PIPE3_MODE_SATA)
+		phy->refclk = devm_clk_get_optional(dev, "refclk");
+	else
+		phy->refclk = devm_clk_get(dev, "refclk");
+
 	if (IS_ERR(phy->refclk)) {
 		dev_err(dev, "unable to get refclk\n");
-		/* older DTBs have missing refclk in SATA PHY
-		 * so don't bail out in case of SATA PHY.
-		 */
-		if (phy->mode != PIPE3_MODE_SATA)
-			return PTR_ERR(phy->refclk);
+		return PTR_ERR(phy->refclk);
 	}
 
 	if (phy->mode != PIPE3_MODE_SATA) {
@@ -632,7 +638,7 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
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
