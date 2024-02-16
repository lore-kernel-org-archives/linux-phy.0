Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AAF3C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 15:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OylaNK/JE8JZNSlNkUgcCZ0EWQ4MXEbKQtj3AgsDjSA=; b=2OAH4uIeqt9Y69
	PLogFP+TqO015rTEyjyzwxWXZFjaj3z+hQeOzCXIn5DZ0Sxr17Erm1ctbCSeYrl6dUTUUaSiXi+WW
	AkJUB/LzTqFxSvdDAhhW+jPFDjrtOiIecmNWti9fLzpy4udYn/0cnlo/KaERNCXpSfIhkhkKFPgAe
	pNEXGEeoOdnGicjf+IWX/NwxTzgTMnY/i8nzAdUlZplGPGsW5yRWZEqFXjlkXblfNqKz7piBVxgyO
	ZLu4XrLM2Gi7OWFAlKJLNIHa5vYEq8PnXTdka5qVuaq59hUAKaYkjawMB7IT72RcBZ/rmEn9R/+Us
	lC+GrBGzgLBYwHJMUB1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb01x-00000002kTJ-07sn;
	Fri, 16 Feb 2024 15:21:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb01u-00000002kSH-3SDM
	for linux-phy@bombadil.infradead.org;
	Fri, 16 Feb 2024 15:21:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Reply-To:Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Content-ID:Content-Description;
	bh=xnfFG1IcfV8ofAasZcI2+aKrB59CIk23xjg3Vu9U3Wk=; b=iVZQmndpIkSPSLdIhgbbr81WOJ
	AE5RhUB++fsm/Kv4Zp2troQiKxEr9azasQKwBLnmH54SiNx1BQiRiigyW9VeKwChpLQzwPDYd3XLI
	gNozdCA+WMa+F6eR2mZq3GbQ/V5a79OuY09jIqcRr871Q1e3ye9iBvMrW8tuE4dx4MFMinEQ0AIEq
	1HETGbPNcAGlQNANgx9iYtAGIvIvLJbZkMqipx2LYbWEX8QB0hV9Xz1dkyBCnEv+mgeUYxR2qEVAA
	pNijH9sz/OhbIffceeskkfQYOs35C2mkOP8mz3PSWDxWfuHeZn7wl3XnI78a3N+ptaEPyllZUpFHs
	ZgYhzN+A==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb01r-0000000HWyj-2FAv
	for linux-phy@lists.infradead.org;
	Fri, 16 Feb 2024 15:21:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5D57661FE3;
	Fri, 16 Feb 2024 15:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FAF9C43399;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708096887;
	bh=VZRY9XMcrLAgmTWhll1wn7de+3/sRUO6L2Lrel3FpI4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=MYUmG14Y6GAR7dXeLLMyO/HceOQZTMXcdhkW2OLPis21rUNEunHY1VX/sfoEyQKGt
	 /GBdMNvLiaomKDwHrA+o6jfiJw4eRVCkY7s9EQ9S/Sp5DVRq6jC8PRbeSwbBBdwZpl
	 MjMvtr5EMjIy8005XVToeJwH/MpFyoQ1tmz5Fn/Dbp2UElV6dfjZBjqEyj1XyGcwqQ
	 HaoOqwkaObYZjBL1rJHLCmPE045/5JUT9XTQ/5Zl/C+btb15kresMHFWFAq3wa+0Bb
	 gMmIU74Ie0gmEdLyNrka4Dv3sWwDn/f0FSJMsX7Ord0u0MiA79XHAhc3FB3GIDc4z6
	 bg2r6ydx+kupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F61FC48BF6;
	Fri, 16 Feb 2024 15:21:27 +0000 (UTC)
From: Yang Xiwen via B4 Relay <devnull+forbidden405.outlook.com@kernel.org>
Date: Fri, 16 Feb 2024 23:21:03 +0800
Subject: [PATCH RFC 3/4] phy: hisi-inno-usb2: add support for direct MMIO
MIME-Version: 1.0
Message-Id: <20240216-inno-phy-v1-3-1ab912f0533f@outlook.com>
References: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
In-Reply-To: <20240216-inno-phy-v1-0-1ab912f0533f@outlook.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Jiancheng Xue <xuejiancheng@hisilicon.com>, 
 Pengcheng Li <lpc.li@hisilicon.com>, Shawn Guo <shawn.guo@linaro.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>, 
 David Yang <mmyangfl@gmail.com>, Yang Xiwen <forbidden405@outlook.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708096886; l=3548;
 i=forbidden405@outlook.com; s=20230724; h=from:subject:message-id;
 bh=vlXiKqsLZeXsfy+2X2tFbKV08QHZormBiBHhDir/Zg8=;
 b=PvrXOIVdC8a36f4CWMQWiDK4swW9T8EN05s/5LxcRoeUztInX+RUWn2ky2HoAJtxOFlS6uM64
 yd2w5HpwpGgAkRRgHzbqCMWE3hQipcLwTE0595hdjY5aZZupxZNjCY0
