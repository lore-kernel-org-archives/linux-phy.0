Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A93B8C87FCE
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jul 2025 12:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrkDF3cFcMEAJtKiaT30Tb1R1zP70kVpjjJE7z0cTVQ=; b=CZlzlkLOfsAYlU
	bEb5KjSVwzWr1F0Vw1o2tMGU8A7ZnAZCi7HoKBJIAKcUJSD/bjEHRnwyrFwC0wKZLf/CAeSHhXVui
	biDDTqTTnJ10HzniGvvNwU/XjHREVY3gCVoJRcJb8BOzKIAE7zcEfPk+ctZfLLKfXVb0beG13tQ++
	v8gEtTgxIwhxMy6tR3PzQ6Zl+iSWMIUMZTRH8xKuzVvy6oTagsh2Kpi7v5yo9ONC89PVLID1A0/Rf
	01JBoEqHKduNnoos9bqLr8j/uePZi8LXYD9V4Fnl3KBwGZOaTNL7uvhT78+K5U8RQQHPgceNJb2Ay
	H/M0rs0voYh6S68cB+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5qz-00000001SQ4-1myW;
	Wed, 30 Jul 2025 12:24:17 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4xS-00000001Lcr-2JHR
	for linux-phy@lists.infradead.org;
	Wed, 30 Jul 2025 11:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1753874813;
	bh=7hYDd2BurnCUaSZZ/F3+139JYM3R1COYrNvjuBsWY9Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ao80AlmKl0c5XSQC98rVyfp1IH0bS+ByYU31caS4j4utr4gbRquWaZfDPIKGmW9yr
	 yMWsXTttypijleljs6BBtjY8GvDG3rDEoDdyLBw/J+SflSOnm8F/oMXGLQRFsT1ErK
	 5efgsRDyTOMHrU3CUpdwimO3/gdKSwvLdgO4A7ECFG5H1RJiklAXTr1MK20X8EN6Ko
	 FOgexb7CI1Gqbbpr4OTqDBRKmPBQ0khnDrlm1g2dTJTSw0ieVuSFCNQOId4UWc6mkg
	 PPeO9tAfKObzj5q5hVCc6r+ONmP8OM5QC1JjX4swoRNh97Y4g4+T66dl5X0RP2q3Rx
	 mgSa8oXh9ZF4A==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 10D0A17E1439;
	Wed, 30 Jul 2025 13:26:52 +0200 (CEST)
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
	casey.connolly@linaro.org
Subject: [PATCH v3 3/7] power: reset: qcom-pon: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Wed, 30 Jul 2025 13:26:41 +0200
Message-ID: <20250730112645.542179-4-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
References: <20250730112645.542179-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_042654_733486_C23F1570 
X-CRM114-Status: GOOD (  14.71  )
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

Some Qualcomm PMICs integrates a Power On device supporting pwrkey
and resin along with the Android reboot reason action identifier.

Instead of using the parent SPMI device (the main PMIC) as a kind
of syscon in this driver, register a new SPMI sub-device for PON
and initialize its own regmap with this sub-device's specific base
address, retrieved from the devicetree.

This allows to stop manually adding the register base address to
every R/W call in this driver, as this can be, and is now, handled
by the regmap API instead.

Link: https://lore.kernel.org/r/20250722101317.76729-4-angelogioacchino.delregno@collabora.com
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/power/reset/qcom-pon.c | 34 +++++++++++++++++++++++++---------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/power/reset/qcom-pon.c b/drivers/power/reset/qcom-pon.c
index 7e108982a582..0e075a2e5e48 100644
--- a/drivers/power/reset/qcom-pon.c
+++ b/drivers/power/reset/qcom-pon.c
@@ -11,6 +11,7 @@
 #include <linux/reboot.h>
 #include <linux/reboot-mode.h>
 #include <linux/regmap.h>
+#include <linux/spmi.h>
 
 #define PON_SOFT_RB_SPARE		0x8f
 
@@ -22,7 +23,6 @@
 struct qcom_pon {
 	struct device *dev;
 	struct regmap *regmap;
-	u32 baseaddr;
 	struct reboot_mode_driver reboot_mode;
 	long reason_shift;
 };
@@ -35,7 +35,7 @@ static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
 	int ret;
 
 	ret = regmap_update_bits(pon->regmap,
-				 pon->baseaddr + PON_SOFT_RB_SPARE,
+				 PON_SOFT_RB_SPARE,
 				 GENMASK(7, pon->reason_shift),
 				 magic << pon->reason_shift);
 	if (ret < 0)
@@ -46,27 +46,42 @@ static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
 
 static int qcom_pon_probe(struct platform_device *pdev)
 {
+	struct regmap_config qcom_pon_regmap_config = {
+		.reg_bits = 16,
+		.val_bits = 8,
+		.max_register = 0x100,
+		.fast_io = true,
+	};
+	struct device *dev = &pdev->dev;
+	struct spmi_subdevice *sub_sdev;
+	struct spmi_device *sparent;
 	struct qcom_pon *pon;
 	long reason_shift;
 	int error;
 
+	if (!dev->parent)
+		return -ENODEV;
+
 	pon = devm_kzalloc(&pdev->dev, sizeof(*pon), GFP_KERNEL);
 	if (!pon)
 		return -ENOMEM;
 
 	pon->dev = &pdev->dev;
 
-	pon->regmap = dev_get_regmap(pdev->dev.parent, NULL);
-	if (!pon->regmap) {
-		dev_err(&pdev->dev, "failed to locate regmap\n");
-		return -ENODEV;
-	}
+	sparent = to_spmi_device(dev->parent);
+	sub_sdev = devm_spmi_subdevice_alloc_and_add(dev, sparent);
+	if (IS_ERR(sub_sdev))
+		return PTR_ERR(sub_sdev);
 
-	error = of_property_read_u32(pdev->dev.of_node, "reg",
-				     &pon->baseaddr);
+	error = of_property_read_u32(dev->of_node, "reg",
+				     &qcom_pon_regmap_config.reg_base);
 	if (error)
 		return error;
 
+	pon->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &qcom_pon_regmap_config);
+	if (IS_ERR(pon->regmap))
+		return PTR_ERR(pon->regmap);
+
 	reason_shift = (long)of_device_get_match_data(&pdev->dev);
 
 	if (reason_shift != NO_REASON_SHIFT) {
@@ -106,3 +121,4 @@ module_platform_driver(qcom_pon_driver);
 
 MODULE_DESCRIPTION("Qualcomm Power On driver");
 MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS("SPMI");
-- 
2.50.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
