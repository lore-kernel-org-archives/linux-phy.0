Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3861DCCD182
	for <linux-phy@archiver.kernel.org>; Thu,  2 Oct 2025 09:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaCcnLe/kaBNZAF+4LPkdh9dR/TXBHfAvsNt/hqn0rw=; b=1BtaByUhyGcPOc
	tYtIKFpx8o+nPcUFb9wXWex09SIZ5eQ10ihnu35ZytFeoxLq817bPNC8zDlwbCFdeYZO70TYWLpJZ
	GjiKmNp0+YLPO7w/naz1CKYiR3aBQCp7wv4C4cSIVM9aXFied5upO2JpXYAk3bDjcEkgvQrS0XnKt
	78CkUpip7rBo35xI8wdl2U4nmbXccy1TAh67YzQ8miSOuzs0k17dyzKOxgG83eVAcEkJYjXKjfUws
	0Z8iW3IkZSVQXL64Y1VPkqu/92mDBMyYHytk9guj+qVKf14xza0f9x9269B6E1rDR1drSJF8cb34s
	gmOEz54JXuVqFeFxRLTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4FkN-0000000A9ye-3eCd;
	Thu, 02 Oct 2025 09:37:11 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4FkM-0000000A9wL-0OCG
	for linux-phy@lists.infradead.org;
	Thu, 02 Oct 2025 09:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1759397827;
	bh=1otmjcp+8VLOXwHsEjahxbfe6VDNDKXcrtdoOgcHKqw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QjVX03SMsICILOGDzo40xTG5tnUKpAZ8H+BOrjoiEwt9pge+XEp+9Ic5RX/TB7UgY
	 F7bwbkAYqTmLvFYXRHZXYrmHozVrA7B32lRUTGWmkP6UbgbTOrPqE7d0q0F3YC6Fum
	 UNUWHauEqtJBAD9yck+ad+V+nZAZNjNhI07RmTNwF5qwA/iMQxav2u+uZjtUIwkl5V
	 DqFR7DyJbXFfqW4wrGNyT8HwXhg4AVHdjR7m6NDn1e9CIEdD91ghwn/F7zkR57QaiS
	 ZYh3tzxvCqSHn0JLpnIwBj4GkYkhg3DWIv01NNOMbWuO/EbcQsq1t1yaM/iNcF3B9l
	 RUCULQo3cHETw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E207517E12C4;
	Thu,  2 Oct 2025 11:37:06 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: sboyd@kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	sre@kernel.org,
	krzysztof.kozlowski@linaro.org,
	u.kleine-koenig@baylibre.com,
	angelogioacchino.delregno@collabora.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	wenst@chromium.org,
	casey.connolly@linaro.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v5 2/7] nvmem: qcom-spmi-sdam: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Thu,  2 Oct 2025 11:36:52 +0200
Message-ID: <20251002093657.2055332-3-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251002093657.2055332-1-angelogioacchino.delregno@collabora.com>
References: <20251002093657.2055332-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251002_023710_504940_C33D69F7 
X-CRM114-Status: GOOD (  17.28  )
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

Some Qualcomm PMICs integrate a SDAM device, internally located in
a specific address range reachable through SPMI communication.

Instead of using the parent SPMI device (the main PMIC) as a kind
of syscon in this driver, register a new SPMI sub-device for SDAM
and initialize its own regmap with this sub-device's specific base
address, retrieved from the devicetree.

This allows to stop manually adding the register base address to
every R/W call in this driver, as this can be, and is now, handled
by the regmap API instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/nvmem/Kconfig          |  1 +
 drivers/nvmem/qcom-spmi-sdam.c | 36 +++++++++++++++++++++++-----------
 2 files changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index e0d88d3199c1..23858269b61f 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -359,6 +359,7 @@ config NVMEM_SNVS_LPGPR
 config NVMEM_SPMI_SDAM
 	tristate "SPMI SDAM Support"
 	depends on SPMI
+	select REGMAP_SPMI
 	help
 	  This driver supports the Shared Direct Access Memory Module on
 	  Qualcomm Technologies, Inc. PMICs. It provides the clients
