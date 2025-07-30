Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85A85C87FD5
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3E9IUsXpOpkhboVa6SnjZNFlq1qwOY87HBaqzb6LE0=; b=32tQUEQwV3ksA3
	w9wlewZL1QIidrWurFVG4B0AcAEQpz2d3VftyvrlXeeBc44Jb1EChy4JP9n3ItuckNkE8CnM2UoRN
	/ePhVbzg7iTXDo0kXnWoLa5RwKxRYCAnTEhCUxlF3RUR22N99P5W7nXn0FVHRCG+OMrwZ0nDmkC4w
	frAtOfIFDJvBl6fhDLR43XnmudzphxXo+xaOJ8KI5AvxAsijK2iweFj3UBmilZbH4pHG2nCRRFvoc
	CJ7Y5hnJqlN2b5ZlTaXFOrJZa+BljEJAy0TwZfVmq1gUShcW6bne3lF+lURHf+rdXCrDzVYuOiU3E
	LdfONWF9+oQqp5zSqAdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5r0-00000001SRC-1C9k;
	Wed, 30 Jul 2025 12:24:18 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4xW-00000001Le3-1ND2
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753874816;
	bh=wOgzBe627eqwzUBnD5z68tEKqZnGngW6G42/ImLgG5w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lAH01+dj4cX4Cd+ZXtEI0fV0bY19aF1ILfSN9LNt4cUgzc2nxe2PeRz/yBvTc+iAf
	 dPI8wRLlyh2vJJvshfBYp1dEcOL++1iEjqcUmC9SQbY2LEuvvZrUrZPAPrmN0nxYXe
	 39aIUjpqchqhAONFLLRpzd6b50wswgGbm2yVJTfYMT+WfOJYkQRx0XjdvTjYkuPgp/
	 2gPynKYRVeV3l+C8xjbkACH0J+4wPjcp1dOxkYxSBLmqz/vqUJ2kDAy/hNFPmF4o7H
	 IRDfj0Gksaf19H+PU5b+C13xVkwEIABpuBot1qrJ7LFGr3QomTinogEwjbelhBt5V+
	 WfN1q6yXxLx1w==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B02D517E129A;
	Wed, 30 Jul 2025 13:26:55 +0200 (CEST)
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
	Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: [PATCH v3 6/7] iio: adc: qcom-spmi-iadc: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Wed, 30 Jul 2025 13:26:44 +0200
Message-ID: <20250730112645.542179-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
References: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_042658_538628_6C64BDCF 
X-CRM114-Status: GOOD (  17.08  )
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

Some Qualcomm PMICs integrate an Current ADC device, reachable
in a specific address range over SPMI.

Instead of using the parent SPMI device (the main PMIC) as a kind
of syscon in this driver, register a new SPMI sub-device and
initialize its own regmap with this sub-device's specific base
address, retrieved from the devicetree.

This allows to stop manually adding the register base address to
every R/W call in this driver, as this can be, and is now, handled
by the regmap API instead.

Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
Link: https://lore.kernel.org/r/20250722101317.76729-7-angelogioacchino.delregno@collabora.com
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/iio/adc/qcom-spmi-iadc.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/qcom-spmi-iadc.c b/drivers/iio/adc/qcom-spmi-iadc.c
index b64a8a407168..67096952b229 100644
--- a/drivers/iio/adc/qcom-spmi-iadc.c
+++ b/drivers/iio/adc/qcom-spmi-iadc.c
@@ -16,6 +16,7 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
+#include <linux/spmi.h>
 
 /* IADC register and bit definition */
 #define IADC_REVISION2				0x1
@@ -94,7 +95,6 @@
  * struct iadc_chip - IADC Current ADC device structure.
  * @regmap: regmap for register read/write.
  * @dev: This device pointer.
