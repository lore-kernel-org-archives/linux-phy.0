Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84688C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jan 2024 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YK9S141sMnbnLKHGO+TRAtcmjmyQM4LDfK2s9WI2Ojc=; b=Zy776VLcIxI8dk
	BjJr5me4HkTDqKFDjLuNgfxwn2MCf7JGKn9f7mBg8MXxZU02xNEZVc+HlzVmuQtax7Wqw6K9JH2FJ
	14JxQRFgvAfry8Kkdkf7vJ5WAyU9S/a0wsDMygBcm2sagvFceBVKspeVnv9J05h4hSHPSCDQmHiq4
	TiBTe8e/PD74bPJOJgiufYuvlBhE2UJRH5bnaGU6e6uL/Ggl8yjdkf6jbKQ2zdOB5Ag5bZgBXPzhJ
	gBGlwObjfNkgKoc51IYIjQLgMXF4XLfVgtBYlc9vVEU6rmUVrFxDSWwvb9Baq1kEiTKonqxXaMVta
	dDW3Ejtp8YRIKA0AphvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUy9-00Atn7-0e;
	Wed, 10 Jan 2024 09:33:53 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNUy5-00AtmB-1D;
	Wed, 10 Jan 2024 09:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1704879229; x=1736415229;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=f8VUJrICtPDpo3Q4672yZprbkhYs2lvY6ISiCiGvhWs=;
  b=lTrbJreva8qVL3aXHlqa5JHQCkgy0hapFljQeqLpyrYT/il0OHlcz/Tu
   CQPtTSr6ZmhH9+tHR28RcufESau/FfIemdivm0EopNo8X7msbdGrz/FOY
   ZyjBpKCU28NGPGATB+uO87shJ3+3HYezAHbjaO9nI81FZJ0rh+Di5qutE
   /JK9u7M7+bQhkp4uvYCGZAHl+wVdjZ81dly4obvH4zOf3Ii3xwJ1mCM50
   5eN3/TbCHULRNuefz4zTB82t1I7jRNgJ5RpN69XP18uTYu5Knl46sFGh5
   L8wiZ0I6p7MKAMo/OCOYDQS+VP4k/NpY5bX+NNqffr9uaxR+b8NEhvrW2
   w==;
X-IronPort-AV: E=Sophos;i="6.04,184,1695679200"; 
   d="scan'208";a="34824168"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Jan 2024 10:33:46 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 35922280075;
	Wed, 10 Jan 2024 10:33:46 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Ying Liu <victor.liu@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias name to use dashes
Date: Wed, 10 Jan 2024 10:33:43 +0100
Message-Id: <20240110093343.468810-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_013349_855243_8BD51DC5 
X-CRM114-Status: GOOD (  10.93  )
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

Devicetree spec lists only dashes as valid characters for alias names.
Table 3.2: Valid characters for alias names, Devicee Specification,
Release v0.4

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Fixes: 3fbae284887de ("phy: freescale: phy-fsl-imx8-mipi-dphy: Add i.MX8qxp LVDS PHY mode support")
---
Changes in v2:
* Added Fixes tag as suggested by Liu Ying

 drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
index e625b32889bfc..0928a526e2ab3 100644
--- a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
+++ b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
@@ -706,7 +706,7 @@ static int mixel_dphy_probe(struct platform_device *pdev)
 			return ret;
 		}
 
-		priv->id = of_alias_get_id(np, "mipi_dphy");
+		priv->id = of_alias_get_id(np, "mipi-dphy");
 		if (priv->id < 0) {
 			dev_err(dev, "Failed to get phy node alias id: %d\n",
 				priv->id);
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
