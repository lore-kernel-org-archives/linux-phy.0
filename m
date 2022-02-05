Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B02C5C433F5
	for <linux-phy@archiver.kernel.org>; Sat,  5 Feb 2022 19:09:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=029nabAfR1e5rHefdxj8cUptl5DF1NIcDKmKpzsQQJI=; b=LAD4wkWFCbgfT8
	YZThsbrx0t7qEx+Lu/ToBh28ANsLH/yHFkY6G2tOYYnysWQrvU0DF0YcRmUnrh/NHY0wCqYKPHq4m
	twpgiCJNTaMlmtMPX//9X5JnIPdu7UHxNgtZSzline5J+caZuiW7ynfFEK0A5B3dJ3G5tYXrkCAHz
	/SFI2eJmJ0YQJPbIAklNtSJcW6/W6e0+lkN+aq28StOBPA3hP6005AKaKeRnEJgAKwnSW5qSJo6sw
	vdZQ+05Ywlngznz8FaEzElKtppkYFHRKlAWnvykiL4Ob9NjCZuRs2Do7lKKRDyyS1tmwCsYHoSDhI
	HUMbrI5n7LW1kK0OPmGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGQQs-0076aq-Q5; Sat, 05 Feb 2022 19:09:14 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGQDK-006zYR-FX; Sat, 05 Feb 2022 18:55:19 +0000
Received: (Authenticated sender: paul.kocialkowski@bootlin.com)
 by mail.gandi.net (Postfix) with ESMTPSA id 5413E240002;
 Sat,  5 Feb 2022 18:55:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
 t=1644087312;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+quzXmSLeW/9z2A42DWsC3K4J4WvAIG77KmdgY3FlMc=;
 b=l2E6lWMvXovhrV8hWwAJ9nrKTfPV85a2fG26zRZ1s/Rr4BuFmvT7/BDMrQmvOTMNlFjEH+
 2U8QbzkGsIoYOzVR/YEcJooneNpZb0PQwa4QeOcnM0VfPcQF5voVS60Xx6HCpFfq+bdJnN
 7e/KPxnripLy/3TZT8hyZGXtl1alM07429u0vsz1u2+ag0q0f5qTS6GEJmFE1Eu6KYhZNk
 RW/kFUEaAUOzfUsfHgpOUZcwwPivHCdOyAZCdvYAhsKthXFGUMBrwEMwLSvY92zRDYaFNz
 5TcE+JoT0MgunoW5G83mK/+rhn32K3sWkV7RnDBuYLwzqh+wE2fVUgI5w4Owxw==
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: [PATCH v2 19/66] media: sun6i-csi: Grab bus clock instead of passing
 it to regmap
Date: Sat,  5 Feb 2022 19:53:42 +0100
Message-Id: <20220205185429.2278860-20-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
References: <20220205185429.2278860-1-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_105514_838379_7B05083F 
X-CRM114-Status: GOOD (  14.10  )
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

Since the bus clock alone is not enough to get access to the registers,
don't pass it to regmap and manage it instead just like the other
clocks.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 10 ++++++++--
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h |  1 +
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index 5fbaa1e99412..dc79f3c14336 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -827,13 +827,19 @@ static int sun6i_csi_resource_request(struct sun6i_csi_device *csi_dev,
 	if (IS_ERR(io_base))
 		return PTR_ERR(io_base);
 
-	csi_dev->regmap = devm_regmap_init_mmio_clk(&pdev->dev, "bus", io_base,
-						    &sun6i_csi_regmap_config);
+	csi_dev->regmap = devm_regmap_init_mmio(&pdev->dev, io_base,
+						&sun6i_csi_regmap_config);
 	if (IS_ERR(csi_dev->regmap)) {
 		dev_err(&pdev->dev, "Failed to init register map\n");
 		return PTR_ERR(csi_dev->regmap);
 	}
 
+	csi_dev->clk_bus = devm_clk_get(&pdev->dev, "bus");
+	if (IS_ERR(csi_dev->clk_bus)) {
+		dev_err(&pdev->dev, "Unable to acquire bus clock\n");
+		return PTR_ERR(csi_dev->clk_bus);
+	}
+
 	csi_dev->clk_mod = devm_clk_get(&pdev->dev, "mod");
 	if (IS_ERR(csi_dev->clk_mod)) {
 		dev_err(&pdev->dev, "Unable to acquire csi clock\n");
diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
index e4e7ac6c869f..356661b413f8 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.h
@@ -51,6 +51,7 @@ struct sun6i_csi_device {
 	struct sun6i_video		video;
 
 	struct regmap			*regmap;
+	struct clk			*clk_bus;
 	struct clk			*clk_mod;
 	struct clk			*clk_ram;
 	struct reset_control		*reset;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
