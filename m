Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B3DECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 15:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hcpeQhpMWaNX1KiyqV0QCb7t5MhMlZk/JCYKrMBaHQ=; b=NRYYsqXNI5P9wJ
	deBaKYd/uXuvzkalzLFZFUGq4c/5eWFBDoTtRMCBitv8IyBTnLb6n0tNONZbN/t5iswYKtqEWAYPf
	pNqJcJDzV3fCq1G/+E8d9oG7LcflWIKd8A1cHHBEUcjzm12vxtcHC8AACsFn4M0fNIbeWHPeAX2Qs
	PQDvsORLoCmAikteAKmGccqscXI15ddjcYLnn0Nmq9MpLRLzF5dLetC5eZLVzqX7OLxV5Srljc/U4
	gd896SFXLfXSwV8rwUCFAO/n9sstDhQqW1g/NkhZ2mV/G+bJhQaWscCQjoFI1/tS5Ib/BNDlNANzE
	wzumXdvimeRob2VGKHiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng8k-00000002Qgl-1oGB;
	Mon, 09 Sep 2024 15:17:18 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sng6s-00000002QDJ-2pG9;
	Mon, 09 Sep 2024 15:15:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725894923; x=1757430923;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=pbm+e8RlELy0SuLLhozJgphfQNaU2znVcUGcpSphMQ0=;
  b=HK8iw3TpXf4CpzJuovfUdV7xSqDWMlORswFzajJi7EwSj5SmAjFGvcxY
   SmGR4xPg+X18cI+FhlVplNbekAoRPAo1nOCnyoFBrgCZfZhmuGnyO6RsN
   vBAcXDHgpcH0CmsKngUyDxbEKnLk+kL9rqfYrC9iE4FBIPyFNKAR/FXFe
   hetV2o7rfrSoW4Z+lIx0r22J1kRJbWJV3eBece3oDGhrhZ+CICaxL+63a
   MApH/BPldNyKC+rkrtO5aYByc7gVVfGQrCpkzjZKM1jMBfIkCQF7r/FNk
   0gytCd4LQXK1joBBe4zTfBhoC0TnjeJ3yUxs6R5KTK/TNn4aMAo1/GUVY
   w==;
X-CSE-ConnectionGUID: /ltMKKTeRqSXWxXLFfJz/g==
X-CSE-MsgGUID: Yr4XJKMqRJuGa9jUd/4l+A==
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; 
   d="scan'208";a="31514494"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Sep 2024 08:15:21 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 9 Sep 2024 08:14:56 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Mon, 9 Sep 2024 08:14:54 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Mon, 9 Sep 2024 17:14:41 +0200
Subject: [PATCH v2 1/9] phy: sparx5-serdes: add support for private match
 data
MIME-Version: 1.0
Message-ID: <20240909-sparx5-lan969x-serdes-driver-v2-1-d695bcb57b84@microchip.com>
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
X-CRM114-CacheID: sfid-20240909_081522_776864_89FF0D5F 
X-CRM114-Status: GOOD (  15.59  )
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

In order to reuse the existing Sparx5 SERDES driver for lan969x, we add
support for private match data, with initial fields for the iomap and
imap_size.

Signed-off-by: Daniel Machon <daniel.machon@microchip.com>
Reviewed-by: Steen Hegelund <Steen.Hegelund@microchip.com>
---
 drivers/phy/microchip/sparx5_serdes.c | 16 +++++++++++++---
 drivers/phy/microchip/sparx5_serdes.h |  6 ++++++
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/microchip/sparx5_serdes.c b/drivers/phy/microchip/sparx5_serdes.c
index 7cb85029fab3..5427e8627a78 100644
--- a/drivers/phy/microchip/sparx5_serdes.c
+++ b/drivers/phy/microchip/sparx5_serdes.c
@@ -2507,6 +2507,11 @@ static struct sparx5_serdes_io_resource sparx5_serdes_iomap[] =  {
 	{ TARGET_SD_LANE_25G + 7, 0x5c8000 }, /* 0x610dd0000: sd_lane_25g_32 */
 };
 
+static const struct sparx5_serdes_match_data sparx5_desc = {
+	.iomap = sparx5_serdes_iomap,
+	.iomap_size = ARRAY_SIZE(sparx5_serdes_iomap),
+};
+
 /* Client lookup function, uses serdes index */
 static struct phy *sparx5_serdes_xlate(struct device *dev,
 				     const struct of_phandle_args *args)
@@ -2555,6 +2560,10 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, priv);
 	priv->dev = &pdev->dev;
 
+	priv->data = device_get_match_data(priv->dev);
+	if (!priv->data)
+		return -EINVAL;
+
 	/* Get coreclock */
 	clk = devm_clk_get(priv->dev, NULL);
 	if (IS_ERR(clk)) {
@@ -2579,8 +2588,9 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 			iores->name);
 		return -ENOMEM;
 	}
-	for (idx = 0; idx < ARRAY_SIZE(sparx5_serdes_iomap); idx++) {
-		struct sparx5_serdes_io_resource *iomap = &sparx5_serdes_iomap[idx];
+	for (idx = 0; idx < priv->data->iomap_size; idx++) {
+		const struct sparx5_serdes_io_resource *iomap =
+			&priv->data->iomap[idx];
 
 		priv->regs[iomap->id] = iomem + iomap->offset;
 	}
@@ -2599,7 +2609,7 @@ static int sparx5_serdes_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id sparx5_serdes_match[] = {
-	{ .compatible = "microchip,sparx5-serdes" },
+	{ .compatible = "microchip,sparx5-serdes", .data = &sparx5_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sparx5_serdes_match);
diff --git a/drivers/phy/microchip/sparx5_serdes.h b/drivers/phy/microchip/sparx5_serdes.h
index 13f94a29225a..128f8c53172f 100644
--- a/drivers/phy/microchip/sparx5_serdes.h
+++ b/drivers/phy/microchip/sparx5_serdes.h
@@ -26,11 +26,17 @@ enum sparx5_serdes_mode {
 	SPX5_SD_MODE_SFI,
 };
 
+struct sparx5_serdes_match_data {
+	const struct sparx5_serdes_io_resource *iomap;
+	int iomap_size;
+};
+
 struct sparx5_serdes_private {
 	struct device *dev;
 	void __iomem *regs[NUM_TARGETS];
 	struct phy *phys[SPX5_SERDES_MAX];
 	unsigned long coreclock;
+	const struct sparx5_serdes_match_data *data;
 };
 
 struct sparx5_serdes_macro {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
