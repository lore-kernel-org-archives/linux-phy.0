Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38264D31A33
	for <linux-phy@archiver.kernel.org>; Wed, 14 Jan 2026 09:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqSeBvLviXwGCdHlmiHjE4vGa8PMAIzPO5Xmnr8bkUY=; b=nzk5mtzEcxcmos
	5z0pQrhhCD/DVZRNNyeqZF1ggMiElMiTUx1GCWDX4L3bFRMXtiOTOMQkAtvKOIyjmntn4hOr/AMGT
	V9JJvQRAPxb/WKSDj0NSKVptLykiRdw65ATZ64/zsmPSHPNOBmSX0Wf7R+L+Zs93gytSIaEfT6uFs
	VCpPXTdIflAiEFH3ZIki3R2EZ8VANHw5jrZxFOHOEAG0wQVDkDuUUZvncmYkM+8SH9PhzsBM87A2y
	0u+2ZAgKfAExU3IWX98M74ihdx6jGvItc24fixW3pJSPshjU8iO7EkwVB1/F3pfQhTiKE5Phr3u8k
	pRjmAOgCpu6a8EdlaLxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxAb-00000008YCx-3sT1;
	Wed, 14 Jan 2026 09:28:06 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfxAX-00000008Y8d-0QFO
	for linux-phy@lists.infradead.org;
	Wed, 14 Jan 2026 09:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1768382879;
	bh=O9ah9HMKLhUz0dSyohdRgTK+400/LyPEmXBMbnkIHpI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=O4S+bkUuBvA7MvHViHaT+1srMt2OX6ORI4HHI5ovheWT5mVd9zLjo1jO9injkZ0lC
	 LUNxAscJmEie8PVT8gT1cVIwVUBp6HmBWNPk7W7c1CekbawQ/mFbmpiPSYbnJvdy2A
	 rAKrs29fepkoe+p/hYwYr23i6gKepVlGgD2pSf2gRKxkBqd4jgWjjob/Y1nylBUXl1
	 hUHuvGGmdtdDT80wcyChc7a1w3/Gye2e4t40+EC9sKx7FPyKyyG60tlNL1du7OGp0P
	 7RQKZErZ3U1cgh/dp6ZY9wld7AM1LrHOnXlmrSnoFuLAAu1p7F4a8hbXx5gdN7U6Ik
	 KeH+2SNlZxMKA==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E233C17E1513;
	Wed, 14 Jan 2026 10:27:57 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
	sboyd@kernel.org,
	angelogioacchino.delregno@collabora.com,
	krzk@kernel.org,
	dmitry.baryshkov@oss.qualcomm.com,
	quic_wcheng@quicinc.com,
	melody.olvera@oss.qualcomm.com,
	quic_nsekar@quicinc.com,
	ivo.ivanov.ivanov1@gmail.com,
	abelvesa@kernel.org,
	luca.weiss@fairphone.com,
	konrad.dybcio@oss.qualcomm.com,
	mitltlatltl@gmail.com,
	krishna.kurapati@oss.qualcomm.com,
	linux-arm-msm@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com,
	Jonathan Cameron <jonathan.cameron@huawei.com>
Subject: [PATCH v8 09/10] iio: adc: qcom-spmi-iadc: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Wed, 14 Jan 2026 10:27:41 +0100
Message-ID: <20260114092742.13231-10-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_012801_346535_F5FC6056 
X-CRM114-Status: GOOD (  16.60  )
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
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/iio/adc/qcom-spmi-iadc.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/qcom-spmi-iadc.c b/drivers/iio/adc/qcom-spmi-iadc.c
index b64a8a407168..55a09c0e2d5c 100644
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
+		.max_register = 0xff,
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
+	ret = device_property_read_u32(dev, "reg", &iadc_regmap_config.reg_base);
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
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
