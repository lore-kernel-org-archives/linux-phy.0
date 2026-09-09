Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70B24C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 12:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yWRjCGbs2Yv4rjHts7ecP/E1fOnpJtWmGJN6ABJdvwY=; b=4cmjIm8xb7bEI3
	aa/KBlft/Vt0qr5Lc9kJDmf9Ys0Vz4yA0qmc+dlRmVxOdeEgKsxXas+1tBjyuzXOjIIDnrxwEdMzG
	8QfZgHcTvhSZr9NUUiXxuX/NJGbOxaLItkl+t+6fqRVo/Gfo8yV8Qjuiyb9AgZAzprCURLDeKhXnq
	mJV5FEftSDF2g2rqudXV1X2j7K477h0cJbJTpNyT8bac5GmBiujwCOly///zyy1CE11vaoj57czCI
	phVnGZ8Rzjb2ZUMauYrAs6cBtfCTMSxEW8Vk+h7ob61Ir+X4+zQwModrkFrRRjBFT8jjAabTGCjbc
	GD1wLXqS8uE49KLa4o0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HO8-0000000Bf6S-0M2O;
	Wed, 09 Sep 2026 12:26:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HO5-0000000Bf5u-2wuT
	for linux-phy@bombadil.infradead.org;
	Wed, 09 Sep 2026 12:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XvZ8aCxmvlnZIXcZXP9FwmNmAoK3JGoMs/IMGvF01OQ=; b=MCmH0fRM63YPx7oz0o+dQQ6Le0
	REyEYIBdHcEA6dVbU5uacWfUsONNG6qLk938ylB/VMu3/dL2qtx5HWqFRCWP6MYbOTRlzcrz2rncY
	ToqW7trVg6qdEkjzmKKL8jvqE4/+JDDp8er46dymH5gvT9To58ifgE9ifRAyKcOfOyHhLMH9+hC/q
	gKgCQ+AngFKi49FEot+/P76c63mREdy9pbPd4D+ww8vGQkyb4PK9eyfg/h66sVJr36it9x6a2catH
	Jqpvb6JsxmHxVwklqewbUi8RtxWj+7kw0ss6QZvMSs2OAIaAFDEi4yaGS6SIDkxyaBWqJTuVWBcVO
	kQBAAn+w==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4HO0-00000001ANa-24la
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 12:26:48 +0000
X-UUID: b2f39a58ac4911f19a56ed5b684f684d-20260909
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:219b1826-8d61-44c1-b095-cd036d567ef9,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:7db8b62,CLOUDID:b05759f0d3061fdd971368d421722fe7,BulkI
	D:nil,BulkQuantity:0,SF:81|82|102|850|865|898,TC:nil,Content:0|15|50|99,ED
	M:2,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0
	,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: b2f39a58ac4911f19a56ed5b684f684d-20260909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 734040080; Wed, 09 Sep 2026 20:26:36 +0800
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
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: [PATCH v8 3/4] phy: ti-pipe3: Fix EPROBE_DEFER handling for clock  resources
Date: Wed,  9 Sep 2026 20:26:29 +0800
Message-Id: <20260909122630.1313205-4-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260909122630.1313205-1-zenghongling@kylinos.cn>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_132645_151196_CF04AD58 
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
Suggested-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
---
Change in v8:
 -Use dev_err_probe() for refclk and sysclk acquisition failures.
---
 drivers/phy/ti/phy-ti-pipe3.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 021657cbce48..fdd81c935e5f 100644
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
-		dev_err(dev, "unable to get refclk\n");
-		/* older DTBs have missing refclk in SATA PHY
-		 * so don't bail out in case of SATA PHY.
-		 */
-		if (phy->mode != PIPE3_MODE_SATA)
-			return PTR_ERR(phy->refclk);
+		return dev_err_probe(dev, PTR_ERR(phy->refclk),
+				"unable to get refclk\n");
 	}
 
 	if (phy->mode != PIPE3_MODE_SATA) {
@@ -631,8 +637,8 @@ static int ti_pipe3_get_clk(struct ti_pipe3 *phy)
 	if (phy->mode != PIPE3_MODE_PCIE || phy->phy_power_syscon) {
 		phy->sys_clk = devm_clk_get(dev, "sysclk");
 		if (IS_ERR(phy->sys_clk)) {
-			dev_err(dev, "unable to get sysclk\n");
-			return -EINVAL;
+			return dev_err_probe(dev, PTR_ERR(phy->sys_clk),
+					"unable to get sysclk\n");
 		}
 	}
 
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
