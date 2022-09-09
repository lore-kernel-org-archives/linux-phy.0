Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25B91ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 20:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DgtDpmNP4VZnNlxXt4ow/stZclmJmZGeLEqz19qwMBE=; b=IdiZ7JQPzoE2Sn
	KovdQPBBiOoIJ2m+0ZHGa4h1VCVOnK851QD8RY2ksMoOYO5J/yJaGrw1orEOZK1luJu49VhXWPdrd
	eUIiC5DlWjJ5koUaQhccasn4lw/F/w8ltWt+cXF0F6PwEFEwrvpuodsj1Cggg+uVRisyuCr+G1Q0t
	Zy4I1D3FrgEx0kZHf0+53ELCeEFVTdEY064/EkWY563vnS2ZfvVsWc2jzqJ7nE6lWu5NHYlfstVWl
	v/Xu9xJAp2OIhC24P8gymXdQMl+txf7HhOzoAW0lw7e4kjRGCeJe1dqd6S1bkhy2yJiaiuPw/xZlO
	w3lBLvHpAbcjRkp8rsbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWkBH-002Jag-DA; Fri, 09 Sep 2022 20:00:51 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWkBD-002JUa-GN
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 20:00:49 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 289K0YfQ126728;
	Fri, 9 Sep 2022 15:00:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1662753634;
	bh=xnUFq6xaFcj5P6SRwy+dFuU03cRiw8QseRfWklft+z0=;
	h=From:To:CC:Subject:Date;
	b=HlWWWxMd2Ezcc2u1Dk1r4GImm3gKvXfE4oOrGSidZkrQQlrqRvUbKLXUHkXvfk/f1
	 kwkBu1atIvZpHOXMkqukgUegd1HBoRY3OOaEl0Ws+G4WLdKRv+smYRMedfcgWjSQx/
	 vMF9YvGW94Hl3n/s/NOZ8NEfL/jJduqmUa40kwcI=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 289K0YMY035514
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 9 Sep 2022 15:00:34 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6; Fri, 9 Sep
 2022 15:00:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.6 via
 Frontend Transport; Fri, 9 Sep 2022 15:00:34 -0500
Received: from ubuntu.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 289K0SGE000980;
	Fri, 9 Sep 2022 15:00:29 -0500
From: Matt Ranostay <mranostay@ti.com>
To: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: <rogerq@kernel.org>, <vkoul@kernel.org>, <vigneshr@ti.com>,
        Matt Ranostay
	<mranostay@ti.com>
Subject: [PATCH] phy: ti: phy-j721e-wiz: stop name conflict if multiple serdes are initialized
Date: Fri, 9 Sep 2022 13:00:26 -0700
Message-ID: <20220909200026.3422-1-mranostay@ti.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_130048_499792_1F7AF1B6 
X-CRM114-Status: GOOD (  11.25  )
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

When multiple serdes instances are initialized the first will succeed but
additional will conflict over clocks names and probing fails.

Signed-off-by: Matt Ranostay <mranostay@ti.com>
Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 20af142580ad..1f4f585a84ad 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -717,6 +717,8 @@ static int wiz_phy_en_refclk_register(struct wiz *wiz)
 	struct device *dev = wiz->dev;
 	struct clk_init_data *init;
 	struct clk *clk;
+	char *clk_name;
+	unsigned int sz;
 
 	wiz_phy_en_refclk = devm_kzalloc(dev, sizeof(*wiz_phy_en_refclk), GFP_KERNEL);
 	if (!wiz_phy_en_refclk)
@@ -726,12 +728,23 @@ static int wiz_phy_en_refclk_register(struct wiz *wiz)
 
 	init->ops = &wiz_phy_en_refclk_ops;
 	init->flags = 0;
-	init->name = output_clk_names[TI_WIZ_PHY_EN_REFCLK];
+
+	sz = strlen(dev_name(dev)) + strlen(output_clk_names[TI_WIZ_PHY_EN_REFCLK]) + 2;
+
+	clk_name = kzalloc(sz, GFP_KERNEL);
+	if (!clk_name)
+		return -ENOMEM;
+
+	snprintf(clk_name, sz, "%s_%s", dev_name(dev), output_clk_names[TI_WIZ_PHY_EN_REFCLK]);
+	init->name = clk_name;
 
 	wiz_phy_en_refclk->phy_en_refclk = wiz->phy_en_refclk;
 	wiz_phy_en_refclk->hw.init = init;
 
 	clk = devm_clk_register(dev, &wiz_phy_en_refclk->hw);
+
+	kfree(clk_name);
+
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
