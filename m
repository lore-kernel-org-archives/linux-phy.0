Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1182C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 11:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LUTwZ300zrT80WzN/JXJJxouHokmOpHcGXRFezq/nMQ=; b=Dt0mZ2Y8w5hF8s
	0fGYISzQ2ZtOlV4qMfiDjdZY9j9Ya8lsIcq/5vB4ILg7EV0U54HZUCleaMgVC2PVn2AOKr0MHkmCP
	BkyF69gyf4Ud/4+y9BdyLmGExj9vUml9LseCfCRw50OuceDSSCd1Hf4QWhOkkQfvjWpSmn4PerF/9
	TwtEuuIe9mw1CepFVHOhMC7eXADSQRxBZlZfs3rvzaY7bXMQEIrKGvLkcGQVWR5LQsKnokDxpNuyn
	3bKC2ipI/Mz8jaAs1lIOvH+SiIWtemF6pNYkqfLlxFmaYrT7w6q5Lf+FmKegFci5DF+uHNsIBwToK
	b5ZQvX2LSviIidyQgiuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOAI-0000000EPpB-2Fol;
	Tue, 20 Feb 2024 11:19:58 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOAE-0000000EPoO-2WtW;
	Tue, 20 Feb 2024 11:19:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708427994; x=1739963994;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=a17JouAcvzgDsexC19eNTWJV4xZc81Ozyv0pAv63uXQ=;
  b=F8WygDaojOeMM3y+4E9lDGfpaL8XpfVC8hXgOuxkd7b1RJyvenhVDrcJ
   L1Mho0p99HC4NjnoCr3P9TjySPCQAOgDZrTtN8D57JrFq/KDmbV/n4IDp
   /t7CFD4LhTCvxlHrY4R3VsZRsBypgt/kyWoXfsnTLYlhnTRH2NLKTRF/E
   M+rzr5uud7AnCRoZVFjsPfkR6jz61yOQDY/TGQpeqoOkH741E73zOIumd
   ZNn3oFfluNDjeqv/pw/IuRAUH+OEdGQKdAuJ2TEXBotkAX3oR1k8JmGQA
   XKaSVQWNzeSOssg1138EUjNEXS/dLr0FS4FMtw/J7Te2BRCJrhmPkCeDh
   A==;
X-IronPort-AV: E=Sophos;i="6.06,172,1705359600"; 
   d="scan'208";a="35497524"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 20 Feb 2024 12:19:52 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2C8CB16EE60;
	Tue, 20 Feb 2024 12:19:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1708427988; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=a17JouAcvzgDsexC19eNTWJV4xZc81Ozyv0pAv63uXQ=;
	b=jfajOyBENTqgJDjpOCpKNY2QAnViQGWSlNnuyb+QBb8SlZWo4uAuMyEfsI9HfL3FJegPjb
	AbpMmCc5JO17YcwIdwGfUqPCQ9itnwlz/hXaSX+B5nWBBCJa/fqyjAja/hMNgqd2zsAlZB
	sG8iq8+JKQKVnY0Ee1LVsxlkqXTMvQtJ/8a1NkWurKL28qQmzu3VDkQZZIT+j/HJdwK2Z8
	B4d+x1zbEKWvG6HbLDAZ3wtozUTgUClfPon1NV6nC9IbVqVfVlY8OcHcqh6Q8X9yHgfs10
	yOifxcUz5DBJy2W+tJ6Yls3dWvdkRE3ZLiW02lRsV6hTaZi8nes97ObTbyNNMA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] phy: fsl-imx8mq-usb: make vbus regulator optional
Date: Tue, 20 Feb 2024 12:19:48 +0100
Message-Id: <20240220111948.2227506-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_031955_149191_5C9D04AA 
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

vbus-supply property is optional, so instead of allocating a
dummy regulator make it pure optional.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index 0b9a59d5b8f02..3af007b8e77f5 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -323,9 +323,11 @@ static int imx8mq_phy_power_on(struct phy *phy)
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
 	int ret;
 
-	ret = regulator_enable(imx_phy->vbus);
-	if (ret)
-		return ret;
+	if (imx_phy->vbus) {
+		ret = regulator_enable(imx_phy->vbus);
+		if (ret)
+			return ret;
+	}
 
 	return clk_prepare_enable(imx_phy->clk);
 }
@@ -335,7 +337,8 @@ static int imx8mq_phy_power_off(struct phy *phy)
 	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
 
 	clk_disable_unprepare(imx_phy->clk);
-	regulator_disable(imx_phy->vbus);
+	if (imx_phy->vbus)
+		regulator_disable(imx_phy->vbus);
 
 	return 0;
 }
@@ -392,8 +395,10 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(imx_phy->phy))
 		return PTR_ERR(imx_phy->phy);
 
-	imx_phy->vbus = devm_regulator_get(dev, "vbus");
-	if (IS_ERR(imx_phy->vbus))
+	imx_phy->vbus = devm_regulator_get_optional(dev, "vbus");
+	if (PTR_ERR(imx_phy->vbus) == -ENODEV)
+		imx_phy->vbus = NULL;
+	else if (IS_ERR(imx_phy->vbus))
 		return dev_err_probe(dev, PTR_ERR(imx_phy->vbus), "failed to get vbus\n");
 
 	phy_set_drvdata(imx_phy->phy, imx_phy);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
