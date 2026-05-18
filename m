Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2FFBCD4F3C
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 06:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPT20kH2j5odyTT7rd8XrdfAxuB4G0IT5OsJFXzruSQ=; b=osHFP25qZL6TVu
	hLT6rtQhDj5f6x+NEar5+2JHmb0BcPSp3bbv0cpCCUVGhzpsyeG+v/LbN6ZOFXBRRisKNxcu+H1Rc
	V3SsRayC+pzfzuFj5wSnhh42QLEUVze2d+JlTXQZZRSpBLwQ/UiIQ5MT3E0uj8VDb1j2fpZ4xFJHz
	JQN0kUUWD17zD59CL/OEckcaiVZenbrg4RMzViLmzjMkyd3nE6RupGE1cVXaIuqLu1qGlif+/cT8p
	4/BdR536AS24DeUyUwOSklck8M+vMekga867e239l5w7l5T2VZtGur6DGz/BKGJahp3Ts8/TUNtax
	enOrll9ah4vBdFEZpYSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUS-0000000EQnG-2tME;
	Mon, 18 May 2026 06:30:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUR-0000000EQml-0lRS
	for linux-phy@bombadil.infradead.org;
	Mon, 18 May 2026 06:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=g97ePg0wtl+cDE+JA/yxEgz/Kza2fUbSBj8vtsijvAQ=; b=VmZS7RPzRYi+u4IXmF3W4dhVCs
	BCMNsnaui/Vux4Vz/uUP/yPYoarkHYQKpFP4UPOIJI5wgOdOS8sHQ+uh9tffjvXWo6OVF+YIFkf60
	FwumItoaw9RKt9OLXOytSiuwMS/MJ1MDhL1VKZFYs/AQhs6OKUDIyMvn5Zym67UhW2An8RU5Ek8mG
	jE0258oqnQhaP3cIGYY+Mw0E30+ECYKvb1cx5oD5kPpIw2b7p7Eultj8cbVtwxZN/yl0qGoH/DP9P
	HYnsK48b2H96KUqr++EJdIaNom76Qs9QVsIJSulp6LKv7APWQ1bJW9Z1gzYOdLdY6mGjpWDp/V/GA
	su0v++zg==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOrUL-0000000A1Qb-1zdh
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 06:30:09 +0000
X-UUID: f5a03896528211f1aa26b74ffac11d73-20260518
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:1bdacc40-41bc-4fa9-9563-7407ddda0d18,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:e7bac3a,CLOUDID:ae4bcf6a226be54b013a9e53c77356b2,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850|865|898,TC:nil,Content:0|1
	5|50,EDM:2,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: f5a03896528211f1aa26b74ffac11d73-20260518
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 248636260; Mon, 18 May 2026 14:29:44 +0800
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
Subject: [PATCH v5 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock  resources
Date: Mon, 18 May 2026 14:29:37 +0800
Message-Id: <20260518062938.48114-4-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260518062938.48114-1-zenghongling@kylinos.cn>
References: <20260518062938.48114-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_073007_060012_703A0911 
X-CRM114-Status: GOOD (  13.07  )
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
   - Merge refclk leak fix and EPROBE_DEFER fix into a single patch
   - Use devm_clk_get_optional() for SATA refclk
   - Drop manual -ENOENT handling
   - Ensure error paths are fully symmetric
---
  Change in v5:
   -Add Fix ignored clock enable return value in init patch
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
