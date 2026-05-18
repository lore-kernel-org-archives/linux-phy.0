Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF96FCD4F50
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 02:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoeftFePEC6bZBrwCmwezMx7f9+aFW/szShCGxeJzzk=; b=BbprZSYEzo1+qy
	IkTwsanEEIDgcfeMhHJfIDjO8/7fc7PfN52PZT7TfLbsrqSfQmQyTRI+W/hsV9KT3GEQxzaC4L+AI
	S/CYML/JBrhlJ8K5YeLxiKSLxLZpqwgvIACHNa6ovgboGkEPKIxi0DLTCy+x3onV9Xc5RXxhwUwbf
	wb6SY1ntqY/wTDBFfzY2GCkZwMRY4SN2QTNYyKlY2Tp4pp804hYXD3ae2FVOp/EbT/uniVlIEzvT/
	bPHK3vPEoWBm+KdhDxvq+idPTmQt4YxQglsA3Y/0axJ6LgAy8HdSYRQ1nWuBBCaSgBfLXFW3QA4vp
	lKr9xI7m0UD/EuCJD1gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnWQ-0000000Du2P-1rWF;
	Mon, 18 May 2026 02:15:58 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOnWM-0000000Du0r-2uq7
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 02:15:57 +0000
X-UUID: 7a0e2f26525f11f1aa26b74ffac11d73-20260518
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:b258e95c-bcf4-47f0-8741-cd10c5537833,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:cb1f2070f5963447efb4c3d07357c0b5,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|850|865|898,TC:nil,Content:0|1
	5|50,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI
	:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 7a0e2f26525f11f1aa26b74ffac11d73-20260518
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1130665006; Mon, 18 May 2026 10:15:44 +0800
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
Subject: [PATCH v4 1/2] phy: ti: pipe3: Fix clock resource leak on probe errors
Date: Mon, 18 May 2026 10:15:38 +0800
Message-Id: <20260518021539.14890-2-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260518021539.14890-1-zenghongling@kylinos.cn>
References: <20260518021539.14890-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260517_191555_047158_FAFFC4FA 
X-CRM114-Status: GOOD (  11.46  )
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

When devm_phy_create() or devm_of_phy_provider_register() fails,
the refclk that was enabled earlier is not disabled, causing a
resource leak.

Fix this by adding an error handling path to disable the clock
when these functions fail.

Fixes: 234738ea3390 ("phy: ti-pipe3: move clk initialization to a separate function")
Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>

---
 Change in v2:
  -Add pm_runtime_disable() in error path (reported by Sashiko AI).
---
 change in v3:
  -Fix unbalanced clock disable by checking clk_prepare_enable()return value and
setting sata_refclk_enabledonly on success.
  -Fix error path teardown order to match ti_pipe3_remove()(disable clock before
disabling runtime PM).
---
 change in v4:
  -Fix the patch version
---
 drivers/phy/ti/phy-ti-pipe3.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index b5543b5c674c..58fbc3b27813 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -831,21 +831,39 @@ static int ti_pipe3_probe(struct platform_device *pdev)
 	 */
 	if (phy->mode == PIPE3_MODE_SATA) {
 		if (!IS_ERR(phy->refclk)) {
-			clk_prepare_enable(phy->refclk);
+			ret = clk_prepare_enable(phy->refclk);
+			if (ret) {
+				dev_err(dev, "Failed to enable refclk %d\n", ret);
+				goto err_pm_disable;
+			}
 			phy->sata_refclk_enabled = true;
 		}
 	}
 
 	generic_phy = devm_phy_create(dev, NULL, &ops);
-	if (IS_ERR(generic_phy))
-		return PTR_ERR(generic_phy);
+	if (IS_ERR(generic_phy)) {
+		ret = PTR_ERR(generic_phy);
+		goto err_clk_disable;
+	}
 
 	phy_set_drvdata(generic_phy, phy);
 
 	ti_pipe3_power_off(generic_phy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	return PTR_ERR_OR_ZERO(phy_provider);
+	if (IS_ERR(phy_provider)) {
+		ret = PTR_ERR(phy_provider);
+		goto err_clk_disable;
+	}
+
+	return 0;
+
+err_clk_disable:
+	if (phy->sata_refclk_enabled && !IS_ERR(phy->refclk))
+		clk_disable_unprepare(phy->refclk);
+err_pm_disable:
+	pm_runtime_disable(dev);
+	return ret;
 }
 
 static void ti_pipe3_remove(struct platform_device *pdev)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
