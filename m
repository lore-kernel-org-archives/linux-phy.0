Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ADADCCD1B0
	for <linux-phy@archiver.kernel.org>; Tue, 21 Oct 2025 08:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhiwZTPw5dMD6rEvxiSJBGxs63VxZ+aLkyrELymic40=; b=JMJZjCcqebuDDZ
	TXXcyvVXBm1/HJhqg+qYM91L0GtZKYXai6HJ6YO7ApscBjBAWgnecIgk8Sa6ZQ2W/3flhd+ymrVOn
	OuMBaPGAsaLlsMHmuQHrPRACFKyHyP6566JxrDaC7jpmd49e0lPM0zcsJxVqwnwgo6LQq3t6QBG5X
	7fGQjl8dC7mi5e0fEFiAPsQpOuAyI/66ihbUvWMVrXg26IcV6MWBMKypx3JmqeIUBbG6QOVCep/xx
	jyDiiLT7qZIbU2wmrAWTIzqkLc+cG0Pb0rVzfEv3nsq94SWG/y7N01BzbOc48cGuD+RoNPXacyfWA
	KCrqVGtjt6hxP+9vGIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7nI-0000000GHkO-16F9;
	Tue, 21 Oct 2025 08:32:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB7nD-0000000GHfs-3OSf
	for linux-phy@lists.infradead.org;
	Tue, 21 Oct 2025 08:32:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761035549;
	bh=pWVE1aetWCjbxUtekG5N3/7XA6kbi9V+NuMr8xUFisI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cK/2QFkQiE6XExDEcIcLEjvtsQ4bmNO8JR58UEZCHjZTSv00xhm+i0w21QqOuT9IL
	 GpjfWpgVIqi5FAjSg4NIX0T0eoZWic5kvzS1AqtrJO8a78p/jpvl+UhIEhZ/Ac/SlS
	 HeVV1fzHOA1mqVWLJ4GuRMw1izuFSbgqIVTK0Mn4hq5gVqyShrjJIXUKCPZI+tKibF
	 w/nxdaP6G8buSUkOFRJ4IQdsF13WQ6x0KYhlg66d8Y+d3cUKW6AD/rmMN7sL5HY5+S
	 jJkLuC7oYRhqh8uAMD1F+vTbgpqpzkaxzkKa0KOTOwlerp8sut5kpevwDBpqzqoY3/
	 4Ilxf89Bu2wag==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 344A517E013C;
	Tue, 21 Oct 2025 10:32:29 +0200 (CEST)
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
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v7 08/10] misc: qcom-coincell: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Tue, 21 Oct 2025 10:32:17 +0200
Message-ID: <20251021083219.17382-9-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
References: <20251021083219.17382-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_013232_021504_D2FED3AC 
X-CRM114-Status: GOOD (  18.47  )
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

Some Qualcomm PMICs integrate a charger for coincells, usually
powering an RTC when external (or main battery) power is missing.

Instead of using the parent SPMI device (the main PMIC) as a kind
of syscon in this driver, register a new SPMI sub-device and
initialize its own regmap with this sub-device's specific base
address, retrieved from the devicetree.

This allows to stop manually adding the register base address to
every R/W call in this driver, as this can be, and is now, handled
by the regmap API instead.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/misc/Kconfig         |  2 ++
 drivers/misc/qcom-coincell.c | 38 +++++++++++++++++++++++++-----------
 2 files changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index b9c11f67315f..f4c5e67192fb 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -291,6 +291,8 @@ config HP_ILO
 config QCOM_COINCELL
 	tristate "Qualcomm coincell charger support"
 	depends on MFD_SPMI_PMIC || COMPILE_TEST
+	depends on SPMI
+	select REGMAP_SPMI
 	help
 	  This driver supports the coincell block found inside of
 	  Qualcomm PMICs.  The coincell charger provides a means to
