Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 753FECD8C92
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74Ccn1fVYqDGFDDT9Tsjw21veDe/xdrBr0BK2xlhClc=; b=nh05/3aNL4RDRP
	0oTFfC4gtmzODWxmcNhIYTBCObaymyCsRq16qffxUOVHBER3HKNvMSemv1buihWpJgrpK8GmkHWft
	ys3h0I57SCT87GEe2wN7sjk5KUFCveO/mjFwoU5RDV1mi+Mr51VNt4rbcFHqpX2D4DbZtDWIsVVDl
	ibseNiDrZh7DMgV9K5Neg2Muis4ubSogftMv/9Tnxogbi4qYfioY69H4PH6U7b6gmE/sxE/O9qafn
	LcEOIznBWoA2IBopmgWc0uH2rVft3SBAMDFkzLYdFDSm7ln0tj0aP6qmujYLLGt/P2WHmzntWNu0s
	LwcD91dJ3GTdP1bwpJbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWWwd-00000003J82-0uwc;
	Mon, 08 Jun 2026 10:10:59 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWWwW-00000003J1q-0Znt
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780913450;
	bh=jiF4zcx0/I5VFQUDZ6VGy2qSs1jgwlxV44YiihFi/iE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eMaEd5UxOw4Pp1qLa17NzTv/CeNYUbTHI6CZRgKHJKqxgtywnJQWm2I0qBmxTpEk3
	 rRoL/HPnP5gmBza1UlqXVpZ5p2W5OphXSZYOX7gyexQBUE3D6ANpLAJylOqqrxlc5m
	 hZbek7U0tMMPaWyf+CAA8Xwa3QegMvn3Uvra9JxaMJvwZrNFEm4j3FZbnd1uudmjWN
	 hSJyohonktyUOUKGJrUHnapju1zJ7By4Z5OPpGT7AasPP+XId3NmJ2c0VImli5C883
	 AWb25T3iQD+OLeZzY/cVzE4z9iCCDh4/2JgQhAvbv9rwdnfcvnAn9O/6tVu/GE0cYz
	 duonvVT57SXlg==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 52E7A17E0FD2;
	Mon,  8 Jun 2026 12:10:49 +0200 (CEST)
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
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: [PATCH v9 06/10] power: reset: qcom-pon: Migrate to devm_spmi_subdevice_alloc_and_add()
Date: Mon,  8 Jun 2026 12:09:45 +0200
Message-ID: <20260608100949.36309-7-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260608100949.36309-1-angelogioacchino.delregno@collabora.com>
References: <20260608100949.36309-1-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_031052_335132_41161FCB 
X-CRM114-Status: GOOD (  13.94  )
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

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on SM8650-QRD
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/power/reset/qcom-pon.c | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/power/reset/qcom-pon.c b/drivers/power/reset/qcom-pon.c
index 7e108982a582..182af188c9be 100644
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
@@ -46,27 +46,41 @@ static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
 
 static int qcom_pon_probe(struct platform_device *pdev)
 {
+	struct regmap_config qcom_pon_regmap_config = {
+		.reg_bits = 16,
+		.val_bits = 8,
+		.max_register = 0xff,
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
+	error = device_property_read_u32(dev, "reg", &qcom_pon_regmap_config.reg_base);
 	if (error)
 		return error;
 
+	pon->regmap = devm_regmap_init_spmi_ext(&sub_sdev->sdev, &qcom_pon_regmap_config);
+	if (IS_ERR(pon->regmap))
+		return PTR_ERR(pon->regmap);
+
 	reason_shift = (long)of_device_get_match_data(&pdev->dev);
 
 	if (reason_shift != NO_REASON_SHIFT) {
@@ -106,3 +120,4 @@ module_platform_driver(qcom_pon_driver);
 
 MODULE_DESCRIPTION("Qualcomm Power On driver");
 MODULE_LICENSE("GPL v2");
+MODULE_IMPORT_NS("SPMI");
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
