Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BA3C44501
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 10:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBUWNf65c+uJa0TiFWGidCx7PQ2MqOhzlue2o/RVXw4=; b=hx9ypFI+YwMKY1
	j1NfNFCNhJhojC5sN69VHEEz0zCPNbKbfZmu2oYJeIrPyLWK+C5R3J1yJZYKK8kFZeUH7gtWN9St8
	LbOmFqXKpSKodbKGrPCqOKLNajJDjNgakvuS6n1CJQ1DN5Qe1VI1Culfk6zrMTxSTHrOj8lcyB2Ml
	Joh2d8SmGTXlebLR9a5xfacfkyGMbHdEsNlwDfALziDt3tnSuvFUNgDXWTzAGv63yTjz6rFqOVx5i
	/ri00UNPtUA2kTc0ovbfYyIY7XfCENZvBWQEfSMIx1wqAAezvqvCKEwK9wQV/mFR/4P+nNg2AZ4Og
	93ktS9lf0MecDTWyfEXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh2sz-0000000Ej2k-3Rdy;
	Tue, 07 Jul 2026 10:18:41 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh2sx-0000000EizO-0P2c
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 10:18:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783419517;
	bh=sVNkkV8uL94cr17uyAdt+j62uOnX4B7OLaBuuZtHXs8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=U5bTaQBMoGH1dgaMXx42vj5M+NbEWbvocInyLKRMIrNvrlvA3K+WysF3UJXYgYqco
	 MqcWEn8kGs6us9FvJTWIa8bP1J+1nb85mmnk+gnQQpVVcXG9xFDwm8VcG9XKMfV2O+
	 /7qhs1G4dDg/rGd8RV9DievwkhgbTEPC+/T+wBXBNtqHyWKk8a46bhMTK9vRa4nkhq
	 7qgp3PYjASocrr1tJz63ofzSXLmSc/j2kYa5+F8am43A0bZs7cagYxUWIOURHRAo7U
	 Ao8FWBM4zpvY+JRYXPLQpjME0dbLBG3U/WHwOs7JNzhYtu3czKpWr8po5U1/7NAhqV
	 DVE37rFPWKG8A==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0C26B17E0DE6;
	Tue, 07 Jul 2026 12:18:36 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: jic23@kernel.org,
	sboyd@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	arnd@arndb.de,
	gregkh@linuxfoundation.org,
	srini@kernel.org,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	sre@kernel.org,
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
	Abel Vesa <abel.vesa@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: [PATCH v11 09/12] phy: qualcomm: eusb2-repeater: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Tue,  7 Jul 2026 12:18:18 +0200
Message-ID: <20260707101821.173319-10-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_031839_292846_87D6F1B1 
X-CRM114-Status: GOOD (  20.61  )
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

Some Qualcomm PMICs integrate an USB Repeater device, used to
convert between eUSB2 and USB 2.0 signaling levels, reachable
in a specific address range over SPMI.

Instead of using the parent SPMI device (the main PMIC) as a kind
of syscon in this driver, register a new SPMI sub-device for EUSB2
and initialize its own regmap with this sub-device's specific base
address, retrieved from the devicetree.

This allows to stop manually adding the register base address to
every R/W call in this driver, as this can be, and is now, handled
by the regmap API instead.

Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Acked-by: Vinod Koul <vkoul@kernel.org>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/phy/qualcomm/Kconfig                  |  2 +
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 52 ++++++++++++-------
 2 files changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 60a0ead127fa..902a788f35f1 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -128,7 +128,9 @@ config PHY_QCOM_QUSB2
 config PHY_QCOM_EUSB2_REPEATER
 	tristate "Qualcomm PMIC eUSB2 Repeater Driver"
 	depends on OF && (ARCH_QCOM || COMPILE_TEST)
+	depends on SPMI
 	select GENERIC_PHY
+	select REGMAP_SPMI
 	help
 	  Enable support for the USB high-speed eUSB2 repeater on Qualcomm
 	  PMICs. The repeater is paired with a Synopsys or M31 eUSB2 Phy
diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index efeec4709a15..a8542da2b462 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -9,6 +9,7 @@
 #include <linux/regmap.h>
 #include <linux/of.h>
 #include <linux/phy/phy.h>
+#include <linux/spmi.h>
 
 /* eUSB2 status registers */
 #define EUSB2_RPTR_STATUS		0x08
@@ -66,7 +67,6 @@ struct eusb2_repeater {
 	struct phy *phy;
 	struct regulator_bulk_data *vregs;
 	const struct eusb2_repeater_cfg *cfg;
-	u32 base;
 	enum phy_mode mode;
 };
 
@@ -143,7 +143,6 @@ static int eusb2_repeater_init(struct phy *phy)
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 	struct device_node *np = rptr->dev->of_node;
 	struct regmap *regmap = rptr->regmap;
-	u32 base = rptr->base;
 	u32 poll_val;
 	s32 dt_val;
 	int ret;
