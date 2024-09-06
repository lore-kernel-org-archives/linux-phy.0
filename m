Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27C7BCE7B03
	for <linux-phy@archiver.kernel.org>; Fri,  6 Sep 2024 12:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hcpeQhpMWaNX1KiyqV0QCb7t5MhMlZk/JCYKrMBaHQ=; b=mujWXEl3iJ+oXp
	bHD0Q5nyJx0vyVF2ThpzRedVmJLljp2iOF5fKQ2Q/YheP4g3WPy8LyrJXd7aoEG2nQExuBGG/hSSB
	kGDVtoPpjukJc4WSGpTiQPenzSzTMJ4U7nfZhNgwP7lmBSDEuSETB2N5RCVzM4N8pUdATob4tyRlL
	yiJEBl2JA5yqusV23uIq0zcRZvwnX94wlIkcbFKudITyojC/Ux3jBXW6yXd8sSGKEeNs/erq7NrxR
	aW5vrnbusdUZolt/jHzaQU7IuEqhlXwvvow3venbPw6RTp8BnTvKyEVCNg+MAqfJsOYvqGwNyW4FX
	J45lQlfRlvLof6RPlgYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYTZ-0000000CFAQ-2WIK;
	Fri, 06 Sep 2024 12:54:09 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smYSq-0000000CEuE-3Uin;
	Fri, 06 Sep 2024 12:53:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1725627204; x=1757163204;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=pbm+e8RlELy0SuLLhozJgphfQNaU2znVcUGcpSphMQ0=;
  b=2QwmPqJDn8JoCJw+9crLpPN1yHpmi/2EluQc+h7K7perwW2kdl0RlhNn
   LXFJUYI/5YjuvTJW6utY60fijLkKZxb1/GCuVKBGV+mT7dOXajG4SWe3O
   2mrPVwx6vimuJ4evtczeb73CIjJ+EaBM5I2cEzJBLBANbDScwusczCkH1
   d5ghKTGrXJdXalqAipfNaKULg4T8IMm8w60arl/LyP/S0/Ld7c9Z0CSCK
   t+zZ5NzzBHwq/lwgZydFvxDC36iBwsnnUVG+8Z4LYmzltnodk9jWWootb
   FXDl2+l9J+NiKAjQeOBBF6/DLTYHEtSJP0ng7B5Wpiw3kLlYn6Co+X1o4
   Q==;
X-CSE-ConnectionGUID: aks78ZCLRxOyTJZTZgJsDQ==
X-CSE-MsgGUID: ph61CXWcQ0ySPMEcrCqjug==
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; 
   d="scan'208";a="34534552"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 06 Sep 2024 05:53:23 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 6 Sep 2024 05:53:15 -0700
Received: from DEN-DL-M70577.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Fri, 6 Sep 2024 05:53:13 -0700
From: Daniel Machon <daniel.machon@microchip.com>
Date: Fri, 6 Sep 2024 14:52:38 +0200
Subject: [PATCH 1/9] phy: sparx5-serdes: add support for private match data
MIME-Version: 1.0
Message-ID: <20240906-sparx5-lan969x-serdes-driver-v1-1-8d630614c58a@microchip.com>
References: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
In-Reply-To: <20240906-sparx5-lan969x-serdes-driver-v1-0-8d630614c58a@microchip.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars Povlsen <lars.povlsen@microchip.com>, Steen Hegelund
	<Steen.Hegelund@microchip.com>, <UNGLinuxDriver@microchip.com>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
X-Mailer: b4 0.14-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_055325_159933_6E01117F 
X-CRM114-Status: GOOD (  14.90  )
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
