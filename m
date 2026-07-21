Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C89E2C4452D
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 06:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYNep+oMlnU5GkOMlzgeEde2anlADwomB1fD5uvfoAg=; b=hkbkZvniO3qSdE
	ka1aAe3dxbRXuIeCld1yiCIp4VYGYKd+UFXs0KY6cDjjtdpNr3B3gqEFxviBKISzuGzBtUFfsTBQF
	aHJKX04aGGuR/RRatChvgWKstOfz0wEm/jcgnugdZesRk9TL+Y4jb5uCCa18XYL4Um7VWskJxIcAU
	JzHky8gfn9wSN2zydqy7AeJifVauXWHrpJ8ILdvKPeWoMlYr1RZkP7kJoEENaC19FAftoy+DPY+u4
	cyf7rIrofxN6uCmhI3kMn8DBTBrXpoIEPCDsd59EH/fHAKoBA92OGkk6lY//25cPlspVz/RKz3LJY
	PBy6PTmyowlw1BGPed9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4H5-00000008ZA4-22g9;
	Tue, 21 Jul 2026 06:48:19 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4H2-00000008Z8A-2UrC
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 06:48:18 +0000
X-UUID: 246fc4aa84d011f1aa26b74ffac11d73-20260721
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:79d72310-165d-4435-98d6-59e84d751874,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:e7bac3a,CLOUDID:3049064dc9f762a36daa46b2ce985449,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|865|898,TC:nil,Content:0|15|50
	,EDM:-3,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,O
	SA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 246fc4aa84d011f1aa26b74ffac11d73-20260721
X-User: pengcan@kylinos.cn
Received: from lenovo [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 2031218206; Tue, 21 Jul 2026 14:48:12 +0800
From: Can Peng <pengcan@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	bmasney@redhat.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>,
	stable@vger.kernel.org
Subject: [PATCH v2 3/4] phy: freescale: fsl-samsung-hdmi: Only gate APB clock in runtime PM
Date: Tue, 21 Jul 2026 14:47:51 +0800
Message-ID: <20260721064752.153338-4-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064752.153338-1-pengcan@kylinos.cn>
References: <20260721064752.153338-1-pengcan@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234817_297790_0F55461D 
X-CRM114-Status: GOOD (  10.66  )
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

The APB clock is acquired with devm_clk_get_enabled(), so it remains
prepared until devres cleanup and runtime PM only needs to gate or ungate
it.

Using clk_prepare_enable() from runtime resume is also problematic when
the common clock framework runtime-resumes the provider device before
calling the PHY clock rate callbacks, because clk_set_rate() is executed
while holding the clock prepare lock.

Use clk_enable() and clk_disable() in the runtime PM callbacks so the APB
clock remains prepared for the lifetime of the device and runtime resume
does not re-enter the prepare path.

Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
Cc: stable@vger.kernel.org
Signed-off-by: Can Peng <pengcan@kylinos.cn>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 5f41890bd134..455d03220b72 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -706,7 +706,7 @@ static int __maybe_unused fsl_samsung_hdmi_phy_suspend(struct device *dev)
 {
 	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
 
-	clk_disable_unprepare(phy->apbclk);
+	clk_disable(phy->apbclk);
 
 	return 0;
 }
@@ -716,7 +716,7 @@ static int __maybe_unused fsl_samsung_hdmi_phy_resume(struct device *dev)
 	struct fsl_samsung_hdmi_phy *phy = dev_get_drvdata(dev);
 	int ret = 0;
 
-	ret = clk_prepare_enable(phy->apbclk);
+	ret = clk_enable(phy->apbclk);
 	if (ret) {
 		dev_err(phy->dev, "failed to enable apbclk\n");
 		return ret;
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
