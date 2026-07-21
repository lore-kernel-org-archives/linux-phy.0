Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA77C4452B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jul 2026 06:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnDH5dwkyRo//edIC8ePgQB8KCfzsns6UN+t+IVQRrg=; b=B71ltSzL9a82hk
	0ENbpznMzgMNbafjaxgXTlzLsNawkb7CO923xyrJCJjYDf/yU7RVFPtNdVVWrApSqQBY5+vaeZc2L
	TqENZCQu5b1/nKNkXpvPMs1uL09G41FTmIKzyHiKxxEZ6TjpZZLy2ZjyZKHd/VroEnxecwPmE5qmI
	/FzDYWFoe1vybYpz0mOlMJE+SAFh4dCdpTBBlO63qRJG4TM601qSsrTwVp6HERDonNYlG1Nuwj4gT
	GJq9mt8E2H7IFAY2ibgj0BiepMFk9tA4HcVSxHy/QXLUXDAczmOdwG05bIYMoRsqBVs83uF89Xg6x
	NNJIKB19ld0douuojJ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4H5-00000008ZA0-1oTz;
	Tue, 21 Jul 2026 06:48:19 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4H0-00000008Z7l-3f8L
	for linux-phy@lists.infradead.org;
	Tue, 21 Jul 2026 06:48:16 +0000
X-UUID: 2266606a84d011f1aa26b74ffac11d73-20260721
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.3.12,REQID:69d927d5-af34-4c5b-a9c0-d4640c077d08,IP:0,U
	RL:0,TC:0,Content:-25,EDM:25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTI
	ON:release,TS:0
X-CID-META: VersionHash:e7bac3a,CLOUDID:3e7a4f355dedc4bf6a97cc7a7de41efa,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:81|82|102|865|898,TC:nil,Content:0|15|50
	,EDM:5,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OS
	A:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,SSN|SDN
X-CID-BAS: 2,SSN|SDN,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-CID-RHF: D41D8CD98F00B204E9800998ECF8427E
X-UUID: 2266606a84d011f1aa26b74ffac11d73-20260721
X-User: pengcan@kylinos.cn
Received: from lenovo [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <pengcan@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 1501765214; Tue, 21 Jul 2026 14:48:09 +0800
From: Can Peng <pengcan@kylinos.cn>
To: vkoul@kernel.org,
	neil.armstrong@linaro.org,
	bmasney@redhat.com
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Can Peng <pengcan@kylinos.cn>,
	stable@vger.kernel.org
Subject: [PATCH v2 2/4] phy: freescale: fsl-samsung-hdmi: Resume device on remove
Date: Tue, 21 Jul 2026 14:47:50 +0800
Message-ID: <20260721064752.153338-3-pengcan@kylinos.cn>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064752.153338-1-pengcan@kylinos.cn>
References: <20260721064752.153338-1-pengcan@kylinos.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234815_608709_FEB86E0A 
X-CRM114-Status: GOOD (  10.33  )
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

The APB clock is acquired with devm_clk_get_enabled(), so devres will
disable and unprepare it when the driver is unbound.

Runtime suspend also disables the APB clock. If the device is runtime
suspended when the driver is removed, devres will disable the already
disabled clock and the clock enable count can underflow.

Resume the device in the remove callback before devres runs so the final
devres disable is balanced. Drop the runtime PM reference with noidle so
the device is not suspended again before devres cleanup.

Fixes: 6ad082bee902 ("phy: freescale: add Samsung HDMI PHY")
Cc: stable@vger.kernel.org
Signed-off-by: Can Peng <pengcan@kylinos.cn>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index e7af4f9c7b20..5f41890bd134 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -690,7 +690,16 @@ static int fsl_samsung_hdmi_phy_probe(struct platform_device *pdev)
 
 static void fsl_samsung_hdmi_phy_remove(struct platform_device *pdev)
 {
+	int ret;
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret < 0)
+		dev_warn(&pdev->dev, "failed to resume on remove: %d\n", ret);
+
 	of_clk_del_provider(pdev->dev.of_node);
+
+	if (!ret)
+		pm_runtime_put_noidle(&pdev->dev);
 }
 
 static int __maybe_unused fsl_samsung_hdmi_phy_suspend(struct device *dev)
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