diff --git a/drivers/nvmem/qcom-spmi-sdam.c b/drivers/nvmem/qcom-spmi-sdam.c
index 4f1cca6eab71..2bb7b3bc497e 100644
--- a/drivers/nvmem/qcom-spmi-sdam.c
+++ b/drivers/nvmem/qcom-spmi-sdam.c
@@ -9,6 +9,7 @@
 #include <linux/nvmem-provider.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
+#include <linux/spmi.h>
 
 #define SDAM_MEM_START			0x40
 #define REGISTER_MAP_ID			0x40
@@ -20,7 +21,6 @@
 struct sdam_chip {
 	struct regmap			*regmap;
 	struct nvmem_config		sdam_config;
-	unsigned int			base;
 	unsigned int			size;
 };
 
@@ -73,7 +73,7 @@ static int sdam_read(void *priv, unsigned int offset, void *val,
 		return -EINVAL;
 	}
 
-	rc = regmap_bulk_read(sdam->regmap, sdam->base + offset, val, bytes);
+	rc = regmap_bulk_read(sdam->regmap, offset, val, bytes);
 	if (rc < 0)
 		dev_err(dev, "Failed to read SDAM offset %#x len=%zd, rc=%d\n",
 						offset, bytes, rc);
@@ -100,7 +100,7 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
 		return -EINVAL;
 	}
 
-	rc = regmap_bulk_write(sdam->regmap, sdam->base + offset, val, bytes);
+	rc = regmap_bulk_write(sdam->regmap, offset, val, bytes);
 	if (rc < 0)
 		dev_err(dev, "Failed to write SDAM offset %#x len=%zd, rc=%d\n",
 						offset, bytes, rc);
@@ -110,8 +110,17 @@ static int sdam_write(void *priv, unsigned int offset, void *val,
 
 static int sdam_probe(struct platform_device *pdev)
 {
+	struct regmap_config sdam_regmap_config = {
+		.reg_bits = 16,
+		.val_bits = 8,
+		.max_register = 0x100,
+		.fast_io = true,
+	};
 	struct sdam_chip *sdam;
 	struct nvmem_device *nvmem;
+	struct spmi_device *sparent;
+	struct spmi_subdevice *sub_sdev;
+	struct device *dev = &pdev->dev;
 	unsigned int val;
 	int rc;
 
@@ -119,19 +128,23 @@ static int sdam_probe(struct platform_device *pdev)
 	if (!sdam)
 		return -ENOMEM;
 
-	sdam->regmap = dev_get_regmap(pdev->dev.parent, NULL);
-	if (!sdam->regmap) {
-		dev_err(&pdev->dev, "Failed to get regmap handle\n");
-		return -ENXIO;
-	}
+	sparent = to_spmi_device(dev->parent);
+	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
+	if (IS_ERR(sub_sdev))
+		return PTR_ERR(sub_sdev);
 
-	rc = of_property_read_u32(pdev->dev.of_node, "reg", &sdam->base);
+	rc = of_property_read_u32(dev->of_node, "reg", &sdam_regmap_config.reg_base);
 	if (rc < 0) {
 		dev_err(&pdev->dev, "Failed to get SDAM base, rc=%d\n", rc);
 		return -EINVAL;
 	}
 
-	rc = regmap_read(sdam->regmap, sdam->base + SDAM_SIZE, &val);
+	sdam->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &sdam_regmap_config);
+	if (IS_ERR(sdam->regmap))
+		return dev_err_probe(&pdev->dev, PTR_ERR(sdam->regmap),
+				     "Failed to get regmap handle\n");
+
+	rc = regmap_read(sdam->regmap, SDAM_SIZE, &val);
 	if (rc < 0) {
 		dev_err(&pdev->dev, "Failed to read SDAM_SIZE rc=%d\n", rc);
 		return -EINVAL;
@@ -159,7 +172,7 @@ static int sdam_probe(struct platform_device *pdev)
 	}
 	dev_dbg(&pdev->dev,
 		"SDAM base=%#x size=%u registered successfully\n",
-		sdam->base, sdam->size);
+		sdam_regmap_config.reg_base, sdam->size);
 
 	return 0;
 }
@@ -181,3 +194,4 @@ module_platform_driver(sdam_driver);
 
 MODULE_DESCRIPTION("QCOM SPMI SDAM driver");
 MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS("SPMI");
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
