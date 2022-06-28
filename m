Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39914C43334
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gl6+bPYcVuGXnYpH82A3Gcze3uhM/1/z2Std73ogvM=; b=oLFTHkBOY7PAtG
	MMjxIX90mFar9Mbjuwf6R1OY+LxEl1qzgQm8CLJQQBcGVdsPVQle82ARUolMPusP5kvNN+xkIwFsX
	ycGS+Kt6mFMqmADjeigQSmtS/MSoRLJB/S+aAzwwykK15httzWEknIvXSeQ4V0FQqmRaMSDfB8rp2
	EvYndSIQEH8jGPLPgC/pLRD/Lx2bddUrgFNkQrzXmzccX+9RArT5YOi5wcay4rLKITRZM7ZkrIFWq
	FAhzLBh8tHTwLoNEqZf2QNt7X8+UyT6LuPr0EXIuPEUgc41G4jurakoDN9xLHxO1twL3M1oeu4F4I
	5Gsjli2n3b+oo+YI73lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFk-0069gl-LA; Tue, 28 Jun 2022 12:23:36 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6AFi-0069fA-Aq
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:23:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id ED64EB81E0B;
	Tue, 28 Jun 2022 12:23:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4571AC341CF;
	Tue, 28 Jun 2022 12:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656419011;
	bh=pXV/Nifo7ZhBaapzRCp8sn27XTIo2SKqC2ty0bQ8eTo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sElN7b+rzMLOeuPBwCli5dJvKMF23ZOTVW5+i/RaN9wYbMY4V+9xhy0kA8amUU9uz
	 mbepD3deIyV2kIWIlk/R46OS8ATpD0EmFrI+GFp6Tmw1Dod9HbORyYbwL8yw0p5hZd
	 xLy6AsOZaxXMkxj57NsKdFQiTfRGfB37zehVfszzolfDQXykWdtCd7bc4Bd+kQkdEK
	 u6VTu6xizhyGRFovL2jWpKXagRFYdlUI9/PFwUNnI9sdFtrH1JThx4q/5G6I8Extgv
	 os+T5La1R3pvtIuqsSmhWXT+429rsS4O5telOamfnzM/yR/GC+yGEz7hThG+XO5hrr
	 w6NYzqnKJ4HCA==
From: Roger Quadros <rogerq@kernel.org>
To: kishon@ti.com,
	vkoul@kernel.org
Cc: vigneshr@ti.com,
	t-patil@ti.com,
	sjakhade@cadence.com,
	s-vadapalli@ti.com,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Roger Quadros <rogerq@kernel.org>
Subject: [PATCH 7/7] phy: ti: phy-j721e-wiz: set PMA_CMN_REFCLK_DIG_DIV based on reflk rate
Date: Tue, 28 Jun 2022 15:22:55 +0300
Message-Id: <20220628122255.24265-8-rogerq@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220628122255.24265-1-rogerq@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_052334_561531_1B9E6B77 
X-CRM114-Status: GOOD (  11.08  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

For J7200-SR2.0 and AM64 we don't model Common refclock divider as
a clock divider as the divisor rate is fixed based on operating
reference clock frequency. We just program the recommended value
into the register. This simplifies the device tree and implementation
a lot.

Signed-off-by: Roger Quadros <rogerq@kernel.org>
---
 drivers/phy/ti/phy-j721e-wiz.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index cc2ab5152f07..20af142580ad 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -24,6 +24,11 @@
 #include <linux/regmap.h>
 #include <linux/reset-controller.h>
 
+#define REF_CLK_19_2MHZ         19200000
+#define REF_CLK_25MHZ           25000000
+#define REF_CLK_100MHZ          100000000
+#define REF_CLK_156_25MHZ       156250000
+
 /* SCM offsets */
 #define SERDES_SUP_CTRL		0x4400
 
@@ -1053,6 +1058,25 @@ static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
 	else
 		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x3);
 
+	switch (wiz->type) {
+	case AM64_WIZ_10G:
+	case J7200_WIZ_10G:
+		switch (rate) {
+		case REF_CLK_100MHZ:
+			regmap_field_write(wiz->div_sel_field[CMN_REFCLK_DIG_DIV], 0x2);
+			break;
+		case REF_CLK_156_25MHZ:
+			regmap_field_write(wiz->div_sel_field[CMN_REFCLK_DIG_DIV], 0x3);
+			break;
+		default:
+			regmap_field_write(wiz->div_sel_field[CMN_REFCLK_DIG_DIV], 0);
+			break;
+		}
+		break;
+	default:
+		break;
+	}
+
 	if (wiz->data->pma_cmn_refclk1_int_mode) {
 		clk = devm_clk_get(dev, "core_ref1_clk");
 		if (IS_ERR(clk)) {
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
