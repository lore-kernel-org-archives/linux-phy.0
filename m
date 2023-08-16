Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDA15C001B0
	for <linux-phy@archiver.kernel.org>; Wed, 16 Aug 2023 08:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rd9wJISDa6wrHacY3KMOUvpZtoi1Wptht/2vEB9Ggfk=; b=tfwjWds7NEPqE7
	DpH1cVdaM8FygPNw4bWdDce/tTq4+fZ2iAN1QQ5dXdn2wwRPWhx5E/ScPIhbV3LQCKJiEaHhus2lh
	kIUn8O0+UuxLfSAnqPLDokMt0353MoYqu98T+o0l0GubC9AyX6t6t/v59JCti2UqTVbBDcDxFWMn1
	pomPV9RslggVypBrGGhM7nk/MgbOmpqpYwQ6h7UFQAF39470bSmMk4Oz1RqW7aY32o/PHXZvlrDAB
	/fg9XyWvrVU6OD8pjLYGD7GiMHdT8Ka2neQKlbSelaFFFZldkBfuRS5ojsO+Wbl5RBprmW5elRukz
	e5NapIIidAwxwFPsg1Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWBUe-003Saq-1a;
	Wed, 16 Aug 2023 08:03:04 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWBUZ-003SZd-38;
	Wed, 16 Aug 2023 08:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1692172980; x=1723708980;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=5Bc2ftLQ7VCAWb9KqyusJMupCYoK9Otoi5wL8oi1p3k=;
  b=MQecJ3QCozUJSxogMnCJMMdfxQCx7MG7ncL0xGaRfJE8ExjK3s5q2EZA
   G8h5IxmQoqdEXqCFvBLUaFFIVwbFXDQ9OMHQi5Vmt6xP+wcpOqE02B4kF
   vAz35yc90gDqvcYCtevuD0uOikGz9tAIOYkiD6N1aqhNFr0avOKgcfrQI
   BpVQOujqfOxetcD0QfNPOeIzdez+s19jVZElAqJ5FDqlZY6B4ko1DyOWt
   xeNujCTLXfQCR+jtuYYCzqMiNnnnviujPYnGq+7nV2dn4YhjyKV0Bfmc0
   MSLSu0YzbAn6GtuxZAhf1onCk1QP38ETcE96XEbTPLQfYNHwgfxYv5581
   Q==;
X-IronPort-AV: E=Sophos;i="6.01,176,1684792800"; 
   d="scan'208";a="32465530"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Aug 2023 10:02:57 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AF7E1280075;
	Wed, 16 Aug 2023 10:02:57 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] phy: fsl-imx8mq-usb: add dev_err_probe if getting vbus failed
Date: Wed, 16 Aug 2023 10:02:56 +0200
Message-Id: <20230816080256.611380-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_010300_405510_5BA47FE3 
X-CRM114-Status: GOOD (  11.58  )
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

This adds an error message if getting vbus failed for some reason,
-EPROBE_DEFER is handled appropriately as well and adds a nice
information to debugfs.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
Changes in v2:
* Fixed local patch order to get rid of dependencies
* Rebased to next-20230816

 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index e1d769402696..0b9a59d5b8f0 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -394,7 +394,7 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 
 	imx_phy->vbus = devm_regulator_get(dev, "vbus");
 	if (IS_ERR(imx_phy->vbus))
-		return PTR_ERR(imx_phy->vbus);
+		return dev_err_probe(dev, PTR_ERR(imx_phy->vbus), "failed to get vbus\n");
 
 	phy_set_drvdata(imx_phy->phy, imx_phy);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
