Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8584ECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48jlrkerNpXaUa9nc/rbknJ1JlhOGw7IE6mOh5lckyo=; b=TiFrCfj3JYcs84
	QmKv0RUkDA1Av4p08E/yITKJDXmh7L2/doe3B8mNEJ760lQX4NsQkQCCf6d1Ls47zp+dOFpI69hGi
	w3FWz24uCPt5zXKSm1rSHb1nCERn6Kq5G8P/tqPJV9gx+RxG2+MmuagETs005upILR8u+OXdGdx6q
	4FVg54UqA4zbKd2xGnj4f+mNMPX+zL3rO4pnBGXB8rD3M1ewHSEAjVUCJfdODQO7uJEFUGU729k0m
	rxHwnKqkTM2eau0YQmpWQxzb7qDJzlq05zBy+EbxY1gEdmGeLXpuBUkX/jKDBd1GyoU2tO8ehCqX8
	q9JvOt3rko0KDYv9zjcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sngAi-00000002RHx-2WqF;
	Mon, 09 Sep 2024 15:19:20 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng6t-00000002QDu-3UEt;
	Mon, 09 Sep 2024 15:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894924; x=1757430924;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=1AJHRHcGfmD/9YGKz72ENNmKG33hLzSx1mSxJxpOXls=;
  b=CN+SAD63Ha+XWvVaGHm4r7HE/V9MDH9CsFIw5ACDFI8zC4USZ914qZHT
   g7lvVOVJPj8Wd/cgr05xmsh89GmfNJXeDPJ+yyV+2FNCU7WLBqoJFkgbK
   SIw88EoiftMjU73MxLx3WpA5Gn6WivsJJ56VwtzHetacIjvaj51cmAu+3
   zNf82/GTVBP8H7EjG0A/zYfoWRsrVwnHt2DSf/ZJXSoG8apNl++K+XSHB
   lrpuf6/sGi+f/8+TcgA9xLGjveHaXgAdKHn/prHiKD/O0moxLTLX2i0L1
   uIUSPRCVukQV7kjdCNRFoAYCgcuLPblebZsZEzacAdXV/c8GPOILJ3ZUf
   g==;
X-CSE-ConnectionGUID: /ltMKKTeRqSXWxXLFfJz/g==
X-CSE-MsgGUID: bKvqNuDfQLii5spaWCHo/A==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="31514505"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:14:59 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:14:57 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:42 +0200
Subject: [PATCH v2 2/9] phy: sparx5-serdes: add constants to match data
MIME-Version: 1.0
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-2-d695bcb57b84@microchip.com>
References: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
In-Reply-To: <20240909-sparx5-lan969x-serdes-driver-v2-0-d695bcb57b84@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_081523_923406_E26A2CC5 
X-CRM114-Status: GOOD (  13.81  )
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

We need to handle a few different constants that differ for Sparx5 and
lan969x. Add a new struct: sparx5_serdes_consts for this purpose. We
populate it with an initial field for the number of SERDES'es: sd_max.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 7 +++++--
 drivers/phy/microchip/sparx5_serdes.h | 5 +++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 5427e8627a78..c3ed028fc74e 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -2510,6 +2510,9 @@ static struct sparx5_serdes_io_resource sparx5_serdes_iomap[] =  {
 static const struct sparx5_serdes_match_data sparx5_desc = {
 	.iomap = sparx5_serdes_iomap,
 	.iomap_size = ARRAY_SIZE(sparx5_serdes_iomap),
+	.consts = {
+		.sd_max       = 33,
+	},
 };
 
 /* Client lookup function, uses serdes index */
@@ -2526,7 +2529,7 @@ static struct phy *sparx5_serdes_xlate(struct device *dev,
 	sidx = args->args[0];
 
 	/* Check validity: ERR_PTR(-ENODEV) if not valid */
-	for (idx = 0; idx < SPX5_SERDES_MAX; idx++) {
+	for (idx = 0; idx < priv->data->consts.sd_max; idx++) {
 		struct sparx5_serdes_macro *macro =
 			phy_get_drvdata(priv->phys[idx]);
 
@@ -2594,7 +2597,7 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 
 		priv->regs[iomap->id] = iomem + iomap->offset;
 	}
-	for (idx = 0; idx < SPX5_SERDES_MAX; idx++) {
+	for (idx = 0; idx < priv->data->consts.sd_max; idx++) {
 		err = sparx5_phy_create(priv, idx, &priv->phys[idx]);
 		if (err)
 			return err;
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 128f8c53172f..8c27cfde4938 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -26,7 +26,12 @@ enum sparx5_serdes_mode {
 	SPX5_SD_MODE_SFI,
 };
 
+struct sparx5_serdes_consts {
+	int sd_max;
+};
+
 struct sparx5_serdes_match_data {
+	const struct sparx5_serdes_consts consts;
 	const struct sparx5_serdes_io_resource *iomap;
 	int iomap_size;
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
