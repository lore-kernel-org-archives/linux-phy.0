Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B700C4451B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 07:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4LTUCpLidKMfKoB4+m4AEVWErOprgvEBLc9ke298dSA=; b=JWpuF1CI2RfiZo
	dpGqI9c2QVmI1C/t2gFF/sc3dj1gqszjQLayxTozAoP8d3GNUGmTN7hOuNTiKtme7lizC+GkDlogj
	zFAw/zCz8sxWe3yn0tYk99EVcIrH8gCwL1VJFQirMKGI8YuNatN1UlhdZjhjebXM8ssuwNUTqNZcO
	MWvsKCKxHI34xwZMlAq7e82SQV1E9i8QG0t0Hg6SVKeSKUHb3V6c9BYcGt+nEpQ2buLFDzXmgLFas
	JuhIbmBlSJxBEg88Ed1itDFPDcP9APzej3WHYY/rIrzbLOVXH21npPFpLhJahsHMAqz9RzH50n+U4
	LA7aERN29KUqIwKKX6Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkzJL-00000003pKz-21ZE;
	Sat, 18 Jul 2026 07:18:11 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkzJH-00000003pKM-20Z4
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 07:18:10 +0000
X-UUID: ce4fb96c827811f1aa26b74ffac11d73-20260718
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CC_NO_NAME, HR_CTE_8B
	HR_CTT_MISS, HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_NAME
	HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM
	HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT, HR_TO_DOMAIN_COUNT
	HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED, SA_TRUSTED
	SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS, DKIM_NOPASS
	DMARC_NOPASS, CIE_GOOD, CIE_GOOD_SPF, GTI_FG_BS, GTI_RG_INFO
	GTI_C_BU, AMN_GOOD, ABX_MISS_RDNS
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:fbedac53-67d6-4a63-8c14-e0fc2367c928,IP:15,
	URL:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:-10
X-CID-INFO: VERSION:1.3.12,REQID:fbedac53-67d6-4a63-8c14-e0fc2367c928,IP:15,UR
	L:0,TC:0,Content:-25,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-10
X-CID-META: VersionHash:e7bac3a,CLOUDID:1a64dc981c9d1ca53408667f0b2ddb63,BulkI
	D:260718151802GOA6MZ3Q,BulkQuantity:0,Recheck:0,SF:10|38|66|78|102|127|865
	|898,TC:nil,Content:0|15|50,EDM:-3,IP:-2,URL:0,File:nil,RT:nil,Bulk:nil,QS
	:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,A
	RC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: ce4fb96c827811f1aa26b74ffac11d73-20260718
X-User: pengcan@kylinos.cn
Received: from lenovo [(116.128.244.171)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 810084223; Sat, 18 Jul 2026 15:17:59 +0800
From: Can Peng <pengcan@kylinos.cn>
To: keith.zhao@starfivetech.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>,
	stable@vger.kernel.org
Subject: [PATCH] phy: starfive: Fix runtime PM cleanup in JH7110 DPHY TX probe
Date: Sat, 18 Jul 2026 15:17:33 +0800
Message-ID: <20260718071733.436927-1-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_001807_831940_5F5BD00E 
X-CRM114-Status: GOOD (  10.01  )
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

stf_dphy_probe() enables runtime PM before getting the clock and
reset controls, creating the PHY and registering the PHY provider. If
any of those steps fails, probe returns with runtime PM still enabled.

The driver also has no remove callback, so runtime PM is left enabled
on driver unbind after a successful probe.

Use devm_pm_runtime_enable() so runtime PM is disabled automatically
on later probe failures and on driver unbind.

Fixes: d3ab79553308 ("phy: starfive: Add mipi dphy tx support")
Cc: stable@vger.kernel.org
Signed-off-by: Can Peng <pengcan@kylinos.cn>
---
 drivers/phy/starfive/phy-jh7110-dphy-tx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
index c64d1c91b130..181491a93807 100644
--- a/drivers/phy/starfive/phy-jh7110-dphy-tx.c
+++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
@@ -392,6 +392,7 @@ static int stf_dphy_probe(struct platform_device *pdev)
 {
 	struct phy_provider *phy_provider;
 	struct stf_dphy *dphy;
+	int ret;
 
 	dphy = devm_kzalloc(&pdev->dev, sizeof(*dphy), GFP_KERNEL);
 	if (!dphy)
@@ -406,7 +407,9 @@ static int stf_dphy_probe(struct platform_device *pdev)
 	if (IS_ERR(dphy->topsys))
 		return PTR_ERR(dphy->topsys);
 
-	pm_runtime_enable(&pdev->dev);
+	ret = devm_pm_runtime_enable(&pdev->dev);
+	if (ret)
+		return ret;
 
 	dphy->txesc_clk = devm_clk_get(&pdev->dev, "txesc");
 	if (IS_ERR(dphy->txesc_clk))
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