- * @base: base offset for the ADC peripheral.
  * @rsense: Values of the internal and external sense resister in micro Ohms.
  * @poll_eoc: Poll for end of conversion instead of waiting for IRQ.
  * @offset: Raw offset values for the internal and external channels.
@@ -105,7 +105,6 @@
 struct iadc_chip {
 	struct regmap	*regmap;
 	struct device	*dev;
-	u16		base;
 	bool		poll_eoc;
 	u32		rsense[2];
 	u16		offset[2];
@@ -119,7 +118,7 @@ static int iadc_read(struct iadc_chip *iadc, u16 offset, u8 *data)
 	unsigned int val;
 	int ret;
 
-	ret = regmap_read(iadc->regmap, iadc->base + offset, &val);
+	ret = regmap_read(iadc->regmap, offset, &val);
 	if (ret < 0)
 		return ret;
 
@@ -129,7 +128,7 @@ static int iadc_read(struct iadc_chip *iadc, u16 offset, u8 *data)
 
 static int iadc_write(struct iadc_chip *iadc, u16 offset, u8 data)
 {
-	return regmap_write(iadc->regmap, iadc->base + offset, data);
+	return regmap_write(iadc->regmap, offset, data);
 }
 
 static int iadc_reset(struct iadc_chip *iadc)
@@ -270,7 +269,7 @@ static int iadc_poll_wait_eoc(struct iadc_chip *iadc, unsigned int interval_us)
 
 static int iadc_read_result(struct iadc_chip *iadc, u16 *data)
 {
-	return regmap_bulk_read(iadc->regmap, iadc->base + IADC_DATA, data, 2);
+	return regmap_bulk_read(iadc->regmap, IADC_DATA, data, 2);
 }
 
 static int iadc_do_conversion(struct iadc_chip *iadc, int chan, u16 *data)
@@ -483,12 +482,19 @@ static const struct iio_chan_spec iadc_channels[] = {
 
 static int iadc_probe(struct platform_device *pdev)
 {
+	struct regmap_config iadc_regmap_config = {
+		.reg_bits = 16,
+		.val_bits = 8,
+		.max_register = 0x100,
+		.fast_io = true,
+	};
 	struct device_node *node = pdev->dev.of_node;
 	struct device *dev = &pdev->dev;
+	struct spmi_subdevice *sub_sdev;
+	struct spmi_device *sparent;
 	struct iio_dev *indio_dev;
 	struct iadc_chip *iadc;
 	int ret, irq_eoc;
-	u32 res;
 
 	indio_dev = devm_iio_device_alloc(dev, sizeof(*iadc));
 	if (!indio_dev)
@@ -497,18 +503,21 @@ static int iadc_probe(struct platform_device *pdev)
 	iadc = iio_priv(indio_dev);
 	iadc->dev = dev;
 
-	iadc->regmap = dev_get_regmap(dev->parent, NULL);
-	if (!iadc->regmap)
-		return -ENODEV;
+	sparent = to_spmi_device(dev->parent);
+	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
+	if (IS_ERR(sub_sdev))
+		return PTR_ERR(sub_sdev);
 
 	init_completion(&iadc->complete);
 	mutex_init(&iadc->lock);
 
-	ret = of_property_read_u32(node, "reg", &res);
+	ret = of_property_read_u32(node, "reg", &iadc_regmap_config.reg_base);
 	if (ret < 0)
 		return -ENODEV;
 
-	iadc->base = res;
+	iadc->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &iadc_regmap_config);
+	if (IS_ERR(iadc->regmap))
+		return PTR_ERR(iadc->regmap);
 
 	ret = iadc_version_check(iadc);
 	if (ret < 0)
@@ -584,3 +593,4 @@ MODULE_ALIAS("platform:qcom-spmi-iadc");
 MODULE_DESCRIPTION("Qualcomm SPMI PMIC current ADC driver");
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Ivan T. Ivanov <iivanov@mm-sol.com>");
+MODULE_IMPORT_NS("SPMI");
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
