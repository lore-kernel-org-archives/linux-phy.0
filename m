Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E41DFEDE9AC
	for <linux-phy@archiver.kernel.org>; Tue, 10 Sep 2024 18:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUV4QTqHnlKrYy0wU4flhQwoZPvql5NDtlDzjs1T0oc=; b=1+L3uaUXBZYAMq
	SrN+BwxZOWjC9/rnwnYUo5nsUgc1RUbi7xAyLBfkTbIOLAWfaryg+hJrJxJxOuhIdinV0C7Z+85p4
	bBEaG1IzCWeyxF02foAPOGbf+YNdHR8aRjSrbU2huyF+H20XsxJBsMQkzkC0aurZEURyrOhnPQtdr
	On/BQMlJITeAEShHt3Vt9ekVrnkSY5/fTMZSf/gWMTwcxqXeYXe8bDvhfqvvS8TBWWN//7EyojmBi
	8GtwlgtpNTev0gtZ+5dTkZY8d2/YbA07QtB6JYAyzAhucDhY/RYJL1PFQngvgciIu82z4Mv7D/K/r
	DU7E6fwciTUCBPDrGecQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Pw-00000006iWJ-2h09;
	Tue, 10 Sep 2024 18:16:44 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so5Pt-00000006iV9-0CvQ
	for linux-phy@lists.infradead.org;
	Tue, 10 Sep 2024 18:16:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 01198BFB09;
	Tue, 10 Sep 2024 20:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1725992199; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=lRrN4PAU2l7OJC8sxx1hbjfmdyyjIZeE6QJ3Tin7hsU=;
	b=En0VR6cKYZksf0bzopn3Ltb94zOS4gvpoEwQsGyQBrzn499j1x4jVquVdwkxqcnxXvIdFN
	syIch3T7psqbftlssn//KosSt0dkEZO0eQD45rN3yPb0MRThKePfYibAB21kh8c7KzGfi8
	M2Zk5qREdyjV5zUkW8wibCLTlTXQNF+/E5SKP7QYHcacaY+o/s/qbetMDE2Hjh5zn6Aa80
	3E6C4l/aTSUMljfvzHUYfQhHl6p2y+b6vuULgK57xlQUGr4uc8ABSv7nX1gftTMcZjNU95
	U9kJTHymbBeSO1hnFasHyLZwbDLJIFuHrJZ7Yt7CWm/hEPhw5e3xCYRuUbD+8w==
From: Frieder Schrempf <frieder@fris.de>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Vinod Koul <vkoul@kernel.org>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>,
	Frieder Schrempf <frieder@fris.de>,
	Adam Ford <aford173@gmail.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH 2/2] phy: freescale: fsl-samsung-hdmi: Add PLL LUT entries for some non-CEA-861 modes
Date: Tue, 10 Sep 2024 20:14:53 +0200
Message-ID: <20240910181544.214797-3-frieder@fris.de>
In-Reply-To: <20240910181544.214797-1-frieder@fris.de>
References: <20240910181544.214797-1-frieder@fris.de>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_111641_254783_2C502BB4 
X-CRM114-Status: UNSURE (   6.77  )
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

In order to support some pixel clock values not specified in CEA-861
and not achievable by the integer PLL algorithm, we add some new LUT
entries. This allows to use the fractional-N PLL to achieve pixel
clocks of 75 MHz, 88.75 MHz and 296.703 MHz with high accuracy.

Signed-off-by: Frieder Schrempf <frieder@fris.de>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 401178bfcdda..6b36318630b2 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -156,6 +156,9 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 74250000,
 		.pll_div_regs = { 0xd1, 0x5c, 0x52, 0x90, 0x0d, 0x84, 0x41 },
+	}, {
+		.pixclk = 75000000,
+		.pll_div_regs = { 0xD1, 0x3E, 0x30, 0x9F, 0x0E, 0x82, 0x41 },
 	}, {
 		.pixclk = 78500000,
 		.pll_div_regs = { 0xd1, 0x62, 0x54, 0x87, 0x01, 0x80, 0x40 },
@@ -165,6 +168,9 @@ static const struct phy_config phy_pll_cfg[] = {
 	}, {
 		.pixclk = 82500000,
 		.pll_div_regs = { 0xd1, 0x67, 0x54, 0x88, 0x01, 0x90, 0x49 },
+	}, {
+		.pixclk = 88750000,
+		.pll_div_regs = { 0xD1, 0x6E, 0x50, 0x8B, 0x06, 0x81, 0x40 },
 	}, {
 		.pixclk = 89000000,
 		.pll_div_regs = { 0xd1, 0x70, 0x54, 0x84, 0x83, 0x80, 0x40 },
@@ -277,6 +283,9 @@ static const struct phy_config phy_pll_cfg[] = {
 		.pixclk = 277500000,
 		.pll_div_regs = { 0xd1, 0x73, 0x15, 0x88, 0x05, 0x90, 0x4d },
 	},  {
+		.pixclk = 296703000,
+		.pll_div_regs = { 0xd1, 0x7b, 0x18, 0xe0, 0x3d, 0x8a, 0x41 },
+	}, {
 		.pixclk = 297000000,
 		.pll_div_regs = { 0xd1, 0x7b, 0x15, 0x84, 0x03, 0x90, 0x45 },
 	},
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
