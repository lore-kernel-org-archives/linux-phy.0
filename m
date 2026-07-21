Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB55BC4451C
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcMcwnINRqFu3nv2UjF2FMyvj3Zn/4OBbTxIGMAGI94=; b=SdvxiRuPHuttSW
	8Y7O2fuX42EbfGpT3ejjzabOzFalup5AI4VzmzJXedK5awpeApFngkSGFgGeiRolO94SCjR2thvy7
	4JSaa4D/2wB138cDQDQtFPArk3YqYJgfoPQ/mJ/kCay9q3LJAx34tLWpr0cIV1o5YkwElNUywtimU
	2DIQWvNiknEBZUr2zIQjw34Wsq/bNpidbTAQBKwgaQFq07MPwCNrMvAQ5lsIr5vQ5ClYNTM+6rfxp
	35mOc+kujG2DxfvYRbGuEZ2fo3bE//JaMn4j5nZgT1rTvtw/bm23xqsV3RfOki6boJbe75PmU6m0K
	M6A7B4gfCXvaREWCjYYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4H2-00000008Z8j-1eqH;
	Tue, 21 Jul 2026 06:48:16 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4Gz-00000008Z7T-0uG0
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 06:48:14 +0000
X-UUID: 1e97771284d011f1aa26b74ffac11d73-20260721
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:464eec67-f3a5-4af9-a821-b6825e563397,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:019d5c6ce7d0507cf04a6c64187fe719,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|865|898,TC:nil,Content:0|15|50
	,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,O
	SA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 1e97771284d011f1aa26b74ffac11d73-20260721
X-User: pengcan@kylinos.cn
Received: from lenovo [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1705813608; Tue, 21 Jul 2026 14:48:02 +0800
From: Can Peng <pengcan@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	bmasney@redhat.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>,
	stable@vger.kernel.org
Subject: [PATCH v2 1/4] phy: freescale: fsl-samsung-hdmi: Fix runtime PM cleanup
Date: Tue, 21 Jul 2026 14:47:49 +0800
Message-ID: <20260721064752.153338-2-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064752.153338-1-pengcan@kylinos.cn>
References: <20260721064752.153338-1-pengcan@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234813_571492_751F05B0 
X-CRM114-Status: UNSURE (   9.25  )
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

fsl_samsung_hdmi_phy_probe() takes a runtime PM reference, marks the
device active and enables runtime PM before registering the PHY clock.
If phy_clk_register() fails, probe returns without dropping the runtime
PM reference or disabling runtime PM.

The remove callback only unregisters the clock provider, so runtime PM
is also left enabled after a successful probe followed by driver unbind.

Check pm_runtime_set_active(), use devm_pm_runtime_enable() so runtime
PM is disabled automatically, and drop the initial noresume reference
on PM setup and clock registration failures.

Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
Cc: stable@vger.kernel.org
Signed-off-by: Can Peng <pengcan@kylinos.cn>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index d010fec15671..e7af4f9c7b20 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -665,20 +665,26 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 				     "failed to get ref clk\n");
 
 	pm_runtime_get_noresume(phy->dev);
-	pm_runtime_set_active(phy->dev);
-	pm_runtime_enable(phy->dev);
+	ret = pm_runtime_set_active(phy->dev);
+	if (ret)
+		goto pm_put_noidle;
+
+	ret = devm_pm_runtime_enable(phy->dev);
+	if (ret)
+		goto pm_put_noidle;
 
 	ret = phy_clk_register(phy);
 	if (ret) {
 		dev_err(&pdev->dev, "register clk failed\n");
-		goto register_clk_failed;
+		goto pm_put_noidle;
 	}
 
 	pm_runtime_put(phy->dev);
 
 	return 0;
 
-register_clk_failed:
+pm_put_noidle:
+	pm_runtime_put_noidle(phy->dev);
 	return ret;
 }
 
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
