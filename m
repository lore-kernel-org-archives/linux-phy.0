Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3213EB64DD
	for <linux-phy@archiver.kernel.org>; Tue,  1 Aug 2023 08:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tJt33u1d/r3Qp/WnqeyqVfzNALVd3XFx0q/+cK3aueU=; b=pw5NvhdJ9clh49
	RQKSg7iGet/wcIuCjyUOaLucOM0EbRLozJtRP9xOhMTXGp02LyofJj+yzUihdMkx7DwTcJ0mu741F
	ZQdlkRiCm61kpFov5W1k4HqrOocvNmzoLzOTRFe8kUGS49O9Hzi9FHFynJDBQnK2ibWv/jcJT1LnI
	HZxwb2hn8tAMwXYL4rh2OaXvp26tK9uLUdOtL9njUTtCZ99txfws4YowXlXnGV6/vfvaFL3mlSos+
	XCvZCHPw64Ya5BqRUlYay0LpGGxoWiJcsQSX6gsUMaDJYLyP585VMXcy13QacysSnaYz5/quLBPCT
	L60ydatHajTb3mL0mURQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQl3D-000gUt-19;
	Tue, 01 Aug 2023 08:48:19 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQl39-000gTq-21;
	Tue, 01 Aug 2023 08:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1690879695; x=1722415695;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Ej2YjuZGkzGShLUb+WiHjN1ltVzCKNeu3wkhgd2l9cg=;
  b=Ri1dWD82N4QbZ/aGnNsANPvnHdur7B5f13pXvTto3JVRqO+/KjUGhw/7
   m0x1jeEJ/TsjD3TCzoAkL5cIMWh1GL8knkbEyWUWiTX7/kE4dotFQ9CBP
   PCV1nt0UIFlfDR4kr/PiBGbt1xIHaeC11UwdJRZTtQr/WK6npUP7R36CS
   XZ12SEx6G/Ce94TPKK7NyTRXDkCw6SBM4Wf0iJt9W2jKAAGkz/Pn1UN8I
   XdQ+WWjUB8+Frce2GLA/G+CMQWm/LkRzf2NqqadZUKweM+8J4QmbkdrlT
   +3ipw6KPxONj0Jjiuf22R/K3cObqM2HerEWvnFM2DO47lc+1Vp9NJyGN1
   g==;
X-IronPort-AV: E=Sophos;i="6.01,246,1684792800"; 
   d="scan'208";a="32223025"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 01 Aug 2023 10:48:10 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 08A05280075;
	Tue,  1 Aug 2023 10:48:10 +0200 (CEST)
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
Subject: [PATCH 1/1] phy: fsl-imx8mq-usb: add dev_err_probe if getting vbus failed
Date: Tue,  1 Aug 2023 10:48:07 +0200
Message-Id: <20230801084807.87160-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_014816_066670_3753F07A 
X-CRM114-Status: GOOD (  11.97  )
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
 drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
index c1a57541fbb3..3af007b8e77f 100644
--- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
+++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
@@ -399,7 +399,7 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
 	if (PTR_ERR(imx_phy->vbus) == -ENODEV)
 		imx_phy->vbus = NULL;
 	else if (IS_ERR(imx_phy->vbus))
-		return PTR_ERR(imx_phy->vbus);
+		return dev_err_probe(dev, PTR_ERR(imx_phy->vbus), "failed to get vbus\n");
 
 	phy_set_drvdata(imx_phy->phy, imx_phy);
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
