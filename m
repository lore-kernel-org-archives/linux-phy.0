Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93EE2C79FB9
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93K9rp/gfqkpZpRWqXR6gbLpFRdMq1DjvFQoy84ey/Q=; b=TezG8VM69/uhfQ
	gFd9kgne6aRwUPmaRVXROldNHM69zUc1t80hweMHQfSuGXosxggkjGvFGGLdmJkUn8RY0P8v5vpV1
	NywsgoXwEg9ghC+DIiU619Vk9Ckax4bSQd5nl+cWS1uZHbuj5tYI/AujTtPiHVe5bovYNGkiodpqH
	lM/rGkasyAMWlcwUGDjqZAzp8A8cS3RtFh8ROlDCgNi9xX+BIXEd1nsgM4m9rvnEAkxSHUCgLQDmF
	KO0/yIwOrHYOaL32qD+r7kwfQ4dKfBCnuFzkDVMz7B29gq1lVGz2dA6AcCpxnrMgd8VHiSojpIBjs
	Urpwb7R6i79zRYYT6loQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GZp-0000000Bao0-1FnU;
	Wed, 09 Sep 2026 11:34:53 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GZm-0000000Bakd-3NHv
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:34:52 +0000
X-UUID: 71040152ac4211f19a56ed5b684f684d-20260909
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:0061c089-4e68-45e5-83e0-331b6213daa7,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:7db8b62,CLOUDID:a8ba1a5c94b9a01235897b98721e70a8,BulkI
	D:nil,BulkQuantity:0,SF:81|82|102|136|850|865|898,TC:nil,Content:0|15|50|9
	9,EDM:-3|-100,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,O
	SI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 71040152ac4211f19a56ed5b684f684d-20260909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 810588460; Wed, 09 Sep 2026 19:34:38 +0800
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
Subject: [PATCH v7 2/4] phy: ti: pipe3: Fix clock resource leak on probe  errors
Date: Wed,  9 Sep 2026 19:34:31 +0800
Message-Id: <20260909113433.1287454-3-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260909113433.1287454-1-zenghongling@kylinos.cn>
References: <20260909113433.1287454-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_043451_144869_A8CCF5D4 
X-CRM114-Status: GOOD (  10.57  )
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
Change in v7:
 -Remove the redundant !IS_ERR(phy->refclk) check in the clock cleanup
  path, as suggested by Mani.
---
 drivers/phy/ti/phy-ti-pipe3.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/ti/phy-ti-pipe3.c b/drivers/phy/ti/phy-ti-pipe3.c
index 0e3bc9218733..021657cbce48 100644
--- a/drivers/phy/ti/phy-ti-pipe3.c
+++ b/drivers/phy/ti/phy-ti-pipe3.c
@@ -834,21 +834,39 @@ static int ti_pipe3_probe(struct platform_device *pdev)
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
+	if (phy->sata_refclk_enabled)
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
