Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D48CBC4451B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 07:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VcMcwnINRqFu3nv2UjF2FMyvj3Zn/4OBbTxIGMAGI94=; b=OGVE/NIvcgG3ka
	P+qakGv+WBsjpmvRFQ9sARItS/a03L0g+ZMUNUX05nkiLchPCTg3hAiUxs+yw4U+XPbAeadIyXckD
	pbjWbLd07SM2xOj+b1zkLGrbSIYovhvah/a3M4cecXjNjfHPj37xYlPabQAy9v3ldLBF4tU3pIzGT
	5HYcNCPNyXAysbmCH+maNgS8EnF6SgL6q7PIVXtBchL75mXwppriSiDA4cDODrMNjKr3d/TX2i6T8
	/bEiKt8JviUM6dTccl631vHWxgaNbGinZvhNCGMfXxi9JBb7v8ZNaQcTCgT+0bOoG4bE3hAcix+yo
	auUxjh+YEjHdyivoAqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkzJy-00000003pNe-2Lhg;
	Sat, 18 Jul 2026 07:18:50 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkzJv-00000003pN5-1Svg
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 07:18:49 +0000
X-UUID: e7ddd986827811f1aa26b74ffac11d73-20260718
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CC_NO_NAME, HR_CTE_8B
	HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_NAME
	HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM, HR_SJ_PHRASE
	HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT, HR_TO_DOMAIN_COUNT, HR_TO_NO_NAME
	IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED, SA_TRUSTED, SA_EXISTED
	SN_TRUSTED, SN_EXISTED, SPF_NOPASS, DKIM_NOPASS, DMARC_NOPASS
	CIE_GOOD, CIE_GOOD_SPF, GTI_FG_BS, GTI_RG_INFO, GTI_C_BU
	AMN_GOOD, ABX_MISS_RDNS
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:e9dd0467-be09-455a-b401-accefd39c1f1,IP:15,
	URL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:15
X-CID-INFO: VERSION:1.3.12,REQID:e9dd0467-be09-455a-b401-accefd39c1f1,IP:15,UR
	L:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:15
X-CID-META: VersionHash:e7bac3a,CLOUDID:b86353c549001be137f299a4fa0a2f14,BulkI
	D:260718151843EJ8MIE03,BulkQuantity:0,Recheck:0,SF:10|38|66|78|102|127|865
	|898,TC:nil,Content:0|15|50,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:nil,QS
	:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,A
	RC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: e7ddd986827811f1aa26b74ffac11d73-20260718
X-User: pengcan@kylinos.cn
Received: from lenovo [(116.128.244.171)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 47783712; Sat, 18 Jul 2026 15:18:42 +0800
From: Can Peng <pengcan@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>,
	stable@vger.kernel.org
Subject: [PATCH] phy: freescale: fsl-samsung-hdmi: Fix runtime PM cleanup
Date: Sat, 18 Jul 2026 15:18:16 +0800
Message-ID: <20260718071816.437047-1-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_001848_294971_A7F1A82D 
X-CRM114-Status: UNSURE (   8.05  )
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