@@ -154,37 +153,37 @@ static int eusb2_repeater_init(struct phy *phy)
 	if (ret)
 		return ret;
 
-	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
+	regmap_write(regmap, EUSB2_EN_CTL1, EUSB2_RPTR_EN);
 
 	/* Write registers from init table */
 	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
-		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
+		regmap_write(regmap, rptr->cfg->init_tbl[i].reg,
 			     rptr->cfg->init_tbl[i].value);
 
 	/* Override registers from devicetree values */
 	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
-		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
+		regmap_write(regmap, EUSB2_TUNE_USB2_PREEM, val);
 
 	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
-		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
+		regmap_write(regmap, EUSB2_TUNE_HSDISC, val);
 
 	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
-		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
+		regmap_write(regmap, EUSB2_TUNE_IUSB2, val);
 
 	if (!of_property_read_u8(np, "qcom,tune-res-fsdif", &val))
-		regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, val);
+		regmap_write(regmap, EUSB2_TUNE_RES_FSDIF, val);
 
 	if (!of_property_read_s32(np, "qcom,squelch-detector-bp", &dt_val)) {
 		for (i = 0; i < ARRAY_SIZE(squelch_detector); i++) {
 			if (squelch_detector[i] == dt_val) {
-				regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, i);
+				regmap_write(regmap, EUSB2_TUNE_SQUELCH_U, i);
 				break;
 			}
 		}
 	}
 
 	/* Wait for status OK */
-	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
+	ret = regmap_read_poll_timeout(regmap, EUSB2_RPTR_STATUS, poll_val,
 				       poll_val & RPTR_OK, 10, 5);
 	if (ret)
 		dev_err(rptr->dev, "initialization timed-out\n");
@@ -197,7 +196,6 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 	struct regmap *regmap = rptr->regmap;
-	u32 base = rptr->base;
 
 	switch (mode) {
 	case PHY_MODE_USB_HOST:
@@ -206,8 +204,8 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 		 * per eUSB 1.2 Spec. Below implement software workaround until
 		 * PHY and controller is fixing seen observation.
 		 */
-		regmap_write(regmap, base + EUSB2_FORCE_EN_5, F_CLK_19P2M_EN);
-		regmap_write(regmap, base + EUSB2_FORCE_VAL_5, V_CLK_19P2M_EN);
+		regmap_write(regmap, EUSB2_FORCE_EN_5, F_CLK_19P2M_EN);
+		regmap_write(regmap, EUSB2_FORCE_VAL_5, V_CLK_19P2M_EN);
 		break;
 	case PHY_MODE_USB_DEVICE:
 		/*
@@ -216,8 +214,8 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 		 * repeater doesn't clear previous value due to shared
 		 * regulators (say host <-> device mode switch).
 		 */
-		regmap_write(regmap, base + EUSB2_FORCE_EN_5, 0);
-		regmap_write(regmap, base + EUSB2_FORCE_VAL_5, 0);
+		regmap_write(regmap, EUSB2_FORCE_EN_5, 0);
+		regmap_write(regmap, EUSB2_FORCE_VAL_5, 0);
 		break;
 	default:
 		return -EINVAL;
@@ -242,11 +240,18 @@ static const struct phy_ops eusb2_repeater_ops = {
 
 static int eusb2_repeater_probe(struct platform_device *pdev)
 {
+	struct regmap_config eusb2_regmap_config = {
+		.reg_bits = 16,
+		.val_bits = 8,
+		.max_register = 0xff,
+		.fast_io = true,
+	};
+	struct spmi_device *sparent;
 	struct eusb2_repeater *rptr;
+	struct spmi_subdevice *sub_sdev;
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
 	struct device_node *np = dev->of_node;
-	u32 res;
 	int ret;
 
 	rptr = devm_kzalloc(dev, sizeof(*rptr), GFP_KERNEL);
@@ -260,15 +265,21 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (!rptr->cfg)
 		return -EINVAL;
 
-	rptr->regmap = dev_get_regmap(dev->parent, NULL);
-	if (!rptr->regmap)
+	sparent = spmi_get_parent_spmi_device(dev->parent);
+	if (!sparent)
 		return -ENODEV;
 
-	ret = of_property_read_u32(np, "reg", &res);
+	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
+	if (IS_ERR(sub_sdev))
+		return PTR_ERR(sub_sdev);
+
+	ret = device_property_read_u32(dev, "reg", &eusb2_regmap_config.reg_base);
 	if (ret < 0)
 		return ret;
 
-	rptr->base = res;
+	rptr->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &eusb2_regmap_config);
+	if (IS_ERR(rptr->regmap))
+		return PTR_ERR(rptr->regmap);
 
 	ret = eusb2_repeater_init_vregs(rptr);
 	if (ret < 0) {
@@ -335,3 +346,4 @@ module_platform_driver(eusb2_repeater_driver);
 
 MODULE_DESCRIPTION("Qualcomm PMIC eUSB2 Repeater driver");
 MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("SPMI");
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