X-Developer-Key: i=forbidden405@outlook.com; a=ed25519;
 pk=qOD5jhp891/Xzc+H/PZ8LWVSWE3O/XCQnAg+5vdU2IU=
X-Endpoint-Received: by B4 Relay for forbidden405@outlook.com/20230724 with auth_id=67
X-Original-From: Yang Xiwen <forbidden405@outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_152132_054933_A713916B 
X-CRM114-Status: GOOD (  13.52  )
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
Reply-To: forbidden405@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Yang Xiwen <forbidden405@outlook.com>

This method of resgiter access is used by Hi3798MV200. For other models,
of_iomap() returns 0 due to insufficient length. So they are unaffected.

Signed-off-by: Yang Xiwen <forbidden405@outlook.com>
---
 drivers/phy/hisilicon/phy-hisi-inno-usb2.c | 53 +++++++++++++++++++-----------
 1 file changed, 33 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
index b7e740eb4752..12a158fb749c 100644
--- a/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
+++ b/drivers/phy/hisilicon/phy-hisi-inno-usb2.c
@@ -10,6 +10,7 @@
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/of_address.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
@@ -43,6 +44,7 @@
 #define PHY_CLK_ENABLE		BIT(2)
 
 struct hisi_inno_phy_port {
+	void __iomem *base;
 	struct reset_control *utmi_rst;
 	struct hisi_inno_phy_priv *priv;
 };
@@ -62,26 +64,31 @@ static void hisi_inno_phy_write_reg(struct hisi_inno_phy_priv *priv,
 	u32 val;
 	u32 value;
 
-	if (priv->type == PHY_TYPE_0)
-		val = (data & PHY_TEST_DATA) |
-		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
-		      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
-		      PHY0_TEST_WREN | PHY0_TEST_RST;
-	else
-		val = (data & PHY_TEST_DATA) |
-		      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
-		      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
-		      PHY1_TEST_WREN | PHY1_TEST_RST;
-	writel(val, reg);
-
-	value = val;
-	if (priv->type == PHY_TYPE_0)
-		value |= PHY0_TEST_CLK;
-	else
-		value |= PHY1_TEST_CLK;
-	writel(value, reg);
-
-	writel(val, reg);
+	if (priv->ports[port].base)
+		// stride is 4
+		writel(data, (u32 *)priv->ports[port].base + addr);
+	else {
+		if (priv->type == PHY_TYPE_0)
+			val = (data & PHY_TEST_DATA) |
+			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY0_TEST_ADDR) |
+			      ((port << PHY0_TEST_PORT_OFFSET) & PHY0_TEST_PORT) |
+			      PHY0_TEST_WREN | PHY0_TEST_RST;
+		else
+			val = (data & PHY_TEST_DATA) |
+			      ((addr << PHY_TEST_ADDR_OFFSET) & PHY1_TEST_ADDR) |
+			      ((port << PHY1_TEST_PORT_OFFSET) & PHY1_TEST_PORT) |
+			      PHY1_TEST_WREN | PHY1_TEST_RST;
+		writel(val, reg);
+
+		value = val;
+		if (priv->type == PHY_TYPE_0)
+			value |= PHY0_TEST_CLK;
+		else
+			value |= PHY1_TEST_CLK;
+		writel(value, reg);
+
+		writel(val, reg);
+	}
 }
 
 static void hisi_inno_phy_setup(struct hisi_inno_phy_priv *priv)
@@ -167,6 +174,7 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
 	for_each_child_of_node(np, child) {
 		struct reset_control *rst;
 		struct phy *phy;
+		void __iomem *base;
 
 		rst = of_reset_control_get_exclusive(child, NULL);
 		if (IS_ERR(rst)) {
@@ -174,7 +182,10 @@ static int hisi_inno_phy_probe(struct platform_device *pdev)
 			return PTR_ERR(rst);
 		}
 
+		base = of_iomap(child, 0);
+
 		priv->ports[i].utmi_rst = rst;
+		priv->ports[i].base = base;
 		priv->ports[i].priv = priv;
 
 		phy = devm_phy_create(dev, child, &hisi_inno_phy_ops);
@@ -205,6 +216,8 @@ static const struct of_device_id hisi_inno_phy_of_match[] = {
 	  .data = (void *) PHY_TYPE_0 },
 	{ .compatible = "hisilicon,hi3798mv100-usb2-phy",
 	  .data = (void *) PHY_TYPE_1 },
+	{ .compatible = "hisilicon,hi3798mv200-usb2-phy",
+	  .data = (void *) PHY_TYPE_0 },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, hisi_inno_phy_of_match);

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
