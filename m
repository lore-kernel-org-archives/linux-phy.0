Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ABA0C41535
	for <linux-phy@archiver.kernel.org>; Tue, 19 Dec 2023 09:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r1fGzrJCh/zaHZm4sikreP8YMVK7iupVnnQG+M3r6UE=; b=ARnysTscbllCnR
	75moOfG/k1hIYIGq6bWcFj2k7eoc35hI8/eXvsvOPday2StwLjqev6QH6DgAaBYnzZEfWakjYr0Wd
	zk8vIEuMtnj9CYtgELxPs2NQgx/kBBu3+BVVGRFPTX1l54XSZQ3KFh63i/SHa+OVikhPMMaTqirwo
	2Z/2NqInFHy7+yazYEUWVS8bSC//Lvf5KXJVsp/chIk++7NT1P05OKWdNsj0yY+eRGQoLJC93K+iW
	RdLlyDtCCt5Xhfpo5gZ+DDhMPsK34etaBz3GxGvuZp3jC8iliub9c7Wu1RqNdFGxvaSnRFLY9iqrZ
	Zd2XVV4ED9Q+uigPZbLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFW0B-00DOJ4-2c;
	Tue, 19 Dec 2023 09:02:59 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFW07-00DOHO-1l;
	Tue, 19 Dec 2023 09:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702976575; x=1734512575;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=RHhTDdALqnE/2aQy+KOUUZ7jASgbhuP+XHUR9jG5AZ4=;
  b=Wr2NUuptDHiyoCVKZGiJZ7hAri7baaH/L2vHvIrqas3H/nM6F0XxYmfo
   xmUqcrPjxtOBOVT+O4dubqiN+socfWWeCWRXUdHrsWs5kgHKsb+AaikFe
   cOU0CugLZYSTKWJmf7xLdCXd9ZDb10Fe66y5M1GyetI2c9aQM9SOeZkr9
   LEciraamMSu42Rd+V8cXlpK0GkOa/jTCHx0VTsSexchIOuU+iRbJCZMzg
   OpUeFYrOOEaUMW/wJ2EDqudAx1ONMWdD8mytW3xv+iUvrck7EYzWQ0qHH
   Mr/hoE8+Sw54/hfH6gyPHKSQWJX3jk4w4XcVZ8kZecCxc3hscm1B2Bk1X
   Q==;
X-IronPort-AV: E=Sophos;i="6.04,287,1695679200"; 
   d="scan'208";a="34579983"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Dec 2023 10:02:49 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id A88C3280075;
	Tue, 19 Dec 2023 10:02:48 +0100 (CET)
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
Subject: [PATCH 1/1] phy: freescale: phy-fsl-imx8-mipi-dphy: Fix alias name to use dashes
Date: Tue, 19 Dec 2023 10:02:48 +0100
Message-Id: <20231219090248.3317500-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_010255_984169_71EC35DF 
X-CRM114-Status: GOOD (  10.65  )
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
---
 drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c b/drivers/phy/freescale/phy-fsl-imx8-mipi-dphy.c
index e625b32889bf..0928a526e2ab 100644
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