diff --git a/drivers/misc/qcom-coincell.c b/drivers/misc/qcom-coincell.c
index 3c57f7429147..49e38442b289 100644
--- a/drivers/misc/qcom-coincell.c
+++ b/drivers/misc/qcom-coincell.c
@@ -9,11 +9,11 @@
 #include <linux/of.h>
 #include <linux/regmap.h>
 #include <linux/platform_device.h>
+#include <linux/spmi.h>
 
 struct qcom_coincell {
 	struct device	*dev;
 	struct regmap	*regmap;
-	u32		base_addr;
 };
 
 #define QCOM_COINCELL_REG_RSET		0x44
@@ -35,7 +35,7 @@ static int qcom_coincell_chgr_config(struct qcom_coincell *chgr, int rset,
 	/* if disabling, just do that and skip other operations */
 	if (!enable)
 		return regmap_write(chgr->regmap,
-			  chgr->base_addr + QCOM_COINCELL_REG_ENABLE, 0);
+			  QCOM_COINCELL_REG_ENABLE, 0);
 
 	/* find index for current-limiting resistor */
 	for (i = 0; i < ARRAY_SIZE(qcom_rset_map); i++)
@@ -58,7 +58,7 @@ static int qcom_coincell_chgr_config(struct qcom_coincell *chgr, int rset,
 	}
 
 	rc = regmap_write(chgr->regmap,
-			  chgr->base_addr + QCOM_COINCELL_REG_RSET, i);
+			  QCOM_COINCELL_REG_RSET, i);
 	if (rc) {
 		/*
 		 * This is mainly to flag a bad base_addr (reg) from dts.
@@ -71,19 +71,28 @@ static int qcom_coincell_chgr_config(struct qcom_coincell *chgr, int rset,
 	}
 
 	rc = regmap_write(chgr->regmap,
-		chgr->base_addr + QCOM_COINCELL_REG_VSET, j);
+		QCOM_COINCELL_REG_VSET, j);
 	if (rc)
 		return rc;
 
 	/* set 'enable' register */
 	return regmap_write(chgr->regmap,
-			    chgr->base_addr + QCOM_COINCELL_REG_ENABLE,
+			    QCOM_COINCELL_REG_ENABLE,
 			    QCOM_COINCELL_ENABLE);
 }
 
 static int qcom_coincell_probe(struct platform_device *pdev)
 {
-	struct device_node *node = pdev->dev.of_node;
+	struct regmap_config qcom_coincell_regmap_config = {
+		.reg_bits = 16,
+		.val_bits = 8,
+		.max_register = 0x100,
+		.fast_io = true,
+	};
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct spmi_subdevice *sub_sdev;
+	struct spmi_device *sparent;
 	struct qcom_coincell chgr;
 	u32 rset = 0;
 	u32 vset = 0;
@@ -92,16 +101,22 @@ static int qcom_coincell_probe(struct platform_device *pdev)
 
 	chgr.dev = &pdev->dev;
 
-	chgr.regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	rc = of_property_read_u32(node, "reg", &qcom_coincell_regmap_config.reg_base);
+	if (rc)
+		return rc;
+
+	sparent = to_spmi_device(dev->parent);
+	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
+	if (IS_ERR(sub_sdev))
+		return PTR_ERR(sub_sdev);
+
+	chgr.regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev,
+						&qcom_coincell_regmap_config);
 	if (!chgr.regmap) {
 		dev_err(chgr.dev, "Unable to get regmap\n");
 		return -EINVAL;
 	}
 
-	rc = of_property_read_u32(node, "reg", &chgr.base_addr);
-	if (rc)
-		return rc;
-
 	enable = !of_property_read_bool(node, "qcom,charger-disable");
 
 	if (enable) {
@@ -142,3 +157,4 @@ module_platform_driver(qcom_coincell_driver);
 
 MODULE_DESCRIPTION("Qualcomm PMIC coincell charger driver");
 MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS("SPMI");
-- 
2.51.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
