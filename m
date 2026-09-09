Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9326C79FBE
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 12:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=93K9rp/gfqkpZpRWqXR6gbLpFRdMq1DjvFQoy84ey/Q=; b=Gdpe6lbRNI6HQx
	4jXo0nixGg4eDEKGp/PdH0N6+FUV0QyRrmLQgrVnhG9FrnOnfO9GooHFDMuog/XXttvvhDGKnQWdp
	mHWNu4Yu4IGQfZ3SGk3qOt3tpsABT70MMnsaxsg4/mAVcCIgWFKphxz5lAhv+VFKldnrubr5U6aiv
	TyRc/cA7x0eY/VKiw9tgASsLL5W3DISpHRQgmvsjL14amu/DqvD5IGREIQH9uMmM8HGXstX4SMRHm
	U9fwkPcQuYSOH5Ba2liWqQHw3psP8S/SRa6nPvPhAUPOWoie6nNjdKPHIseFc768qsXByPsLK6HbG
	xqWoYikNbHNEBQ49P3Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HOA-0000000Bf7K-1Tsd;
	Wed, 09 Sep 2026 12:26:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4HO7-0000000Bf69-0r9u
	for linux-phy@bombadil.infradead.org;
	Wed, 09 Sep 2026 12:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XPcaZdwWKvsp0xhr0QtP85bYmzP6a6iLrcxVqe6CCCE=; b=e/fH/EIOBqZyAY9z/EU+qaQr9d
	BYqTQJZybvzynCDbt2a1XmiS/QGM4ZwnMNADJh95KD/LgDHSjcYcy7l6Bv/IEBb2eKkbStCZy7Nkz
	zTqrOOp7fwc8m1zLhXH7iDA9Z5K/SkDYWx2brRFQJVpY+E1U8djKY8ObMgLdzivrC/8EEal71SbPf
	n12zu6/lKE7IH1LkT4IcULqOdlzZ3VZVE+kLuy/kXC/uOu6PduQh02JdRghrWykMTn2NEsPv/zvDo
	jwNOVXnF/3bMrkCk2FMyRfBVV0Re9pW+eP8owNYk4cQSh4X/xR2JnG5Q24+6z7AwnqaPZg4fv+8KE
	xeqYeJ9Q==;
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4HO0-00000001ANX-2k1B
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 12:26:49 +0000
X-UUID: b293fd78ac4911f19a56ed5b684f684d-20260909
X-CID-CACHE: Type:Local,Time:202609091934+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.19,REQID:68a44a09-8479-45a6-9c32-12761d15ad8b,IP:0,U
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
X-UUID: b293fd78ac4911f19a56ed5b684f684d-20260909
X-User: zenghongling@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <zenghongling@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 491707570; Wed, 09 Sep 2026 20:26:35 +0800
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
Subject: [PATCH v8 2/4] phy: ti: pipe3: Fix clock resource leak on probe  errors
Date: Wed,  9 Sep 2026 20:26:28 +0800
Message-Id: <20260909122630.1313205-3-zenghongling@kylinos.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260909122630.1313205-1-zenghongling@kylinos.cn>
References: <20260909122630.1313205-1-zenghongling@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_132645_193335_8256FB1B 
X-CRM114-Status: GOOD (  10.62  )
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
